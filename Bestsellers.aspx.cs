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

public partial class BookReviews : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] != null)
        {

            TopLevel master = (TopLevel)this.Master;
            master.Message = "Welcome " + (Session["UserName"]).ToString();
        }
        WebService myservice = new WebService();
        string[] sBookReviews = myservice.GetReviews();
        if (!IsPostBack)
        {
            foreach (string c in sBookReviews)
            {
                ddBookReviews.Items.Add(c);

            }
        }

    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        ArrayList alBookReviews = (ArrayList)Session["BookReviews"];
        if (alBookReviews == null)
        {
            alBookReviews = new ArrayList();
        }
        alBookReviews.Add(ddBookReviews.Text);
        Session["BookReviews"] = alBookReviews;
    }

    protected void Page_PreRender(object sender, EventArgs e)
    {
        ArrayList alBookReviews = (ArrayList)Session["BookReviews"];
        if (alBookReviews == null)
        {
            lblBook.Text += "";
        }
        else
        {
            lblBook.Text = "";
            foreach (string str in alBookReviews)
            {
                if (!str.Equals("Select a Book"))
                {
                    lblBook.Text += str + "<br />";
                }
            }
        }
    }

    private string GetReview(string Value)
    {
        string htmlResult = "<p><b>Review: </b>";
        WebService myservice = new WebService();
        string sReview = myservice.bookReview(Value);
        htmlResult += "" + sReview + "<br/>";
        htmlResult += "</p>";
        return htmlResult;
    }

    protected void ddBookReviews_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblReview.Text = GetReview(ddBookReviews.Text);
    }
}
