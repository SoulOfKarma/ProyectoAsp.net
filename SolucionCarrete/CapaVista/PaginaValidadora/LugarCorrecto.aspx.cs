using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CapaVista.PaginaValidadora
{
    public partial class LugarCorrecto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            string url = string.Empty;
            url = string.Empty;
            url = string.Format("{0}", "../Inicio2.aspx");
            Response.Redirect(url);
        }
    }
}