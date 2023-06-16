<?php

include 'connect.php';

$Email = $_POST['email'];
$Password = $_POST['password'];


$sql = mysqli_query($con, "SELECT *  From user_login where email='$Email'&& password = '$Password';");

if($sql -> num_rows> 0 ) {

    while($row = mysqli_fetch_assoc($sql)) {
        $myarray['result'] = 'Success';
        $myarray['log_id'] =$row['log_id'];


    }

  
}
else {
    $myarray['result'] = 'Failed';
}

echo json_encode($myarray);
?>