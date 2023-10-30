#!/bin/bash

echo '<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Flex</title>

    <style>
        * {
            box-sizing: border-box; /* Todos los elementos incluyen relleno y borde en su ancho total */
        }

        .flex-container {
            display: flex; /* Crea un contenedor flexible */
            flex-flow: row wrap; /* Combinación abreviada de flex-direction y flex-wrap */
            justify-content: space-between; /* Distribuye los elementos con el máximo espacio entre ellos */
            align-items: stretch; /* Estira los elementos para llenar la altura del contenedor */
            background-color: burlywood; /* Color de fondo para el contenedor */
            padding: 10px; /* Relleno alrededor del contenedor */
            border: 2px solid black; /* Borde negro alrededor del contenedor */
        }

        .flex-container div {
            background-color: gainsboro; /* Color de fondo para los elementos hijos */
            width: 100px; /* Ancho fijo para los elementos hijos */
            margin: 10px; /* Margen alrededor de los elementos hijos */
            text-align: center; /* Centra el texto horizontalmente dentro de los elementos hijos */
            line-height: 75px; /* Establece la altura de línea para los elementos hijos */
            font-size: 30px; /* Establece el tamaño de fuente para los elementos hijos */
            border: 2px solid black; /* Borde negro alrededor de los elementos hijos */
        }
    </style>
</head>
<body>
<div class="flex-container">
    <div>1</div>
    <div>2</div>
    <div>3</div>
    <div>4</div>
    <div>5</div>
    <div>6</div>
    <div>7</div>
    <div>8</div>
    <div>9</div>
    <div>10</div>
</div>
</body>
</html>' > index-limpio-español-bash.html
