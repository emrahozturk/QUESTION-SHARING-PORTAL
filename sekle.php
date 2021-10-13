<?php

$servername = "localhost/192.168.1.188";
$username = "yakup";
$password = "12345";
$dbname = "sinavsistemi";

$did=$_POST['dersid'];
$soru=$_POST['soru'];
$sec=$_POST['secenekler'];
$cevap=$_POST['cevap'];

try {
  $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
  // set the PDO error mode to exception
  $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  
  $sql = "INSERT INTO sorular (soru,secenekler,cevap,dersid) values('$soru','$sec','$cevap','$did')";
  
  // use exec() because no results are returned
  
  $conn->exec($sql);
  echo "New record created successfully";
} catch(PDOException $e) {
  echo $sql . "<br>" . $e->getMessage();
}

$conn = null;

?>