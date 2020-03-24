using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ToDo_List.Models
{
    public class UserManager
    {
        private ItemContext db = new ItemContext();

        public User GetUser(String email, String senha)
        {
            IQueryable<User> users = db.Users;
            IQueryable<User> usersFiltred = users.Where(u => u.Email == email && u.Password == senha);
            User user = usersFiltred.FirstOrDefault();

            if(user == null)
            {
                throw new Exception("Usuário/Senha inválidos.");
            }
            return user;
        }

        public void Add(String nome, String email, String senha)
        {
            User user = new User
            {
                Nome = nome,
                Email = email,
                Password = senha
            };
            db.Users.Add(user);
            db.SaveChanges();
            
        }
    }
}