<?php

include 'connect.php';

$Login_id = $_POST['login_id'];
$Lsg_name = $_POST['lsg_name'];
$Type = $_POST['type'];
$Email = $_POST['email'];
$Location = $_POST['location'];
$Ph_no = $_POST['ph_no'];


$sql = mysqli_query($con, "INSERT into local_govt_tb(log_id,lsg_name,type,email,location,ph_no)values ('$Login_id','$Lsg_name','$Type','$Email','$Location','$Ph_no');");

if($sql) {

    $myarray['result'] = 'Success';
}
else {
    $myarray['result'] = 'Failed';
}

echo json_encode($myarray);
?>