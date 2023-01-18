<?php

$con = mysqli_connect("techgenie-rds.caav3m5vgnvl.us-east-1.rds.amazonaws.com","admin","admin123","tagency");

if (mysqli_connect_errno()) {
	echo "Failed to connect to MySQL: ".mysqli_connect_error();
}

?>
