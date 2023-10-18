<?php

include 'connect.php';


$sql = mysqli_query($con, "SELECT * FROM collected_tb WHERE status = 'Adopted';");

if($sql->num_rows > 0) {
    while($row = mysqli_fetch_assoc($sql)) {
        $myarray = array();
        $myarray['result'] = "Success";
        $myarray['CollectID'] = $row['collect_id'];
        $myarray["HealthCond"] = $row['health_cond'];
        $myarray["CollectedFrom"] = $row['collect_from'];
        $myarray["CollectedDate"] = $row['collected_on'];
        $myarray["Image"] = $row['image'];
        $myarray["Color"] = $row['color'];
        $myarray["Type"] = $row['animal_type'];
        $myarray["Gender"] = $row['gender'];
        $myarray["OfficeID"] = $row['office_id'];

        array_push($list, $myarray);
    }
}
else {
    $myarray = array();
    $myarray['result'] = "Failed";
    array_push($list, $myarray);
}

echo json_encode($myarray);
?>