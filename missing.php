<?php

include 'connect.php';

$User_id = $_POST['user_id'];
$Animal_type = $_POST['animal_type'];
$Breed = $_POST['breed'];
$Name = $_POST['name'];
$Gender = $_POST['gender'];
$Description = $_POST['description'];
$Color = $_POST['color'];
$Lastseen_on = $_POST['missingDate'];
$Report_date = $_POST['report_date'];
//$Status = $_POST['status'];
$Mob_no = $_POST['mob_no'];
$Lastseen_at = $_POST['location'];

$Image = $_FILES['image']['name'];
$Imagepath = 'missingCase/'.$Image;
$tmp_name=$_FILES['image']['tmp_name'];
move_uploaded_file($tmp_name, $Imagepath);



$sql = mysqli_query($con, "INSERT into missing_tb(user_id,name,gender,color,breed,animal_type,description,lastseen_on,lastseen_at,mob_no,report_date,image) values ('$User_id','$Name','$Gender','$Color','$Breed','$Animal_type','$Description','$Lastseen_on','$Lastseen_at','$Mob_no','$Report_date','$Image');");

if ($sql) {

    $myarray['result'] = 'Success';
    $myarray['response'] = "done";
} else {
    $myarray['result'] = 'Failed';
}

echo json_encode($myarray);
?>