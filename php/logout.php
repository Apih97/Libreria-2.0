<?php
include "../connect-db.php";
session_start();

$user_id = $_SESSION['user_id'];
$vMaquina_IP = $_SERVER['REMOTE_ADDR'];
date_default_timezone_set('America/Managua');
$dtFechaSalida = date('d/m/y h:iA', time());
$dtFechaAcceso= null;
 				
$sql = "INSERT INTO sfrlogs (id_usuario, vMaquina_IP, dtFechaAcceso, dtFechaSalida) VALUES ('$user_id', '$vMaquina_IP', '$dtFechaAcceso', '$dtFechaSalida')";
mysqli_query($connection, $sql) or die(mysqli_error($connection));

//$log = "$user_id salio del sistema";
//logger($log);

session_destroy();
print "<script>window.location='../login.php';</script>";
?>