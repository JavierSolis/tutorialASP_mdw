using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

namespace WebApplication1.bdSimulacion
{
    public partial class ADO : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            leer();
        }

        protected void btnGuardar_click(object sender, EventArgs e)
        {
            escribir();
        }

        private void leer()
        {
            string connectionString = @"Provider=Microsoft.ACE.OLEDB.12.0; Data Source=C:\\Users\\o91024\\Documents\\Visual Studio 2008\\Projects\\WebApplication1\\WebApplication1\\bdSimulacion\\personas.xls; Extended Properties=""Excel 12.0 Xml; HDR=YES;""";
            OleDbConnection conn = new OleDbConnection(connectionString);
             
            OleDbDataAdapter da = new OleDbDataAdapter("Select * From [Personas$]",conn);
            DataTable dt = new DataTable();
            da.Fill(dt);

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        private void escribir()
        {
            string connectionString = @"Provider=Microsoft.ACE.OLEDB.12.0; Data Source=C:\\Users\\o91024\\Documents\\Visual Studio 2008\\Projects\\WebApplication1\\WebApplication1\\bdSimulacion\\personas.xls; Extended Properties=""Excel 12.0 Xml; HDR=YES;""";
            OleDbConnection conn = new OleDbConnection(connectionString);

            string insert = "Insert into [Personas$] (nombre, Apellido , Edad) values (?,?,?)";
            OleDbCommand inserCmd = new OleDbCommand(insert, conn);

            try
            {
                inserCmd.Parameters.Add("Nombre", OleDbType.VarChar).Value = txtNombre.Text;
                inserCmd.Parameters.Add("Apellido", OleDbType.VarChar).Value = txtApellido.Text;

                if (isNumeric(txtEdad.Text))
                {
                    inserCmd.Parameters.Add("Edad", OleDbType.Integer).Value = Convert.ToInt32(txtEdad.Text);
                }
                else
                {
                    throw new Exception("La edad debe ser numerica");
                }

                conn.Open();
                int count = inserCmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                lblMensajes.Text = ex.Message;
            }
            finally
            {
                conn.Close();
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
