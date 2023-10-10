<?php

include 'connect.php';

//$Animal_id = $_POST['animal_id'];
$Office_id = $_POST['office_id'];
$Health_cond = $_POST['health_cond'];
$Collect_from = $_POST['collect_from'];
$Collected_on = $_POST['collected_on'];
$Gender = $_POST['gender'];
$color = $_POST['color'];
//$Status = $_POST['status'];
$Died_on = $_POST['died_on'];
$Reason = $_POST['reason'];
$Adopted_on = $_POST['adopted_on'];

$Image = $_FILES['image']['name'];
$Imagepath = 'CollectedCase/'.$Image;
$tmp_name = $_FILES['image']['tmp_name'];
move_uploaded_file($tmp_name, $Imagepath);


$sql = mysqli_query($con, "INSERT into collected_tb(office_id,health_cond,collect_from,collected_on,died_on,reason,adopted_on,image, gender, color)values ('$Office_id','$Health_cond','$Collect_from','$Collected_on','$Died_on','$Reason','$Adopted_on','$Image','$Gender','$color');");

if($sql) {

    $myarray['result'] = 'Success';
}
else {
    $myarray['result'] = 'Failed';
}

echo json_encode($myarray);
?>