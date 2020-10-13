<?php
include "connect.php";
    $madonhang = "123";
   $query="INSERT INTO chitietdonmuahang(madonhanga)
   VALUES ('$madonhang')";
$Dta = mysqli_query($conn,$query);
if ($Dta) {
    echo "true";
}else{
    echo NULL;
}
?>
