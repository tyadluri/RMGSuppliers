<?php
require("utils.php");
$template = "plain";
$page_array = explode('/', $_SERVER['PHP_SELF']);
$page = str_replace('.php','',$page_array[count($page_array) - 1]);

$brand = $_REQUEST['brand'];
$contractorsEmail = "contractors@rmguk.com ";
if( $brand == '' || strtoupper($brand) == 'RMG' ){
	$brand = 'RMG';
	$id = 'RMG';
	$domain = "rmguk.com";
	$name = "Residential Management Group Ltd";
}else if( strtoupper($brand) == 'FS' ){
	$brand = 'F&amp;S';
	$id = 'FS';
	$domain = "fspropertymanagement.co.uk";
	$name = "F&amp;S Property Management Ltd";
}else if( strtoupper($brand) == 'CSJ' ){
	$brand = 'CSJ';
	$id = 'CSJ';
	$domain = "chancerystjames.com";
	$name = "Chancery St. James Plc";
}

$tpl = new Template($UTILS_SERVER_PATH.'includes/body.tpl');
$tpl->set('title', 'RMG Suppliers - Client Terms & Conditions');
$tpl->set('page_title', 'Client Terms &amp; Conditions');
$tpl->set('UTILS_WEBROOT', $UTILS_WEBROOT);
$tpl->set('UTILS_LOG_PATH',$UTILS_LOG_PATH);
$tpl->set('UTILS_CLASS_PATH', $UTILS_CLASS_PATH);
$tpl->set('UTILS_URL_BASE', $UTILS_URL_BASE);
$tpl->set('UTILS_SERVER_PATH', $UTILS_SERVER_PATH);
$tpl->set('brand', $brand);
$tpl->set('id', $id);
$tpl->set('domain', $domain);
$tpl->set('name', $name);
$header = $tpl->get_content($UTILS_SERVER_PATH.'includes/'.$template.'_header.tpl');
$content = $tpl->get_content($UTILS_SERVER_PATH.'includes/'.$template.'.tpl');
$page_details = $tpl->get_content($UTILS_SERVER_PATH.'includes/'.$page.'.tpl');
$tpl->set('header', $header);
$tpl->set('content', $content.$page_details);
echo $tpl->fetch();

?>