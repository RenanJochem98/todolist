using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
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
            UserManager userManager = new UserManager();
            String email = txtLogin.Text;
            String senha = txtSenha.Text;
            User user = userManager.GetUser(email, senha);
            if(user != null)
            {
                Session["user"] = user;
                Response.Redirect("Default.aspx");
            }
            else
            {
                errorLbl.Text = "Usuário/Senha inválidos.";
                errorLbl.Visible = true;
                lkBtnHideWarning.Visible = true;
            }
            
        }

        public void btnHideWarning(Object sender, EventArgs e)
        {
            errorLbl.Text = "";
            errorLbl.Visible = false;
            lkBtnHideWarning.Visible = false;
        }
    }
}