<?php

include 'connect.php';

$Animal_id = $_POST['animal_id'];
$Health_cond = $_POST['health_cond'];
$Image = $_POST['image'];

$sql = mysqli_query($con, "INSERT into foster_tb(animal_id,health_cond,image)values ('$Animal_id','$Health_cond','$Image');");

if($sql) {

    $myarray['result'] = 'Success';
}
else {
    $myarray['result'] = 'Failed';
}

echo json_encode($myarray);
?>