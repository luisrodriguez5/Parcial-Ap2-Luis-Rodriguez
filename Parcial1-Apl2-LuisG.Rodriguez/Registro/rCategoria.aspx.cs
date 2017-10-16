using BLL;
using Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Parcial1_Apl2_LuisG.Rodriguez.Registro
{
    public partial class rCategoria : System.Web.UI.Page
    {
        public Categorias categoria;
        protected void Page_Load(object sender, EventArgs e)
        {
            categoria = new Categorias();

        }
        private Categorias LlenarCampos()
        {

            categoria.CategoriaId = Utilidades.TOINT(CategotiaIdTexBox.Text);
            categoria.Descripcion = Descripcion.Text;

            return categoria;
        }

        private bool Validar()
        {
            bool interruptor = true;

            if (string.IsNullOrEmpty(Descripcion.Text))
            {
                interruptor = false;
            }
           
            return interruptor;
        }

        protected void GuardarButton_Click(object sender, EventArgs e)
        {
            if (Validar())
            {
                categoria = LlenarCampos();
                CategoriaBLL.Guardar(categoria);


            }

        }

        protected void NuevoButton_Click(object sender, EventArgs e)
        {

        }

        protected void EnviarAlModalEliminarButton_Click(object sender, EventArgs e)
        {

        }
    }
}