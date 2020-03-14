using System;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace ToDo_List.Models
{
    public class ItemContext : DbContext
    {
        public ItemContext() : base("Itens") { }

        public DbSet<Item> Itens { get; set; }

    }
}