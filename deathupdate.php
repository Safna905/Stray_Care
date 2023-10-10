<?php

include "connect.php";


$Collection_Id = $_POST['CollectID'];
$Death_Reason = $_POST['DeathReason'];
$Death_Date = $_POST['DeathDate'];


$sql = mysqli_query($con, "UPDATE collected_tb SET status = 'Died', reason = '$Death_Reason', died_on = '$Death_Date' WHERE collect_id = '$Collection_Id'");


?>