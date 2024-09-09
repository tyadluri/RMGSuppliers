<?php
session_start();

//foreach($_SERVER as $key=>$val){
//	print $key." = ".$val."\n";	
//}

//=======================================
// Connect to the DB & set global vars
//=======================================

$site_locality = "remote";

$dbname = "cpm_living";
$UTILS_CLASS_PATH = "/var/www/rmgsuppliers.co.uk/trunk/library/classes/";
$UTILS_SERVER_PATH = "/var/www/rmgsuppliers.co.uk/trunk/";
$UTILS_LOG_PATH = "/var/www/rmgsuppliers.co.uk/private/logs/";
$UTILS_WEBROOT = "/";
$UTILS_URL_BASE = "http://rmgsuppliers.co.uk/";
$UTILS_HTTPS_ADDRESS = "http://rmgsuppliers.co.uk/";
$UTILS_PRIVATEFOLDER = "/var/www/rmgsuppliers.co.uk/private/";

//require_once($UTILS_CLASS_PATH."mysql.class.php");
require_once($UTILS_CLASS_PATH."template.class.php");


$dbhost = "localhost";
$dbuser = "admin";
$dbpwd = "cwc5my5ql";

Global $conn, $GLOBALS;

/*$GLOBALS['webservice']['location'] = "http://webservice.intranet.rmgltd.co.uk/webservice.php";
$GLOBALS['webservice']['username'] = "qube";
$GLOBALS['webservice']['password'] = "A78941R";*/

$conn = '';

//$UTILS_INTRANET_DB_LINK = @mysql_connect("localhost:3307","remote","d3vmy5ql");
	
/*$mysql = new mysql();
$conn = $mysql->connect($dbhost,$dbuser,$dbpwd);
$mysql->select_db($dbname);*/


//=========================
// Site-wide constants
//=========================
$UTILS_DB_ENCODE = "4Ri9hsjl";
$UTILS_LOGIN_REQUEST_EMAIL = "loginrequests@rmgliving.co.uk";
$UTILS_EMAIL = "customer.service@rmguk.com";
$UTILS_ADOBE_URL = "http://get.adobe.com/reader";
$UTILS_TEL_MAIN = '0345 002 4444';
$UTILS_TEL_CONTRACTOR = '0345 002 4229';
$UTILS_TEL_MAIN_FAX = '0345 002 4455';

$thistime = time();
?>