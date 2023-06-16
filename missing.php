<?php

include 'connect.php';

$User_id = $_POST['user_id'];
$Animal_type = $_POST['animal_type'];
$Breed = $_POST['breed'];
$Name = $_POST['name'];
$Health_cond = $_POST['health_id'];
$Color = $_POST['color'];
$Lastseen_on = $_POST['lastseen_on'];
$Report_date = $_POST['report_date'];
$Image = $_POST['image'];
$Status = $_POST['status'];
$Mob_no = $_POST['mob_no'];


$sql = mysqli_query($con, "INSERT into missing_tb(user_id,animal_type,breed,name,health_cond,color,lastseen_on,report_date,image,status,mob_no)values ('$User_id','$Animal_type','$Breed','$Name','$$Health_cond','$Color','$Lastseen_on','$Report_date','$Image','$Status','$Mob_no');");

if($sql) {

    $myarray['result'] = 'Success';
}
else {
    $myarray['result'] = 'Failed';
}

echo json_encode($myarray);
?>