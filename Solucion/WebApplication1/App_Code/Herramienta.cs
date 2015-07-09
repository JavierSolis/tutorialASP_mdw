using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1.App_Code
{
    public class Herramienta
    {
        public Herramienta() 
        {
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
