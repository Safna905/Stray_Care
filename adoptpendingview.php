<?php

include "connect.php";

$list = [];

$sql = mysqli_query($con, "SELECT * FROM adopt_request_tb WHERE status = 'Accepted' ");

if($sql->num_rows > 0) {
    while($row = mysqli_fetch_assoc($sql)) {
        $myarray = array();
        $myarray['result'] = "Success";
        $myarray['RequestID'] = $row['request_id'];
        $myarray["SenderID"] = $row['sender_id'];
        $myarray["SendDate"] = $row['reply_date'];
        $myarray["ReplyDate"] = $row['reply_date'];
        $myarray["OfficeID"] = $row['recipient_id'];
        $myarray["CollectID"] = $row['collect_id'];

        $ID = $row['collect_id'];
        $sql2 = mysqli_query($con, "SELECT * FROM collected_tb INNER JOIN adopt_request_tb ON collected_tb.collect_id = adopt_request_tb.collect_id WHERE collected_tb.collect_id = '$ID'");
        if($sql2 -> num_rows > 0) {
            while($row2 = mysqli_fetch_assoc($sql2)) {
                $myarray['Image'] = $row2['image'];
                $myarray['AnimalType'] = $row2['animal_type'];
            }
        }
        array_push($list, $myarray);
    }
}
else {
    $myarray = array();
    $myarray['result'] = "Failed";
    array_push($list, $myarray);
}

echo json_encode($list);


?>