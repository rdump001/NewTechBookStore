using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void CreateUserWizard1_ContinueButtonClick(object sender, EventArgs e)
    {
        Session["UserName"] = CreateUserWizard1.UserName;
        TopLevel master = (TopLevel)this.Master;
        master.Message = "Welcome " + (Session["UserName"]).ToString();
        Response.Redirect("Default.aspx");
    }
    protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
    {

    }
}
