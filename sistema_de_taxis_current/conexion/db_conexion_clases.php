<?php
session_start();

Class dbObj{

	var $servername = "localhost";
	var $username = "root";
	var $password = "";
	var $dbname = "bd_sistema_de_radio_taxis";
	var $conn;
	function getConnstring() {
		$con = mysqli_connect($this->servername, $this->username, $this->password, $this->dbname) or die("Connection failed: " . mysqli_connect_error());

		/* check connection */
		if (mysqli_connect_errno()) {
			printf("Connect failed: %s\n", mysqli_connect_error());
			exit();
		} else {
			mysqli_query($con,"SET NAMES 'utf8'");
			$this->conn = $con;
		}
		return $this->conn;
	}
}

$conectador=mysqli_connect("Localhost","root");
mysqli_query($conectador,"SET NAMES 'utf8'");
mysqli_select_db($conectador,"bd_sistema_de_radio_taxis");

?>
