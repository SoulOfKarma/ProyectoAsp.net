using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CapaVista
{
    public partial class Banner : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLugar_Click(object sender, EventArgs e)
        {
            Server.Transfer("Lugar.aspx");
        }

        protected void btnComida_Click(object sender, EventArgs e)
        {
            Server.Transfer("Comida.aspx");
        }

        protected void btnTransporte_Click(object sender, EventArgs e)
        {
            Server.Transfer("Transporte.aspx");
        }

        protected void btnBebestibles_Click(object sender, EventArgs e)
        {
            Server.Transfer("Bebestibles.aspx");
        }

        protected void btnMusica_Click(object sender, EventArgs e)
        {
            Server.Transfer("Musica.aspx");
        }

        protected void btnVarios_Click(object sender, EventArgs e)
        {
            Server.Transfer("Varios.aspx");
        }
    }
}