using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using PIEEDRAWEB.GeneralClases;
using PIEEDRAWEB.SRWSPIEEDRA;

namespace PIEEDRAWEB.Views.Account
{
    public partial class Register : System.Web.UI.Page
    {

        private int res;
        private string msj;
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


        protected void ButtonIngresar_Click(object sender, EventArgs e)
        {
            try
            {
                if (IpUsuario.Value == "")
                {
                    Alerta("Ingresa el usuario");
                }
                else if (IpPassword.Value == "")
                {
                    Alerta("Ingresa el password");
                }
                else if (IpConfirmPass.Value == "")
                {
                    Alerta("Confirma el password");
                }
                else if (IpEmail.Value == "")
                {
                    Alerta("Ingresa el E-mail");
                }
                else if (IpNombre.Value == "")
                {
                    Alerta("Ingresa el nombre");
                }
                else if (IpApellidos.Value == "")
                {
                    Alerta("Ingresa los apellidos");
                }
                else if (IpCiudad.Value == "")
                {
                    Alerta("Ingresa la ciudad de orígen");
                }
                else if (SlGnenero.Value == "0")
                {
                    Alerta("Ingresa tu género");
                }
                else if (SlTipAten.Value == "0")
                {
                    Alerta("Ingresa el tipo de atención a brindar");
                }
                else if (SlAmbito.Value == "0")
                {
                    Alerta("Ingresa el ámbito de trabajo");
                }
                else
                {
                    ComprobarFormatoEmail(IpEmail.Value);

                    if (IpPassword.Value != IpConfirmPass.Value)
                    {
                        Alerta("Los campos de contraseña deben coincidir");
                    }
                    else if (ComprobarFormatoEmail(IpEmail.Value) == false)
                    {
                        Alerta("Dirección de correo no válida");
                    }
                    else
                    {
                        bool resp = false;
                        string usuario = IpUsuario.Value;
                        string password = IpPassword.Value;
                        string conpassword = IpConfirmPass.Value;
                        string email = IpEmail.Value;
                        string nombre = IpNombre.Value;
                        string apellidos = IpApellidos.Value;
                        string ciudad = IpCiudad.Value;
                        string genero = SlGnenero.Value;
                        string atencion = SlTipAten.Value;
                        string ambito = SlAmbito.Value;
                        if (password.Equals(conpassword)) { 
                            WsPIEEDRASoapClient pieedra = new WsPIEEDRASoapClient();
                            string passw = "";
                            passw = password.Encriptar();
                            resp = pieedra.RegistraUser(usuario, passw, email, nombre, apellidos, ciudad, genero, atencion,ambito, ref res, ref msj);
                        }
                        else
                        {
                            Alerta("El Password no coincide");
                        }
                        if (resp == true)
                        {
                        }
                        else if (resp == false)
                        {
                            Alerta("Ficha o contraseña inválidos");
                        }
                        Alerta(msj);
                        Alerta("Después de las validaciones entra al método");
                        LimpiaCampos();
                    }
                }
            }
            catch (Exception ex)
            {
                Alerta(ex.ToString());
            }
        }

        public static bool ComprobarFormatoEmail(string seMailAComprobar)
        {
            String sFormato;
            sFormato = "\\w+([-+.']\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*";
            if (Regex.IsMatch(seMailAComprobar, sFormato))
            {
                if (Regex.Replace(seMailAComprobar, sFormato, String.Empty).Length == 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            else
            {
                return false;
            }
        }

        public void LimpiaCampos()
        {
            try
            {
                IpUsuario.Value = "";
                IpPassword.Value = "";
                IpConfirmPass.Value = "";
                IpEmail.Value = "";
                IpNombre.Value = "";
                IpApellidos.Value = "";
                IpCiudad.Value = "";
                SlGnenero.Value = "0";
                SlTipAten.Value = "0";
                SlAmbito.Value = "0";
            }
            catch (Exception ex)
            {
                Alerta(ex.ToString());
            }            
        }



    }
}