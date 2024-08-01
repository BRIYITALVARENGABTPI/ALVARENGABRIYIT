<%@ Page Language="VB" AutoEventWireup="false" CodeFile="FOLLETO.aspx.vb" Inherits="FOLLETO" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Folleto sobre el Dengue</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f4f4f4; /* Color de fondo suave */
        }
        .container {
            width: 297mm; /* Ancho de una hoja A4 en mm */
            height: 210mm; /* Altura de una hoja A4 en mm */
            display: flex;
            flex-direction: row;
            box-shadow: 0 0 10px rgba(0,0,0,0.2);
            border: 5px solid #4caf50; /* Borde verde oscuro */
        }
        .page {
            width: 33.33%;
            box-sizing: border-box;
            padding: 10mm;
            height: 100%;
            background-color: #e0f2f1; /* Verde menta para las páginas interiores */
            border-right: 2px solid #4caf50; /* Borde verde oscuro para separación */
        }
        .page:last-child {
            border-right: none; /* El último panel no tiene borde derecho */
        }
        .page img {
            max-width: 100%;
            height: auto;
            margin-bottom: 10px;
        }
        h1, h2 {
            color: #4caf50;
            margin: 0;
            padding-bottom: 10px;
        }
        h1 {
            font-size: 24px;
        }
        h2 {
            font-size: 18px;
            border-bottom: 2px solid #4caf50;
            padding-bottom: 5px;
        }
        p, ul {
            margin: 0;
            padding: 0;
            line-height: 1.6;
        }
        ul {
            list-style-type: disc;
            padding-left: 20px;
        }
        footer {
            text-align: center;
            margin-top: 20px;
            font-size: 12px;
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- Parte 1: Portada -->
        <div class="page">
            <h1>Información sobre el Dengue</h1>
            <img src="IMG/1.jpg" alt="Imagen de Portada">
            <p>Descubre cómo prevenir y tratar el dengue. Este folleto te ofrece información esencial para protegerte y mantener a salvo a tu familia.</p>
        </div>

        <!-- Parte 2: Información sobre el Dengue y Síntomas -->
        <div class="page">
            <h2>¿Qué es el Dengue?</h2>
            <p>El dengue es una enfermedad viral transmitida por el mosquito Aedes aegypti. Es común en áreas tropicales y subtropicales.</p>
            <h2>Síntomas</h2>
            <ul>
                <li>Fiebre alta repentina</li>
                <li>Dolores musculares y articulares</li>
                <li>Dolores de cabeza severos</li>
                <li>Erupción cutánea</li>
                <li>Náuseas y vómitos</li>
                <li>Fatiga extrema</li>
            </ul>
            <img src="IMG/SIN.jpg" alt="Síntomas del Dengue">
        </div>

        <!-- Parte 3: Prevención y Tratamiento -->
        <div class="page">
            <h2>Prevención</h2>
            <ul>
                <li>Eliminar criaderos de mosquitos</li>
                <li>Uso de repelentes</li>
                <li>Uso de mallas en ventanas y puertas</li>
                <li>Uso de ropa protectora</li>
            </ul>
            <h2>Tratamiento</h2>
            <ul>
                <li>Descanso y fluidos</li>
                <li>Paracetamol para fiebre</li>
                <li>Evitar aspirinas y antiinflamatorios</li>
                <li>Consultar con un médico para casos graves</li>
            </ul>
            <footer>
                <p>Para más información, contacta con los servicios de salud locales. © 2024 Organización de Salud</p>
                <p>Teléfono: (123) 456-7890 | Correo: info@saludlocal.org</p>
            </footer>
        </div>
    </div>


</body>
</html>
