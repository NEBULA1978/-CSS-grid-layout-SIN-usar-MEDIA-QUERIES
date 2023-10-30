#!/bin/bash

# Pide al usuario que ingrese nuevos valores para las variables y propiedades CSS
read -p "Nuevo valor para --container-bg (color de fondo del contenedor): " container_bg
read -p "Nuevo valor para --container-padding (espaciado interior del contenedor): " container_padding
read -p "Nuevo valor para --container-border (borde del contenedor): " container_border
read -p "Nuevo valor para --child-bg (color de fondo de elementos hijos): " child_bg
read -p "Nuevo valor para --child-width (ancho de elementos hijos): " child_width
read -p "Nuevo valor para --child-margin (margen de elementos hijos): " child_margin
read -p "Nuevo valor para --child-text-align (alineación de texto de elementos hijos): " child_text_align
read -p "Nuevo valor para --child-line-height (altura de línea de elementos hijos): " child_line_height
read -p "Nuevo valor para --child-font-size (tamaño de fuente de elementos hijos): " child_font_size
read -p "Nuevo valor para --child-border (borde de elementos hijos): " child_border
# Agrega el resto de las variables aquí
read -p "Nuevo valor para --box-sizing (modelo de caja): " box_sizing
read -p "Nuevo valor para display de .flex-container (e.g., flex, inline-flex, etc.): " flex_container_display
read -p "Nuevo valor para flex-flow de .flex-container (e.g., row wrap, column nowrap, etc.): " flex_container_flex_flow
read -p "Nuevo valor para justify-content de .flex-container (e.g., flex-start, space-between, etc.): " flex_container_justify_content
read -p "Nuevo valor para align-items de .flex-container (e.g., stretch, center, etc.): " flex_container_align_items

# Crea un archivo HTML con las variables y propiedades actualizadas
cat > index-limpio-espanol-bash-con-variables.html <<EOF
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Flex</title>

    <style>
        :root {
            --box-sizing: $box_sizing;
            --container-bg: $container_bg;
            --container-padding: $container_padding;
            --container-border: $container_border;

            --child-bg: $child_bg;
            --child-width: $child_width;
            --child-margin: $child_margin;
            --child-text-align: $child_text_align;
            --child-line-height: $child_line_height;
            --child-font-size: $child_font_size;
            --child-border: $child_border;
        }

        * {
            box-sizing: var(--box-sizing);
        }

        .flex-container {
            display: $flex_container_display;
            flex-flow: $flex_container_flex_flow;
            justify-content: $flex_container_justify_content;
            align-items: $flex_container_align_items;
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
