using System;
using System.Web;
using System.Collections;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.Xml;


/// <summary>
/// Summary description for WebService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
public class WebService : System.Web.Services.WebService {

    public WebService () {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    public string[] GetReviews()
    {
        string[] arBookReviews = new string[7];
        XmlDocument docReports = new XmlDocument();
        docReports.Load("BookReviews.xml");
        XmlElement nodeRoot = docReports.DocumentElement;
        XmlNodeList nlCategory = nodeRoot.ChildNodes;
        int iIndex = 0;
        foreach (XmlNode nodeCurrent in nlCategory)
        {
            arBookReviews[iIndex] = nodeCurrent.Attributes["value"].Value;
            ++iIndex;
        }
        return arBookReviews;
    }

    [WebMethod]
    public string bookReview(string value)
    {
        string review;
        XmlDocument docReports = new XmlDocument();
        docReports.Load("BookReviews.xml");
        XmlElement nodeRoot = docReports.DocumentElement;
        XmlNode nodeReview = nodeRoot.SelectSingleNode("CategoryName[@value=\"" + value + "\"]");
        review = nodeReview.InnerText;
        return review;
    }

    [WebMethod]
    public string FinalVersion()
    {
        string version;
        XmlDocument docReports = new XmlDocument();
        docReports.Load("BookReviews.xml");
        XmlElement nodeRoot = docReports.DocumentElement;
        version = nodeRoot.Attributes["version"].Value;
        return version;
    }    
    
}

