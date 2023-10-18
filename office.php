<?php

include 'connect.php';

$list = [];

$sql = mysqli_query($con, "SELECT * FROM office_tb ");

if ($sql->num_rows > 0) {
    while ($row = mysqli_fetch_assoc($sql)) {
        $myarray = array();
        $myarray['result'] = "Success";
        $myarray["OfficeID"] = $row['office_id'];
        $myarray["Code"] = $row['code'];
        $myarray["Location"] = $row['location'];
        $myarray["PhoneNum"] = $row['ph_no'];
        $myarray["Password"] = $row['password'];
        $myarray["OfficeName"] = $row['office_name'];
        $myarray["PinNum"] = $row['pin_no'];

        array_push($list, $myarray);
    }
} else {
    $myarray = array();
    $myarray['result'] = "Failed";
    array_push($list, $myarray);
}

echo json_encode($list);

?>