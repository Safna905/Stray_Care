<?php

include 'connect.php';

$Login_id = $_POST['login_id'];
$Station = $_POST['station'];
$Location = $_POST['location'];
$Ph_no = $_POST['ph_no'];


$sql = mysqli_query($con, "INSERT into police_tb(login_id,station,location,ph_no)values ('$Login_id','$Station','$Location','$Ph_no');");

if($sql) {

    $myarray['result'] = 'Success';
}
else {
    $myarray['result'] = 'Failed';
}

echo json_encode($myarray);
?>