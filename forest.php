<?php

include 'connect.php';

$Login_id = $_POST['login_id'];
$Email = $_POST['email'];
$Location = $_POST['location'];
$Ph_no = $_POST['ph_no'];


$sql = mysqli_query($con, "INSERT into forest_tb(login_id,email,location,ph_no)values ('$Login_id','$Email','$Location','$Ph_no');");

if($sql) {

    $myarray['result'] = 'Success';
}
else {
    $myarray['result'] = 'Failed';
}

echo json_encode($myarray);
?>