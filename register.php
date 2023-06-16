<?php

include 'connect.php';

$Name = $_POST['name'];
$Email = $_POST['email'];
$Place = $_POST['place'];
$Phone = $_POST['phone'];
$Password = $_POST['password'];


$sql1 = mysqli_query($con, "INSERT into user_login(email,password)values ('$Email','$Password');");
$userID=mysqli_insert_id($con);
$sql2 = mysqli_query($con, "INSERT into registration_tb(name,place,phone,log_id)values ('$Name','$Place','$Phone','$userID');");

if($sql1 && $sql2) {

    $myarray['result'] = 'Success';
}
else {
    $myarray['result'] = 'Failed';
}

echo json_encode($myarray);
?>