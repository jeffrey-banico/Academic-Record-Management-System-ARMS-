<?php
	session_start();
	if($_isset['REQUEST_METHOD'] == 'POST'){
	$errmsg_arr = array();
	$errflag = false;
	
	include('db.php');
	$login_username = $_POST['login_username'];
	$login_password = md5($_POST['login_password']);
	
	$qry="SELECT * FROM user WHERE username = '$login_username' AND password = '$login_password'";
	$result=mysqli_query($conn, $qry);
	if($result) {
		if(mysqli_num_rows($result) > 0) {
			//Login Successful
			session_regenerate_id();
			$use = mysqli_fetch_assoc($result);
			
			
			$_SESSION['ID'] = $use['USER_ID'];
			$_SESSION['fname'] = $use['FIRSTNAME'];
			$id =$use['USER_ID'];

			//verification of usertype
			mysqli_query($conn,"INSERT INTO history_log (transaction,user_id,date_added)VALUES('logged in','$id',NOW()) ");
			//option of interface
			header("location: admin-rms.php?page=#");
			exit();
		}else {
			
			echo "<div class='erlert'><center><h4>" . "Incorrect USER or PASSWORD." . "</h4></center></div>";

			exit();
		}
	}else {
		die("Query failed");
	}
}
?>