using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CapaVista
{
    public partial class Varios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DDLVarios.Items.Add(new ListItem("Limpieza", "1"));
            DDLVarios.Items.Add(new ListItem("Luces", "2"));
            DDLVarios.Items.Add(new ListItem("DJ", "3"));
        }

        protected void btnVarios_Click(object sender, EventArgs e)
        {
            string url = string.Empty;


            if (DDLVarios.SelectedItem.ToString() == null)
            {
                url = string.Empty;
                url = string.Format("{0}", "PaginaDeErrores/ErrorVarios.aspx");
                Response.Redirect(url);
            }
            else
            {
                url = string.Empty;
                url = string.Format("{0}?Lugar={1}", "PaginaValidadora/VariosCorrecto.aspx", DDLVarios.SelectedItem.ToString());

                Response.Redirect(url);
            }
        }
    }
}