<?php
	$myServer = "LAAZYLION\SQLEXPRESS";
	$myUser = "Matty";
	$myPass = "4*sicher";
	$myDB = "ZooTycoon";
	
	// Post Parameter
	$gehegeName = $_POST["gehegeName"];
	$tierName = $_POST["tierName"];
	$tierGeschl = $_POST["tierGeschl"];
	$tierSpezies = $_POST["tierSpezies"];
	$tierpflegerVorn = $_POST["tierpflegerVorn"];
	$tierpflegerNachn = $_POST["tierpflegerNachn"];
	$futterName = $_POST["futterName"];
	$futterBedarf = $_POST["futterBedarf"];
	
	// ######### Debugging ##########
	echo $gehegeName . "\n" . 
		 $tierName . "\n" . 
		 $tierGeschl . "\n" . 
		 $tierSpezies . "\n" . 
		 $tierpflegerVorn . "\n" . 
		 $tierpflegerNachn . "\n" . 
		 $futterName . "\n" . 
		 $futterBedarf;
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
	/*$gehegeName = 'Eisbärenwelt';
	$tierName = 'Teddy';
	$tierGeschl = 'm';
	$tierSpezies = 'Eisbär';
	$tierpflegerVorn = 'Karl';
	$tierpflegerNachn = 'Koller';
	$futterName = 'Fleisch';
	$futterBedarf = 50;*/
	// ###############################
	
	mssql_bind($stmt, '@Gehege_Name', $gehegeName, SQLVARCHAR, false, false, 50);
	mssql_bind($stmt, '@Tier_Name', $tierName, SQLVARCHAR, false, false, 50);
	mssql_bind($stmt, '@Tier_Geschlecht', $tierGeschl, SQLVARCHAR, false, false, 50);
	mssql_bind($stmt, '@Tier_Spezies', $tierSpezies, SQLVARCHAR, false, false, 50);
	mssql_bind($stmt, '@Tierpfleger_Vorname', $tierpflegerVorn, SQLVARCHAR, false, false, 50);
	mssql_bind($stmt, '@Tierpfleger_Nachname', $tierpflegerNachn, SQLVARCHAR, false, false, 50);
	mssql_bind($stmt, '@Futter_Name', $futterName, SQLVARCHAR, false, false, 50);
	mssql_bind($stmt, '@Futterbedarf_pro_Tag', $futterBedarf, SQLFLOAT, false, false);
	
	mssql_execute($stmt);
	
	// ####### Debugging #######
	print "Success";
	// #########################
	
	// close the connection
	mssql_close($dbhandle);
?>