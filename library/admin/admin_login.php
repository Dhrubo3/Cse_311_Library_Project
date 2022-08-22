<?php
  include "connection.php";
  include "navbar.php";
?>

<!DOCTYPE html>
<html>
<head>
   
    <title>Admin Login</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <meta charset="utf-8">
    <meta name="viewport" content="width = device-width, initial-scalet=1">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrap.com/bootstrap/3.3.1/js/3.3.1/js/bootstrap.min.js"></script>

<style type="text/css">
   section
   {
    margin-top: -20px;
   }
</style>
</head>
<body>

    <section>
<div class="log_img">
    <br><br><br>
    <div class="box1">
        <h1 style="text-align: center; font-size: 35px;font-family: Lucida Console; color:white;">Library Management System</h1><br>
        <h1 style="text-align: center;font-size: 25px;color: white;">User Login Form</h1><br>

        <form name="login" action="" method="post">
            
          <div class="login">
            <input style="color: black;" class="from-control" type="text" name="username" placeholder="Username" required=""> <br><br>
            <input style="color: black;" class="from-control" type="password" name="password" placeholder="Password" required=""> <br><br>
            <input class="btn btn-default" type="submit" name="submit" value="Login" style="color:black; width: 70px; height: 30px;">
          </div>
      
        <p style="color: white; padding-left: 15px;">
            <br><br>
            <a style="color: white;" href="">Forgot password?</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            New to this website?<a style="color: white;" href="registration.html">Sign Up</a>
        </p>
    </form>
    </div>
</div>
    </section>

<?php
       if(isset($_POST['submit']))
       {

        $count = 0;
           $res = mysqli_query($db,"SELECT * FROM `admin` WHERE username = '$_POST[username]' && password = '$_POST[password]'; ");


        $row = mysqli_fetch_row($res);

        $count = mysqli_num_rows($res);
        

        if($count==0)
        {
          ?>
            <!--  <script type="text/javascript">
              alert("The username and password doesn't match...");
            </script>
        -->
        
          <div class="alert alert-danger" style="width: 500px; margin: left 300px;">
          <strong> username and password does not match...</strong>
        </div>
          <?php
        }
        else
        {
          $_SESSION['login_user'] = $_POST['username']; 

          $_SESSION['pic'] = $row['pic'];

          ?>
            <script type="text/javascript">
              window.location="index.php"
            </script>
          <?php
        }
       }
?>

</body>
</html>