<?php
include("koneksi.php");
include("upload_foto.php");
include("upload_hero.php");

$nama_depan = $_POST['nama_depan'];
$nama_belakang = $_POST['nama_belakang'];
$tentang = $_POST['tentang'];
$profesi = $_POST['profesi'];
$deskripsi_profesi = $_POST['deskripsi_profesi'];

$tgl_lahir = $_POST['tgl_lahir'];
$dateReplace = str_replace('/', '-', $tgl_lahir);
$dateSQL = date('Y-m-d', strtotime($dateReplace));

$website = $_POST['website'];
$gelar = $_POST['gelar'];
$hp = $_POST['hp'];
$email = $_POST['email'];
$kota = $_POST['kota'];
$freelance = $_POST['freelance'];
$keterangan_about = $_POST['keterangan_about'];
$keterangan_skill = $_POST['keterangan_skill'];
$skill = $_POST['skill'];
$url_hero = $_POST['url_hero'];
$url_foto = $_POST['url_foto'];

$sql = "INSERT INTO biodata (nama_depan, nama_belakang, tentang, profesi, deskripsi_profesi, tgl_lahir, website, gelar, hp, email, kota, freelance, keterangan_about, keterangan_skill, skill, url_hero, url_foto) VALUES ('$nama_depan', '$nama_belakang', '$tentang', '$profesi', '$deskripsi_profesi', '$dateSQL', '$website', '$gelar', '$hp', '$email', '$kota', '$freelance', '$keterangan_about', '$keterangan_skill', '$skill', '$url_hero', '$url_foto')";

if (mysqli_query($koneksi, $sql)) {
    echo "<script>alert('Data berhasil disimpan')
    window.location.href = '../forms/kontak.php';</script>";
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($koneksi);
}


?>