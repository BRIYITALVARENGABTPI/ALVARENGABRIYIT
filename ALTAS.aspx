<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ALTAS.aspx.cs" Inherits="ALTAS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Agregar Nuevo Caso de Dengue</title>
    <style type="text/css">
        @import url('https://fonts.googleapis.com/css2?family=Algerian&display=swap');

        body {
            font-family: Arial, sans-serif;
            background-color: #e9f5f2; /* Color de fondo verde claro */
            color: #333;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        #form1 {
            width: 90%;
            max-width: 700px;
            margin: 20px;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 12px;
            box-shadow: 0px 0px 15px rgba(0,0,0,0.2);
            border: 2px solid #4caf50; /* Borde verde oscuro */
        }

        h1 {
            color: #4caf50; /* Color verde oscuro */
            text-align: center;
            margin-bottom: 20px;
            font-size: 24px;
            font-family: 'Algerian', serif; /* Fuente Algerian */
        }

        .form-group {
            margin-bottom: 20px;
            text-align: center; /* Centra los elementos dentro del contenedor */
        }

        .form-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #4caf50; /* Color verde oscuro */
            font-size: 16px;
        }

        .form-group input[type="text"],
        .form-group select,
        .form-group input[type="file"],
        .form-group textarea {
            width: calc(100% - 24px);
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 6px;
            box-sizing: border-box;
            font-size: 16px; /* Tamaño de fuente medio */
            text-align: center;
        }

        .form-group textarea {
            height: 100px;
        }

        .form-group .button {
            background: linear-gradient(to bottom, #66bb6a, #4caf50); /* Gradiente verde */
            color: #fff;
            border: none;
            padding: 15px 25px; /* Tamaño más grande */
            font-size: 18px; /* Tamaño de texto mayor */
            border-radius: 6px;
            cursor: pointer;
            width: 100%;
            text-align: center;
            margin-top: 10px; /* Espacio arriba del botón */
            transition: background 0.3s ease; /* Transición suave para el cambio de color */
        }

        .form-group .button:hover {
            background: linear-gradient(to bottom, #57a14d, #388e3c); /* Verde más oscuro al pasar el cursor */
        }

        .form-group .error {
            color: #d9534f; /* Rojo para mensajes de error */
            font-size: 14px;
            text-align: center;
        }
        .nuevoEstilo1 {
            font-family: "Bahnschrift SemiLight";
            font-size: xx-large;
            font-weight: bold;
            font-style: italic;
            color: #00FF00;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Agregar Nuevo Caso de Dengue</h1>
            <div class="form-group">
                <label for="TXTFECHAINGRESO">Fecha de Ingreso:</label>
                <asp:TextBox ID="TXTFECHAINGRESO" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="TXTNOMBRE">Nombre del Paciente:</label>
                <asp:TextBox ID="TXTNOMBRE" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="TXTEDAD">Edad:</label>
                <asp:TextBox ID="TXTEDAD" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="DDLSEXO">Sexo:</label>
                <asp:DropDownList ID="DDLSEXO" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>FEMENINO</asp:ListItem>
                    <asp:ListItem>MASCULINO</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <label for="TXTDEPARTAMENTO">Departamento:</label>
                <asp:TextBox ID="TXTDEPARTAMENTO" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="TXTDIRECCION">Dirección:</label>
                <asp:TextBox ID="TXTDIRECCION" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="TXTFECHASINTOMAS">Fecha que Iniciaron los Síntomas:</label>
                <asp:TextBox ID="TXTFECHASINTOMAS" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="TXTDIAGNOSTICO">Diagnóstico:</label>
                <asp:TextBox ID="TXTDIAGNOSTICO" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="DDLGRAVEDAD">Gravedad:</label>
                <asp:DropDownList ID="DDLGRAVEDAD" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>GRAVE</asp:ListItem>
                    <asp:ListItem>MEDIO</asp:ListItem>
                    <asp:ListItem>LEVE</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <label for="TXTOBSERVACIONES">Observaciones:</label>
                <asp:TextBox ID="TXTOBSERVACIONES" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="FileUpload1">Foto del Paciente:</label>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </div>
            <div class="form-group">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click2" CssClass="button" Text="AÑADIR" />
            </div>
            <asp:Label ID="Label1" runat="server" Text="Label" CssClass="error"></asp:Label>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="nuevoEstilo1" NavigateUrl="~/PAGINA PRINCIPAL.aspx" style="text-align: center">REGRESAR A LA PAGINA PRINCIPAL</asp:HyperLink>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PREVENCION CONTRA EL DENGUEConnectionString %>" SelectCommand="SELECT FECHAREGISTRO, NOMBREPACIENTE, EDAD, SEXO, DEPARTAMENTO, DIRECCION, FECHAINICIOSINTOMAS, FECHADIAGNOSTICO, GRAVEDAD, OBSERVACIONES, FOTOPACIENTE FROM CASOSDENGUE1" InsertCommand="INSERT INTO CASOSDENGUE1(FECHAREGISTRO, NOMBREPACIENTE, EDAD, SEXO, DEPARTAMENTO, DIRECCION, FECHAINICIOSINTOMAS, FECHADIAGNOSTICO, GRAVEDAD, OBSERVACIONES, FOTOPACIENTE) VALUES (@FECHAREGISTRO, @NOMBREPACIENTE, @EDAD, @SEXO, @DEPARTAMENTO, @DIRECCION, @FECHAINICIOSINTOMAS, @FECHADIAGNOSTICO, @GRAVEDAD, @OBSERVACIONES, @FOTOPACIENTE)">
            <InsertParameters>
                <asp:Parameter Name="FECHAREGISTRO" />
                <asp:Parameter Name="NOMBREPACIENTE" />
                <asp:Parameter Name="EDAD" />
                <asp:Parameter Name="SEXO" />
                <asp:Parameter Name="DEPARTAMENTO" />
                <asp:Parameter Name="DIRECCION" />
                <asp:Parameter Name="FECHAINICIOSINTOMAS" />
                <asp:Parameter Name="FECHADIAGNOSTICO" />
                <asp:Parameter Name="GRAVEDAD" />
                <asp:Parameter Name="OBSERVACIONES" />
                <asp:Parameter Name="FOTOPACIENTE" />
            </InsertParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
