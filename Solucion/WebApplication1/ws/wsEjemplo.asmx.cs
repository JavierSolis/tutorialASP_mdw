using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.Script.Services;
using System.Web.Script.Serialization;

namespace WebApplication1.ws
{
    /// <summary>
    /// Descripción breve de wsEjemplo
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
    // [System.Web.Script.Services.ScriptService]
    public class wsEjemplo : System.Web.Services.WebService
    {

        [WebMethod]
        //retorna XML por defecto
        public string HelloWorld()
        {
            return "Hello World";
        }

        [WebMethod]
        //Si se comenta la linea de ScripMethod, por defecto retorna XML
        [ScriptMethod( ResponseFormat = ResponseFormat.Json)]
        public string getFechaHora()
        {

            string fechaHora= DateTime.Now.ToString();

            return new JavaScriptSerializer().Serialize(fechaHora);
        }

    }
}
