using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Categorias
    {
        [Key]
        public int CategoriaId { get; set; }
        public string Descripcion { get; set; }
        public Categorias()
        {

        }
        public Categorias(int categoriaId, string descripcion)
        {
            this.CategoriaId = categoriaId;
            this.Descripcion = descripcion;
           
        }
    }
}
