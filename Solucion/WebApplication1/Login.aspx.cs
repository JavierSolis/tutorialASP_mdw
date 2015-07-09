using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_Authenticate(object sender, EventArgs e)
        {
            bool aunteticado = false;
            aunteticado = LoginCorrecto(Login1.UserName, Login1.Password);

            if(aunteticado)
            {
                Response.Redirect("Default.aspx");
            }
        }

        private bool LoginCorrecto(string usuario, string pass)
        {
            if(usuario.Equals("javier") && pass.Equals("solis"))
            {
                return true;
            }
            return false;            
        }
    }
}
