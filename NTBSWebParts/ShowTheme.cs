using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.UI;
using System.Web.UI.WebControls.WebParts;


namespace NTBSWebParts
{
    public class ShowTheme : WebPart
    {
        private string theme = "";
        protected override void RenderContents(HtmlTextWriter writer)
        {
            if (theme == "")
                writer.Write("No theme selected");
            else
                writer.Write("You have selected the " + theme + " theme");
        }
        [ConnectionConsumer("Theme", "Theme")]
        public void GetColorName(IThemeInfo themeInfo)
        {
            if (themeInfo != null)
            {
                theme = themeInfo.Theme;
            }
        }

    }
}
