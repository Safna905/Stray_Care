<?php

include 'connect.php';

$Description = $_POST['description'];
$Location = $_POST['location'];
$Lati = $_POST['lati'];
$Longi = $_POST['longi'];
$Reporteddate = $_POST['reported_date'];
$Case_type = $_POST['case_type'];
$User_id = $_POST['user_id'];

$Image = $_FILES['image']['name'];
$Imagepath = 'ReportingCase/'.$Image;
$tmp_name = $_FILES['image']['$tmp_name'];
move_uploaded_file($tmp_name, $Imagepath);

$sql = mysqli_query($con, "INSERT into report_tb(description,location,lati,longi,reported_date,image,case_type,user_id)values ('$Description','$Location','$Lati','$Longi','$Reporteddate','$Image','$Case_type','$User_id');");

if($sql) {

    $myarray['result'] = 'Success';
}
else {
    $myarray['result'] = 'Failed';
}

echo json_encode($myarray);
?>