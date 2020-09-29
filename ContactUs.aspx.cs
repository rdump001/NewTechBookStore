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

public partial class ContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] != null)
        {
            TopLevel master = (TopLevel)this.Master;
            master.Message = "Welcome " + (Session["UserName"]).ToString();
        }

        AddressDetails details = new AddressDetails();
        string sAddress = details.getBranches();
        xmlAddress.Data = sAddress;
       
    }
    protected void tvwAddress_SelectedNodeChanged(object sender, EventArgs e)
    {
        if (tvwAddress.SelectedNode.ChildNodes.Count == 0)
        {
              AddressDetails details = new AddressDetails();
           
            string City = tvwAddress.SelectedNode.Text;
            string AddressDetails = details.getAddress(City);
           
            lblAddress.Text = AddressDetails;
          
        }
        else
        {
            tvwAddress.SelectedNode.Expand();
            lblAddress.Text = "";
        }
    }
}
