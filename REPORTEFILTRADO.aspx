<%@ Page Language="VB" AutoEventWireup="false" CodeFile="REPORTEFILTRADO.aspx.vb" Inherits="REPORTEFILTRADO" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }
        .auto-style2 {
            text-align: center;
            background-color: #00FF00;
        }
        .auto-style3 {
            font-size: large;
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
    <div class="auto-style2">
    
        <span class="auto-style1"><strong><em style="text-align: right">REPORTE FILTRADO 
        <br />
        <br />
        <br />
        </span><span class="autINGRESE EL ID DEL PACIENTE:</span><span class="auto-style1"><br />
        </span></em><span class="auto-style1">
        <asp:TextBox ID="TextBox1" runat="server" Height="34px" Width="126px"></asp:TextBox>
        <br />
        </span></strong><span class="auto-style1">
        <asp:Button ID="Button1" runat="server" Height="39px" Text="VER" Width="62px" />
        <br />
        <br />
        <br />
        </span>
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" SizeToReportContent="True" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt">
            <LocalReport ReportPath="Reportefiltrado.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet1" />
                </DataSources>
            </LocalReport>
        </rsweb:ReportViewer>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataBy" TypeName="DataSetTableAdapters.CASOSDENGUE1TableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="FECHAREGISTRO" Type="DateTime" />
                <asp:Parameter Name="NOMBREPACIENTE" Type="String" />
                <asp:Parameter Name="EDAD" Type="Int32" />
                <asp:Parameter Name="SEXO" Type="String" />
                <asp:Parameter Name="DEPARTAMENTO" Type="String" />
                <asp:Parameter Name="DIRECCION" Type="String" />
                <asp:Parameter Name="FECHAINICIOSINTOMAS" Type="DateTime" />
                <asp:Parameter Name="FECHADIAGNOSTICO" Type="DateTime" />
                <asp:Parameter Name="GRAVEDAD" Type="String" />
                <asp:Parameter Name="OBSERVACIONES" Type="String" />
                <asp:Parameter Name="FOTOPACIENTE" Type="String" />
                <asp:Parameter Name="CONTROLGRIDVIEWDATA_ID" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="ID" PropertyName="Text" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="FECHAREGISTRO" Type="DateTime" />
                <asp:Parameter Name="NOMBREPACIENTE" Type="String" />
                <asp:Parameter Name="EDAD" Type="Int32" />
                <asp:Parameter Name="SEXO" Type="String" />
                <asp:Parameter Name="DEPARTAMENTO" Type="String" />
                <asp:Parameter Name="DIRECCION" Type="String" />
                <asp:Parameter Name="FECHAINICIOSINTOMAS" Type="DateTime" />
                <asp:Parameter Name="FECHADIAGNOSTICO" Type="DateTime" />
                <asp:Parameter Name="GRAVEDAD" Type="String" />
                <asp:Parameter Name="OBSERVACIONES" Type="String" />
                <asp:Parameter Name="FOTOPACIENTE" Type="String" />
                <asp:Parameter Name="CONTROLGRIDVIEWDATA_ID" Type="Int32" />
                <asp:Parameter Name="Original_ID" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <br />
        <br />
                <asp:HyperLink ID="HyperLink1" runat="server" CssClass="nuevoEstilo1" NavigateUrl="~/PAGINA PRINCIPAL.aspx" style="text-align: center; background-color: #000000;">REGRESAR A LA PAGINA PRINCIPAL</asp:HyperLink>
        <br />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
