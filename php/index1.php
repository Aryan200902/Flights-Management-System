<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "flights";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
$value1 = $_POST['value1'];
$value2 = $_POST['value2'];


$sql = "SELECT ID, where_from, where_to, Flight_Name FROM search_table WHERE where_from='$value1' AND where_to='$value2' ";

$result = $conn->query($sql);

if ($result->num_rows > 0) {

$x=3;

  while($row = $result->fetch_assoc()) {
    if($x<=3 && $x>0){
    echo "Id: " . $row["ID"]. " - Where from: " . $row["where_from"]. " - Where to: " . $row["where_to"]. " - Flight Name: " . $row["Flight_Name"]."<br>";
    $x--;
  }

}
  echo <<<HTML
  <a href="http://localhost/flights/book.html">PROCEED TO BOOKING PAGE</a>
  HTML;
} else {
  echo "Oh! Looks Like No flights To Board.";
  echo "</br>";
  echo "Choose Another!";
}
$conn->close();
?>