using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using ToDo_List.Models;

namespace ToDo_List
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void btnDoLogin(object sender, EventArgs e)
        {
            try
            {
                UserManager userManager = new UserManager();
                string email = txtLogin.Text;
                string senha = txtSenha.Text;
                User user = userManager.GetUser(email, senha);

                Session["user"] = user;
                //Response.Redirect("Default.aspx");
                FormsAuthentication.RedirectFromLoginPage(email, false);
            }
            catch (Exception ex)
            {
                errorLbl.Text = ex.Message;
                errorLbl.Visible = true;
                lkBtnHideWarning.Visible = true;
            }
        }

        public void BtnNewUser(Object sender, EventArgs e)
        {
            Response.Redirect("NewUser.aspx");
        }

        public void btnHideWarning(Object sender, EventArgs e)
        {
            errorLbl.Text = "";
            errorLbl.Visible = false;
            lkBtnHideWarning.Visible = false;
        }
    }
}