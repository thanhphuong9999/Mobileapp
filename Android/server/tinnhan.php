<?php
include "connect.php";

$tenkhachhang=$_POST['name'];
$sodienthoai=$_POST['phone'];
$email=$_POST['email'];
$message=$_POST['message'];
$date = date("Y-m-d H:i:s");
if(strlen($tenkhachhang)>0 && strlen($sodienthoai)>0 && strlen($email)>0 &&strlen($message)>0){
    $query="INSERT INTO tinnhan(name,phone,email,message,ngaygui) VALUE ('$tenkhachhang','$sodienthoai','$email','$message','$date')";
     if(mysqli_query($conn,$query)){
        
         echo "gửi thành công";
     }else{
         echo "Thất bại";
          }
    }else{
    echo "Bạn hãy kiểm tra lại các dữ liệu";
}
?>