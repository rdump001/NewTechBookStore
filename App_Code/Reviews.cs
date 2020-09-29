using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

/// <summary>
/// Summary description for Reviews
/// </summary>
public class Reviews
{
	public Reviews()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public System.Collections.IEnumerable GetReviews(int BookID)
    {
        System.Data.SqlClient.SqlDataAdapter reviewAdapter = new System.Data.SqlClient.SqlDataAdapter
            ("SELECT * FROM Reviews WHERE BookID=" + BookID, ConfigurationManager.ConnectionStrings["NTBS"].ConnectionString);
        DataSet dsReviews = new DataSet("Reviews");
        reviewAdapter.Fill(dsReviews, "Reviews");
        return ((dsReviews.Tables["Reviews"]) as System.ComponentModel.IListSource).GetList();
    }

    public void AddReview(string BookID, string ReviewerName, string EmailAddress, string ReviewDate, string Rating, string Comments)
    {
        System.Data.SqlClient.SqlConnection sqlConn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["NTBS"].ConnectionString);
        sqlConn.Open();
        System.Data.SqlClient.SqlCommand reviewAdder = new System.Data.SqlClient.SqlCommand(
            "INSERT Reviews (BookID, ReviewerName, EmailAddress, ReviewDate, Rating, Comments)"
            + " VALUES ('" + BookID + "','" + ReviewerName + "','" + EmailAddress + "','" + DateTime.Now + "','" + Rating + "','" + Comments + "')", sqlConn);
        reviewAdder.ExecuteNonQuery();
    }

}
