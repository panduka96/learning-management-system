<?php
   include("config.php");
  
   
  
      // username and password sent from form 
      
      $myusername = mysqli_real_escape_string($db,$_POST['id']);
      $myfood = mysqli_real_escape_string($db,$_POST['food']); 
      $myplace = mysqli_real_escape_string($db,$_POST['place']); 
      
      $sql = "SELECT * FROM student WHERE st_id = '$myusername' and food = '$myfood' and place='$myplace'";
      $result = mysqli_query($db,$sql);
      
      
      
      $count = mysqli_num_rows($result);


        $sql1 = "SELECT * FROM lecturer WHERE lec_id = '$myusername' and food = '$myfood'  and  place='$myplace'";
      $result1 = mysqli_query($db,$sql1);
     
      
      
      $count1 = mysqli_num_rows($result1);
      
      // If result matched $myusername and $mypassword, table row must be 1 row
    
      
      // If result matched $myusername and $mypassword, table row must be 1 row
    
     if($count == 1) {
        header("Location:changepassword.html");
      }else if($count1==1){
           header("Location:changepassword_lec.html");

      }
      else{
        echo "<h1>"."sorry,wrong inputs"."</h1>";
      }
     
   mysqli_close($db);
?>
