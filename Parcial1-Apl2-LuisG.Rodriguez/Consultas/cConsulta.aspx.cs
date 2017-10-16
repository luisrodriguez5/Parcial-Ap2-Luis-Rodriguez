using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Parcial1_Apl2_LuisG.Rodriguez.Consultas
{
    public partial class cConsulta : System.Web.UI.Page
    {
        public static List<Entidades.Presupuestos> Lista { get; set; }
        public static Entidades.Presupuestos Presupuestos;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private void Filtrar()
        {
            if (FiltrarDropDownList.SelectedIndex == 0)
            {
                Lista = BLL.PresupuestoBLL.GetListAll();
                
            }
            else if (FiltrarDropDownList.SelectedIndex != 0)
            {
                if (FiltrarDropDownList.SelectedIndex == 1)
                {
                    int id = Utilidades.TOINT(FiltroTextBox.Text);
                    Lista = BLL.PresupuestoBLL.GetList(p => p.PresupuestoId == id);
                }
                if (FiltrarDropDownList.SelectedIndex == 2)
                {
                    DateTime FechaDesde = Convert.ToDateTime(FechaDesdeTextBox.Text);
                    DateTime FechaHasta = Convert.ToDateTime(FechaHastaTextBox.Text);
                    Lista = BLL.PresupuestoBLL.GetList(p => p.Fecha >= FechaDesde.Date && p.Fecha <= FechaHasta.Date);
                }
            }

            PresupuestoConsultaGridView.DataSource = Lista;
            PresupuestoConsultaGridView.DataBind();

         
        }

        protected void FiltroButton_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(FiltroTextBox.Text) && FiltrarDropDownList.SelectedIndex == 1)
            {
                PresupuestoConsultaGridView.DataBind();
               
            }
            else if (FiltrarDropDownList.SelectedIndex == 2)
            {
                if (string.IsNullOrEmpty(FechaDesdeTextBox.Text) || string.IsNullOrEmpty(FechaHastaTextBox.Text))
                {
                    PresupuestoConsultaGridView.DataBind();
                   
                   
                }
                else
                {
                    Filtrar();
           
                }
            }
            else
            {
                Filtrar();
               
            }

        }
    }
}