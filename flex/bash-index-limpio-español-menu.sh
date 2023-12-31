#!/bin/bash

echo '<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Flex</title>

    <style>
        :root {
            --box-sizing: border-box;
            --container-bg: burlywood;
            --container-padding: 10px;
            --container-border: 2px solid black;

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
</html>' > index-limpio-español-bash-con-variables.html
