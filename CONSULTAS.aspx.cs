using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CONSULTAS : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            // Configura el parámetro de la consulta
            SqlDataSource1.SelectParameters["ID"].DefaultValue = TextBox1.Text;
            SqlDataSource1.DataSourceMode = SqlDataSourceMode.DataReader;

            // Ejecuta la consulta y recupera los resultados
            using (SqlDataReader registros = (SqlDataReader)SqlDataSource1.Select(DataSourceSelectArguments.Empty))
            {
                if (registros.Read())
                {
                    // Asume que FOTOPACIENTE contiene una URL o ruta de archivo
                    string imageUrl = registros["FOTOPACIENTE"].ToString();

                    // Muestra los datos en el Label
                    Label1.Text = "FECHAREGISTRO: " + registros["FECHAREGISTRO"] + "<br>" +
                                  "NOMBREPACIENTE: " + registros["NOMBREPACIENTE"] + "<br>" +
                                  "EDAD: " + registros["EDAD"] + "<br>" +
                                  "SEXO: " + registros["SEXO"] + "<br>" +
                                  "DEPARTAMENTO: " + registros["DEPARTAMENTO"] + "<br>" +
                                  "DIRECCION: " + registros["DIRECCION"] + "<br>" +
                                  "FECHA DEL INICIO DE LOS SINTOMAS: " + registros["FECHAINICIOSINTOMAS"] + "<br>" +
                                  "FECHA DEL DIAGNOSTICO: " + registros["FECHADIAGNOSTICO"] + "<br>" +
                                  "GRAVEDAD: " + registros["GRAVEDAD"] + "<br>" +
                                  "OBSERVACIONES: " + registros["OBSERVACIONES"] + "<br>" +
                                  "FOTO DEL PACIENTE:<br><img src='" + imageUrl + "' alt='Foto del paciente' style='max-width: 500px; height: auto;'/>";
                }
                else
                {
                    Label1.Text = "No existe un paciente con dicho código";
                }
            }
        }
        catch (Exception ex)
        {
            Label1.Text = "Error: " + ex.Message;
        }

    }
}
