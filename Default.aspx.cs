using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Globalization;

public partial class _Default : System.Web.UI.Page 
{

    protected void Page_Load(object sender, EventArgs e)
    {
        string sHitCount = (Application["HitCount"]).ToString();
        lblHitCount.Text = "This website has been visited " + sHitCount + " time(s)";


        if (Session["UserName"] != null)
        {
            TopLevel master = (TopLevel)this.Master;
            master.Message = "Welcome " + (Session["UserName"]).ToString();
        }

       imgBooks.ImageUrl = "Image1.jpg";

       DateTime dt = DateTime.Now;
       CultureInfo USCulture = new CultureInfo("en-US");
       CultureInfo GermanCulture = new CultureInfo("de-DE");
       if (CultureInfo.CurrentCulture.Equals(GermanCulture))
           lblDate.Text = dt.ToString("d", GermanCulture);
       else
           lblDate.Text = dt.ToString("d", USCulture);

   }
    protected void Page_PreInit(object sender, EventArgs e)
    {
        Page.Theme = Profile.Theme;
    }


    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        if (Membership.ValidateUser(Login1.UserName, Login1.Password))
        {
            e.Authenticated = true;

            Session["UserName"] = Login1.UserName;
            TopLevel master = (TopLevel)this.Master;
            master.Message = "Welcome " + (Session["UserName"]).ToString();
        }
        else
        {
            e.Authenticated = false;
        }

    }
}
