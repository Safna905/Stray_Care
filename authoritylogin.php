<?php

include 'connect.php';

$Code = $_POST['code'];
$Password = $_POST['password'];
$Authority_type = $_POST['authority_type'];

$sql = mysqli_query($con, "INSERT into authority_login_tb(code,password,authority_type)values ('$Code','$Password','$Authority_type');");

if($sql) {

    $myarray['result'] = 'Success';
}
else {
    $myarray['result'] = 'Failed';
}

echo json_encode($myarray);
?>