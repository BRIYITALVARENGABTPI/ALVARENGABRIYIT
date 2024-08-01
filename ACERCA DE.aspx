<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ACERCA DE.aspx.vb" Inherits="ACERCA_DE" %>



<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Descripción del Proyecto</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap'); /* Importar fuente Roboto */

        body {
            font-family: 'Roboto', sans-serif;
              background-color: #e9f5f2;
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
            max-width: 1200px;
            margin: 20px;
            padding: 20px;
             background-color: #e9f5f2;
            border-radius: 12px;
            box-shadow: 0px 0px 15px rgba(0,0,0,0.2);
            border: 2px solid #00796b; /* Borde verde oscuro */
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
        }

        .section {
            flex: 1;
            min-width: 300px;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0,0,0,0.1);
              background-color: #e9f5f2;
        }

        h1 {
            color: #00796b; /* Color verde oscuro */
            text-align: center;
            margin-bottom: 20px;
            font-size: 28px;
            font-weight: 700; /* Negrita */
        }

        p {
            font-size: 18px;
            line-height: 1.6;
            margin-bottom: 20px;
            text-align: justify;
        }

        ul {
            margin: 20px 0;
            padding: 0;
            list-style-type: disc;
            padding-left: 20px;
        }

        li {
            margin-bottom: 10px;
            font-size: 18px;
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
            <h1>Descripción del Proyecto: Prevención del Dengue</h1>
            <div class="section">
                <p><strong>Objetivo del Proyecto:</strong></p>
                <p>El proyecto tiene como objetivo proporcionar una plataforma integral y accesible para la prevención del dengue. La plataforma está diseñada para educar, informar y ayudar en la gestión de casos de dengue mediante un sistema de manejo de información y recursos relacionados con la enfermedad.</p>
            </div>
            <div class="section">
                <p><strong>Componentes del Proyecto:</strong></p>
                <ul>
                    <li><strong>Altas de Pacientes:</strong> Página dedicada a la adición de nuevos pacientes al sistema.</li>
                    <li><strong>Bajas de Pacientes:</strong> Funcionalidad para eliminar registros de pacientes del sistema.</li>
                    <li><strong>Consultas de Pacientes:</strong> Módulo para buscar y consultar información sobre pacientes registrados.</li>
                    <li><strong>Modificaciones de Pacientes:</strong> Permite la edición de los registros de pacientes.</li>
                    <li><strong>Folleto:</strong> Sección dedicada a ofrecer un folleto informativo sobre el dengue.</li>
                    <li><strong>Galería de Imágenes:</strong> Galería visual que muestra imágenes relacionadas con el dengue.</li>
                    <li><strong>Prevención:</strong> Página informativa que detalla estrategias y métodos para prevenir el dengue.</li>
                    <li><strong>Síntomas:</strong> Sección que enumera y describe los síntomas comunes del dengue.</li>
                    <li><strong>Recomendaciones:</strong> Ofrece consejos prácticos y recomendaciones para la población general.</li>
                    <li><strong>Tratamiento:</strong> Información sobre los tratamientos disponibles para el dengue.</li>
                    <li><strong>Prevenciones:</strong> Listado de medidas preventivas para reducir el riesgo de dengue.</li>
                    <li><strong>Consejos:</strong> Consejos adicionales para evitar el dengue en áreas de alto riesgo.</li>
                    <li><strong>Noticias:</strong> Sección actualizada con noticias relevantes sobre el dengue.</li>
                    <li><strong>Reporte Filtrado:</strong> Herramienta para generar reportes detallados sobre los casos de dengue.</li>
                    <li><strong>Gráfico:</strong> Visualización gráfica de datos relacionados con el dengue.</li>
                </ul>
            </div>
            <div class="section">
                <p><strong>Beneficios del Proyecto:</strong></p>
                <ul>
                    <li><strong>Educación y Conciencia:</strong> Proporciona información esencial para la educación del público sobre el dengue.</li>
                    <li><strong>Gestión de Datos:</strong> Facilita la gestión y actualización de información de pacientes.</li>
                    <li><strong>Prevención y Control:</strong> Ayuda a implementar y seguir medidas preventivas eficaces.</li>
                    <li><strong>Soporte a la Comunidad:</strong> Apoya a las comunidades afectadas con recursos y recomendaciones prácticas.</li>
                </ul>
                <p>Este proyecto representa una herramienta vital para la lucha contra el dengue, combinando tecnología y conocimiento para ofrecer una solución completa y accesible a todos los interesados en prevenir y controlar esta enfermedad.</p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="nuevoEstilo1" NavigateUrl="~/PAGINA PRINCIPAL.aspx" style="text-align: center">REGRESAR A LA PAGINA PRINCIPAL</asp:HyperLink>
                </p>
            </div>
        </div>
    </form>
</body>
</html>
