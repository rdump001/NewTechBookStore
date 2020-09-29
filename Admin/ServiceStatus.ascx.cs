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

public partial class Admin_ServiceStatus : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            string dbStatus = ConfigurationManager.ConnectionStrings["NTBS"].ConnectionString;
            System.Data.SqlClient.SqlConnection sqlConn = new System.Data.SqlClient.SqlConnection(dbStatus);
            sqlConn.Open();
            if (sqlConn.State.ToString() == "Open")
                lblDBStatus.Text = "The database is available.";
            else
                lblDBStatus.Text = "The database is currently unavailable.";
            sqlConn.Close();
        }
        catch
        {
            lblDBStatus.Text = "The database is currently unavailable.";
        }
        try
        {
            WebService MyWebService = new WebService();
            string[] reviews = MyWebService.GetReviews();
            lblWebSrvStatus.Text = "Bestseller review Web service is currently available.";
        }
        catch
        {
            lblWebSrvStatus.Text = "Bestseller review Web service is currently unavailable.";
        }
    }
}
