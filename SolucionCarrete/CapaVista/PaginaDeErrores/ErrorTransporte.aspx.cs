using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CapaVista.PaginaDeErrores
{
    public partial class ErrorTransporte : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnFecha_Click(object sender, EventArgs e)
        {
            string a = Convert.ToString(CLFecha);

            string url = string.Empty;


            if (a == null)
            {
                url = string.Empty;
                url = string.Format("{0}", "PaginaDeErrores/ErrorTransporte.aspx");
                Response.Redirect(url);
            }
            else
            {
                url = string.Empty;
                url = string.Format("{0}?Lugar={1}", "PaginaValidadora/TransporteCorrecto.aspx", a);

                Response.Redirect(url);
            }
        }
    }
}