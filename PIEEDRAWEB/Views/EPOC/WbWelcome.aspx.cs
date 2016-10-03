using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Drawing;
using System.Web.Services;
using System.Web.Script.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;
using System.Configuration;
using System.Globalization;
using System.Threading;
using System.Security.Claims;
using System.Security.Principal;
using System.Web.Security;
using Microsoft.AspNet.Identity;
using PIEEDRAWEB.GeneralClases;
using PIEEDRAWEB.SRWSPIEEDRA;

namespace PIEEDRAWEB.Views.EPOC
{
    public partial class WbWelcome : System.Web.UI.Page
    {
        string sUser;
        string Opcmen = "Pag_Atencion_Medica";
        string transacc = "ExaGenIncisoA";
        string tUs;
        string Unitrab;
        string Fecha;
        string ClaveEsp;        


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                try
                {

                    if (!User.Identity.IsAuthenticated)
                    {
                        Response.Redirect("~/Views/Account/LogOutMVC.aspx");
                    }

                    /*
                    tUs = Session["TipoUser"].ToString();
                    Roles Rl = new Roles();

                    bool val = Rl.Valida(tUs, transacc, "");
                    if (!val)
                    {
                        Response.Redirect("~/Views/Account/LogOutMVC.aspx");
                    }
                    */

                    DateTime today = System.DateTime.Today;
                    LlenaDatosUsuario();

                }

                catch (Exception ex)
                {
                    Alerta(ex.ToString());
                }
            }
        }


        private void Alerta(string Out_texto)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Alerta", "alert('" + Out_texto + "');", true);
        }

        private void LlenaDatosUsuario()
        {
            try
            {
                int res = 0;
                string msj = "";
                string passw = "";
                passw = Session["Pass"].ToString().Encriptar();

                WsPIEEDRASoapClient pieedra = new WsPIEEDRASoapClient();
                DataSet resp = pieedra.AutenticaUser(Session["Usuario"].ToString(), passw.ToString(), ref res, ref msj);

                if (resp.Tables[0].Rows[0].ItemArray[11].ToString() == "1")
                {
                    LabelBienvenida.Text = "Bienvenido";
                }
                else
                {
                    LabelBienvenida.Text = "Bienvenida";
                }

                LabelNombre.Text = resp.Tables[0].Rows[0].ItemArray[3].ToString() + ' ' + resp.Tables[0].Rows[0].ItemArray[4].ToString();
            }
            catch (Exception ex)
            {
                Alerta(ex.ToString());
            }
        }


    }
}