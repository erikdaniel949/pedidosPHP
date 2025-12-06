<?php
$email = $_POST['email'];
$DNI = $_POST['DNI'];

include('conexion.php'); // $DB

$result = $DB->query("SELECT * FROM pedidos where email = '$email' AND DNI = '$DNI'");

if ($result->num_rows === 0) {
    header("Location: index.php?seguimiento=false");
    exit;
}

$row = $result->fetch_assoc();
$producto = $row['producto'];

header("Location: index.php?seguimiento=true&producto=". $producto);
exit;