<?php

include 'connect.php';

$Type = $_POST['Type'];
$list = [];


    $sql = mysqli_query($con, "SELECT * FROM report_tb WHERE animal_type = '$Type' ");



if ($sql-> num_rows > 0) {
    while ($row = mysqli_fetch_assoc($sql)) {
        $myarray = array();
        $myarray['result'] = 'Success';
        $myarray['caseType'] = $row['case_type'];
        $myarray['description'] = $row['description'];
        $myarray['reportedDate'] = $row['reported_date'];
       $myarray['image'] = $row['image'];
        $myarray['location'] = $row['location'];
        $myarray['lati'] = $row['lati'];
        $myarray['longi'] = $row['longi'];
        $myarray['userid'] = $row['user_id'];
        array_push($list, $myarray);
    }

} else {
    $myarray = array();
    $myarray['result'] = 'Failed';
    array_push($list, $myarray);
}

echo json_encode($list);
?>