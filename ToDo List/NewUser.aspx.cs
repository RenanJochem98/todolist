using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ToDo_List.Models;

namespace ToDo_List
{
    public partial class NewUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void BtnBackToInitPage(Object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        public void BtnCreateNewUser(Object sender, EventArgs e) {
            UserManager userManager = new UserManager();
            String nome = txtNome.Text;
            String email = txtEmail.Text;
            String senha = txtSenha.Text;

            userManager.Add(nome, email, senha);
            Response.Redirect("Login.aspx");


        }
    }
}