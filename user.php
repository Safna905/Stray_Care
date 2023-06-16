<?php

include 'connect.php';

$Login_id = $_POST['login_id'];
$Name = $_POST['name'];
$Age = $_POST['age'];
$Address = $_POST['address'];
$Email = $_POST['email'];
$Ph_no = $_POST['ph_no'];


$sql = mysqli_query($con, "INSERT into user_tb(log_id,name,age,address,email_id,ph_no)values ('$Login_id','$Name','$Age','$Address','$Email','$Ph_no');");

if($sql) {

    $myarray['result'] = 'Success';
}
else {
    $myarray['result'] = 'Failed';
}

echo json_encode($myarray);
?>