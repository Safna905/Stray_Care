<?php

include 'connect.php';

$Description = $_POST['description'];
$Gender = $_POST['gender'];
$Type = $_POST['type'];
$Color = $_POST['color'];
$Breed = $_POST['breed'];
$Image = $_POST['image'];


$sql = mysqli_query($con, "INSERT into animal_tb(description,gender,type,color,breed,image)values ('$Description','$Gender','$Type','$Color','$Breed','$Image');");

if($sql) {

    $myarray['result'] = 'Success';
}
else {
    $myarray['result'] = 'Failed';
}

echo json_encode($myarray);
?>