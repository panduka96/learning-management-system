<?php require_once('config.php');?>
<?php

$st_id= $_POST['st_id'];
$password= $_POST['password'];
$confirm= $_POST['confirm'];


$query="UPDATE student SET password='$password'  WHERE st_id='$st_id'";
$result=mysqli_query( $db,$query);
if($result)
	header("Location:changepassword.html");

mysqli_close($db);
?>


