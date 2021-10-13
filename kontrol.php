<?php

$kad=$_POST['kad'];
$sr=$_POST['sifre'];

if($kad=="yakup" && $sr=="12345"){
	
	header('Location: http://localhost/sinavsistemi/soruekleme.php');
	
}
else{
	
	
	header('Location: http://localhost/sinavsistemi/sorular.php');
	
}

?>