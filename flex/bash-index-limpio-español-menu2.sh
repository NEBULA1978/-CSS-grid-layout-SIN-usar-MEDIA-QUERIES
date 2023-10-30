#!/bin/bash

# Pide al usuario que ingrese nuevos valores para las variables CSS de :root
read -p "Nuevo valor para --container-bg (color de fondo del contenedor): " container_bg
read -p "Nuevo valor para --container-padding (espaciado interior del contenedor): " container_padding
read -p "Nuevo valor para --container-border (borde del contenedor): " container_border

# Crea un archivo HTML con las variables actualizadas
cat > index-limpio-espanol-bash-con-variables.html <<EOF
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Flex</title>

    <style>
        :root {
            --box-sizing: border-box;
            --container-bg: $container_bg;
            --container-padding: $container_padding;
            --container-border: $container_border;

            --child-bg: gainsboro;
            --child-width: 100px;
            --child-margin: 10px;
            --child-text-align: center;
            --child-line-height: 75px;
            --child-font-size: 30px;
            --child-border: 2px solid black;
        }

        * {
            box-sizing: var(--box-sizing);
        }

        .flex-container {
            display: flex;
            flex-flow: row wrap;
            justify-content: space-between;
            align-items: stretch;
            background-color: var(--container-bg);
            padding: var(--container-padding);
            border: var(--container-border);
        }

        .flex-container div {
            background-color: var(--child-bg);
            width: var(--child-width);
            margin: var(--child-margin);
            text-align: var(--child-text-align);
            line-height: var(--child-line-height);
            font-size: var(--child-font-size);
            border: var(--child-border);
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
</html>
EOF

# Muestra un mensaje de confirmación
echo "Archivo HTML creado: index-limpio-espanol-bash-con-variables.html"
