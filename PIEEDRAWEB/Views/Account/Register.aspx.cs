using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PIEEDRAWEB.Views.Account
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void Alerta(string out_texto)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Alerta", "alert('" + out_texto + "');", true);
        }

       

        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Verifies that the control is rendered */
        }

        protected void LBRegistrar_Click(object sender, EventArgs e)
        {
           Alerta("que onda");
        }

      
    }
}