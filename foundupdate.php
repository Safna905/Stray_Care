<?php

include "connect.php";


$Missing_Id = $_POST['misID'];

$sql = mysqli_query($con, "UPDATE missing_tb SET status = 'Found' WHERE missing_id = '$Missing_Id'");


?>