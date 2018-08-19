
<!DOCTYPE html>
<html>
<head>
	<title>Contact</title>
	<meta charset="utf-8">
  <meta lang="en">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="contact.css">
  <script type="text/javascript" >
      function validate(){

                   if(document.form1.st_id.value.length==0){
                    alert("fill your Student ID");
                    document.getElementById("form1").action="contact.php";
                   }

                    if(document.form1.firstname.value.length==0){
                    alert("fill your first name");
                    document.getElementById("form1").action="contact.php";
                   }
                    if(document.form1.lastname.value.length==0){
                    alert("fill your last name");
                    document.getElementById("form1").action="contact.php";
                   }
                    if(document.form1.email.value.length==0){
                    alert("fill your e-mail ");
                    document.getElementById("form1").action="contact.php";
                   }
                    if(document.form1.comment.value.length==0){
                    alert("add your comment ");
                    document.getElementById("form1").action="contact.php";
                   }




      }
    
  </script>
</head>
<body>
   <div class="wrapper">
     <div class="navbar">
      <ul>
        <li><a href="../home/home.html">Home</a></li>
        <li><a href="../login/login.php">Login</a></li>
        <li><a href="../newsandevents/newsandevents.html">News and Events</a></li>
        <li><a href="../clubs/clubs.html">Clubs and Societies</a></li>
        <li><a href="../contact/contact.html">Contact us</a></li>
      </ul>
      </div>

      <div class="topic1">
     <h3>NATIONAL SCHOOL OF BUSINESS MANAGEMENT</h3>
    </div>
     <div class="image">
     <img alt="image" src="contact.jpg">
      </div>
     
     <div class="contact">
     <form action="sql.php" method="POST" name="form1" id="form1">
                   Student ID:<br><input type="text" name="st_id"><br>

				   First Name:<br><input type="text" name="firstname">
				  
				   <br>
				   Last Name: <br><input type="text" name="lastname">	   
				   <br>				   
				   E-Mail:<br><input type="text" name="email">	   
				   
				   <br>
				   Comments:<br><textarea name="comment"></textarea>
				   
				   <br>
				   <input class="in" type ="submit" value="Submit" name="submit" onclick="validate();">
				   <br>
				   <input class="in1" type="reset" value="Reset">
    </form>
  </div>
   	<div class="contact1">
   	 

       Tele no:000000000
       <br><br>
   	   Program Office of Computing:000000000
   	   <br><br>
   	   Program Office of Business:00000000
   	   <br><br>
   	   E-mail:nsbm@nsbm.lk
   	   <br><br>
   	</div>

   	<div class="foot">
   	  <footer>Copyright &;copy All Rights Reserved,Design &; Developed by NSBM Designers<p>
    <a href="http://jigsaw.w3.org/css-validator/check/referer">
        <img style="border:0;width:88px;height:31px"
            src="http://jigsaw.w3.org/css-validator/images/vcss"
            alt="Valid CSS!" />
    </a>
</p>
            <p>
<a href="http://jigsaw.w3.org/css-validator/check/referer">
    <img style="border:0;width:88px;height:31px"
        src="http://jigsaw.w3.org/css-validator/images/vcss-blue"
        alt="Valid CSS!" />
    </a>
</p>
        </footer>   
   	</div>
   </div>
</body>
</html>
