<?php
$dbhost="localhost";
$dbuser="root";
$dbpass="";
$dbname="sakila";

$conn=mysqli_connect($dbhost,$dbuser,$dbpass,$dbname);
if(!$conn){
    die("Error en la conexion a base de datos: ".mysqli_connect_error());
}

$Nombre = $_POST['Nombre'];
$Nacademico = $_POST['Nacademico'];
$Estadocivil = $_POST['Estadocivil'];

$sql = "CALL registro('$Nombre','$Nacademico','$Estadocivil')";
if (mysqli_query($conn, $sql)) {
    header("Location: listado.php");
}else{
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}
?>