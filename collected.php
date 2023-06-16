<?php

include 'connect.php';

$Animal_id = $_POST['animal_id'];
$Office_id = $_POST['office_id'];
$Health_cond = $_POST['health_id'];
$Collect_from = $_POST['collect_from'];
$Collected_on = $_POST['collected_on'];
$Status = $_POST['status'];
$Died_on = $_POST['died_on'];
$Reason = $_POST['reason'];
$Adopted_on = $_POST['adopted_on'];


$sql = mysqli_query($con, "INSERT into collected_tb(animal_id,office_id,health_cond,collect_from,collected_on,status,died_on,reason,adopted_on)values ('$Animal_id','$Office_id','$$Health_cond','$$Collect_from','$Collected_on','$Status','$Died_on','$Reason','$Adopted_on');");

if($sql) {

    $myarray['result'] = 'Success';
}
else {
    $myarray['result'] = 'Failed';
}

echo json_encode($myarray);
?>