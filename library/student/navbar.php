<?php
  session_start();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>   
    <script src="https://maxcdn.bootstrap.com/bootstrap/3.3.1/js/3.3.1/js/bootstrap.min.js"></script>
    
    <title></title>
</head>
<body>
<nav class="navbar navbar-inverse">
        <div class="container-fluid">
        <div class="navbar-header">
             <a class="navbar-brand active">ONLINE LIBRARY MANAGEMENT SYSTEM</a>
         </div>
    <ul class="nav navbar-nav">
        <li><a href="index.php">HOME</a></li>
        <li><a href="books.php">BOOKS</a></li>
        <li><a href="feedback.php">FEEDBACK</a></li>
        <li><a href="profile.php">PROFILE</a></li>
    </ul>
    <?php
            if(isset($_SESSION['login_user']))
            {?>
            <ul class="nav navbar-nav">
              <li><a href="profile.php"></a></li>
            </ul>
                <ul class="nav navbar-nav navbar-right">
                  <li><a href="">
                    <div style="color: white">
                      <?php
                       echo "<img class='img-circle profile-img' height= 30 width = 30 src='images/".$_SESSION['pic']."'>";
                        echo " ".$_SESSION['login_user']; 
                      ?>
                    </div>
                  </a></li>
                  <li><a href="logout.php"><span class="glyphicon glyphicon-log-out"> LOGOUT</span></a></li>
                </ul>
              <?php
            }
            else
            {   ?>
              <ul class="nav navbar-nav navbar-right">

                <li><a href="student_login.php"><span class="glyphicon glyphicon-log-in"> LOGIN</span></a></li>
                
                <li><a href="registration.php"><span class="glyphicon glyphicon-user"> SIGN UP</span></a></li>
              </ul>
                <?php
            }
          ?>

      </div>
    </nav>

</body>
</html>