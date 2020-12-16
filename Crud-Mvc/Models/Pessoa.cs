using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace Crud_Mvc.Models
{
    public class Pessoa
    {
        [Display(Name = "Código")]
        public int Id { get; set; }

        [Required(ErrorMessage = "O CPF é obrigatório.")]
        public string CPF { get; set; }

        [Display(Name = "Nome")]
        [Required(ErrorMessage = "O Nome é obrigatório.")]
        public string Descricao { get; set; }

        public int? Sexo { get; set; }
        public int? Idade { get; set; }
        public bool?  Ativo { get; set; }
    }
}
