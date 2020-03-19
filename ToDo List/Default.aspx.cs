using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ToDo_List.Models;
namespace ToDo_List
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IQueryable<Item> getItens()
        {
            ItemManager im = new ItemManager();
            return im.getItens();
        }

        public void btnAddOnClick(Object sender, System.EventArgs e)
        {
            ItemManager im = new ItemManager();
            im.add(nome.Text);
            Response.Redirect("Default.aspx");
        }

        public void btnAtualizaOnClick(Object sender, EventArgs e)
        {
            ItemManager im = new ItemManager();
            LinkButton btn = sender as LinkButton;
            int id = Convert.ToInt32(btn.CommandName);
            String text = "";
            for (int i =0; i < itens.Items.Count; i++)
            {
                object a = itens.DataKeys[i].Values["ItemId"];
                int idAtual = Convert.ToInt32(a);
                if(idAtual == id)
                {
                    var txt = (TextBox)itens.Items[i].FindControl("txtAtualizaNome");
                    text = txt.Text;
                    break;
                }
                
            }
            im.update(id, text);
            Response.Redirect("Default.aspx");

        }
        public void btnRemoverOnClick(Object sender, EventArgs e)
        {
            ItemManager im = new ItemManager();
            LinkButton btn = sender as LinkButton;
            String id = btn.CommandName;
            im.remove(Convert.ToInt32(id));
            Response.Redirect("Default.aspx");
        }
    }
}