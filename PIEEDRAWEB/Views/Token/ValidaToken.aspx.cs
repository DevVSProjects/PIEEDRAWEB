using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web;
using System.Web.UI;
using PIEEDRAWEB.SRWSPIEEDRA;

namespace PIEEDRAWEB.Views.Token
{
    public partial class ValidaToken : System.Web.UI.Page
    {
        private int res;
        private string msj;


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                int res = 0;
                string msj = "";
                WsPIEEDRASoapClient pieedra = new WsPIEEDRASoapClient();

                try
                {
                    bool aut = false;
                    string url = HttpContext.Current.Request.Url.AbsoluteUri;
                    string[] token;
                    string[] Estatus;
                    token = url.Split('?', '&');
                    Estatus = url.Split('&');

                    if (token[2]!="")
                    {
                       aut =pieedra.AutenticaToken(token[1], token[2], token[3], ref res, ref msj);
                    }
                        Alerta(msj);

                    ScriptManager.RegisterStartupScript(this, typeof(Page), "CallMyFunction", "cerrarpagina()", true);
                }

                catch (Exception ex)
                {
                    Alerta(ex.Message.ToString());
                    /* ManejaError.PublicaError(this, ex); */
                }
            }
        }

        private void Alerta(string out_texto)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Alerta", "alert('" + out_texto + "');", true);
        }

        private void ValidaToken_SP(string Token_Value, string Estatus_Value)
        {
            try
            {
                int out_codigo = 0;
                string out_texto = "";
                
                //System.Data.DataSet ds = ValidateToken.ValidatePassTokenWs(Token_Value, ref out_codigo, ref out_texto);              

                if (out_codigo == 0)
                {
                    Alerta(Estatus_Value.Substring(2));
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "CallMyFunction", "cerrarpagina()", true);
                }
                else
                {
                    Alerta(out_texto);
                }
            }
            catch (Exception ex)
            {
                Alerta(ex.Message.ToString());
                /* ManejaError.PublicaError(this, ex); */
            }
        }



    }
}