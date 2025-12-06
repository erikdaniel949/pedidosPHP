<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Ingreso y Registro</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

    <div class="contenedor-doble">

        <?php
            
            if(isset($_GET['seguimiento'])){
                if($_GET['seguimiento'] === 'true'){
                    if( isset($_GET['producto'])) {
                        $producto = $_GET['producto'];
                        
                        echo 
                        "<div class='respuesta respuesta-positiva'>
                            <h1>Seguimiento en proceso de tu: $producto</h1>
                        </div>";
                    }
                } else {
                    echo
                    "<div class='respuesta respuesta-negativa'>
                        <h1>No hay seguimiento de tu producto</h1>
                    </div>";
                }
            } 
            if(isset($_GET['pedidoRealizado'])){
                if($_GET['pedidoRealizado'] === 'true'){
                    if( isset($_GET['producto'])) {
                        $producto = $_GET['producto'];
                        
                        echo 
                        "<div class='respuesta respuesta-positiva'>
                            <h1>Pedido realizado de tu: $producto</h1>
                        </div>";
                    }
                } else {
                    echo
                    "<div class='respuesta respuesta-negativa'>
                        <h1>No se pudo realizar tu pedido</h1>
                    </div>";
                }
            } 
            ?>
        
        <!-- Formulario de ingreso -->
        <div class="contenedor">
            <h2>Consultar Seguimiento</h2>

            <form method="POST" action="procesarConsultaSeguimiento.php">

                <label>DNI:</label>
                <input type="Number" name="DNI" required>

                <label>Email:</label>
                <input type="email" name="email" required>

                <button type="submit">Entrar</button>
            </form>
        </div>

        <!-- Formulario de registro -->
        <div class="contenedor">
            <h2>Realizar pedido</h2>

            <form method="POST" action="procesarPedido.php">
                <label>Producto:</label>
                <input type="text" name="producto" required>

                <label>Nombre y apellido:</label>
                <input type="text" name="nombre_y_apellido" required>

                <label>Email:</label>
                <input type="email" name="email" required>

                <label>DNI:</label>
                <input type="text" name="DNI" required>

                <label>Direccion:</label>
                <input type="text" name="direccion" required>

                <label>Ciudad:</label>
                <input type="text" name="ciudad" required>
                
                <button type="submit">Realizar Pedido</button>
            </form>
        </div>

    </div>

</body>
</html>