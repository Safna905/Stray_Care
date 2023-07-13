<?php

include "connect.php";

$Name = $_POST['name'];
$Email = $_POST['email'];
$Place = $_POST['place'];
$Phone = $_POST['phone'];
$Password = $_POST['password'];
$log_id = $_POST['log_id'];

$sql1 = mysqli_query($con, "UPDATE registration_tb SET name ='$Name', place ='$Place', phone ='$Phone' WHERE log_id = '$log_id' ;");
$sql2 = mysqli_query($con, "UPDATE user_login SET email ='$Email', password ='$Password' WHERE log_id = '$log_id' ;");

if($sql1 && $sql2) {

    $myarray['result'] = 'Success';
}
else {
    $myarray['result'] = 'Failed';
}

echo json_encode($myarray);
?>