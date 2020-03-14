using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace ToDo_List.Models
{
    public class Item
    {
        [Key]
        public int ItemId { get; set; }

        [Required, StringLength(50)]
        public string Nome { get; set; }

    }
}