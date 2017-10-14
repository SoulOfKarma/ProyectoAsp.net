using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CapaVista.PaginaDeErrores
{
    public partial class ErrorMusica : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DDLMusica.Items.Add(new ListItem("Clasica", "1"));
            DDLMusica.Items.Add(new ListItem("Salsas,Merengues,Bachata", "2"));
            DDLMusica.Items.Add(new ListItem("Variedad", "3"));
        }

        protected void btnMusica_Click(object sender, EventArgs e)
        {
            string url = string.Empty;


            if (DDLMusica.SelectedItem.ToString() == null)
            {
                url = string.Empty;
                url = string.Format("{0}", "PaginaDeErrores/ErrorMusica.aspx");
                Response.Redirect(url);
            }
            else
            {
                url = string.Empty;
                url = string.Format("{0}?Musica={1}", "PaginaValidadora/MusicaCorrecta.aspx", DDLMusica.SelectedItem.ToString());

                Response.Redirect(url);
            }
        }
    }
}