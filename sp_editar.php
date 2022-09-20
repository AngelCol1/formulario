<?php

$id = $_POST['id'];
$Nombre = $_POST['Nombre'];
$Nacademico = $_POST['Nacademico'];
$Estadocivil = $_POST['Estadocivil'];


$cnx = mysqli_connect("localhost", "root", "", "sakila");
$sql = "CALL sp_actualizar_datos('$Nombre','$Nacademico','$Estadocivil','$id')";
$rta = mysqli_query($cnx, $sql);
if(!$rta) {
   echo "No se pudo Actualizar!";
}
else {
    header("Location: listado.php");
} 
?>