<?php

include 'connect.php';

$Email = $_POST['email'];
$Password = $_POST['password'];


$sql = mysqli_query($con, "SELECT *  From user_login where email='$Email'&& password = '$Password';");

if ($sql->num_rows > 0) {

    while ($row = mysqli_fetch_assoc($sql)) {
        $myarray['result'] = 'Success';
        $myarray['log_id'] = $row['log_id'];
        $myarray['email'] = $row['email'];
        $myarray['password'] = $row['password'];

        $log = $row['log_id'];
        $sql2 = mysqli_query($con, "SELECT * FROM user_login INNER JOIN registration_tb ON user_login.log_id = registration_tb.log_id WHERE user_login.log_id = $log ");
        if($sql2 -> num_rows > 0) {

            while ($row1 = mysqli_fetch_assoc($sql2)) {

                $myarray['name'] = $row1['name'];
                //$myarray['email'] = $row1['email'];
                $myarray['place'] = $row1['place'];
                $myarray['phone'] = $row1['phone'];
                //$myarray['password'] = $row['password'];
            }
        }

    }


} else {
    $myarray['result'] = 'Failed';
}

echo json_encode($myarray);
?>