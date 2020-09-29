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

public partial class Admin_ManageSite : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ddMode_SelectedIndexChanged(object sender, EventArgs e)
    {
        WebPartManager wpManager;
        wpManager = WebPartManager.GetCurrentWebPartManager(Page);
        string selectedMode = ddMode.SelectedValue;

        WebPartDisplayMode mode;
        mode = wpManager.SupportedDisplayModes[selectedMode];

        if (mode != null)
        {
            wpManager.DisplayMode = mode;
        }
    }
}
