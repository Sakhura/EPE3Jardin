<?php

// llamamos a la conexion base de datos
include "db.php";

if(isset($_POST['buscar'])){

//capturamos el valor que nos mande el la consulta de html
$nombre=$_POST['nombres'];
$data=array();
//se realiza la consulta SQL con el dato capturado
    $nivel = mysqli_query($con, "select `nivel` from `parvularia` where `nombres`= '$nombre' or `apellidos` = '$nombre'");    
   
    while ($row=mysqli_fetch_object($nivel)){
      $data[]=$row;
     }
    

    if(mysqli_num_rows($nivel)<1)   
      echo 'no';
     else
     echo json_encode($data);
   
    }

   ?>
