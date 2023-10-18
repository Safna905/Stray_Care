<?php

include "connect.php";


$Request_id = $_POST['RequestID'];
$Status = $_POST['Status'];
$Reply_Date = $_POST['ReplyDate'];
$Collect_id = $_POST['CollectID'];


if($Status == "Completed")
{
    $sql = mysqli_query($con, "UPDATE adopt_request_tb SET status = '$Status', reply_date = '$Reply_Date' WHERE request_id = '$Request_id';");
    $sql1 = mysqli_query($con, "UPDATE collected_tb SET status = 'Adopted',adopted_on = '$Reply_Date' WHERE collect_id = '$Collect_id' ");
}
$sql = mysqli_query($con, "UPDATE adopt_request_tb SET status = '$Status', reply_date = '$Reply_Date' WHERE request_id = '$Request_id';");


if($Status == "Completed") {
    if($sql && $sql1) {
        $myarray['result'] = 'Success';
    }
    else {
        $myarray['result'] = 'Failed';
    }

}
else{
    if($sql) {

        $myarray['result'] = 'Success';
    }
    else {
        $myarray['result'] = 'Failed';
    }
}


echo json_encode($myarray);


?>