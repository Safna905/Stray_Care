<?php

include 'connect.php';

$Type = $_POST['Type'];
$list = [];


$sql = mysqli_query($con, "SELECT * FROM missing_tb WHERE animal_type = '$Type' && status = 'missing' ");



if ($sql->num_rows > 0) {
    while ($row = mysqli_fetch_assoc($sql)) {
        $myarray = array();
        $myarray['result'] = 'Success';
        $myarray["misID"] = $row['missing_id'];
        $myarray['animalType'] = $row['animal_type'];
        $myarray['breed'] = $row['breed'];
        $myarray['name'] = $row['name'];
        $myarray['description'] = $row['description'];
        $myarray['color'] = $row['color'];
        $myarray['missingDate'] = $row['lastseen_on'];
        $myarray['reportedDate'] = $row['report_date'];
        $myarray['image'] = $row['image'];
        $myarray['status'] = $row['status'];
        $myarray['mobNo'] = $row['mob_no'];
        $myarray['location'] = $row['lastseen_at'];
        $myarray['gender'] = $row['gender'];
        array_push($list, $myarray);
    }

} else {
    $myarray = array();
    $myarray['result'] = 'Failed';
    array_push($list, $myarray);
}

echo json_encode($list);
?>