<?php
 include "db.php";
 if(isset($_POST['insert']))
 {

 $rut=$_POST['rut'];
 $nombres=$_POST['nombres'];
 $apellidos=$_POST['apellidos'];
 $correo_personal=$_POST['correo_personal'];
 $fono_trabajo=$_POST['fono_trabajo'];
 $domicilio=$_POST['domicilio'];
 $fecha_nacimiento=$_POST['fecha_nacimiento'];
 $fono_personal=$_POST['fono_personal'];
 $fono_otro=$_POST['fono_otro'];

 $rut_a=$_POST['rut_a'];
 $nombres_a=$_POST['nombres_a'];
 $apellidos_a=$_POST['apellidos_a'];
 $fecha_nacimiento_a=$_POST['fecha_nacimiento_a'];
 $consideraciones=$_POST['consideraciones'];
 $diagnostico=$_POST['diagnostico'];
 $neep=$_POST['neep'];
 $neet=$_POST['neet'];
 $nivel=$_POST['nivel'];

 $rut_r=$_POST['rut_r'];
 $nombres_r=$_POST['nombres_r'];
 $apellidos_r=$_POST['apellidos_r'];
 $telefono_r=$_POST['telefono_r'];
 $edad=$_POST['edad'];


 
 $q=mysqli_query($con,"INSERT INTO `apoderado` (`rut`,`nombres`,`apellidos`,`correo_personal`,`fono_trabajo`,`domicilio`,`fecha_nacimiento`,`fono_personal`,`fono_otro`)VALUES('$rut','$nombres','$apellidos','$correo_personal','$fono_trabajo','$domicilio','$fecha_nacimiento','$fono_personal', '$fono_otro')");

 $q1=mysqli_query($con,"INSERT INTO `alumno` (`rut_a`,`nombres`,`apellidos`,`fecha_nacimiento`,`consideraciones`,`diagnostico`,`neep`,`neet`,`nivel`)VALUES('$rut_a','$nombres_a','$apellidos_a','$fecha_nacimiento_a','$consideraciones','$diagnostico','$neep','$neet', '$nivel')");

 $q2=mysqli_query($con,"INSERT INTO `autorizo_retiro` (`rut_r`,`nombres`,`apellidos`,`telefono`,`edad`)VALUES('$rut_r','$nombres_r','$apellidos_r','$telefono_r','$edad')");


 if($q && $q1 && $q2)
  echo "success";
 else
  echo "error";
 }
 ?>