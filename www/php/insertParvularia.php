<?php
 include "db.php";
 if(isset($_POST['insert']))
 {
 $rut=$_POST['rut'];
 $nombres=$_POST['nombres'];
 $apellidos=$_POST['apellidos'];
 $correo_personal=$_POST['correo_personal'];
 $fono_personal=$_POST['fono_personal'];
 $domicilio=$_POST['domicilio'];
 $fecha_nacimiento=$_POST['fecha_nacimiento'];
 $nivel=$_POST['nivel'];
 
 $q=mysqli_query($con,"INSERT INTO `parvularia` (`rut`,`nombres`,`apellidos`,`correo_personal`,`fono_personal`,`domicilio`,`fecha_nacimiento`, `nivel`)VALUES('$rut','$nombres','$apellidos','$correo_personal','$fono_personal','$domicilio','$fecha_nacimiento', '$nivel')");
 if($q)
  echo "success";
 else
  echo "error";
 }
 ?>