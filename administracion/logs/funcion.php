 <?php  
      //export.php  
 if(isset($_POST["export"])){
   
      $connect = mysqli_connect("localhost", "root", "", "libreriatres");  
      header('Content-Type: text/csv; charset=utf-8');  
      header('Content-Disposition: attachment; filename=Actividad.csv');  
      $output = fopen("php://output", "w");  
      fputcsv($output, array('Usuario', 'IP', 'Fecha acceso', 'Fecha salida' ));  
      $query = "SELECT user.username, sfrlogs.vMaquina_IP, sfrlogs.dtFechaAcceso, sfrlogs.dtFechaSalida FROM sfrlogs, user WHERE sfrlogs.id_usuario = user.id ORDER BY sfrlogs.id_log";  
      $result = mysqli_query($connect, $query);  
      while($row = mysqli_fetch_assoc($result)){  
           fputcsv($output, $row);  
      }  
      fclose($output);  
 }  
 ?>  