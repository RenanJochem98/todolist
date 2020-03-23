using System;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace ToDo_List.Models
{
    public class ItemContext : DbContext
    {
        public ItemContext() : base("Itens") { }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            Database.SetInitializer<ItemContext>(null);
            base.OnModelCreating(modelBuilder);
        }
        public DbSet<Item> Itens { get; set; }
        public DbSet<User> Users { get; set; }

    }
}