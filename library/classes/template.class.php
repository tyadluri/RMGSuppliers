<?php

class Template {
    var $vars; /// Holds all the template variables
    var $file;

    /**
     * Constructor
     *
     * @param $file string the file name you want to load
     */
    function Template($file = null) {
    	Global $UTILS_WEBROOT, $UTILS_HTTPS_ADDRESS;
        
    	$this->file = $file;
    	
        if(isset($_SESSION['contractors_qube_id'])){
        	if($_SESSION['contractors_qube_id'] == '' && ($_SERVER['PHP_SELF'] != "/index.php"  && $_SERVER['PHP_SELF'] != "/client_terms.php"  && $_SERVER['PHP_SELF'] != "/forgot_details.php")){
        		header("Location: ".$UTILS_HTTPS_ADDRESS."index.php");
        		exit;
        	}
        }elseif(strpos($_SERVER['PHP_SELF'], '/admin/') !== false ){
        	if(!isset($_SESSION['admin_user_id']) && $_SERVER['PHP_SELF'] != "/admin/index.php"){
	        	header("Location: ".$UTILS_HTTPS_ADDRESS."admin/index.php");
	        	exit;
        	}
        }elseif($_SERVER['PHP_SELF'] != "/index.php" && $_SERVER['PHP_SELF'] != "/client_terms.php" && $_SERVER['PHP_SELF'] != "/test_client_terms.php" && $_SERVER['PHP_SELF'] != "/forgot_details.php"  && strpos($_SERVER['PHP_SELF'],'services.php') === false){
        	header("Location: ".$UTILS_HTTPS_ADDRESS."index.php");
			exit;
        }
    }

    /**
     * Set a template variable.
     */
    function set($name, $value) {
        $this->vars[$name] = is_object($value) ? $value->fetch() : $value;
    }

    /**
     * Open, parse, and return the template file.
     *
     * @param $file string the template file name
     */
    function fetch($file = null) {
        if(!$file) $file = $this->file;

        extract($this->vars);          // Extract the vars to local namespace
        ob_start();                    // Start output buffering
        include($file);                // Include the file
        $contents = ob_get_contents(); // Get the contents of the buffer
        ob_end_clean();                // End buffering and discard
        return $contents;              // Return the contents
    }

    /**
     * Open, parse, and return the content file.
     *
     * @param $filename string the template file name
     */
	function get_content($filename, $vars="") {
	    if (is_file($filename)) {
	    	if($vars == ''){
	    		extract($this->vars);
	    	}else{
	    		extract($vars);
	    	}
	        ob_start();
	        include $filename;
	        $contents = ob_get_contents();
	        ob_end_clean();
	        return $contents;
	    }
	    return false;
	}
	
	function set_sortable_table($file, $class_array = array(), $replace_array = array()){
		if (is_file($file)) {
			$tpl = file_get_contents($file);
			if(strpos($tpl, '<?') > -1){
				$tpl = $this->get_content($file);
			}
			$tpl = preg_replace("/<table[^>]+\>/i", "", $tpl);
			$tpl = str_replace("</table>", "", $tpl);
			
			if(!empty($class_array) && !empty($replace_array)){
				for( $i = 0; $i <= count($class_array); $i++){
					$tpl = str_replace($class_array[$i], $replace_array[$i], $tpl);
				}
			}
			
			return (preg_replace('/\n\r|\r\n|\t/', " ", $tpl));
		}
	}
	
	function __toString(){
		return $this->fetch();
	}
}

?>
