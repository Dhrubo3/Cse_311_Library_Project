<?php
  include "connection.php";
  include "navbar.php";
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Change Password</title>

    <style type="text/css">

body
{
  background-color: olivedrab;
  background-image: url("images/p.png");
}
.wrapper
{
    width: 400px;
    height: 500px;
    margin: 150px auto;
    background-color: black;
    opacity: 0.7;
    color: white;
    padding: 27px 15px;
}

</style>
</head>
<body>
      <div class="wrapper">
        <div style="text-align:center;">
    <h1 style="text-align: center; font-size: 35px;font-family: Lucida Console; color:white;">Change Your Password</h1><br>
      </div>
      <div style="padding-right: 30px;">
      <form action="" method="post">
         <input type="text" name="username" class="form-control" placeholder="Username" required=""><br>  
         <input type="text" name="email" class="form-control" placeholder="Email" required=""><br> 
         <input type="text" name="password" class="form-control" placeholder="New Password" required=""><br>     
         <button class="btn btn-default" type="submit" name="submit">Update</button>
        </form>
      </div>
      </div>
      <?php

          if(isset($_POST['submit']))
          {
             if(mysqli_query($db,"UPDATE `admin` SET `password` = '$_POST[password]' WHERE username = '$_POST[username]' AND email='$_POST[email]';"))
             {
                ?>
                 <script type="text/javascript">
                 alert("The password update sucessfully...");
                 </script>
                <?php
             }
          }
      ?>
</body>
</html>