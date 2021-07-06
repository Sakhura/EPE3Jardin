<?php

include "db.php";
if(isset($_POST['buscar']))
{
 $usu=$_POST['usuario'];
 $cla=$_POST['clave'];

 $q=mysqli_query($con,"select * from `usuarios` where `nombre_usuario` = '$usu' AND `clave_usuario` = '$cla'");

 if($q){
  echo "si";
 }else{
  echo "no";
 }
}

?>