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

public partial class FeedbackForm : System.Web.UI.Page
{
    protected void Feedback_Command(object sender, CommandEventArgs e)
    {
       
        switch (e.CommandName)
        {
            case "HomeDelivery":
                {
                    Response.Redirect("YourFeedback.aspx?Feedback=HomeDelivery");
                    break;
                }
            case "Search":
                {
                    Response.Redirect("YourFeedback.aspx?Feedback=Search");
                    break;
                }
            case "User":
                {
                    Response.Redirect("YourFeedback.aspx?Feedback=User");
                    break;
                }
        }

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] != null)
        {

            TopLevel master = (TopLevel)this.Master;
            master.Message = "Welcome " + (Session["UserName"]).ToString();
        }
    }
}
