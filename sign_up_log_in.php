<?php include_once("connection.php"); ?>
<?php
	session_start();
	if (isset($_SESSION['id'])) {
      header('Location: userhome.php');
      exit;
  	}
?>

<?php
$u_id="";
if(isset($_POST['submit'])){

		if (empty($_POST['name']) || empty($_POST['password']) || empty($_POST['phone']) || empty($_POST['mail']) || empty($_POST['address'])){

			echo "<script type='text/javascript'>alert('Field Is Empty!')</script>";
		}
                else{
                    
                    $mail = $_POST['mail'];
			

			if (!filter_var($mail, FILTER_VALIDATE_EMAIL))
                                {
									echo "<script type='text/javascript'>alert('Invalid email format!')</script>"; 
                                }
                        else{            
			$name = $_POST['name'];
                        $password=MD5($_POST['password']);
                        $phone = $_POST['phone'];
			$address = $_POST['address'];
                        $sex = $_POST['gender'];
			

			$sql = "INSERT INTO user (name, pass, phone, email, address,sex)
				VALUES ('".$name."','".$password."','".$phone."','".$mail."','".$address."','".$sex."')";

				if (mysqli_query($conn, $sql)) {
				    echo "<script type='text/javascript'>alert('Welcome! Register Successfully')</script>";
				} else {
				    echo "<script type='text/javascript'>alert('Failed!')</script>";
				}
                        }
		}
	}
?>
<?php 
    if(isset($_POST['submit1'])){

		if (empty($_POST['email']) || empty($_POST['password1'])){

			echo "<script type='text/javascript'>alert('Field Is Empty!')</script>";
		}
        else
        {   
			$user_mail=$_POST['email'];
            $pass =MD5($_POST['password1']);

      		$sql = " SELECT COUNT(*) FROM user WHERE( email='".$user_mail."' AND pass='".$pass."') ";

			$qury = mysqli_query($conn, $sql);

			$result = mysqli_fetch_array($qury);
			
			if($result[0]>0)
            {
                $sessionSql = " SELECT id, name, pass FROM user WHERE ( email='".$user_mail."' AND pass='".$pass."') ";
				$sessionQury = mysqli_query($conn, $sessionSql);
				while($sessionResult = mysqli_fetch_array($sessionQury, MYSQLI_BOTH)){
					 $u_id = $sessionResult['id'];
					 $u_name = $sessionResult['name'];
				} 
				$_SESSION['id'] = $u_id;
				$_SESSION['name'] = $u_name;
			
				header('location: userhome.php');
				exit;				
            }
            else
            {
				echo "<script type='text/javascript'>alert('Invalid User Name or Password!')</script>";
            }
        }
    }
     			
?>

<html>
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="styles/w3.css">
        <title>Online Exam System</title>
    </head>
    <style> 
        .img {
    background-image:url('./image/paper2.jpg');
    background-size: 100% 500px;
    background-repeat: no-repeat;
}
        .mar
        {
                margin-left: 45%;
        }
     </style>
     <body class="img">
        <ul class="w3-navbar w3-black">
            <li><a class="w3-text-red" href="index.php">Home</a></li>
			<li class="w3-dropdown-hover"><a href="#">Tests<i class="fa fa-caret-down"></i></a>
				<div class="w3-dropdown-content w3-white w3-card-4">
					<a href="#">Take a test</a>
					<a href="#">Practice tests</a>
					<a href="#">F.A.Q</a>
				</div>
			</li>
			<li><a href="about_us.php">About Us</a></li>
			<li class="w3-right w3-teal"><a href="#">Sign Up/Log In</a></li>
		</ul>
         
         
         <div class = "w3-bottombar">
            <div class="w3-card-4 w3-half">
              <div class="w3-container w3-teal">
                <h2>Open Free Account </h2>
              </div>
                <form class="w3-container" action="" method="post">
                        <p>     
                        <label class="w3-label"><b>User Name</b></label>
                        <input class="w3-input w3-border w3-sand" name="name" type="text" required></p>

                        <p>    
                        <label class="w3-label"><b>Password</b></label>
                        <input class="w3-input w3-border w3-sand" name="password" type="password" required></p>
                        <p>      
                        <label class="w3-label"><b>Phone Number</b></label>
                        <input class="w3-input w3-border w3-sand" name="phone" type="tel" required=""></p>
                        <p>     
                        <label class="w3-label"><b>E-Mail</b></label>
                        <input class="w3-input w3-border w3-sand" name="mail" type="text" required=""></p>
                        <p>    
                        <label class="w3-label"><b>Address</b></label>
                        <input class="w3-input w3-border w3-sand" name="address" type="text" required></p>
                        
                        <p>
                       <input class="w3-radio" type="radio" name="gender" value="male" checked>
                           <label class="w3-validate w3-text-red">Male</label></p>
                         <p>
                            <input class="w3-radio" type="radio" name="gender" value="female">
                           <label class="w3-validate w3-text-blue">Female</label></p>


                         <div class="w3-half"> 
                             <input type="submit" class="w3-btn w3-btn-block w3-green" name="submit" value="Register">

                        </div>
                         
              </form>
            </div>
            
         
            <form class="w3-container w3-card-4 w3-half" action="" method="post">
                <img src="./image/avatar.png" width="15%">
                <p>      
                <label class="w3-text-blue" ><b>E-Mail</b></label>
                <input class="w3-input w3-border" name="email" type="text" required></p>
                <p>      
                <label class="w3-text-blue"><b>Password</b></label>
                <input class="w3-input w3-border" name="password1" type="password" required></p>
                
                   
                
                <p style="margin-left:45%">      
                    <input type="submit" class="w3-btn w3-round-xxlarge w3-ripple w3-blue" name="submit1" value="Sign In"></p>
        </form> 
        
        <?php
         mysqli_close($conn);
        ?>    
       
        <div class="w3-container w3-bottom w3-light-grey w3-opacity">
            <p1>copy right from : 2018, online exam system</p1>
        </div>
    </div>    
         
    </body>
    
</html>
