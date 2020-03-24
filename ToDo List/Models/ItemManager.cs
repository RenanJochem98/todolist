using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ToDo_List.Models
{
    public class ItemManager
    {
        private ItemContext db = new ItemContext();

        public IQueryable<Item> getItens()
        {
            IQueryable<Item> itens = db.Itens;
            return itens;
        }

        public IQueryable<Item> GetItensFromUser(int userId)
        {
            IQueryable<Item> itens = db.Itens.Where(i => i.UserId == userId);
            return itens;
        }
        public void Add(String nome, int userId)
        {
            if(nome == "")
            {
                throw new Exception("Não é possível adicionar uma tarefa sem nenhum texto!");
            }
            else
            {
                Item item = new Item
                {
                    Nome = nome,
                    UserId = userId
                };
                db.Itens.Add(item);
                db.SaveChanges();
            }
        }
        public void update(int id, String newName)
        {
            Item item = db.Itens.Find(id);
            item.Nome = newName;
            db.SaveChanges();
        }
        public void remove(Int32 id)
        {
            Item item = db.Itens.Find(id);
            db.Itens.Remove(item);
            db.SaveChanges();
        }
    }
}