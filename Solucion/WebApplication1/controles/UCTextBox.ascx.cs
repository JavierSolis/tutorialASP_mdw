using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.controles
{
    public partial class UCTextBox : System.Web.UI.UserControl
    {
        private bool _esnumerico = false;

        public bool EsNumerico 
        {
            get { return this._esnumerico; }
            set { this._esnumerico = value; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void textBox_textChanged(object sender, EventArgs e)
        {
            if(this.EsNumerico && !isNumeric(textBox1.Text.Trim()))
            {
                this.textBox1.Text= String.Empty;
                return;
            }
        }

        public bool isNumeric(object expression)
        {
            bool isNum;
            double retNum;
            isNum = Double.TryParse(Convert.ToString(expression), System.Globalization.NumberStyles.Any, System.Globalization.NumberFormatInfo.InvariantInfo, out retNum);

            return isNum;
        }
    }
}