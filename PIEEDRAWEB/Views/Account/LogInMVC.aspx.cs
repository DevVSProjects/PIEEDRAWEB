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

                int res = 0;
                string msj = "";


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
                //password = password.DesEncriptar();

                WsPIEEDRASoapClient pieedra = new WsPIEEDRASoapClient();
                DataSet resp = pieedra.AutenticaUser(sUser, password, ref res, ref msj);

                if (res == 1)
                {
                    bool respHist = pieedra.RegistraHistorico(sUser, Session["UserRedName"].ToString(),
                        Session["IP"].ToString(), Session["EstacionTrabajo"].ToString(), "Ingreso al Sistema", ref res,
                        ref msj);
                    if (respHist == true)
                    {
                        if (resp.Tables[0].Rows[0].ItemArray[12].ToString() == "Espirometria")
                        {
                            Response.Redirect("../Espirometrias/Espirometrias.aspx", false);
                            HttpContext.Current.ApplicationInstance.CompleteRequest();
                        }
                        else if (resp.Tables[0].Rows[0].ItemArray[12].ToString() == "EPOC")
                        {
                            Response.Redirect("../EPOC/WbWelcome.aspx", false);
                            HttpContext.Current.ApplicationInstance.CompleteRequest();
                        }
                        else if (resp.Tables[0].Rows[0].ItemArray[12].ToString() == "Admin")
                        {
                            Response.Redirect("../EPOC/WbWelcome.aspx", false);
                            HttpContext.Current.ApplicationInstance.CompleteRequest();
                        }
                    }
                    else
                    {
                        Alerta(msj);
                    }                   
                }
                else if(res==0)
                {   
                    Alerta(msj);
                    InFicha.Value = "";
                    InFicha.Focus();
                }                
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