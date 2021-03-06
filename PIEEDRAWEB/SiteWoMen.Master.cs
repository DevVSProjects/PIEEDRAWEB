﻿using System;
using System.Collections.Generic;
using System.Security.Claims;
using System.Security.Principal;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using System.Data;
using System.Linq;
using System.Text;
using PIEEDRAWEB.GeneralClases;
using PIEEDRAWEB.SRWSPIEEDRA;


namespace PIEEDRAWEB
{
    public partial class SiteWoMen : System.Web.UI.MasterPage
    {
        string Nombre_Medico;
        string Unidad_Descri;
        private const string AntiXsrfTokenKey = "__AntiXsrfToken";
        private const string AntiXsrfUserNameKey = "__AntiXsrfUserName";
        private string _antiXsrfTokenValue;        

        protected void Page_Init(object sender, EventArgs e)
        {
            // The code below helps to protect against XSRF attacks
            var requestCookie = Request.Cookies[AntiXsrfTokenKey];
            Guid requestCookieGuidValue;
            if (requestCookie != null && Guid.TryParse(requestCookie.Value, out requestCookieGuidValue))
            {
                // Use the Anti-XSRF token from the cookie
                _antiXsrfTokenValue = requestCookie.Value;
                Page.ViewStateUserKey = _antiXsrfTokenValue;
            }
            else
            {
                // Generate a new Anti-XSRF token and save to the cookie
                _antiXsrfTokenValue = Guid.NewGuid().ToString("N");
                Page.ViewStateUserKey = _antiXsrfTokenValue;

                var responseCookie = new HttpCookie(AntiXsrfTokenKey)
                {
                    HttpOnly = true,
                    Value = _antiXsrfTokenValue
                };
                if (FormsAuthentication.RequireSSL && Request.IsSecureConnection)
                {
                    responseCookie.Secure = true;
                }
                Response.Cookies.Set(responseCookie);
            }

            Page.PreLoad += master_Page_PreLoad;
        }

        protected void master_Page_PreLoad(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Set Anti-XSRF token
                ViewState[AntiXsrfTokenKey] = Page.ViewStateUserKey;
                ViewState[AntiXsrfUserNameKey] = Context.User.Identity.Name ?? String.Empty;
            }
            else
            {
                // Validate the Anti-XSRF token
                if ((string)ViewState[AntiXsrfTokenKey] != _antiXsrfTokenValue
                    || (string)ViewState[AntiXsrfUserNameKey] != (Context.User.Identity.Name ?? String.Empty))
                {
                    throw new InvalidOperationException("Validation of Anti-XSRF token failed.");
                }
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
#if DEBUG
            loginRed = "445869";
            s_EstacTrab = "MIEQ";
            IP = "143.6.32.105";
            Usuario = "97000287";
#endif

            if (!Page.IsPostBack)
            {
                try
                {
                    if (Session["Usuario"] == null)
                    {
                        Response.Redirect("~/Views/Account/LogOutMVC.aspx");
                    }
                    else
                    {
                        int res = 0;
                        string msj = "";
                        string passw = "";

                        passw = Session["Pass"].ToString().Encriptar();

                        WsPIEEDRASoapClient pieedra = new WsPIEEDRASoapClient();
                        DataSet resp = pieedra.AutenticaUser(Session["Usuario"].ToString(), passw.ToString(), ref res, ref msj);
                        
                        LabelUsuario.Text = resp.Tables[0].Rows[0].ItemArray[3].ToString() + ' ' + resp.Tables[0].Rows[0].ItemArray[4].ToString();

                    }
                }
                catch (Exception ex)
                {
                    Alerta(ex.ToString());
                }

            }
        }

        protected void Unnamed_LoggingOut(object sender, LoginCancelEventArgs e)
        {
            Context.GetOwinContext().Authentication.SignOut(DefaultAuthenticationTypes.ApplicationCookie);
        }


        private void Alerta(string Salida)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Alerta", "alert('" + Salida + "');", true);
        }

        protected void ButtonAsignaSPMT_Click(object sender, EventArgs e)
        {
            int Resultado = 0;
            string Salida = "";

            //string SPMT = HiddenFieldSPMTChoosed.Value;
            //string SPMTCorto = SPMT.Substring(SPMT.LastIndexOf('/') + 1);

            //Session["SMPT"] = SPMTCorto;
        }
    }
}