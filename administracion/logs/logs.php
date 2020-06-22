<?php 
	session_start(); 
	include 'menu.php';
	//include 'funcion.php'

	$record = mysqli_query($db, "SELECT * FROM sfrlogs WHERE id_log=id_log");

		if (count($record) == 1 ) {
			$n = mysqli_fetch_array($record);
			$vMaquina_IP = $n['vMaquina_IP'];
			$dtFechaAcceso	 = $n['dtFechaAcceso'];
			$dtFechaSalida = $n['dtFechaSalida'];
			$id_usuario = $n['id_usuario'];
			$username = ['username'];
		}
?>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<link rel="stylesheet" type="text/css" href="../../bootstrap/css/bootstrap.min.css">
	<link rel="icon" type="image/ico" href="../../img/book.ico" />
</head>

<?php 
$sql = "SELECT user.username, sfrlogs.vMaquina_IP, sfrlogs.dtFechaAcceso, sfrlogs.dtFechaSalida FROM sfrlogs, user WHERE sfrlogs.id_usuario = user.id ORDER BY sfrlogs.id_log";
$results = mysqli_query($db, $sql) or die(mysqli_error($db)); ?>

<section class="main-container">
    <div class="col-lg-12 page-header text-center">

<p>&nbsp;</p>
<ol class="breadcrumb">
  <li><a href="../../home.php">Home</a></li>
  <li>Administración</li>
  <li class="active">Logs</li>
</ol>

<form method="post" action="funcion.php" align="center">  
                     
	<div class="form-group row">
	<label for="caja_busqueda" class="col-md-2 control-label">Nombre</label>
	<div class="col-md-8">
	<input type="text" class="form-control" id="caja_busqueda">
	</div>
	<div class="col-md-1">
	<input type="submit" name="export" value="CSV Export" class="btn btn-success" />
	</div>
	</div>
</form> 

<table class='table table-hover' id="productos">
		<tr>
			<th>Usuario</th>
			<th>IP</th>
			<th>Fecha acceso</th>
			<th>Fecha salida</th>	
		</tr>
	<?php while ($row = mysqli_fetch_array($results)) { ?>
		<tr>
			<td><?php echo $row['username']; ?></td>
			<td><?php echo $row['vMaquina_IP']; ?></td>
			<td><?php echo $row['dtFechaAcceso']; ?></td>
			<td><?php echo $row['dtFechaSalida']; ?></td>
		</tr>
	<?php } ?>

</table>


</section>