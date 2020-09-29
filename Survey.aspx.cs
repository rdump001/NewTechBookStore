using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Survey : System.Web.UI.Page
{

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] != null)
        {

            Label lblMaster = (Label)Master.FindControl("lblMaster");
            lblMaster.Text = "Welcome " + (Session["UserName"]).ToString();
        }
    }
}
