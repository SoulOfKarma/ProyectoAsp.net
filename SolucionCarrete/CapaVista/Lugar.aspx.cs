using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CapaVista
{
    public partial class Lugar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DDLLugares.Items.Add(new ListItem("San Bernardo", "1"));
            DDLLugares.Items.Add(new ListItem("San Miguel", "2"));
            DDLLugares.Items.Add(new ListItem("El Bosque","3"));
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            string url = string.Empty;


            if (DDLLugares.SelectedItem.ToString() == null)
            {
                url = string.Empty;
                url = string.Format("{0}", "PaginaDeErrores/ErrorLugar.aspx");
                Response.Redirect(url);
            }
            else
            {
                url = string.Empty;
                url = string.Format("{0}?Lugar={1}", "PaginaValidadora/LugarCorrecto.aspx", DDLLugares.SelectedItem.ToString());

                Response.Redirect(url);
            }
        }
    }
}