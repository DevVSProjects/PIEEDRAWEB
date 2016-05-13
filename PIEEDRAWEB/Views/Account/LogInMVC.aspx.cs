using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using System.Web.Script.Services;
using System.IO;
using System.Text;
using System.Security;
using PIEEDRAWEB.GeneralClases;
using PIEEDRAWEB.SRWSPIEEDRA;


namespace PIEEDRAWEB.Views.Account
{
    public partial class LogInMVC : System.Web.UI.Page
    {
        string sUser;
        string Opcmen = "Log_In";
        string Pass;
        private int res;
        private string msj;
        string Platform = "Plataforma_Web";
        //SIAS.Domain.Cs.pr_autentica_usuario AuntenticaUser = new SIAS.Domain.Cs.pr_autentica_usuario();
        //SIAS.Domain.Cs.Roles_USUA Roles_Usua = new SIAS.Domain.Cs.Roles_USUA();

        protected void Page_Load(object sender, EventArgs e)
        {
            InFicha.Focus();
        }

        private void Alerta(string out_texto)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Alerta", "alert('" + out_texto + "');", true);
        }

        protected void ButtonIngresar_Click(object sender, EventArgs e)
        {
            try
            {
                string EstacionTrabajo = "";
                string IPAdd = "";
                int out_codigo = 0;
                string out_texto = "";

                res = 0;
                msj = "";


                EstacionTrabajo = Request.ServerVariables["REMOTE_HOST"];
                if (String.IsNullOrEmpty(EstacionTrabajo))
                { EstacionTrabajo = Environment.MachineName; }
                else
                { EstacionTrabajo = Request.ServerVariables["REMOTE_HOST"]; }


                IPAdd = Request.ServerVariables["HTTP_X_FORWARDED_FOR"];

                if (String.IsNullOrEmpty(IPAdd))
                { IPAdd = Request.ServerVariables["REMOTE_ADDR"].ToString(); }
                else
                { IPAdd = Request.ServerVariables["HTTP_X_FORWARDED_FOR"].ToString(); }


                Session["UserRedName"] = System.Security.Principal.WindowsIdentity.GetCurrent().Name.ToString();
                Session["EstacionTrabajo"] = EstacionTrabajo;
                Session["IP"] = IPAdd;


                sUser = InFicha.Value.ToString();
                Session["Usuario"] = sUser.ToString();
                Session["Pass"] = InPassword.Value.ToString();
               
                Pass = InPassword.Value.ToString();
                string Salida = "";
                int Resultado = 0;
                string Campo_Curp = "";
                string password = "";
                password = Pass.Encriptar();
                password = password.DesEncriptar();

                WsPIEEDRASoapClient pieedra = new WsPIEEDRASoapClient();
                DataSet resp = pieedra.AutenticaUser(sUser, password, ref res, ref msj);

                if (res == 1)
                {
                    Response.Redirect("../../Index.aspx",false);
                    HttpContext.Current.ApplicationInstance.CompleteRequest();
                }
                else if(res==0)
                {   
                    Alerta("Ficha o contraseña inválidos");
                }
                //System.Data.DataSet ds = AuntenticaUser.autentica_usuarioClass(sUser, Pass, 0, Session["UserRedName"].ToString(), Session["IP"].ToString(), Session["EstacionTrabajo"].ToString(), ref out_codigo, ref out_texto);

                //if (out_codigo == 0)
                //{
                //    System.Web.Security.FormsAuthentication.SetAuthCookie(InFicha.Value, false);

                //    System.Data.DataSet ds2 = Roles_Usua.Roles_UsuaClass(sUser, ref out_codigo, ref out_texto);

                //    if (ds2.Tables[0].Rows[0].ItemArray[2].ToString() == "OSPMT")
                //    {
                //        Response.Redirect("WbWelcome.aspx");
                //        return;

                //    }
                //}
                //else
                //{
                //    Alerta(out_texto);
                //    InFicha.Value = "";
                //    InFicha.Focus();
                //}
            }

            catch (Exception ex)
            {
                Alerta(ex.ToString());
            }
        }



        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Verifies that the control is rendered */
        }
    }
}