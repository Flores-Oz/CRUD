using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CRUDCHAFA.DATA.DataSet1TableAdapters;

namespace CRUDCHAFA.Pages
{
    public partial class Create : System.Web.UI.Page
    {
        Table_1TableAdapter tabla = new Table_1TableAdapter();
        public void Mostrar()
        {
            GridView1.DataSource = tabla.MostrarInformacion();
            GridView1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Mostrar();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            tabla.Insertar(
                TextBox1.Text,
                TextBox2.Text,
                TextBox3.Text,
                TextBox4.Text,
                TextBox5.Text,
                TextBox6.Text,
                TextBox7.Text
                );
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Guardado con Éxito');", true);
            Mostrar();
        }
    }
}