<?php
include "connect.php";

$tenkhachhang=$_POST['tenkhachhang'];
$sodienthoai=$_POST['sodienthoai'];
$email=$_POST['email'];
$diachi=$_POST['diachi'];
$date = date("Y-m-d H:i:s");
if(strlen($tenkhachhang)>0 && strlen($sodienthoai)>0 && strlen($email)>0 &&strlen($diachi)>0){
    $query="INSERT INTO donhang(id,tenkhachhang,sodienthoai,email,diachi,ngaydathang) VALUE (NULL,'$tenkhachhang','$sodienthoai','$email','$diachi','$date')";
     if(mysqli_query($conn,$query)){
         $iddonhang=$conn->insert_id;
         echo $iddonhang;
     }else{
         echo "Thất bại";
          }
    }else{
    echo "Bạn hãy kiểm tra lại các dữ liệu";
}
?>