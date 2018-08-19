<?php require_once('config.php');?>
<?php

$st_id= $_POST['st_id'];
$firstname= $_POST['firstname'];
$lastname= $_POST['lastname'];
$email= $_POST['email'];
$comment=$_POST['comment'];

$query="INSERT INTO contact (st_id,firstname,lastname,email,comment) VALUE ('{$st_id}','{$firstname}','{$lastname}','{$email}','{$comment}')";
$result=mysqli_query($db,$query);
if($result)
	header("Location:contact.php");

 mysqli_close($db);
?>
