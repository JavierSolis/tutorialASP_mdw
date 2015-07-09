using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class FormConControlPersonalizado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UCTextBox1.EsNumerico = true;
            Control MiControl = LoadControl("~/controles/UCTextBox.ascx");
        }
    }
}
