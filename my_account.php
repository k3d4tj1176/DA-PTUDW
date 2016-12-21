
<?php
	session_start();
	$user = $_POST["textusername"];
	$pass = $_POST["textpassword"];
	
	mysql_connect("localhost","root","");
	mysql_select_db("CSDL");
	
	$sql = "Select * From account where username = '$user' and pass = '$pass' ";
	$result = mysql_query($sql);
	$count = mysql_num_rows($result);
	if($count == 1){
	while($row =  mysql_fetch_array($result)){
		echo "Xin chào $row[3] <a href='index.php'>logout</a>";
		}
	}
	else{
		$_SESSION["username"] = $user;
		$_SESSION["password"] = $pass;
		$_SESSION["loginstatus"] = " Login fail ";
		header("location: account.php");
		}
	
?>