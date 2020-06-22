<?php 
	session_start(); 
	include 'menu.php';

	$record = mysqli_query($db, "SELECT * FROM orders WHERE order_id=order_id");

		if (count($record) == 1 ) {
			$n = mysqli_fetch_array($record);
			$order_id = $n['order_id'];
			$client_name = $n['client_name'];
			$Cantidad = ['SELECT COUNT(orders.client_name) FROM orders WHERE orders.order_id= orders.order_id GROUP BY orders.client_name'];
		}
?>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<link rel="stylesheet" type="text/css" href="../../bootstrap/css/bootstrap.min.css">
	<link rel="icon" type="image/ico" href="../../img/book.ico" />
</head>

<?php 
$sql = "SELECT COUNT(orders.client_name) AS Cantidad, orders.client_name FROM orders WHERE orders.order_id= orders.order_id GROUP BY orders.client_name";
$results = mysqli_query($db, $sql) or die(mysqli_error($db)); ?>

<section class="main-container">
    <div class="col-lg-12 page-header text-center">

<p>&nbsp;</p>
<ol class="breadcrumb">
  <li><a href="../../home.php">Home</a></li>
  <li>Administración</li>
  <li class="active">Reportes de productos</li>
</ol>

<form method="post" action="funcion.php" align="center">
	<div class="form-group row">
	<label for="caja_busqueda" class="col-md-2 control-label">Nombre</label>
	<div class="col-md-8">
	<input type="text" class="form-control" id="caja_busqueda">
	</div>
	<input type="submit" name="export" value="CSV Export" class="btn btn-success" />  
	</div>
</form>

<table class='table table-hover' id="productos">
		<tr>
			<th>Nombre cliente</th>
			<th>Cantidad de visitas</th>
		</tr>

	<?php while ($row = mysqli_fetch_array($results)) { ?>
		<tr>
			<td><?php echo $row['client_name']; ?></td>
			<td><?php echo $row['Cantidad']; ?></td>
		</tr>
	<?php } ?>

</table>

</section>