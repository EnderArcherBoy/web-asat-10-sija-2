<?php
$host = "localhost"; 
$username = "root"; 
$pass = ""; 
$database = "asat_10sija";

$koneksi = mysqli_connect($host, $username, $pass, $database);
if (!$koneksi) {
    die("Koneksi gagal: " . mysqli_connect_error());
}
?>