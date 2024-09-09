<?php
require("utils.php");
$template = "plain";
$page_array = explode('/', $_SERVER['PHP_SELF']);
$page = str_replace('.php','',$page_array[count($page_array) - 1]);



$brand = $_REQUEST['brand'];
$contractorsEmail = "contractors@rmguk.com ";
$invoice_address = 'as Name of Management Company or Freeholder C/o Residential Management Group,RMG House, Essex Road, Hoddesdon, Hertfordshire, EN11 0DR';
$office = 'Hoddesdon';
$management_company = 'Management Company';
$client = 'Client';

$page_tpl = $UTILS_SERVER_PATH.'includes/'.$page.'.tpl';
if( $brand == '' || strtoupper($brand) == 'RMG' ){
	$brand = 'RMG';
	$id = 'RMG';
	$domain = "rmguk.com";
	$name = "Residential Management Group Ltd";
}else if( strtoupper($brand) == 'CPL' ){
	$brand = $client = 'RMGSL';
	$id = 'CPL';
	$domain = "rmguk.com";
	$name = "Residential Management Group Scotland Ltd (RMGSL)";
	$office = "Glasgow";
	$invoice_address = 'Residential Management Group Scotland Ltd, Unit 6, 95 Morrison Street, Glasgow.G5 8BE';
	$management_company = 'RMGSL';
	$page_tpl = $UTILS_SERVER_PATH.'includes/sco_terms_conditions.tpl';
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
$tpl->set('invoice_address', $invoice_address);
$tpl->set('office', $office);
$tpl->set('client', $client);
$tpl->set('management_company', $management_company);
$header = $tpl->get_content($UTILS_SERVER_PATH.'includes/'.$template.'_header.tpl');
$content = $tpl->get_content($UTILS_SERVER_PATH.'includes/'.$template.'.tpl');
$page_details = $tpl->get_content($page_tpl);
$tpl->set('header', $header);
$tpl->set('content', $content.$page_details);
echo $tpl->fetch();

?>
