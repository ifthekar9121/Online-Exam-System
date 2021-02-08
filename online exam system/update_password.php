<?php include_once("connection.php"); ?>
<?php
	session_start();
	if (!isset($_SESSION['user_id'])) {
      header('Location: userhome.php');
      exit;
  	}
 

?>
<style>
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
</style>



<?php 
    if(isset($_POST['submit'])){

		if (empty($_POST['password']) || empty($_POST['password1'])){
			echo "<script type='text/javascript'>alert('fild is empty!')</script>";

			
		}
        else
        {   $u_id=$_SESSION['user_id'];
            $pass =MD5($_POST['password']);
			$new_pass = MD5($_POST['password1']);

      		$sql = " SELECT id, name, pass FROM user WHERE ( id='".$u_id."' AND pass='".$pass."') ";

			if($qury = mysqli_query($conn, $sql)){
				$sessionSql = "UPDATE user SET pass = '".$new_pass."' WHERE id ='".u_id."'";
			//}

			//$result = mysqli_fetch_array($qury);
			
			//if($result[0]>0)
           // {
                //$sessionSql = "UPDATE user SET pass = '".$new_pass."' WHERE id ='".u_id."'";
			
				header('location: userhome.php');
				exit;				
            }
            else
            {
				echo "<script type='text/javascript'>alert('Invalid User Password!')</script>";
            }
        }
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
        <title></title>
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
        <ul class="w3-navbar w3-black">
        <li><a class="w3-text-blue" href="#"><?php echo $_SESSION['user_name'];?></a></li>
            
        <li><a href="update.php">Edit Profile</a></li>
        <li><a href="#">News</a></li>
        <li><a href="#">History</a></li>
        <li class="w3-right w3-teal"><a href="logout.php">Log Out</a></li>
    </ul>
    
	       <div class = "w3-bottombar">
            <div class="w3-card-4 w3-half">
              <div class="w3-container w3-teal">
                <h2>Update Password </h2>
              </div>
                <form class="w3-container" action="" method="post">
                        <p>    
                        <label class="w3-label"><b>Old Password</b></label>
                        <input class="w3-input w3-border w3-sand" name="password" type="password" required></p>
                        <p>

                        <p>    
                        <label class="w3-label"><b>New Password</b></label>
                        <input class="w3-input w3-border w3-sand" name="password" type="password1" required></p>
                        <p>      
                         <div class="w3-half"> 
                             <input type="submit" class="w3-btn w3-btn-block w3-green" name="submit" value="Submit">

                        </div>
                         
              </form>
         <?php
         mysqli_close($conn);
        ?>  
        <footer class="w3-container w3-bottombar w3-bottom w3-light-grey w3-opacity">
            <p1>copy right from : online exam system <a href="www.google.com">www.google.com</a></p1>
        </footer>
        
    </body>
    
</html>