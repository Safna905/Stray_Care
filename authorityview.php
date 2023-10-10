<?php

include 'connect.php';

$Type = $_POST['Type'];
$list = [];


    $sql = mysqli_query($con, "SELECT * FROM report_tb WHERE case_type = '$Type' ");



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

        $ID = $row['user_id'];
        $sql2 = mysqli_query($con, "SELECT * FROM registration_tb INNER JOIN  report_tb ON registration_tb.log_id = report_tb.user_id WHERE registration_tb.log_id = $ID");
        if($sql2 -> num_rows > 0) {
            while($row2 = mysqli_fetch_assoc($sql2)) {
                $myarray['ReporterName'] = $row2['name'];
                $myarray['MobNum'] = $row2['phone'];
            }
        }
        array_push($list, $myarray);
    }

} else {
    $myarray = array();
    $myarray['result'] = 'Failed';
    array_push($list, $myarray);
}

echo json_encode($list);
?>