<?php

include 'connect.php';

$Login_id = $_POST['login_id'];
$Center = $_POST['center'];
$Email = $_POST['email'];
$Location = $_POST['location'];
$Ph_no = $_POST['ph_no'];


$sql = mysqli_query($con, "INSERT into veterinary_tb(login_id,center,email,location,ph_no)values ('$Login_id','$Center','$Email','$Location','$Ph_no');");

if($sql) {

    $myarray['result'] = 'Success';
}
else {
    $myarray['result'] = 'Failed';
}

echo json_encode($myarray);
?>