using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CapaVista
{
    public partial class LoginUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            string url = string.Empty;
            string a = "as";
            if (a.Equals("as"))
            {
                
                url = string.Empty;
                url = string.Format("{0}", "MenuUsuario/MenuUser.aspx");

                Response.Redirect(url);
            }
            else
            {
                url = string.Empty;
                url = string.Format("{0}", "PaginaDeErrores/ErrorLogin.aspx");
                Response.Redirect(url);
            }
        }
    }
}