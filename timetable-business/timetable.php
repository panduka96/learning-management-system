<?php
include("config.php");

$sql="SELECT  * FROM timetable";

$res = mysqli_query($db,$sql);

mysqli_close($db);
?>

<!DOCTYPE html>
<html>

<head>

  <meta charset="UTF-8">
<meta lang="en">
  <title>languadge c</title>


    <link rel="stylesheet" href="timetable.css" media="screen" type="text/css" />
    <meta name="viewport" content="width=device-width, intial-scale=1.0">
   

</head>

<body>

  <div id="div1">
      <div id="div12">
            <nav id="nav1">
                <ul>
                
                   
                    <li>
                          <span><a id="log1" href="logout.php">LOG OUT</a></span>
                    </li>
                </ul>
            </nav>
      </div>
      <div id="div13">

      <div id="div14">
      <h1 id="btime">Business Class Time Tables</h1> <br>
      <hr>
      <h2 id="bdown"> download your time table</h2>
      <hr>
      <br>
       <?php
     while($row=mysqli_fetch_array($res,MYSQLI_ASSOC)){
      $id=$row['time_id'];
      $name=$row['time_name'];
      $path=$row['paths'];
      

      echo   "<a id='link1' href='downloadnow.php?dow=$path'> "."<h3 id='h3'>".$id.".".$name."</h3>"."</a>"."<br>" ;    }
     ?>
      </div>
      
      </div>
    
  
  </div>
<footer><p>
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


 

</body>

</html>