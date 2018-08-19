<?php
include("config.php");

if(isset($_GET['dow'])){

	$path=$_GET['dow'];

	  

	header('Content-Type:application/octet-stream');
	header('Content-Disposition:attachment;filename="'.basename($path).'"');
	
	header('Content-Length:'.filesize($path));

	readfile($path);



}

mysqli_close($db);

?>