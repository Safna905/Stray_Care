<?php

include 'connect.php';

$User_id = $_POST['user_id'];
//$Animal_type = $_POST['animal_type'];
$Breed = $_POST['breed'];
$Name = $_POST['name'];
//$Health_cond = $_POST['health_id'];
$Color = $_POST['color'];
$Lastseen_on = $_POST['missingDate'];
$Report_date = $_POST['report_date'];
//$Image = $_POST['image'];
//$Status = $_POST['status'];
$Mob_no = $_POST['mob_no'];
$Lastseen_at = $_POST['location'];



$sql = mysqli_query($con, "INSERT into missing_tb(user_id,name,color,breed,lastseen_on,lastseen_at,mob_no,report_date) values ('$User_id','$Name','$Color','$Breed','$Lastseen_on','$Lastseen_at','$Mob_no','$Report_date');");

if($sql) {

    $myarray['result'] = 'Success';
}
else {
    $myarray['result'] = 'Failed';
}

echo json_encode($myarray);
?>