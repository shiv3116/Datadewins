<h1>Hello Datadewins</h1>
<h4>Attempting MYSQL Connection.....</h4>
<?php
$host = 'localhost';
$user = 'root';
$pass = 'root';
$conn = new mysqli($host, $user, $pass);

if($conn->connect_error) {
     die("Connection failed: " . $conn->connect_error);
}

echo($conn->server_version());
?>
