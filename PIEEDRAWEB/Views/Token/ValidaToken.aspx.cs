using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web;
using System.Web.UI;

namespace PIEEDRAWEB.Views.Token
{
    public partial class ValidaToken : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                try
                {
                    string url = HttpContext.Current.Request.Url.AbsoluteUri;
                    string[] token;
                    string[] Estatus;
                    token = url.Split('?', '%');
                    Estatus = url.Split('%');

                    if (!token[1].Equals(""))
                    {
                        ValidaToken_SP(token[1], Estatus[1]);
                    }

                    DateTime today = System.DateTime.Today;
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