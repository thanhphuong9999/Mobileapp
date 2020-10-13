<?php
	//session_start();
	include "connect.php";
	$json = $_POST['json'];
	//$json = '[{"giadonhang": 10000, "madonhang": "123","tensanpham":"abc","soluong":20,"masanpham":199}]';
	$data = json_decode($json,true);
	$date = date("Y-m-d H:i:s");
	//$_SESSION["data"] = $_POST['json'];
	var_dump($_SESSION["data"]);
	foreach ($data as $value) {
        $madonhang = $value['madonhang'];
        $masanpham=$value['masanpham'];
        $tensanpham=$value['tensanpham'];
        $giasanpham=$value['giasanpham'];
		$soluongsanpham=$value['soluongsanpham'];
        $query="INSERT INTO chitietmuahang(madonhang,masanpham,tensanpham,giadonhang,soluong,ngaydathang)
            VALUES ('$madonhang','$masanpham','$tensanpham','$giasanpham','$soluongsanpham','$date')";
		$Dta = mysqli_query($conn,$query);
	}
	if ($Dta) {
		echo "true";
	}else{
		echo NULL;
	}
?>