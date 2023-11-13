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

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            Mostrar();
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {

        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            Mostrar();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            Mostrar();
            GridView1.EditRowStyle.BackColor = System.Drawing.Color.Blue;
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            TextBox C1 = GridView1.Rows[e.RowIndex].FindControl("TextBox2") as TextBox;
            TextBox N2 = GridView1.Rows[e.RowIndex].FindControl("TextBox3") as TextBox;
            TextBox A3 = GridView1.Rows[e.RowIndex].FindControl("TextBox4") as TextBox;
            TextBox D4 = GridView1.Rows[e.RowIndex].FindControl("TextBox5") as TextBox;
            TextBox T5 = GridView1.Rows[e.RowIndex].FindControl("TextBox6") as TextBox;
            TextBox r6 = GridView1.Rows[e.RowIndex].FindControl("TextBox7") as TextBox;
            TextBox s5 = GridView1.Rows[e.RowIndex].FindControl("TextBox8") as TextBox;
            tabla.UpdateQuery(
                 C1.Text,
                 N2.Text,
                 A3.Text,
                 D4.Text,
                 T5.Text,
                 r6.Text,
                 s5.Text
                );
            GridView1.EditIndex = -1;
            Response.Write("<script>alert('Medico Actualizado Correctamente')</script>");
            Mostrar();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           
        }
    }
}