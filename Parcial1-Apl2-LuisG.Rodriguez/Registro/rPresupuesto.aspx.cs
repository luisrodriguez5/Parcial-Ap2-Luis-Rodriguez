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
    public partial class rPresupuesto : System.Web.UI.Page
    {
        public Presupuestos presupuesto;
        protected void Page_Load(object sender, EventArgs e)
        {
            presupuesto = new Presupuestos();

        }
        private Presupuestos LlenarCampos()
        {

            presupuesto.PresupuestoId = Utilidades.TOINT(PresupuestoIdTextBox.Text);
            presupuesto.Descripcion = DescripcionTextBox.Text;
            presupuesto.Monto = Utilidades.TOINT(MontoTextBox.Text);
            presupuesto.Fecha = Convert.ToDateTime(FechaTextBox.Text);

            return presupuesto;
        }

        private bool Validar()
        {
            bool interruptor = true;

            if (string.IsNullOrEmpty(DescripcionTextBox.Text))
            {
                interruptor = false;
            }
            if (string.IsNullOrEmpty(MontoTextBox.Text))
            {
                interruptor = false;
            }
            if (string.IsNullOrEmpty(FechaTextBox.Text))
            {
                interruptor = false;
            }
            return interruptor;
        }


        protected void GuardarButton_Click(object sender, EventArgs e)
        {
            if (Validar())
            {
                presupuesto = LlenarCampos();
                PresupuestoBLL.Guardar(presupuesto);


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