<%@ Page Language="VB" AutoEventWireup="false" CodeFile="RECOMENDACIONES.aspx.vb" Inherits="RECOMENDACIONES" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Opciones de Tratamiento del Dengue</title>
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

        .list-group {
            margin: 20px 0;
            padding: 0;
            list-style-type: none; /* Eliminar viñetas predeterminadas */
            padding-left: 0; /* Eliminar sangría */
        }

        .list-group li {
            margin-bottom: 10px;
            font-size: 16px;
            position: relative; /* Para posicionar el ícono de check */
            padding-left: 35px; /* Espacio para el ícono */
        }

        .list-group li::before {
            content: "\f00c"; /* Código de ícono de check en FontAwesome */
            font-family: "Font Awesome 6 Free"; /* Fuente de FontAwesome */
            position: absolute;
            left: 0;
            top: 0;
            font-size: 20px; /* Tamaño del ícono */
            color: #4caf50; /* Color verde oscuro */
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
            <h1>RECOMENDACIONES PARA TERMINAR el Dengue</h1>
            <ul class="list-group">
                <li>Descanso absoluto.</li>
                <li>Consumo de líquidos abundantes para prevenir la deshidratación.</li>
                <li>Uso de paracetamol para aliviar fiebre y dolor.</li>
                <li>Evitar medicamentos como aspirina y antiinflamatorios no esteroideos.</li>
                <li>Monitoreo constante de los signos vitales.</li>
                <li>Consulta médica regular para seguimiento del estado de salud.</li>
                <li>Reposo en cama para mejorar la recuperación.</li>
                <li>Tratamiento de síntomas según recomendación médica.</li>
                <li>Uso de analgésicos seguros para aliviar molestias.</li>
                <li>Observación de posibles signos de complicaciones.</li>
                <li>Alimentación adecuada para mantener la energía.</li>
                <li>Evitar la exposición a mosquitos para prevenir la propagación.</li>
                <li>Aplicación de medidas de soporte según gravedad de síntomas.</li>
                <li>Transfusión de plaquetas si es necesario.</li>
                <li>Control de niveles de hematocrito y plaquetas en casos graves.</li>
                <li>Rehidratación intravenosa en casos de deshidratación severa.</li>
                <li>Tratamiento hospitalario para pacientes con dengue severo.</li>
                <li>Inmunización contra el dengue en áreas endémicas.</li>
                <li>Uso de soluciones rehidratantes orales (SRO).</li>
                <li>Monitoreo y manejo de signos de shock en pacientes graves.</li>
            </ul>
            <div class="form-group">
                &nbsp;</div>
            <div class="form-group">
                <asp:HyperLink ID="HyperLink1" runat="server" CssClass="nuevoEstilo1" NavigateUrl="~/PAGINA PRINCIPAL.aspx" style="text-align: center">REGRESAR A LA PAGINA PRINCIPAL</asp:HyperLink>
            </div>
        </div>
    </form>
</body>
</html>
