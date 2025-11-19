<?php
include("koneksi.php");

$nama_pengirim = $_POST["nama_pengirim"];
$email_pengirim = $_POST["email_pengirim"];
$judul_pesan = $_POST["judul_pesan"];
$pesan = $_POST["pesan"];
$date=getdate(date("U"));
$tgl_pesan = "$date[year]-$date[mon]-$date[mday] $date[hours]:$date[minutes]:$date[seconds]";


$sql = "INSERT INTO pesan (nama_pengirim, email_pengirim, judul_pesan, pesan, tgl_pesan) VALUES ('$nama_pengirim', '$email_pengirim', '$judul_pesan', '$pesan', '$tgl_pesan')";

if (mysqli_query($koneksi, $sql)) {
    echo "<script>alert('Pesan berhasil dikirim!')
    window.location.href = '../contact.php';</script>";
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($koneksi);
}
?>