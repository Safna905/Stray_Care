<?php

include 'connect.php';

$User_id = $_POST['user_id'];
$Amount = $_POST['amount'];
$Type = $_POST['type'];

$sql = mysqli_query($con, "INSERT into donation_tb(user_id,amount,type)values ('$User_id','$Amount','$Type');");

if($sql) {

    $myarray['result'] = 'Success';
}
else {
    $myarray['result'] = 'Failed';
}

echo json_encode($myarray);
?>