<?php require_once('config.php');?>
<?php

$mod_id= $_POST['input'];


$query="DELETE FROM langc WHERE langc_id='$mod_id'";
$result=mysqli_query($db,$query);
if($result)
	header("Location:langc.php");

else
	echo "error";

mysqli_close($db);
?>

