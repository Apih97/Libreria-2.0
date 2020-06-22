 <?php  
      //export.php  
 if(isset($_POST["export"])){
   
      $connect = mysqli_connect("localhost", "root", "", "libreriatres");  
      header('Content-Type: text/csv; charset=utf-8');  
      header('Content-Disposition: attachment; filename=Reporte_Clientes.csv');  
      $output = fopen("php://output", "w");  
      fputcsv($output, array('Cantidad de visitas', 'Nombre cliente'));  
      $query = "SELECT COUNT(orders.client_name) AS Cantidad, orders.client_name FROM orders WHERE orders.order_id= orders.order_id GROUP BY orders.client_name";  
      $result = mysqli_query($connect, $query);  
      while($row = mysqli_fetch_assoc($result)){  
           fputcsv($output, $row);  
      }  
      fclose($output);  
 }  
 ?>  