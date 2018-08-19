
<?php
    $name=$_POST["name"];
	$fname=$_FILES["file1"]["name"];
	$ftemp=$_FILES["file1"]["tmp_name"];
	$flag=move_uploaded_file($ftemp,"D:/$fname");


	 define('DB_SERVER', 'localhost');
   define('DB_USERNAME', 'root');
   define('DB_PASSWORD', '');
   define('DB_DATABASE', 'learnigmanagementsystem');
   $db = mysqli_connect(DB_SERVER,DB_USERNAME,DB_PASSWORD,DB_DATABASE);

    $query="INSERT INTO langc (langc_name,langc_path,name) value ('{$fname}','D:/$fname','{$name}')";

    mysqli_query($db,$query);

	if($flag)
		header("Location:langc.php");
	else
		echo " Sorry couldn't move";

	mysqli_close($db);
?>
