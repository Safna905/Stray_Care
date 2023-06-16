<?php

include 'connect.php';

$Sender_id = $_POST['sender_id'];
$Send_status = $_POST['sent_status'];
$Reply_status = $_POST['reply_status'];
$Send_date = $_POST['send_date'];
$Reply_date = $_POST['reply_date'];
$Recipient_id = $_POST['recipient_id'];


$sql = mysqli_query($con, "INSERT into adopt_request_tb(sender_id,sent_status,reply_status,send_date,reply_date,recipient_id)values ('$Sender_id','$Send_status','$Reply_status','$Send_date','$Reply_date','$Recipient_id');");

if($sql) {

    $myarray['result'] = 'Success';
}
else {
    $myarray['result'] = 'Failed';
}

echo json_encode($myarray);
?>