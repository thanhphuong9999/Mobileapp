<?php
include "connect.php";
include "PHPMailer-master/src/PHPMailer.php";
include "PHPMailer-master/src/Exception.php";
include "PHPMailer-master/src/OAuth.php";
include "PHPMailer-master/src/POP3.php";
include "PHPMailer-master/src/SMTP.php";

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

$tenkhachhang=$_POST['tenkhachhang'];
$sodienthoai=$_POST['sodienthoai'];
$email=$_POST['email'];
$diachi=$_POST['diachi'];

$str_body = '';
$str_body .= '
<p>
    <b>Khách hàng:</b> '.$tenkhachhang.'<br>
    <b>Điện thoại:</b> '.$sodienthoai.'<br>
    <b>Email:</b> '.$email.'<br>
    <b>Địa chỉ:</b> '.$diachi.'<br>
</p>
';


$str_body .= '
<table border="1" cellspacing="0" cellpadding="10" bordercolor="#305eb3" width="100%">
    <tr bgcolor="#305eb3">
        <td width="70%"><b><font color="#FFFFFF">Sản phẩm</font></b></td>
        <td width="10%"><b><font color="#FFFFFF">Số lượng</font></b></td>
        <td width="20%"><b><font color="#FFFFFF">Tổng tiền</font></b></td>
    </tr>';

    $sql1 = "SELECT * FROM chitietdonmuahang
            WHERE madonhang = 130";
    $query1 = mysqli_query($conn, $sql1);
    
    
    while($row = mysqli_fetch_array($query1)){
        $total_price = $row['giasanpham'];
        $total_price_all += $total_price;		
        
    $str_body .= '
    <tr>
        <td width="70%">'.$row['tensanpham'].'</td>
        <td width="10%">'.$row['soluongsanpham'].'</td>
        <td width="20%">'.number_format($row['giasanpham']).' đ</td>
    </tr>      
    ';
    }
    $str_body .= '
    <tr>
        <td colspan="2" width="70%"></td>
        <td width="20%"><b><font color="#FF0000">'.number_format($total_price_all).' đ</font></b></td>
    </tr>
</table>	
';


$str_body .= '
<p>
    Cám ơn quý khách đã mua hàng tại Shop của chúng tôi, bộ phận giao hàng sẽ liên hệ với quý khách để xác nhận sau 5 phút kể từ khi đặt hàng thành công và chuyển hàng đến quý khách chậm nhất sau 24 tiếng.
</p>
';

$mail = new PHPMailer(true);                              // Passing 'true' enables exceptions
try {
    //Server settings
    $mail->SMTPDebug = 2;                                 // Enable verbose debug output
    $mail->isSMTP();                                      // Set mailer to use SMTP
    $mail->Host = 'smtp.gmail.com';  // Specify main and backup SMTP servers
    $mail->SMTPAuth = true;                               // Enable SMTP authentication
    
    $mail->Username = 'testmail1179@gmail.com';                 // SMTP username
    $mail->Password = 'khanhth99';    
    
    $mail->SMTPSecure = 'tls';                            // Enable TLS encryption, 'ssl' also accepted
    $mail->Port = 587;                                    // TCP port to connect to
    
    //Recipients
    $mail->CharSet = 'UTF-8';
    $mail->setFrom('testmail1179@gmail.com', 'Khanh Mobile Shop');				// Gửi mail tới Mail Server
    $mail->addAddress($email);               // Gửi mail tới mail người nhận
    
    //Content
    $mail->isHTML(true);                                  // Set email format to HTML
    $mail->Subject = 'Xác nhận đơn hàng từ Khanh Mobile Shop';
    $mail->Body    = $str_body;
    $mail->AltBody = 'Mô tả đơn hàng';
    
    $mail->send();
    //header('location:index.php?page_layout=success');
    echo 'Mail đã được gửi';
} catch (Exception $e) {
    echo 'Message could not be sent. Mailer Error: ', $mail->ErrorInfo;
}
?>