<?php
include dirname( __FILE__ ).'/config.php';

$json_response = array();

$uid = strip_tags( trim( $_POST["uid"] ) );
$sid = strip_tags( trim( $_POST["sid"] ) );

$finaluid = htmlspecialchars( $uid, ENT_QUOTES, 'UTF-8' );
$finalsid = htmlspecialchars( $sid, ENT_QUOTES, 'UTF-8' );

$sqlsearch = "SELECT * FROM `teacher` WHERE `uid` = " . $finaluid;

$selectsearch = mysql_query($sqlsearch);

if ( ! $selectsearch ) {
  die('Could not select data: ' . mysql_error());
}

while ($row = mysql_fetch_array($selectsearch, MYSQL_ASSOC)) {
  //push the values in the array
  array_push($json_response,$row);
}

$sqlaudit = "INSERT INTO `audit`(`student_id`, `teacher_id`, `created_time`) VALUES ('".mysql_real_escape_string( $finalsid )."', '".mysql_real_escape_string( $finaluid )."', '".mysql_real_escape_string( $now )."')";

$insertaudit = mysql_query( $sqlaudit );

if ( ! $insertaudit ) {
	die( 'Could not enter audit data: ' . mysql_error() );
}

echo json_encode($json_response);

?>
