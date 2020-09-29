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
using System.Data.SqlClient;

public partial class BookDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string connectionString = ConfigurationManager.ConnectionStrings["NTBS"].ConnectionString;
        SqlConnection myConnection = new SqlConnection(connectionString);

        myConnection.Open();
        SqlCommand myCommand = new SqlCommand("Select Distinct CategoryName from BookDetails", myConnection);
        SqlDataAdapter da = new SqlDataAdapter(myCommand);

        if (!IsPostBack)
        {
            DataSet ds = new DataSet();
            da.Fill(ds, "BookDetails");

            DataTable myTable = ds.Tables["BookDetails"];

            var query =
                from CategoryName in myTable.AsEnumerable()
                select CategoryName;


            ddBookCategories.Items.Clear();
            foreach (DataRow p in query)
            {
                ddBookCategories.Items.Add(p.Field<string>("CategoryName"));
            }
        }

        myConnection.Close();

       //For filling the GridView control with the books of the selected category 
       
       dsBookTitles.ConnectionString = @"Data Source=localhost\SQLEXPRESS;Initial Catalog=E:\EXERCISES\MR EXERCISES\CHAPTER 6\DATABASE\NTBS\NTBS_DATA.MDF;Integrated Security=True";
       dsBookDetails.ConnectionString=@"Data Source=localhost\SQLEXPRESS;Initial Catalog=E:\EXERCISES\MR EXERCISES\CHAPTER 6\DATABASE\NTBS\NTBS_DATA.MDF;Integrated Security=True";
       
     
        if (!IsPostBack)
       {
           dsBookTitles.SelectCommand = "SELECT [Title] FROM [BookDetails] WHERE ([CategoryName] = '" + ddBookCategories.SelectedValue + "')";
       }

        if (Session["UserName"] != null)
        {
            TopLevel master = (TopLevel)this.Master;
            master.Message = "Welcome " + (Session["UserName"]).ToString();
        }
    }
    protected void ddBookCategories_SelectedIndexChanged(object sender, EventArgs e)
    {
        dsBookTitles.SelectCommand = "SELECT [Title] FROM [BookDetails] WHERE ([CategoryName] = '" + ddBookCategories.SelectedValue + "')";
    }

    protected void gvwBookTitles_SelectedIndexChanged(object sender, EventArgs e)
    {
        dsBookDetails.SelectCommand = "SELECT [BookID], [Author], [Publisher], [ISBN], [Price], [Description] FROM [BookDetails] WHERE ([Title] = '" + gvwBookTitles.SelectedValue + "')";
        Button1.Visible = true;
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Review.aspx?BookID=" + DetailsView1.SelectedValue.ToString());
    }
}
