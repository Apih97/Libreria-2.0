 <?php  
      //export.php  
 if(isset($_POST["export"])){
   
      $connect = mysqli_connect("localhost", "root", "", "libreriatres");  
      header('Content-Type: text/csv; charset=utf-8');  
      header('Content-Disposition: attachment; filename=Reporte_productos.csv');  
      $output = fopen("php://output", "w");  
      fputcsv($output, array('Nombre', 'Estado', 'Cantidad', 'Precio'));  
      $query = "SELECT product_name, quantity, status from product ORDER By product_name";  
      $result = mysqli_query($connect, $query);  
      while($row = mysqli_fetch_assoc($result)){  
           fputcsv($output, $row);  
      }  
      fclose($output);  
 }  
 ?>  