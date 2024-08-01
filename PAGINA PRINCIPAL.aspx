<%@ Page Language="VB" AutoEventWireup="false" CodeFile="PAGINA PRINCIPAL.aspx.vb" Inherits="PAGINA_PRINCIPAL" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Prevención del Dengue</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f8ff;
        }
        .header {
            background-color: #00FF00;
            color: white;
            text-align: center;
            padding: 10px 0;
        }
        .header img {
            width: 200px;
            height: auto;
            vertical-align: middle;
        }
        .header h1 {
            display: inline-block;
            font-family: 'Algerian', serif;
            margin: 0;
            vertical-align: middle;
        }
        .navbar {
            background-color: #00FF00;
            overflow: hidden;
        }
        .navbar a {
            float: left;
            display: flex;
            align-items: center;
            color: white;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
        }
        .navbar a i {
            margin-right: 8px;
        }
        .navbar a:hover {
            background-color: #ddd;
            color: black;
        }
        .footer {
            background-color: #00FF00;
            color: white;
            text-align: center;
            padding: 10px 0;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
        .footer a {
            color: white;
            margin: 0 10px;
            text-decoration: none;
        }
        .footer a i {
            margin-right: 5px;
        }
        .footer a:hover {
            color: #ddd;
        }
        .content {
            padding: 20px;
            text-align: center;
        }
        .content img, .content video {
            max-width: 100%;
            height: auto;
            margin: 20px 0;
        }
    </style>
</head>
<body>
    <!-- Encabezado -->
 
    <div class="header">
           <h1>Prevención del Dengue</h1>
           <br />
        <img src="IMG/DE.jpg" alt="Logo del Dengue">
           <br />
           <br />
           <br />
        <br />
        
    </div>

    <!-- Barra de Navegación -->
    <div class="navbar">
        <a href="ALTAS.aspx"><i class="fas fa-user-plus"></i>Altas</a>
        <a href="BAJAS.aspx"><i class="fas fa-user-minus"></i>Bajas</a>
        <a href="CONSULTAS.aspx"><i class="fas fa-search"></i>Consultas</a>
        <a href="MODIFICACIONES.aspx"><i class="fas fa-edit"></i>Modificaciones</a>
        <a href="FOLLETO.aspx"><i class="fas fa-book"></i>Folleto</a>
        <a href="GALERIA.aspx"><i class="fas fa-images"></i>Galería</a>
        <a href="PREVENCION DEL DENGUE.aspx"><i class="fas fa-shield-alt"></i>Prevención del dengue</a>
        <a href="SINTOMAS.aspx"><i class="fas fa-heartbeat"></i>Síntomas</a>
        <a href="RECOMENDACIONES.aspx"><i class="fas fa-thumbs-up"></i>Recomendaciones</a>
        <a href="TRATAMIENTO.aspx"><i class="fas fa-pills"></i>Tratamiento</a>
        <a href="REPORTEGRAFICO.aspx"><i class="fas fa-lightbulb"></i>REPORTE GRAFICO</a>
        <a href="REPORTEFILTRADO.aspx"><i class="fas fa-lightbulb"></i>REPORTE FILTRADO</a>
        <a href="NOTICIAS.aspx"><i class="fas fa-newspaper"></i>Noticias</a>
        <a href="GRIDVIEW.aspx"><i class="fas fa-newspaper"></i>GRIDVIEW</a>
         <a href="SUBIRARHIVOS.aspx"><i class="fas fa-newspaper"></i>SUBIR ARCHIVOS</a>
         <a href="TRATAMIENTO.aspx"><i class="fas fa-newspaper"></i>TRATAMIENTO</a>
        <a href="Eliminación de Criaderos y Uso de Repelentes.aspx"><i class="fas fa-chart-bar"></i>Eliminación de Criaderos y Uso de Repelentes</a> 
        <a href="ACERCA DE.aspx"><i class="fas fa-chart-bar"></i>DESRIPCION DEL PROYECTO</a> 
         </div>

    <!-- Contenido Principal -->
    <div class="content">
        <h1>Prevención del Dengue</h1>
        <p>El dengue es una enfermedad viral transmitida por mosquitos. Aquí encontrarás información sobre cómo prevenir el dengue, reconocer sus síntomas y qué hacer en caso de infección.</p>
       
        <video controls>
            <source src="https://www.example.com/video1.mp4" type="video/mp4">
            Tu navegador no soporta la reproducción de videos.
        </video>
         <video controls>
            <source src="https://www.example.com/video2.mp4" type="video/mp4">
            Tu navegador no soporta la reproducción de videos.
        </video>
         <video controls>
            <source src="https://www.example.com/video3.mp4" type="video/mp4">
            Tu navegador no soporta la reproducción de videos.
        </video>
         <video controls>
            <source src="https://www.example.com/video4.mp4" type="video/mp4">
            Tu navegador no soporta la reproducción de videos.
        </video>
         <video controls>
            <source src="https://www.example.com/video5.mp4" type="video/mp4">
            Tu navegador no soporta la reproducción de videos.
        </video>
         <video controls>
            <source src="https://www.example.com/video6.mp4" type="video/mp4">
            Tu navegador no soporta la reproducción de videos.
        </video>
         <video controls>
            <source src="https://www.example.com/video7.mp4" type="video/mp4">
            Tu navegador no soporta la reproducción de videos.
        </video>
         <video controls>
            <source src="https://www.example.com/video8.mp4" type="video/mp4">
            Tu navegador no soporta la reproducción de videos.
        </video>
         <video controls>
            <source src="https://www.example.com/video9.mp4" type="video/mp4">
            Tu navegador no soporta la reproducción de videos.
        </video>
         <video controls>
            <source src="https://www.example.com/video10.mp4" type="video/mp4">
            Tu navegador no soporta la reproducción de videos.
        </video>
        <video controls>
            <source src="https://www.example.com/video11.mp4" type="video/mp4">
            Tu navegador no soporta la reproducción de videos.
        </video>
        <video controls>
            <source src="https://www.example.com/video12.mp4" type="video/mp4">
            Tu navegador no soporta la reproducción de videos.
        </video>
        <video controls>
            <source src="https://www.example.com/video13.mp4" type="video/mp4">
            Tu navegador no soporta la reproducción de videos.
        </video>
        <!-- Más contenido relacionado con el dengue -->
    </div>

    <!-- Pie de Página -->
    <div class="footer">
        <a href="https://facebook.com" target="_blank"><i class="fab fa-facebook"></i>Facebook</a>
        <a href="https://twitter.com" target="_blank"><i class="fab fa-twitter"></i>Twitter</a>
        <a href="https://instagram.com" target="_blank"><i class="fab fa-instagram"></i>Instagram</a>
        <a href="https://linkedin.com" target="_blank"><i class="fab fa-linkedin"></i>LinkedIn</a>
        <a href="https://youtube.com" target="_blank"><i class="fab fa-youtube"></i>YouTube</a>
    </div>
</body>
</html>
