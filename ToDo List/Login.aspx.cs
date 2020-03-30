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

                //Session["user"] = user;
                //Response.Redirect("Default.aspx");

                // cria dado personalizado que sera adicionado ao cookie
                string userDataString = user.UserId.ToString();
                // cria o cookie que contem o ticket de autenticacao
                HttpCookie authCookie = FormsAuthentication.GetAuthCookie(user.Nome, false);
                // pega o ticket de autenticacao
                FormsAuthenticationTicket ticket = FormsAuthentication.Decrypt(authCookie.Value);
                // cria um novo tipo de autenticao, passando o valor customizado "userDataString"
                FormsAuthenticationTicket newTicket = new FormsAuthenticationTicket(ticket.Version, ticket.Name, ticket.IssueDate, ticket.Expiration, ticket.IsPersistent, userDataString);

                // atualiza o valor do cookie
                authCookie.Value = FormsAuthentication.Encrypt(newTicket);
                // adiciona o cookie manualmente
                Response.Cookies.Add(authCookie);

                // pega a url de redirecionamente e manda o usuario para la
                string redirUrl = FormsAuthentication.GetRedirectUrl(user.Nome, false);
                Response.Redirect(redirUrl);

                //FormsAuthentication.RedirectFromLoginPage(user.Nome, false);
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