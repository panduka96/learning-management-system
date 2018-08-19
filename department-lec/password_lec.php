<?php require_once('config.php');?>
<?php

$lec_id= $_POST['lec_id'];
$password= $_POST['password'];
$confirm= $_POST['confirm'];


$query="UPDATE lecturer SET lec_password='$password'  WHERE lec_id='$lec_id'";
$result=mysqli_query( $db,$query);
if($result)
	header("Location:changepassword_lec.html");

mysqli_close($db);
?>


