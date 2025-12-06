<?php
mysqli_report(MYSQLI_REPORT_OFF);

$DNI = $_POST['DNI'];
$producto = $_POST['producto'];
$nombre_y_apellido = $_POST['nombre_y_apellido'];
$email = $_POST['email'];
$direccion = $_POST['direccion'];
$ciudad = $_POST['ciudad'];


include('conexion.php'); // $DB

$resultExistePedido = $DB->query("SELECT * FROM productos WHERE nombre = '$producto'");

if($DNI > 99999999 || $resultExistePedido->num_rows === 0){
    header('location:index.php?pedidoRealizado=false');
    exit;
}

$result = $DB->query("INSERT INTO pedidos(DNI, producto, nombre_y_apellido, email, direccion, ciudad) values(
    '$DNI',
    '$producto',
    '$nombre_y_apellido',
    '$email',
    '$direccion',
    '$ciudad'
)");

if(!$result){
    header('location:index.php?pedidoRealizado=false');
    exit;
}
header('location:index.php?pedidoRealizado=true&producto=' . $producto);