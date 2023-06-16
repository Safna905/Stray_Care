<?php

include 'connect.php';

$Request_id = $_POST['request_id'];
$Status = $_POST['status'];
$Adopted_on = $_POST['adopted_on'];


$sql = mysqli_query($con, "INSERT into adoption_tb(request_id,status,adopted_on)values ('$Request_id','$Status','$Adopted_on');");

if($sql) {

    $myarray['result'] = 'Success';
}
else {
    $myarray['result'] = 'Failed';
}

echo json_encode($myarray);
?>