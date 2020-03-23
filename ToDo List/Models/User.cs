using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace ToDo_List.Models
{
    public class User
    {
        [Key]
        public int UserId { get; set; }

        [Required, StringLength(50)]
        public string Nome { get; set; }
        
        [Required, StringLength(150)]
        public string Email { get; set; }
        
        [Required, StringLength(200)]
        public string Password { get; set; }
    }
}