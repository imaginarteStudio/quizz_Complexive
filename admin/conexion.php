<?php
//datos del servidor
$server		="localhost";
$username	="root";
$password	="root";
$bd			="bd_quiz";

//creamos una conexión
$conn = mysqli_connect($server, $username, $password, $bd);

//Chequeamos la conexión
if(!$conn){
	die("Conexión fallida:" . mysqli_connect_error());
}

//Chequeamos la conexión
if(!$conn){
	die("Conexión fallida:" . mysqli_connect_error());
}

?>
