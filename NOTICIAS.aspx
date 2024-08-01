<%@ Page Language="VB" AutoEventWireup="false" CodeFile="NOTICIAS.aspx.vb" Inherits="NOTICIAS" %>




<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Noticias sobre el Dengue</title>
    <style type="text/css">
        @import url('https://fonts.googleapis.com/css2?family=Algerian&display=swap');
        @import url('https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css'); /* Importar FontAwesome */

        body {
            font-family: Arial, sans-serif;
            background-color: #e9f5f2; /* Color de fondo verde claro */
            color: #333;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
        }

        h1 {
            color: #4caf50; /* Color verde oscuro */
            text-align: center;
            margin: 20px 0;
            font-size: 32px;
            font-family: 'Algerian', serif; /* Fuente Algerian */
        }

        .gallery {
            display: grid;
            grid-template-columns: 1fr 1fr; /* Dos columnas */
            gap: 20px;
            width: 90%;
            max-width: 1200px;
            margin: 20px auto;
        }

        .gallery-item {
            background-color: #ffffff;
            border-radius: 12px;
            box-shadow: 0px 0px 15px rgba(0,0,0,0.2);
            overflow: hidden;
            border: 2px solid #4caf50; /* Borde verde oscuro */
        }

        .gallery-item img {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }

        .gallery-item .content {
            padding: 15px;
            text-align: center;
        }

        .gallery-item .content h2 {
            color: #4caf50; /* Color verde oscuro */
            font-size: 18px;
            margin-bottom: 10px;
        }

        .gallery-item .content p {
            color: #666;
            font-size: 14px;
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
    <h1>Noticias sobre el Dengue</h1>
    <div class="gallery">
        <div class="gallery-item">
            <img src="IMG/1.jpg" alt="Noticia 1">
            <div class="content">
                <h2>Incremento de Casos de Dengue</h2>
                <p>El Ministerio de Salud reporta un incremento significativo de casos de dengue en varias regiones del país, instando a la población a tomar medidas preventivas.</p>
            </div>
        </div>
        <div class="gallery-item">
            <img src="IMG/2.jpg" alt="Noticia 2">
            <div class="content">
                <h2>Jornada de Fumigación</h2>
                <p>Autoridades locales organizan jornadas de fumigación en áreas afectadas para controlar la propagación del mosquito transmisor del dengue.</p>
            </div>
        </div>
        <div class="gallery-item">
            <img src="IMG/3.jpg" alt="Noticia 3">
            <div class="content">
                <h2>Vacuna contra el Dengue</h2>
                <p>Investigadores avanzan en el desarrollo de una vacuna efectiva contra el dengue, la cual podría estar disponible en los próximos años.</p>
            </div>
        </div>
        <div class="gallery-item">
            <img src="IMG/4.jpg" alt="Noticia 4">
            <div class="content">
                <h2>Prevención en Escuelas</h2>
                <p>Campañas educativas en escuelas buscan concientizar a los estudiantes sobre la importancia de eliminar criaderos de mosquitos.</p>
            </div>
        </div>
        <div class="gallery-item">
            <img src="IMG/5.jpg" alt="Noticia 5">
            <div class="content">
                <h2>Tratamientos Innovadores</h2>
                <p>Nuevos tratamientos para el dengue están siendo probados con resultados prometedores, ofreciendo esperanza a los afectados.</p>
            </div>
        </div>
        <div class="gallery-item">
            <img src="IMG/6.jpg" alt="Noticia 6">
            <div class="content">
                <h2>Alertas en Temporada de Lluvias</h2>
                <p>Expertos emiten alertas durante la temporada de lluvias, cuando las condiciones son propicias para la reproducción del mosquito Aedes aegypti.</p>
            </div>
        </div>
        <div class="gallery-item">
            <img src="IMG/7.jpg" alt="Noticia 7">
            <div class="content">
                <h2>Programa de Vigilancia</h2>
                <p>Implementación de programas de vigilancia epidemiológica para detectar y controlar brotes de dengue de manera oportuna.</p>
            </div>
        </div>
        <div class="gallery-item">
            <img src="IMG/8.jpg" alt="Noticia 8">
            <div class="content">
                <h2>Consejos para Viajeros</h2>
                <p>Recomendaciones para viajeros que visitan zonas endémicas de dengue, incluyendo medidas de protección personal y vacunación.</p>
            </div>
        </div>
        <div class="gallery-item">
            <img src="IMG/9.jpg" alt="Noticia 9">
            <div class="content">
                <h2>Impacto Económico</h2>
                <p>El brote de dengue tiene un impacto económico significativo en las comunidades afectadas, afectando la productividad y los recursos de salud pública.</p>
            </div>
        </div>
        <div class="gallery-item">
            <img src="IMG/SIN.jpg" alt="Noticia 10">
            <div class="content">
                <h2>Innovaciones en Control</h2>
                <p>Investigadores desarrollan nuevas tecnologías y métodos para el control del mosquito transmisor del dengue, buscando reducir la incidencia de la enfermedad.</p>
                <p>&nbsp;</p>
                <p>
                    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="nuevoEstilo1" NavigateUrl="~/PAGINA PRINCIPAL.aspx" style="text-align: center">REGRESAR A LA PAGINA PRINCIPAL</asp:HyperLink>
                </p>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
