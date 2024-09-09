<?php

class data {

function ymd_to_date($input_date="", $output_format="d/m/Y"){
		if($input_date != ''){
			$date = $this->str_to_date($input_date, 'Ymd');
			if(gettype($date) == 'string'){
				return $date;
			}else{
				return $date->format($output_format);
			}
		}else{
			return '';
		}
	}
	
	function date_to_ymd($input_date="", $output_format="Ymd"){
		
		if($input_date != ''){
			$input_format = '';
			
			if( $input_date != "" && preg_match("/([0-9]{2})\/([0-9]{2})\/([0-9]{4})/", $input_date) ){
				$input_format = 'd/m/Y';		
			}elseif( $input_date != "" && preg_match("/([0-9]{2})\/([0-9]{2})\/([0-9]{4}) ([0-9]{2}):([0-9]{2}):([0-9]{2})/", $input_date) ){
				$input_format = 'd/m/Y H:i:s';
			}
			
			if($input_format != ''){
				$date = $this->str_to_date($input_date, $input_format);
				if(gettype($date) == 'string'){
					return $date;
				}else{
					return $date->format($output_format);
				}
			}
		}
		
		return "";
	}
	
	function today_to_ymd(){
		$dateTime = new DateTime("now");
		return $dateTime->format("Ymd");	
	}
	
	function now_to_ymdhis(){
		$dateTime = new DateTime("now");
		return $dateTime->format("YmdHis");	
	}	
	
	function ymdhi_to_date($ymdhi, $format="d/m/Y"){
	
		if($ymdhi != ""){
		
			$i = substr($ymdhi, 10, 2);
			$h = substr($ymdhi, 8, 2);
			$d = substr($ymdhi, 6, 2);
			$m = substr($ymdhi, 4, 2);
			$y = substr($ymdhi, 0, 4);
		
			$ts = mktime($h,$i,0,$m,$d,$y);
		
			return date($format, $ts);
		}
		return "";
	}
	
	function ymdhis_to_date($ymdhis, $format="d/m/Y"){
		
		$datetime = new DateTime();
		
		if($ymdhis != ""){
		
			$s = substr($ymdhis, 12, 2);
			$i = substr($ymdhis, 10, 2);
			$h = substr($ymdhis, 8, 2);
			$d = substr($ymdhis, 6, 2);
			$m = substr($ymdhis, 4, 2);
			$y = substr($ymdhis, 0, 4);		
			
			$datetime->setDate($y, $m, $d);
			$datetime->setTime($h, $i, $s); 
		}
		return $datetime->format($format);
	}
	
	function ymdhi_to_ts($ymdhi){
	
		$i = substr($ymdhi, 10, 2);
		$h = substr($ymdhi, 8, 2);
		$d = substr($ymdhi, 6, 2);
		$m = substr($ymdhi, 4, 2);
		$y = substr($ymdhi, 0, 4);
		
		$ts = mktime($h,$i,1,$m,$d,$y);
		
		return $ts;
	}
	
	function daylight_saving_diff($from_ts, $to_ts){
	
		$from_result = date("I",$from_ts);
		$to_result = date("I",$to_ts);
		
		if($from_result == "1" && $to_result == "0"){
			return 3600;
		}
		elseif($from_result == "0" && $to_result == "1"){
			return -3600;
		}
		
		return 0;
	}
	
	function date_plus_days($input_date="", $days, $input_format="d/m/Y", $output_format="Ymd"){
		
		if($input_date != ""){
			
			if($input_format == "d/m/Y"){
				
				$date_parts = explode("/", $input_date);
				$ts = mktime(1,1,1,$date_parts[1],$date_parts[0],$date_parts[2]);
				$new_ts = $ts + ($days * 86400);
			}
			elseif($input_format == "Ymd"){
				
				$d = substr($input_date, 6, 2);
				$m = substr($input_date, 4, 2);
				$y = substr($input_date, 0, 4);
				$ts = mktime(1,1,1,$m,$d,$y);
				$new_ts = $ts + ($days * 86400);
			}
			
			return date($output_format, $new_ts);
		}
	}
	
	function is_day_of_march_dst_change($year, $month, $day){

		// Last Sunday in Mar?
		if($month == 3){
			for($d=0;$d<=7;$d++){
				$ts = mktime(12,0,0,3,(31-$d),$year);
				if(date("N",$ts) == 7){
					if(31-$d == $day){return true;}
					break;
				}
			}
		}
		
		return false;
	}
	
	function is_day_of_oct_dst_change($year, $month, $day){
	
		// Last Sunday in Oct?
		if($month == 10){
			for($d=0;$d<=7;$d++){
				$ts = mktime(12,0,0,10,(31-$d),$year);
				if(date("N",$ts) == 7){
					if(31-$d == $day){return true;}
					break;
				}
			}
		}
		
		return false;
	}
	
	function auto_null($str){
		if($str == ""){
			return "NULL";
		}
		else{
			return $str;
		}
	}
	
	function convert_file_size_to_name($bytes=""){ // Size should be supplied in kb

		if($bytes == ""){return "";}

		if ($bytes < 1024) return $bytes.' B';
		elseif ($bytes < 1048576) return round($bytes / 1024, 2).' KB';
		elseif ($bytes < 1073741824) return round($bytes / 1048576, 2).' MB';
		elseif ($bytes < 1099511627776) return round($bytes / 1073741824, 2).' GB';
		else return round($bytes / 1099511627776, 2).' TB';
	}
	
	
	function clean_xml_data($str){
	
		$str = str_replace("&", "&amp;", $str);
		$str = str_replace(">", "&gt;", $str);
		$str = str_replace("<", "&lt;", $str);
		$str = str_replace("\"", "&quot;", $str);
		$str = str_replace("'", "&#39;", $str);
		return $str;
	}
	
	
	function prepare_order_total($str) {
		
		$str = preg_replace('/[^0-9\.]+/', '', $str);
		return $str;
	}
	
	
	
	// Returns a string in the format s****g
	function star_str($str, $num_visible_at_each_end=1){
		
		if(strlen($str) < 2){
			return $str;
		}
		
		$first_char = substr($str, 0, $num_visible_at_each_end);
		$last_char = substr($str, (strlen($str)-$num_visible_at_each_end), strlen($str));
		$stars = preg_replace("/\w/", "*", substr($str, ($num_visible_at_each_end*2), (strlen($str)-1)));
			
		if(strlen($first_char.$last_char) > strlen($str)){
			return $str;	
		}
		
		return $first_char.$stars.$last_char;
	}
	
	/* Time format is UNIX timestamp or PHP strtotime compatible strings
  	 * $return_interval - 'year','month','day','hour','minute','second'
  	 */
	function dateDiff($time1, $time2, $precision = 6, $return_interval="") {
		// If not numeric then convert texts to unix timestamps
	    if (!is_int($time1)) {
			$time1 = strtotime($time1);
	    }
	    
	    if (!is_int($time2)) {
			$time2 = strtotime($time2);
	    }
 
		// If time1 is bigger than time2
		//Then swap time1 and time2
		if ($time1 > $time2) {
      		$ttime = $time1;
      		$time1 = $time2;
      		$time2 = $ttime;
    	}
 
    	if($return_interval == ""){
    	
	    	// Set up intervals and diffs arrays
	    	$intervals = array('year','month','day','hour','minute','second');
	    	$diffs = array();
	 
	    	
		    // Loop thru all intervals
	    	foreach ($intervals as $interval) {
	    		
				// Set default diff to 0
		      	$diffs[$interval] = 0;
		      	// Create temp time from time1 and interval
		      	$ttime = strtotime("+1 " . $interval, $time1);
		      	// Loop until temp time is smaller than time2
		      	while ($time2 >= $ttime) {
					$time1 = $ttime;
					$diffs[$interval]++;
					// Create new temp time from time1 and interval
					$ttime = strtotime("+1 " . $interval, $time1);
		      	}
		    }
 
			// Loop thru all diffs
			$count = 0;
			$times = array();
			foreach ($diffs as $interval => $value) {
				
				// Break if we have needed precission
	      		if ($count >= $precision) {
					break;
	      		}
				// Add value and interval 
				// if value is bigger than 0
	      		if ($value > 0) {
					// Add s if value is not 1
					if ($value != 1) {
						$interval .= "s";
					}
					// Add value and interval to times array
					$times[] = $value . " " . $interval;
					$count++;
		      	}
			}
		 
		    // Return string with times
			return implode(", ", $times);
    	}
    	else{
    		
    		$diffs = 0;
    		$ttime = strtotime("+1 " . $return_interval, $time1);
    		
	      	// Loop until temp time is smaller than time2
	      	while ($time2 >= $ttime) {
				$time1 = $ttime;
				$diffs++;
				// Create new temp time from time1 and interval
				$ttime = strtotime("+1 " . $return_interval, $time1);
	      	}
	      	
	      	return $diffs;
    	}
	}
    
    function str_to_date($date_str, $input_format){
    	try {
	   		if($input_format == "YmdHi"){
	
				$y = substr($date_str,0,4);
				$m = substr($date_str,4,2);
				$d = substr($date_str,6,2);
				$hour = substr($date_str,8,2);
				$min = substr($date_str,10,2);
				$sec = 0;
	
				$date = new DateTime($y."-".$m."-".$d." ".$hour.":".$min);
	   		}elseif($input_format == 'YmdHis'){
	   			$s = substr($date_str, 12, 2);
				$i = substr($date_str, 10, 2);
				$h = substr($date_str, 8, 2);
				$d = substr($date_str, 6, 2);
				$m = substr($date_str, 4, 2);
				$y = substr($date_str, 0, 4);		
				
				$date = new DateTime($y."-".$m."-".$d." ".$h.":".$i.":".$s);
			}elseif($input_format == "Ymd"){
	
				$y = substr($date_str,0,4);
				$m = substr($date_str,4,2);
				$d = substr($date_str,6,2);
	
				$date = new DateTime($y."-".$m."-".$d);
			}elseif( $input_format == 'd/m/Y' || preg_match("/([0-9]{2})\/([0-9]{2})\/([0-9]{4})/", $date_str) ){
				
				$date = new DateTime();
				
				$date_parts = explode("/", $date_str);
				$y = $date_parts[2];
				$m = $date_parts[1];
				$d = $date_parts[0];
				
				$date->setDate($y, $m, $d);
				
			}elseif( $input_format == 'd/m/Y H:i' || preg_match("/([0-9]{2})\/([0-9]{2})\/([0-9]{4}) ([0-9]{2}):([0-9]{2}):([0-9]{2})/", $date_str) ){
				
				$date = new DateTime();
				
				$date_parts = explode("/", $date_str);
				$y = $date_parts[2];
				$m = $date_parts[1];
				
				$o_parts = explode(" ", $date_parts[0]);
				$d = $o_parts[0];
				
				$t_parts = explode(" ", $o_parts[1]);
				
				$s = $t_parts[2];
				$i = $t_parts[1];
				$h = $t_parts[0];
				
				$date->setDate($y, $m, $d);
				$date->setTime($h, $i, $s);
			}
    	
			return $date;
    	}catch(Exception $e){
			return $date_str;
		}
    }
}

?>