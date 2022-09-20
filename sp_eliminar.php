<?php
$id = $_GET['id'];

$cnx = mysqli_connect("localhost", "root", "", "sakila");
$sql = "CALL sp_eliminar_datos('$id')";
$rta = mysqli_query($cnx, $sql);
if(!$rta) {
   echo "No se pudo Eliminar!";
}
else {
    header("Location: listado.php");
} 
?>