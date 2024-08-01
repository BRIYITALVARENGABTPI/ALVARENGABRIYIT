using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ALTAS : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
 }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {}
        
    protected void Button1_Click2(object sender, EventArgs e)
    {
        SqlDataSource1.InsertParameters["FECHAREGISTRO"].DefaultValue = TXTFECHAINGRESO.Text;

        SqlDataSource1.InsertParameters["NOMBREPACIENTE"].DefaultValue = TXTNOMBRE.Text;

        SqlDataSource1.InsertParameters["EDAD"].DefaultValue = TXTEDAD.Text;
        SqlDataSource1.InsertParameters["SEXO"].DefaultValue = DDLSEXO.Text;
        SqlDataSource1.InsertParameters["DEPARTAMENTO"].DefaultValue = TXTDEPARTAMENTO.Text;
        SqlDataSource1.InsertParameters["DIRECCION"].DefaultValue = TXTDIRECCION.Text;
        SqlDataSource1.InsertParameters["FECHAINICIOSINTOMAS"].DefaultValue = TXTFECHASINTOMAS.Text;

        SqlDataSource1.InsertParameters["GRAVEDAD"].DefaultValue = DDLGRAVEDAD.Text;
        SqlDataSource1.InsertParameters["OBSERVACIONES"].DefaultValue = TXTOBSERVACIONES.Text;
       
        SqlDataSource1.InsertParameters["FOTOPACIENTE"].DefaultValue = FileUpload1.FileName;

        SqlDataSource1.Insert();
        Label1.Text = "Se efectuó la carga";
        TXTFECHAINGRESO.Text = "";
        TXTNOMBRE.Text = "";
        TXTEDAD.Text = "";
        DDLSEXO.Text = "";
        TXTDEPARTAMENTO.Text = "";
        TXTDIRECCION.Text = "";
        TXTFECHASINTOMAS.Text = "";
        DDLGRAVEDAD.Text = "";
        TXTOBSERVACIONES.Text = "";
    }
    }

