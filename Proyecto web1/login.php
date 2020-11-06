<?php

$dbhost = "localhost";
$dbuser = "root";
$dbpass = "";
$dbname = "iniciosesion";

$conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
if (!$conn) 
{
	die("No hay conexión: ".mysqli_connect_error());
}

$nombre = $_POST["txtusuario"];
$pass = $_POST["txtpassword"];

$query = mysqli_query($conn,"SELECT * FROM iniciosesion.usuariosdoc WHERE usuariosdoc.Usuario = '".$nombre."' && usuariosdoc.Contraseña = '".$pass."';");
$nr = mysqli_num_rows($query);

if($nr == 1)
{
	header("Location: IndexPA.html");
	//echo "Bienvenido:" .$nombre;
}
else if ($nr == 0) 
{
	header("Location: login.html");
	//echo "No ingreso"; 
}
	


?>