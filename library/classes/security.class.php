<?

class security {

	// Generates a random serial string
	function gen_serial($length = 8, $type = false, $capitalize = false){
		
		$passwd = '';
	
		while(strlen($passwd) < $length){
	
			$passwd .= md5(uniqid(rand(), true));
			$passwd = preg_replace("/0oils51/", "", $passwd);
			
			if($type == "AlphaOnly") {
				$passwd = preg_replace("/[0-9]/", "", $passwd);
			}
			elseif($type == "NumericOnly") {
				$passwd = preg_replace("/[a-z]/", "", $passwd);
			}
			$passwd = substr($passwd, 0, $length);
	
		}
		
		if($capitalize == true){$passwd = strtoupper($passwd);}
		
		return $passwd;
	}
	
	function guid(){
		$guid = '';
		if (function_exists('com_create_guid')){
			$guid = com_create_guid();
	   	}else{
		  	mt_srand((double)microtime()*10000);//optional for php 4.2.0 and up.
		   	$charid = strtoupper(md5(uniqid(rand(), true)));
		   	$hyphen = chr(45);// "-"
		   	$uuid = chr(123)// "{"
				.substr($charid, 0, 8).$hyphen
				.substr($charid, 8, 4).$hyphen
				.substr($charid,12, 4).$hyphen
				.substr($charid,16, 4).$hyphen
				.substr($charid,20,12)
				.chr(125);// "}"
		   $guid = $uuid;
	  	}
	   
	   return $guid;
	   
	}
	
	// This function is used to clean the Request, Get or Post global arrays
	function clean_request_vars($input_value){
		
		if(is_array($input_value)){
			foreach( $input_value as $key=>$val ){
				if( is_array($input_value[$key]) ){
					foreach( $val as $key2=>$val2 ){
						$input_value[$key][$key2] = $this->clean_query($val2);
					}
				}
				else{
					$input_value[$key] = $this->clean_query($val);
				}
			}
		}
		else{
			$input_value = $this->clean_query($input_value);
		}
		return $input_value;
	}

	// Actually removes necessary characters / keywords from input variable
	function clean_query($string){
	
		if(get_magic_quotes_gpc()){
			$string = stripslashes($string);
		}
		if (phpversion() >= '4.3.0'){
			$string = mysql_real_escape_string($string);
		}
		else{
			$string = mysql_escape_string($string);
		}
		
		//$string = str_replace(";", "", $string);
		
		//$bad_words = "(delete)|(update)|(union)|(insert)|(drop)|(http)|(--)";
		//$bad_words = "(union)|(insert)|(drop)|(--)";
		//$string = eregi_replace($bad_words, "", $string);
		
		return $string;
	}
	
	function remove_chars($string){
		$string = str_replace("<", "&lt;", $string);
		$string = str_replace(">", "&gt;", $string);

		return $string;
	}
	
}

?>