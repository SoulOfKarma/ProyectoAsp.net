using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CapaVista.PaginaDeErrores
{
    public partial class ErrorBebestible : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DDLBebestible.Items.Add(new ListItem("Bebidas de fantasia solamente", "1"));

            DDLBebestible.Items.Add(new ListItem("Bebidas Alcoholicas", "2"));

            DDLBebestible.Items.Add(new ListItem("Todos Los tipos de bebidas", "3"));
        }

        protected void btnBebestible_Click(object sender, EventArgs e)
        {
            string url = string.Empty;

            if (DDLBebestible.SelectedItem.ToString() == null)
            {
                url = string.Empty;
                url = string.Format("{0}", "PaginaDeErrores/ErrorBebestible.aspx");
                Response.Redirect(url);
            }
            else
            {
                url = string.Empty;
                url = string.Format("{0}?Bebestible={1}", "PaginaValidadora/BebestibleValidado.aspx", DDLBebestible.SelectedItem.ToString());

                Response.Redirect(url);
            }
        }
    }
}