<?php
 include "db.php";
 if(isset($_POST['insert']))
 {
 $alumno_rut=$_POST['alumno_rut'];
 $apoderado_rut=$_POST['apoderado_rut'];
 $registro_de_atencion=$_POST['registro_de_atencion'];
 $q=mysqli_query($con,"INSERT INTO `alumno_has_apoderado` (`alumno_rut`,`apoderado_rut`,`registro_de_atencion`)VALUES('$alumno_rut','$apoderado_rut','$registro_de_atencion')");
 if($q)
  echo "success";
 else
  echo "error";
 }
 ?>