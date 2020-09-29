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

public partial class Review : System.Web.UI.Page
{
    //protected void FormView1_ItemInserting(object sender, FormViewInsertEventArgs e)
    //{
    //    e.Values["BookID"] = Request.QueryString["BookID"];
    //}
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataSource1.ConnectionString = @"Data Source=localhost\SQLEXPRESS;Initial Catalog=E:\EXERCISES\MR EXERCISES\CHAPTER 6\DATABASE\NTBS\NTBS_DATA.MDF;Integrated Security=True";
        SqlDataSource1.SelectCommand = "SELECT [BookID], [ReviewerName], [ReviewDate], [Rating], [Comments] FROM [Reviews] WHERE ([BookID] = '" + Request.QueryString["BookID"] + "')";

    }
}
