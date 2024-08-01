using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MODIFICACIONES : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    

protected void BTNBUSCAR_Click(object sender, EventArgs e)
{
    SqlDataSourcepacientes.SelectParameters["ID"].DefaultValue = TextBox1.Text;
    SqlDataSourcepacientes.DataSourceMode = SqlDataSourceMode.DataReader;
    SqlDataReader registros;

    registros = (SqlDataReader)SqlDataSourcepacientes.Select(DataSourceSelectArguments.Empty);
    if (registros.Read())
    {
        TXTFECHAINGRESO.Text = registros["FECHAREGISTRO"].ToString();
        TXTNOMBRE.Text = registros["NOMBREPACIENTE"].ToString();
        TXTEDAD.Text = registros["EDAD"].ToString();
        DDLSEXO.SelectedValue = registros["SEXO"].ToString();
        TXTDEPARTAMENTO.Text = registros["DEPARTAMENTO"].ToString();
        TXTDIRECCION.Text = registros["DIRECCION"].ToString();
        TXTFECHASINTOMAS.Text = registros["FECHAINICIOSINTOMAS"].ToString();
        // TXTDIAGNOSTICO.Text = registros["DIAGNOSTICO"].ToString(); // Comentado porque no existe
        TXTDIAGNOSTICO.Text = registros["FECHADIAGNOSTICO"].ToString(); // Usando FECHADIAGNOSTICO como ejemplo
        DDLGRAVEDAD.SelectedValue = registros["GRAVEDAD"].ToString();
        TXTOBSERVACIONES.Text = registros["OBSERVACIONES"].ToString();
    }
    else
    {
        Label1.Text = "No existe un paciente con dicho ID";
    }
}

protected void Button1_Click1(object sender, EventArgs e)
{
   
    // Configurar los parámetros de actualización
    SqlDataSourcepacientes.UpdateParameters["FECHAREGISTRO"].DefaultValue = TXTFECHAINGRESO.Text;
    SqlDataSourcepacientes.UpdateParameters["NOMBREPACIENTE"].DefaultValue = TXTNOMBRE.Text;
    SqlDataSourcepacientes.UpdateParameters["EDAD"].DefaultValue = TXTEDAD.Text;
    SqlDataSourcepacientes.UpdateParameters["SEXO"].DefaultValue = DDLSEXO.SelectedValue;
    SqlDataSourcepacientes.UpdateParameters["DEPARTAMENTO"].DefaultValue = TXTDEPARTAMENTO.Text;
    SqlDataSourcepacientes.UpdateParameters["DIRECCION"].DefaultValue = TXTDIRECCION.Text;
    SqlDataSourcepacientes.UpdateParameters["FECHAINICIOSINTOMAS"].DefaultValue = TXTFECHASINTOMAS.Text;
    SqlDataSourcepacientes.UpdateParameters["OBSERVACIONES"].DefaultValue = TXTOBSERVACIONES.Text;

    // Agregar el ID
    SqlDataSourcepacientes.UpdateParameters["ID"].DefaultValue = TextBox1.Text;

    // Manejar la carga del archivo
    if (FileUpload1.HasFile)
    {
        SqlDataSourcepacientes.UpdateParameters["FOTOPACIENTE"].DefaultValue = FileUpload1.FileName;
        // Guarda el archivo en una ubicación deseada
        // FileUpload1.SaveAs(Server.MapPath("~/Images/") + FileUpload1.FileName);
    }
    else
    {
        SqlDataSourcepacientes.UpdateParameters["FOTOPACIENTE"].DefaultValue = string.Empty;
    }

    // Realizar la actualización
    int cant = SqlDataSourcepacientes.Update();
    if (cant == 1)
    {
        Label2.Text = "Se modificaron los datos del paciente";
    }
    else
    {
        Label2.Text = "No existe el ID del paciente";
    }

    // Limpiar los campos después de la actualización
    ClearFields();
}

private void ClearFields()
{
    TextBox1.Text = string.Empty; // Limpiar el campo de ID
    TXTFECHAINGRESO.Text = string.Empty;
    TXTNOMBRE.Text = string.Empty;
    TXTEDAD.Text = string.Empty;
    DDLSEXO.SelectedIndex = -1; // Desmarcar el DropDownList
    TXTDEPARTAMENTO.Text = string.Empty;
    TXTDIRECCION.Text = string.Empty;
    TXTFECHASINTOMAS.Text = string.Empty;
    TXTDIAGNOSTICO.Text = string.Empty;
    DDLGRAVEDAD.SelectedIndex = -1; // Desmarcar el DropDownList
    TXTOBSERVACIONES.Text = string.Empty;
    FileUpload1.Attributes.Clear(); // Limpiar el archivo cargado
}
}


