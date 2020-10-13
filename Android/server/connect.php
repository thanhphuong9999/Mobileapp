<?php
date_default_timezone_set("Asia/Bangkok");
$host="localhost";
$username="root";
$password="";
$database="appshopnew";
$conn=mysqli_connect($host,$username,$password,$database);
mysqli_query($conn,"SET NAMES 'utf8'");
if($conn){
echo"";
}else{
    echo"kết nối thất bại";
}
?>
