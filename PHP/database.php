<?php

if (isset($_POST['submit'])) {
    if (isset($_POST['firstname']) && isset($_POST['lastname']) &&
        isset($_POST['dob']) && isset($_POST['where_from']) &&
        isset($_POST['where_to']) && isset($_POST['flight_name']) && isset($_POST['gender'])) {


$firstname = $_POST['firstname'];
$lastname = $_POST['lastname'];
$dob = $_POST['dob'];
$where_from = $_POST['where_from'];
$where_to = $_POST['where_to'];
$flight_name = $_POST['flight_name'];
$gender = $_POST['gender'];

if(!empty($firstname) || !empty($lastname) || !empty($dob) || !empty($where_from) ||!empty($where_to) || !empty($flight_name) || !empty($gender)){
    
    $user = 'root';
    $pass = '';
    $db = 'flights';

    $conn = new mysqli('localhost',$user,$pass,$db);

    if($conn->connect_error){
        die('Connect Error('. mysqli_connect_error().')'. mysqli_connect_error());
    }
    else{
        $INSERT = "INSERT Into create_table (firstname,lastname,dob,where_from,where_to,flight_name,gender) values(?,?,?,?,?,?,?)";
        $stmt = $conn->prepare($SELECT);
        $stmt->bind_param("s",$firstname);
        $stmt->execute();
        $stmt->bind_result($firstname);
        $stmt->store_result();
        $rnum = $stmt->num_rows;

        if($rnum==0){
            $rnum->close();
            $stmt = $conn->prepare($INSERT);
            $stmt->bind_param("ssissss",$firstname,$lastname,$dob,$where_from,$where_to,$flight_name,$gender);
            $stmt->execute();
            echo "Done";
        }
        else{
            echo "Error";
        }
        $stmt->close();
        $conn->close();

    }
}
        }
else{
    echo "All Fields Are Required";
    die();
}
}
else {
    echo "Submit button is not set";
}



?>

