using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace NTBSWebParts
{
    public class SelectTheme : WebPart, IThemeInfo
    {
        private string theme="";
        private DropDownList ddThemes;
        private Button btnUpdate;
        public string Theme
        {
            get { return theme; }
            set { theme = value; }
        }
        protected override void CreateChildControls()
        {
            ddThemes = new DropDownList();
            ddThemes.Items.Add("Pink");
            ddThemes.Items.Add("Blue");
            btnUpdate = new Button();
            btnUpdate.Text = "Update";
            btnUpdate.Click += new EventHandler(btnUpdate_Click);
            theme = ddThemes.SelectedValue;
            Controls.Add(ddThemes);
            Controls.Add(btnUpdate);
        }
        void btnUpdate_Click(object sender, EventArgs e)
        {
            theme = ddThemes.SelectedValue;
        }
        [ConnectionProvider("Theme", "Theme")]
        public IThemeInfo ProvideThemeInfo()
        {
            return this;
        }
        protected override void RenderContents(HtmlTextWriter writer)
        {
            if (!Page.IsPostBack)
            {
                CreateChildControls();
            }
            writer.Write("Select a theme<HR/>");
            ddThemes.RenderControl(writer);
            btnUpdate.RenderControl(writer);
        }
    }
    public interface IThemeInfo
    {
        string Theme
        {
            get;
            set;
        }
    }
}
