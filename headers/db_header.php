<?php
include_once("session_header.php");
//DB HEADER
include_once($_SERVER['DOCUMENT_ROOT']."/config.php");
global $station_info;
date_default_timezone_set($station_info['timezone']);
//*******************************************
//*******************************************
//*******************************************
$db = new mysqli($djland_db_address, $djland_db_username, $djland_db_password, $djland_db_dbname);

if (mysqli_connect_error()) {
	print('Connect Error for djland db (' . mysqli_connect_errno() . ') '
    . mysqli_connect_error());
}
try{
	$hostandaddress = "mysql:dbname=".$djland_db_dbname.";host=".$djland_db_address;
	$pdo_db = new PDO($hostandaddress,$djland_db_username,$djland_db_password);
	$pdo_db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	$pdo_db -> exec("set names utf8");
}catch(PDOException $e){
	echo $e->getMessage();
	if ( extension_loaded('pdo') ){
		echo "<br/> pdo extension is loaded";
	} else {
		echo "<br/> pdo extension is not loaded";
	}
}

// DJLAND's playsheet can be customized to link to a music library mySQL backend
// this provides the ability to easily add plays to a playsheet without typing
// actually, any digital media library / player that uses MySQL should work
// as long as the table names and column names are consistent with the code
// watch this space for a list of those table names in case you want to use a
// different digital media player

if($using_sam){

    global $samDB_ip, $samDB_user, $samDB_pass, $samDB_dbname, $samDB_port;
    $mysqli_sam = new mysqli($samDB_ip, $samDB_user, $samDB_pass, $samDB_dbname, $samDB_port);

    if (mysqli_connect_error()) {
        echo 'there is a connection error';
        die('Connect Error for sam db (' . mysqli_connect_errno() . ') '
                . mysqli_connect_error());
    }
}
function mysqli_result_dep($res, $row, $field=0) {
//	echo 'called mysqli result';
//	echo '<br/>';
//	echo 'res:'.'<br/>';
//	print_r($res);
//	echo 'row:'.$row.'<br/>';
//	echo 'field:'.$field.'<br/>';
	if(is_object($res))
		$res->data_seek($row);
	else 	return false;

	$datarow = $res->fetch_array();

	if(is_array($datarow))
	    return $datarow[$field];
	else 	return false;

}
function getContent(){

    if (0 === strlen(trim($content = file_get_contents('php://input'))))
    {
      $content = false;
    }

  return $content;
}

function CallAPI($method, $url, $data = false)
{
    $curl = curl_init();

    switch ($method)
    {
        case "POST":
            curl_setopt($curl, CURLOPT_POST, 1);

            if ($data)
                curl_setopt($curl, CURLOPT_POSTFIELDS, $data);
            break;
        case "PUT":
            curl_setopt($curl, CURLOPT_PUT, 1);
            break;
        default:
            if ($data)
                $url = sprintf("%s?%s", $url, http_build_query($data));
    }

    // Optional Authentication:
    curl_setopt($curl, CURLOPT_HTTPAUTH, CURLAUTH_BASIC);
    curl_setopt($curl, CURLOPT_USERPWD, "username:password");

    curl_setopt($curl, CURLOPT_URL, $url);
    curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);

    $result = curl_exec($curl);

    curl_close($curl);

    return json_decode($result);
}

//END DB HEADER
?>
