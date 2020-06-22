<?php 
	session_start(); 
	include 'menu.php';

	$record = mysqli_query($db, "SELECT * FROM product WHERE product_id=product_id");

		if (count($record) == 1 ) {
			$n = mysqli_fetch_array($record);
			$product_id = $n['product_id'];
			$product_name = $n['product_name'];
			$quantity = ['quantity'];
			$status = ['status'];
		}
?>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<link rel="stylesheet" type="text/css" href="../../bootstrap/css/bootstrap.min.css">
	<link rel="icon" type="image/ico" href="../../img/book.ico" />
</head>

<?php 
$sql = "SELECT product_name, quantity, status from product ORDER By product_name";
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
			<th>Nombre producto</th>
			<th>Cantidad</th>
			<th>Estado</th>
		</tr>

	<?php while ($row = mysqli_fetch_array($results)) { ?>
		<tr>
			<td><?php echo $row['product_name']; ?></td>
			<td><?php echo $row['quantity']; ?></td>
			<td><?php $status = $row['status']; 
			if ($status==1)
				{$estado="Activo";}
			else
				{$estado="Inactivo";}
			echo $estado;
			?></td>
		</tr>
	<?php } ?>

</table>

</section>