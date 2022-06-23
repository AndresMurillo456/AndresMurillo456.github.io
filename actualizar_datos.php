<?php

	$servidor = "localhost"; $usuario = "root" ; $contraseña = ""; $bd = "venta_carros";
	$conexion = new mysql($servidor, $usuario, $contraseña, $bd);

	if($conexion->connect_error){ echo "Error al conectar a la base datos";}

	$id = $GET["unidades_vendidad"];

	$sql = "SELECT * FROM unidades_vendidad";
	$datos = $conexion->query($sql);

	?>