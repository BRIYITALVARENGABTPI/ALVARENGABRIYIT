<%@ Page Language="VB" AutoEventWireup="false" CodeFile="GALERIA.aspx.vb" Inherits="NOTICIAS" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Image Slider</title>
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f3f3f3;
        }

        .slider {
            width: 80%;
            margin: auto;
            overflow: hidden;
            border: 5px solid #ddd;
            border-radius: 10px;
            background-color: #fff;
        }

        .slides {
            display: flex;
            width: 800%;
            animation: slide 20s infinite;
        }

        .slides input {
            display: none;
        }

        .slide {
            width: 10%;
            transition: 0.5s;
        }

        .slide img {
            width: 100%;
            border: none;
        }

        @keyframes slide {
            0% { transform: translateX(0%); }
            10% { transform: translateX(-10%); }
            20% { transform: translateX(-20%); }
            30% { transform: translateX(-30%); }
            40% { transform: translateX(-40%); }
            50% { transform: translateX(-50%); }
            60% { transform: translateX(-60%); }
            70% { transform: translateX(-70%); }
            80% { transform: translateX(-80%); }
            90% { transform: translateX(-90%); }
            100% { transform: translateX(-100%); }
        }

        .navigation {
            position: absolute;
            width: 100%;
            display: flex;
            justify-content: center;
            margin-top: -40px;
        }

        .navigation label {
            border: 2px solid #ddd;
            padding: 5px;
            border-radius: 50%;
            cursor: pointer;
            transition: 0.4s;
            background: #fff;
        }

        .navigation label:hover {
            background: #ddd;
        }
    </style>
</head>
<body>
    <div class="slider">
        <div class="slides">
            <div class="slide"><img src="IMG/1.jpg" alt="Image 1"></div>
            <div class="slide"><img src="IMG/SIN.jpg" alt="Image 2"></div>
            <div class="slide"><img src="IMG/2.jpg" alt="Image 3"></div>
            <div class="slide"><img src="IMG/3.jpg" alt="Image 4"></div>
            <div class="slide"><img src="IMG/4.jpg" alt="Image 5"></div>
            <div class="slide"><img src="IMG/5.jpg" alt="Image 6"></div>
            <div class="slide"><img src="IMG/6.jpg" alt="Image 7"></div>
            <div class="slide"><img src="IMG/7.jpg" alt="Image 8"></div>
            <div class="slide"><img src="IMG/8.jpg" alt="Image 9"></div>
            <div class="slide"><img src="IMG/9.jpg" alt="Image 10"></div>
        </div>
        <div class="navigation">
            <label for="r1"></label>
            <label for="r2"></label>
            <label for="r3"></label>
            <label for="r4"></label>
            <label for="r5"></label>
            <label for="r6"></label>
            <label for="r7"></label>
            <label for="r8"></label>
            <label for="r9"></label>
            <label for="r10"></label>
        </div>
    </div>
</body>
</html>

