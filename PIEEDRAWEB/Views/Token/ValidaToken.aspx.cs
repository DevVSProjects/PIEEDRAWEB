using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PIEEDRAWEB.SRWSPIEEDRA;
using System.Text.RegularExpressions;
using PIEEDRAWEB.GeneralClases;
using System.Configuration;
using System.IO;


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

                    if (token[2] != "")
                    {
                        aut = pieedra.AutenticaToken(token[1], token[2], token[3], token[4], ref res, ref msj);
                        if (aut == true)
                        {
                            Alerta(msj);

                            token[1].ToString();//usuario del solicitante
                            token[5].ToString();//mail del solicitante
                            msj.ToString();//respuesta de aceptacion o rechazo

                            string body = this.PopulateBody(token[1].ToString(), msj.ToString());
                            this.EnviarCorreo(body, token[5].ToString());

                            ScriptManager.RegisterStartupScript(this, typeof(Page), "CallMyFunction", "cerrarpagina()", true);
                        }
                        else
                        {
                            if (res == 2)
                            {
                                Alerta(msj);
                                ScriptManager.RegisterStartupScript(this, typeof(Page), "CallMyFunction", "cerrarpagina()", true);
                            }
                            else
                            {
                                Alerta(msj);
                                token[1].ToString();//usuario del solicitante
                                token[5].ToString();//mail del solicitante
                                msj.ToString();//respuesta de aceptacion o rechazo

                                string body = this.PopulateBody(token[1].ToString(), msj.ToString());
                                this.EnviarCorreo(body, token[5].ToString());

                                ScriptManager.RegisterStartupScript(this, typeof(Page), "CallMyFunction", "cerrarpagina()", true);
                            }                            
                        }
                    }
                    else
                    {
                        Alerta("Error en procesar la solicitud");
                        ScriptManager.RegisterStartupScript(this, typeof(Page), "CallMyFunction", "cerrarpagina()", true);
                    }                        
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

        private string PopulateBody(string UserName, string Estatus)
        {
            string body = string.Empty;
            using (StreamReader reader = new StreamReader(Server.MapPath("../EmailTemplate/StatusRegister.html")))
            {
                body = reader.ReadToEnd();
            }            
            body = body.Replace("{UserName}", UserName);
            body = body.Replace("{Estatus}", Estatus);
            return body;
        }

        public void EnviarCorreo(string body, string mail)
        {
            /*-------------------------MENSAJE DE CORREO----------------------*/

            //Creamos un nuevo Objeto de mensaje
            System.Net.Mail.MailMessage mmsg = new System.Net.Mail.MailMessage();

            //Direccion de correo electronico a la que queremos enviar el mensaje
            mmsg.To.Add(mail);

            //Nota: La propiedad To es una colección que permite enviar el mensaje a más de un destinatario

            //Asunto
            mmsg.Subject = ConfigurationManager.AppSettings["mailSubject2"].ToString();
            mmsg.SubjectEncoding = System.Text.Encoding.UTF8;

            //Direccion de correo electronico que queremos que reciba una copia del mensaje
            //mmsg.Bcc.Add("destinatariocopia@servidordominio.com"); //Opcional

            //Cuerpo del Mensaje

            string guidResult = System.Guid.NewGuid().ToString();
            mmsg.Body = body;
            mmsg.BodyEncoding = System.Text.Encoding.UTF8;
            mmsg.IsBodyHtml = true; //Si no queremos que se envíe como HTML

            //Correo electronico desde la que enviamos el mensaje
            mmsg.From = new System.Net.Mail.MailAddress(ConfigurationManager.AppSettings["mailFrom2"].ToString());


            /*-------------------------CLIENTE DE CORREO----------------------*/

            //Creamos un objeto de cliente de correo
            System.Net.Mail.SmtpClient cliente = new System.Net.Mail.SmtpClient();

            //Hay que crear las credenciales del correo emisor
            cliente.Credentials =
                new System.Net.NetworkCredential(ConfigurationManager.AppSettings["Credentials11"].ToString(), ConfigurationManager.AppSettings["Credentials22"].ToString());

            //Lo siguiente es obligatorio si enviamos el mensaje desde Gmail

            cliente.Port = Convert.ToInt32(ConfigurationManager.AppSettings["Servidorsmtppto2"].ToString());
            cliente.EnableSsl = true;


            cliente.Host = ConfigurationManager.AppSettings["Servidorsmtp2"].ToString(); //Para Gmail "smtp.gmail.com";


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