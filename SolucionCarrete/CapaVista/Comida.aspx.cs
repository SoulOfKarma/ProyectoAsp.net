using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CapaVista
{
    public partial class Comida : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DDLComida.Items.Add(new ListItem("Sandwiches,Completos,Pizza","1"));
            DDLComida.Items.Add(new ListItem("Carne,Cerdo,Pollo", "2"));
            DDLComida.Items.Add(new ListItem("Sushi,Carne Mongoliana,Ramen", "3"));
        }

        protected void btnComida_Click(object sender, EventArgs e)
        {
            int a = 1;
            string url = string.Empty;

            if (DDLComida.SelectedItem.ToString() == null)            
            {
                url = string.Empty;
                url = string.Format("{0}", "PaginaDeErrores/ErrorComida.aspx");
                Response.Redirect(url);
            }
            else
            {
                url = string.Empty;
                url = string.Format("{0}?Comida={1}", "PaginaValidadora/ComidaCorrecta.aspx", DDLComida.SelectedItem.ToString());

                Response.Redirect(url);
            }
        }
    }
}