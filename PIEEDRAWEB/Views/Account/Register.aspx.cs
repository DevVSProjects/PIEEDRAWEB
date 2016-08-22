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
    public partial class Register : System.Web.UI.Page
    {

        private int res;
        private string msj;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                IpUsuario.Focus();
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

        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Verifies that the control is rendered */
        }       


        protected void ButtonIngresar_Click(object sender, EventArgs e)
        {
            WsPIEEDRASoapClient pieedra = new WsPIEEDRASoapClient();
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

                        if (password.Equals(conpassword))
                        { 
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
                            Alerta(msj);
                            LimpiaCampos();

                            bool respupdate = false;
                            string controlupd = "token";
                            //entra enviar mail
                            string guidResult = System.Guid.NewGuid().ToString();

                            respupdate = pieedra.RegistraUser(usuario, controlupd, email, nombre, apellidos, guidResult, genero, atencion, ambito, ref res, ref msj);
                            string body = this.PopulateBody(ConfigurationManager.AppSettings["SystemAdminName"].ToString(), usuario, nombre, apellidos, ciudad, atencion, ambito, email, guidResult);
                            this.EnviarCorreo(body);

                        
                        }
                        else if (resp == false)
                        {
                            Alerta(msj);
                            LimpiaCampos();
                        }                        
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
            

        private string PopulateBody(string SystemAdminName, string UserName, string Nombre, string Apellidos, string Ciudad, string TipoAtencion, string Modulo, string Email, string guidResult)
        {
            string body = string.Empty;
            using (StreamReader reader = new StreamReader(Server.MapPath("../EmailTemplate/RegisterTemplate.html")))
            {
                body = reader.ReadToEnd();
            }
            if (TipoAtencion == "1")
            {
                TipoAtencion = "Público";
            } else if (TipoAtencion == "2")
            {
                TipoAtencion = "Privado";
            }
            if (Modulo == "1")
            {
                Modulo = "Espirometrías";
            } else if (Modulo == "2")
            {
                Modulo = "EPOC";
            }
            body = body.Replace("{SystemAdminName}", SystemAdminName);
            body = body.Replace("{UserName}", UserName);
            body = body.Replace("{Nombre}", Nombre);
            body = body.Replace("{Apellidos}", Apellidos);
            body = body.Replace("{Ciudad}", Ciudad);
            body = body.Replace("{TipoAtencion}", TipoAtencion);
            body = body.Replace("{Modulo}", Modulo);
            body = body.Replace("{Email}", Email);
            body = body.Replace("{Token}", guidResult);          

            return body;          
        }

        public void EnviarCorreo(string body)
        {
            /*-------------------------MENSAJE DE CORREO----------------------*/

            //Creamos un nuevo Objeto de mensaje
            System.Net.Mail.MailMessage mmsg = new System.Net.Mail.MailMessage();

            //Direccion de correo electronico a la que queremos enviar el mensaje
            mmsg.To.Add(ConfigurationManager.AppSettings["mailTo"].ToString());

            //Nota: La propiedad To es una colección que permite enviar el mensaje a más de un destinatario

            //Asunto
            mmsg.Subject = ConfigurationManager.AppSettings["mailSubject"].ToString();
            mmsg.SubjectEncoding = System.Text.Encoding.UTF8;

            //Direccion de correo electronico que queremos que reciba una copia del mensaje
            //mmsg.Bcc.Add("destinatariocopia@servidordominio.com"); //Opcional

            //Cuerpo del Mensaje

            string guidResult = System.Guid.NewGuid().ToString();
            mmsg.Body = body;
            mmsg.BodyEncoding = System.Text.Encoding.UTF8;
            mmsg.IsBodyHtml = true; //Si no queremos que se envíe como HTML

            //Correo electronico desde la que enviamos el mensaje
            mmsg.From = new System.Net.Mail.MailAddress(ConfigurationManager.AppSettings["mailFrom"].ToString());


            /*-------------------------CLIENTE DE CORREO----------------------*/

            //Creamos un objeto de cliente de correo
            System.Net.Mail.SmtpClient cliente = new System.Net.Mail.SmtpClient();

            //Hay que crear las credenciales del correo emisor
            cliente.Credentials =
                new System.Net.NetworkCredential(ConfigurationManager.AppSettings["Credentials1"].ToString(), ConfigurationManager.AppSettings["Credentials2"].ToString());

            //Lo siguiente es obligatorio si enviamos el mensaje desde Gmail
            
            cliente.Port = Convert.ToInt32(ConfigurationManager.AppSettings["Servidorsmtppto"].ToString());
            cliente.EnableSsl = true;


            cliente.Host = ConfigurationManager.AppSettings["Servidorsmtp"].ToString(); //Para Gmail "smtp.gmail.com";


            /*-------------------------ENVIO DE CORREO----------------------*/

            try
            {
                //Enviamos el mensaje      
                cliente.Send(mmsg);
            }
            catch (System.Net.Mail.SmtpException ex)
            {
                Alerta(ex.ToString());
            }
        }



    }
}