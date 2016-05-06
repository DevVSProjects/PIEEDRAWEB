using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Web.Security;
using System.Security.Principal;
using System.Data;
using System.IO;
using System.Drawing;

namespace PIEEDRAWEB.Views.Account
{
    public partial class LogOutMVC : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                Logout();
            }
            catch (Exception ex)
            {
                string s = ex.Message.ToString();
                Logout();

            }
        }

        public void Logout()
        {
            try
            {
                FormsAuthentication.SignOut();

                HttpContext.Current.User = new GenericPrincipal(new GenericIdentity(string.Empty), null);

                Session.Abandon();

                Session.Clear();

                /*
                Response.Write("<script>window.opener = 'self';" +
                "self.window.close();</script>");
                */

                Response.Cookies.Add(new HttpCookie("ASP.NET_SessionId", ""));

                Response.Redirect("LogInMVC.aspx");
            }
            catch (Exception ex)
            {
                Alerta(ex.ToString());
            }
        }

        private void Alerta(string ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Alerta", "alert('" + ex + "');", true);
        }



    }
}