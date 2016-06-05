using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using PIEEDRAWEB.GeneralClases;
using PIEEDRAWEB.SRWSPIEEDRA;
using System.Web.Mail;
using System.Net.Mail;
using System.Configuration;
using System.IO;
using System.Text;
using System.Web.Configuration;
using System.Net.Mime;

namespace PIEEDRAWEB.Views.Account
{
    public partial class ForgotPass : System.Web.UI.Page
    {



        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                NewPass.Visible = false;
                IpEmail.Focus();
            }
            catch (Exception ex)
            {
                Alerta(ex.ToString());
            }           
        }

        private void Alerta(string out_texto)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Alerta", "alert('" + out_texto + "');", true);
        }

        protected void ButtonResetPass_Click(object sender, EventArgs e)
        {
            try
            {
                if (IpEmail.Value == "" &&
                    IpUser.Value == "")
                {
                    Alerta("Favor de ingresar alguno de los campos");
                }
                else
                {
                    Alerta("Ingresó todos los campos");
                    IpEmail.Value = "";
                    IpUser.Value = "";

                    //si alguno de los campos que ingresó son válidos para las credenciales
                    //entonces se muestra el cuadro de restablecer contraseña, sino manda el pop que no existe en la DB

                    NewPass.Visible = true;
                    IpNewPassword.Focus();
                    IngUsuMail.Visible = false;
                    ButtonResetPass.Visible = false;
                }              
            }
            catch (Exception ex)
            {
                Alerta(ex.ToString());
            }           
        }

        protected void ButtonCambiaPass_Click(object sender, EventArgs e)
        {
            try
            {
                if (IpNewPassword.Value == "")
                {
                    Alerta("Favor de ingresar la nueva contraseña");
                    NewPass.Visible = true;
                }
                else if (IpConfirmNewPass.Value == "")
                {
                    Alerta("Favor de confirmar la nueva contraseña");
                    NewPass.Visible = true;
                }
                else
                {
                    if (IpNewPassword.Value != IpConfirmNewPass.Value)
                    {
                        Alerta("Los campos de contraseña deben coincidir");
                        NewPass.Visible = true;
                    }
                    else
                    {
                        Alerta("Entra al método para actualizar contraseña");
                    }
                }                
            }
            catch (Exception ex)
            {
                Alerta(ex.ToString());
            }
        }
    }
}