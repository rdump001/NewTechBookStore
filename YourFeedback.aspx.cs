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

public partial class YourFeedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (this.Page.Request.QueryString["Feedback"] == null)
        {
            lblFeedback.Text = "Your feedback:";
            return;
        }
        switch (this.Page.Request.QueryString["Feedback"])
        {
            case "HomeDelivery":
                lblFeedback.Text = "Your feedback on our home delivery services:";
                Page.Header.Title = "Feedback about our home delivery services";
                break;
            case "Search":
                lblFeedback.Text = "Your feedback on the search feature of our website:";
                Page.Header.Title = "Feedback about the search faetures of the website";
                break;
            case "User":
                lblFeedback.Text = "Your feedback on your experience of the site:";
                Page.Header.Title = "Feedback about user services";
                break;
            default:
                lblFeedback.Text = "Your feedback:";
                break;
        }

        TopLevel master = (TopLevel)this.Master;
        master.Message = "Provide us your valuable feedback";
        
    }
}
