<h1>Hello Worlds!</h1>
<h4>Attempting MySQL connection from php...</h4>
<?php
$host = getenv('MYSQL_SERVICE_HOST');
$user = getenv('MYSQL_USER');
$pass = getenv('MYSQL_PASSWORD');
$conn = new mysqli($host, $user, $pass);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} else {
    echo "Connected to MySQL successfully!";
}

?>
