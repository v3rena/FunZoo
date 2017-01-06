<?php
	$myServer = "LAAZYLION\SQLEXPRESS";
	$myUser = "Matty";
	$myPass = "4*sicher";
	$myDB = "ZooTycoon";
	
	// Post Parameter
	$tierName = $_POST["tierName"];
	
	// ######### Debugging ##########
	echo $tierName;
	// ##############################
	
	// connection to the database
	$dbhandle = mssql_connect($myServer, $myUser, $myPass);
	
	if(!$dbhandle) {
		die('Something went wrong while connection to MSSQL');
	}
	
	$res = mssql_select_db($myDB, $dbhandle);
	
	if(!$res) {
		die('Couldn\'t access the database $myDB');
	}
	
	// Execute StoredPocedure InsertAnimal
	$stmt = mssql_init('InsertAnimal');
	
	// ####### Debugging #############
	// $tierName = 'Teddy';
	// ###############################
	
	mssql_bind($stmt, '@Tier_Name', $tierName, SQLVARCHAR, false, false, 50);

	mssql_execute($stmt);
	
	// ####### Debugging #######
	print "Success";
	// #########################
	
	// close the connection
	mssql_close($dbhandle);
?>