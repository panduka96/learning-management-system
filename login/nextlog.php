<?php
   include("config.php");
  
   
  
      // username and password sent from form 
      
      $myusername = mysqli_real_escape_string($db,$_POST['username']);
      $mypassword = mysqli_real_escape_string($db,$_POST['password']); 
      
      $sql = "SELECT * FROM student WHERE st_id = '$myusername' and password = '$mypassword'";
      $result = mysqli_query($db,$sql);
      
      
      
      $count = mysqli_num_rows($result);


        $sql1 = "SELECT * FROM lecturer WHERE lec_id = '$myusername' and lec_password = '$mypassword'";
      $result1 = mysqli_query($db,$sql1);
     
      
      
      $count1 = mysqli_num_rows($result1);
      
      // If result matched $myusername and $mypassword, table row must be 1 row
    
      
      // If result matched $myusername and $mypassword, table row must be 1 row
    
     if($count == 1) {
        header("Location:../department/department.php");
      }else if($count1==1){
           header("Location:../department-lec/department.php");

      }
      else{
        echo "<h1>"."Incorrect password or username"."</h1>";
      }
   
   mysqli_close($db);
?>
