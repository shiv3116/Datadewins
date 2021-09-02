<h1>Hello Datadewins</h1>
<h4>Attempting MYSQL Connection</h4>
<?php
$host = '127.0.0.1:3307';
$user = 'root';
$pass = 'root';
$conn = new mysqli($host, $user, $pass);

if($conn->connect_error) {
     die("Connection failed: " . $conn->connect_error);
}

echo($conn->server_version());
?>
