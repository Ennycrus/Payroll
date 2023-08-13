<?php
	$conn = new mysqli('localhost', 'root', '', 'payrollproject');

	if ($conn->connect_error) {
	    die("Connection failed: " . $conn->connect_error);
	}
	
?>