<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "webshop";

$conn = mysqli_connect($servername, $username, $password, $dbname) or die('Cannot connect to database. ' . mysqli_connect_error());
