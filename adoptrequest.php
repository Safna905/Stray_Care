<?php

include 'connect.php';

$Sender_id = $_POST['SenderID'];
$Send_date = $_POST['SendDate'];
$Recipient_id = $_POST['RecipientID'];
$Collect_id = $_POST['CollectionID'];


$sql = mysqli_query($con, "INSERT into adopt_request_tb(sender_id,send_date,recipient_id,collect_id)values ('$Sender_id','$Send_date','$Recipient_id','$Collect_id');");

if($sql) {

    $myarray['result'] = 'Success';
}
else {
    $myarray['result'] = 'Failed';
}

echo json_encode($myarray);
?>