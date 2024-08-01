<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GRIDVIEW.aspx.cs" Inherits="GRIDVIEW" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Gestión de Casos de Dengue</title>
   <style type="text/css">
        @import url('https://fonts.googleapis.com/css2?family=Algerian&display=swap');

        body {
            font-family: Arial, sans-serif;
            background-color: #e9f5f2; /* Color de fondo verde claro */
            color: #333;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 20px;
        }

        .container {
            width: 151%;
            max-width: 1200px;
            margin: 20px auto;
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

        .gridview-style {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            font-size: 16px;
            color: #333;
        }

        .gridview-style th, .gridview-style td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: center;
        }

        .gridview-style th {
            background-color: #4caf50; /* Color verde oscuro para el encabezado */
            color: white;
        }

        .gridview-style tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .gridview-style tr:hover {
            background-color: #ddd;
        }

        .gridview-style .button {
            background: linear-gradient(to bottom, #66bb6a, #4caf50);
            color: #fff;
            border: none;
            padding: 8px 12px;
            font-size: 14px;
            border-radius: 6px;
            cursor: pointer;
            text-align: center;
            transition: background 0.3s ease;
        }

        .gridview-style .button:hover {
            background: linear-gradient(to bottom, #57a14d, #388e3c);
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
        <h1>Gestión de Casos de Dengue</h1>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." CssClass="gridview-style">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="FECHAREGISTRO" HeaderText="FECHAREGISTRO" SortExpression="FECHAREGISTRO" />
                <asp:BoundField DataField="NOMBREPACIENTE" HeaderText="NOMBREPACIENTE" SortExpression="NOMBREPACIENTE" />
                <asp:BoundField DataField="EDAD" HeaderText="EDAD" SortExpression="EDAD" />
                <asp:BoundField DataField="SEXO" HeaderText="SEXO" SortExpression="SEXO" />
                <asp:BoundField DataField="DEPARTAMENTO" HeaderText="DEPARTAMENTO" SortExpression="DEPARTAMENTO" />
                <asp:BoundField DataField="DIRECCION" HeaderText="DIRECCION" SortExpression="DIRECCION" />
                <asp:BoundField DataField="FECHAINICIOSINTOMAS" HeaderText="FECHAINICIOSINTOMAS" SortExpression="FECHAINICIOSINTOMAS" />
                <asp:BoundField DataField="FECHADIAGNOSTICO" HeaderText="FECHADIAGNOSTICO" SortExpression="FECHADIAGNOSTICO" />
                <asp:BoundField DataField="GRAVEDAD" HeaderText="GRAVEDAD" SortExpression="GRAVEDAD" />
                <asp:BoundField DataField="OBSERVACIONES" HeaderText="OBSERVACIONES" SortExpression="OBSERVACIONES" />
                <asp:BoundField DataField="FOTOPACIENTE" HeaderText="FOTOPACIENTE" SortExpression="FOTOPACIENTE" />
            </Columns>
        </asp:GridView>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="nuevoEstilo1" NavigateUrl="~/PAGINA PRINCIPAL.aspx" style="text-align: center">REGRESAR A LA PAGINA PRINCIPAL</asp:HyperLink>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PREVENCION CONTRA EL DENGUEConnectionString %>" DeleteCommand="DELETE FROM [CASOSDENGUE1] WHERE [ID] = @ID" InsertCommand="INSERT INTO [CASOSDENGUE1] ([FECHAREGISTRO], [NOMBREPACIENTE], [EDAD], [SEXO], [DEPARTAMENTO], [DIRECCION], [FECHAINICIOSINTOMAS], [FECHADIAGNOSTICO], [GRAVEDAD], [OBSERVACIONES], [FOTOPACIENTE]) VALUES (@FECHAREGISTRO, @NOMBREPACIENTE, @EDAD, @SEXO, @DEPARTAMENTO, @DIRECCION, @FECHAINICIOSINTOMAS, @FECHADIAGNOSTICO, @GRAVEDAD, @OBSERVACIONES, @FOTOPACIENTE)" SelectCommand="SELECT [ID], [FECHAREGISTRO], [NOMBREPACIENTE], [EDAD], [SEXO], [DEPARTAMENTO], [DIRECCION], [FECHAINICIOSINTOMAS], [FECHADIAGNOSTICO], [GRAVEDAD], [OBSERVACIONES], [FOTOPACIENTE] FROM [CASOSDENGUE1]" UpdateCommand="UPDATE [CASOSDENGUE1] SET [FECHAREGISTRO] = @FECHAREGISTRO, [NOMBREPACIENTE] = @NOMBREPACIENTE, [EDAD] = @EDAD, [SEXO] = @SEXO, [DEPARTAMENTO] = @DEPARTAMENTO, [DIRECCION] = @DIRECCION, [FECHAINICIOSINTOMAS] = @FECHAINICIOSINTOMAS, [FECHADIAGNOSTICO] = @FECHADIAGNOSTICO, [GRAVEDAD] = @GRAVEDAD, [OBSERVACIONES] = @OBSERVACIONES, [FOTOPACIENTE] = @FOTOPACIENTE WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter DbType="Date" Name="FECHAREGISTRO" />
                <asp:Parameter Name="NOMBREPACIENTE" Type="String" />
                <asp:Parameter Name="EDAD" Type="Int32" />
                <asp:Parameter Name="SEXO" Type="String" />
                <asp:Parameter Name="DEPARTAMENTO" Type="String" />
                <asp:Parameter Name="DIRECCION" Type="String" />
                <asp:Parameter DbType="Date" Name="FECHAINICIOSINTOMAS" />
                <asp:Parameter DbType="Date" Name="FECHADIAGNOSTICO" />
                <asp:Parameter Name="GRAVEDAD" Type="String" />
                <asp:Parameter Name="OBSERVACIONES" Type="String" />
                <asp:Parameter Name="FOTOPACIENTE" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter DbType="Date" Name="FECHAREGISTRO" />
                <asp:Parameter Name="NOMBREPACIENTE" Type="String" />
                <asp:Parameter Name="EDAD" Type="Int32" />
                <asp:Parameter Name="SEXO" Type="String" />
                <asp:Parameter Name="DEPARTAMENTO" Type="String" />
                <asp:Parameter Name="DIRECCION" Type="String" />
                <asp:Parameter DbType="Date" Name="FECHAINICIOSINTOMAS" />
                <asp:Parameter DbType="Date" Name="FECHADIAGNOSTICO" />
                <asp:Parameter Name="GRAVEDAD" Type="String" />
                <asp:Parameter Name="OBSERVACIONES" Type="String" />
                <asp:Parameter Name="FOTOPACIENTE" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
