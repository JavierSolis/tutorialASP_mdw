using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void eventoAceptar_behind(object sender, EventArgs e)
        {
            Label2.Text = TextBox2.Text;
            TextBox2.Text = string.Empty;
        }
    }
}
