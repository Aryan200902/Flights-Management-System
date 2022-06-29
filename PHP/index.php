<?php
$insert = false;
if(isset($_POST['firstname'])){
$server = "localhost";
$username = "root";
$password = "";
$dbname = "flights";

$con = mysqli_connect($server,$username,$password,$dbname);

if(!$con){
    die("connection of this database failed due to" . mysqli_connect_error());
}


$firstname = $_POST['firstname'];
$lastname = $_POST['lastname'];
$dob = $_POST['dob'];
$where_from = $_POST['where_from'];
$where_to = $_POST['where_to'];
$flights_name = $_POST['flight_name'];
$gender = $_POST['gender'];

$sql = "INSERT INTO `flights`.`create_table` (`firstname`, `lastname`, `dob`, `where_from`, `where_to`, `flight_name`, `gender`) VALUES ('$firstname', '$lastname', '$dob', '$where_from', '$where_to', '$flights_name', '$gender');";

if($con->query($sql) == true){
    echo "Flight Booked!";
    echo "</br>";
    echo "Data Succesfully inserted";
    $insert = true;
}
else{
    echo "ERROR: $sql <br> $con->error";
}
$con->close();

}
?>
