<%@ Page Language="VB" AutoEventWireup="false" CodeFile="REPORTEGRAFICO.aspx.vb" Inherits="REPORTEGRAFICO" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: xx-large;
        }
        #form1 {
            background-color: #00FF00;
        }
    </style>
</head>
<body>
    <p class="auto-style1">
        <em><strong>REPORTE GRAFICO </strong></em>
    </p>
    <p class="auto-style1">
        &nbsp;</p>
    <form id="form1" runat="server">
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" SizeToReportContent="True" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt">
            <LocalReport ReportPath="Reportegraficot.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet1" />
                </DataSources>
            </LocalReport>
        </rsweb:ReportViewer>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.CASOSDENGUE1TableAdapter" UpdateMethod="Update">
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
        <p>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
        </p>
    <div>
    
    </div>
    </form>
</body>
</html>
