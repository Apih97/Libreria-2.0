 <?php  
      //export.php  
 if(isset($_POST["export"])){
   
      $connect = mysqli_connect("localhost", "root", "", "libreriatres");  
      header('Content-Type: text/csv; charset=utf-8');  
      header('Content-Disposition: attachment; filename=Reporte_Proveedores.csv');  
      $output = fopen("php://output", "w");  
      fputcsv($output, array('Nombre Proveedor', 'Estado'));  
      $query = "SELECT nombre_prov, status_prov FROM provider ORDER By nombre_prov";  
      $result = mysqli_query($connect, $query);  
      while($row = mysqli_fetch_assoc($result)){  
           fputcsv($output, $row);  
      }  
      fclose($output);  
 }  
 ?>  