<?php include_once("connection.php"); ?>
<?php
	session_start();
	if (!isset($_SESSION['name'])) {
      header('Location: sign_up_log_in.php');
      exit;
  	}
 

?>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="styles/w3.css">
        <title>Online Exam System</title>
    </head>
    <style> 
        .bgimg {
    background-image:url('./image/paper.jpg');
    background-size: 103% 920px;
    background-repeat: no-repeat;
               }
    .font {
    font-family: "Comic Sans MS", cursive, sans-serif;
    }

     </style>
    <body class="bgimg">
		<div>
			<ul class="w3-navbar w3-black">
			<li><a class="w3-text-red" href="#">Home</a></li>
			<li class="w3-dropdown-hover"><a href="#">Tests<i class="fa fa-caret-down"></i></a>
				<div class="w3-dropdown-content w3-white w3-card-4">
					<a href="sign_up_log_in.php">Take a test</a>
					<a href="#">Practice tests</a>
					<a href="#">F.A.Q</a>
			  </div>
			</li>
				
			<li><a href="about_us.php">About Us</a></li>
			<li class="w3-right w3-teal"><a href="sign_up_log_in.php">Sign Up/Log In</a></li>
		</ul>
			
			<div class="w3-container w3-center">
				<h1 class=" w3-animate-left font">Welcome <?php echo $_SESSION['name'] ?></h1>
				<img src="./image/avatar2.png" width="3%">
				<h4 class=" w3-animate-right">New challage awaits you!</h4>
			</div>
			
			  
			<footer class="w3-container w3-bottombar w3-bottom w3-light-grey w3-opacity">
				<p1>copy right from : 2018, online exam system</p1>
			</footer>
        </div>
    </body>
    
</html>
