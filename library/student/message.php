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

    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>   
    <script src="https://maxcdn.bootstrap.com/bootstrap/3.3.1/js/3.3.1/js/bootstrap.min.js"></script>
    
    <title>Message</title>
</head>
    <style type="text/css">
         body {
            background-image: url("images/22.jpg");   
            transition: background-color .5s;
        }
        .wrapper{
            height: 650px;
            width: 100%;
            background-color: black;
            opacity: 0.9;
            color: whitesmoke;
            margin-top: -20px auto;
            padding: 10px;
        }
        .form-control{
            height: 47px;
            width: 90%;
        } 
        .msg{
            height: 450px;
            background-color: skyblue;
            overflow-y: scroll;
        }
        .btn-info{
            background-color: yellowgreen;
        }
        .chat{
            display: flex;
            flex-flow: row wrap;
        }
        .user .chatbox
        {
            height: 50px;
            width: 400px;
            padding: 13px 10px;
            background-color: red;
            color: black;
            border-radius: 10px;
            order: -1;
        }
        .admin .chatbox
        {
            height: 50px;
            width: 400px;
            padding: 13px 10px;
            background-color: red;
            color: black;
            border-radius: 10px;
            
        }
        </style>

<body>

<?php
    if(isset($_POST['submit']))
    {
        mysqli_query($db,"INSERT INTO `library`.`message` VALUES('','$_SESSION[login_user]','$_POST[message]','no','student');");
        $res = mysqli_query($db,"SELECT * FROM `message` WHERE username='$_SESSION[login_user]';");
    }
    else
    {
        $res = mysqli_query($db,"SELECT * FROM `message` WHERE username='$_SESSION[login_user]';");
    }
    mysqli_query($db,"UPDATE `message` SET `status`='yes' WHERE sender='admin' and username='$_SESSION[login_user]';");
    ?>
   
    <div class="wrapper">
        <div style="height: 70px;width: 100%;background-color:aquamarine;text-align:center;color:black;">
            <h3 style="margin-top: -5px;padding-top:10px;">Admin</h3>
        </div>
        <div class="msg">
            <?php
                   while($row = mysqli_fetch_assoc($res))
                   {
                    if($row['sender'] == 'student')
                    {            
            ?>
            <div class="chat user">
                <div style="float: left;padding-top:5px;">
                &nbsp;
                <?php
                  echo "<img class='img-circle profile-img' height= 40 width = 40 src='images/".$_SESSION['pic']."'>";           
                ?>&nbsp;&nbsp;
                </div>
                <div style="float: left;color:black;" class="Chatbox">
                  <?php
                   echo $row['message'];
                  ?>
                </div>
            </div>
            <?php
                   }
                   else
                   {
            ?>
            <br>
            <div class="chat admin">
                <div style="float: left;padding-top:5px;">
                &nbsp;
                <img style="height: 40px;width:40px;border-radius:50%;" src="images/5.png">
               &nbsp;&nbsp;
                </div>
                <div style="float: left;color:black;" class="Chatbox">
                <?php
                   echo $row['message'];
                  ?>
                </div>
            </div>
            <?php
                  }
                }
            ?>
        </div>
        <div style="height: 100px; padding-top:10px;">
        <form action="" method="post">
            <input type="text" name="message" class="form-control" required="" placeholder="Write Message..." style="float: left">&nbsp;
             <button class="btn btn-info btn-lg" type="submit" name="submit"><span class="glyphicon glyphicon-send "></span>&nbsp; Send</button>
        </form>       
        </div>
    </div>
   
</body>
</html>