<?php 	

require_once 'core.php';
  $db = mysqli_connect('localhost', 'root', '', 'libreriatres');
  $result = mysqli_query($db,"select username from user where id ='".$_SESSION['user_id']."'");
  $row = mysqli_fetch_array($result);
  $username = $row['username'];

$orderId = $_POST['orderId'];

$sql = "SELECT order_date, client_name, client_contact, sub_total, vat, total_amount, discount, grand_total, paid, due FROM orders WHERE order_id = $orderId";

$orderResult = $connect->query($sql);
$orderData = $orderResult->fetch_array();

$orderDate = $orderData[0];
$clientName = $orderData[1];
$clientContact = $orderData[2]; 
$subTotal = $orderData[3];
$vat = $orderData[4];
$totalAmount = $orderData[5]; 
$discount = $orderData[6];
$grandTotal = $orderData[7];
$paid = $orderData[8];
$due = $orderData[9];


$orderItemSql = "SELECT order_item.product_id, order_item.rate, order_item.quantity, order_item.total,
product.product_name FROM order_item
	INNER JOIN product ON order_item.product_id = product.product_id 
 WHERE order_item.order_id = $orderId";
$orderItemResult = $connect->query($orderItemSql);

 $table = '
 <table border="1" cellspacing="0" cellpadding="20" width="100%">
	<thead>
		<tr >
			<th colspan="5">

			<center>
				Fecha. : '.$orderDate.'
				<center>Nombre : '.$clientName.'</center>
				Contacto : '.$clientContact.'
				<center>Vendedor : '.$username.'</center>
			</center>		
			</th>
				
		</tr>		
	</thead>
</table>
<table border="0" width="100%;" cellpadding="5" style="border:1px solid black;border-top-style:1px solid black;border-bottom-style:1px solid black;">

	<tbody>
		<tr>
			<th>P.no</th>
			<th>Producto</th>
			<th>Precio</th>
			<th>Cantidad</th>
			<th>Total</th>
		</tr>';

		$x = 1;
		while($row = $orderItemResult->fetch_array()) {			
						
			$table .= '<tr>
				<th>'.$x.'</th>
				<th>'.$row[4].'</th>
				<th>'.$row[1].'</th>
				<th>'.$row[2].'</th>
				<th>'.$row[3].'</th>
			</tr>
			';
		$x++;
		} // /while

		$table .= '<tr>
			<th></th>
		</tr>

		<tr>
			<th></th>
		</tr>

		<tr>
			<th>Sub total</th>
			<th>'.$subTotal.'</th>			
		</tr>

		<tr>
			<th>IVA 15%</th>
			<th>'.$vat.'</th>			
		</tr>

		<tr>
			<th>Total </th>
			<th>'.$totalAmount.'</th>			
		</tr>	

		<tr>
			<th>Descuento</th>
			<th>'.$discount.'</th>			
		</tr>

		<tr>
			<th>Gran total</th>
			<th>'.$grandTotal.'</th>			
		</tr>

		<tr>
			<th>Cantidad pagada</th>
			<th>'.$paid.'</th>			
		</tr>

		<tr>
			<th>Vuelto</th>
			<th>'.$due.'</th>			
		</tr>
	</tbody>
</table>
 ';


$connect->close();

echo $table;