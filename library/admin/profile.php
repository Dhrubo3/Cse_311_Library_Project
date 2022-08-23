<?php
include "connection.php";
include "navbar.php";
?>

<!DOCTYPE html>
<html>

<head>
   
    <title>Profile</title>
    <style type="text/css">
        .wrapper {
            width: 300px;
            margin: 0 auto;

        }
        .img-circle
{
	margin-left: 20px;
}
    </style>
</head>

<body style="background-color: yellowgreen;">
    <div class="container">
        <form action="" method="post">
            <button class="btn btn-default" style="float: right;" name="submit1">Edit </button>
        </form>
        <div class="wrapper">
            <?php
            $q = mysqli_query($db, "SELECT * FROM  `admin` WHERE username = '$_SESSION[login_user]' ;");

            ?>
            <h2 style="text-align:center;"> My Profile</h2>
            <?php

            $row = mysqli_fetch_assoc($q);

            echo "<div style='text-align: center'><img class='img-circle profile_img' height = 100 width= 120 src='images/".$_SESSION['pic']."'></div>";

            ?>
            <div style="text-align: center;"><b>Welcome</b>
                <h4>
                    <?php
                    echo $_SESSION['login_user'];
                    ?>
                </h4>
            </div>
            <?php 
            echo "<b>";
              echo "<table class='table table-bordered'>";
              echo "<tr>";
               echo "<td>";
                 echo "<b> First Name: </b>";
              echo "</td>";
            echo "<td>".$row['first']."</td>";
             echo "</tr>";


             echo "<tr>";
             echo "<td>";
               echo "<b> Last Name: </b>";
            echo "</td>";
          echo "<td>".$row['last']."</td>";
           echo "</tr>";

           echo "<tr>";
           echo "<td>";
             echo "<b> User Name: </b>";
          echo "</td>";
        echo "<td>".$row['username']."</td>";
         echo "</tr>";

         echo "<tr>";
         echo "<td>";
           echo "<b> Password : </b>";
        echo "</td>";
      echo "<td>".$row['password']."</td>";
       echo "</tr>";

      
     echo "<tr>";
     echo "<td>";
       echo "<b> Email: </b>";
    echo "</td>";
  echo "<td>".$row['email']."</td>";
   echo "</tr>";

   echo "<tr>";
   echo "<td>";
     echo "<b> Contact: </b>";
  echo "</td>";
echo "<td>".$row['contact']."</td>";
 echo "</tr>";
              
              echo "</table>";
              echo "</b>";
            ?>
        </div>
    </div>
</body>

</html>