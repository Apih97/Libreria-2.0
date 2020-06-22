<?php

if(!empty($_POST)){
	if(isset($_POST["username"]) &&isset($_POST["password"])){
		if($_POST["username"]!=""&&$_POST["password"]!=""){
			include "../connect-db.php";
			
			$user_id=null;
			$sql1= "select * from user where (username=\"$_POST[username]\" or email=\"$_POST[username]\") and password=\"$_POST[password]\" ";
			$query = $connection->query($sql1);
			while ($r=$query->fetch_array()) {
				$user_id=$r["id"];
				break;
			}
			if($user_id==null){
				print "<script>alert(\"Acceso invalido.\");window.location='../login.php';</script>";
			}else{
				session_start();
				
				$vMaquina_IP = $_SERVER['REMOTE_ADDR'];
				date_default_timezone_set('America/Managua');
				$dtFechaAcceso = date('d/m/y h:iA', time());
				$dtFechaSalida= null;
 				
				$sql = "INSERT INTO sfrlogs (id_usuario, vMaquina_IP, dtFechaAcceso, dtFechaSalida) VALUES ('$user_id', '$vMaquina_IP', '$dtFechaAcceso', '$dtFechaSalida')";
				mysqli_query($connection, $sql) or die(mysqli_error($connection));

				//$log = "$user_id accedio al sistema";
				//logger($log);
				
				$_SESSION["user_id"]=$user_id;
				print "<script>window.location='../home.php';</script>";				
			}
		}
	}
}



?>