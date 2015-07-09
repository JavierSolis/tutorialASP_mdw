using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Controles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //condicion para saber si ya cargo, asi solo agrega el vento una vez

            if(!IsPostBack)
            {
                btnGenerar.Click += new EventHandler(btnGenerar_Click);
            }
        }
        protected void btnGenerar_Click(object sender, EventArgs e) 
        {
            Table tbl = new Table();

            try
            {
                int cantidad = Convert.ToInt32(txtCantidad.Text.Trim());
                Label lbl;
                for (int i = 0; i < cantidad; i++) 
                {
                    lbl = new Label();
                    lbl.ID = "idlabel" + i;
                    lbl.Text = "label nro." + i;
                    //agregar label
                    TableCell tc = new TableCell();
                    TableRow tr = new TableRow();
                    tc.Controls.Add(lbl);
                    tr.Cells.Add(tc);
                    tbl.Rows.Add(tr);
                    //
                    Page.Controls.Add(tbl);
                }

            }
            catch (Exception ex)
            {
            
            }
        }
    }
}
