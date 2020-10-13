<?php 
include "Assets/Backend/PHPMailer-master/src/PHPMailer.php";
include "Assets/Backend/PHPMailer-master/src/Exception.php";
include "Assets/Backend/PHPMailer-master/src/OAuth.php";
include "Assets/Backend/PHPMailer-master/src/POP3.php";
include "Assets/Backend/PHPMailer-master/src/SMTP.php";

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
	trait DonhangModel{
		//lay danh sach cac ban ghi: tu ban ghi nao den ban ghi nao
		public function fetchAll($from, $pageSize){
			//lay bien ket noi csdl
			$conn = Connection::getInstance();
			//thuc thi truy van
			$query = $conn->query("select * from donhang order by id desc limit $from, $pageSize");
			//lay tat ca ket qua tra ve
			return $query->fetchAll();
		}
		//tinh tong so luong ban ghi
		public function totalRecord(){
			//lay bien ket noi csdl
			$conn = Connection::getInstance();
			//thuc thi truy van
			$query = $conn->query("select id from donhang");
			//tra ve tong so luong ban ghi
			return $query->rowCount();
		}
		//lay mot ban ghi
		public function fetch($id){
			//lay bien ket noi csdl
			$conn = Connection::getInstance();
            //chuan bi truy van
            //thuc thi truy van
			$query = $conn->query("select * from chitietmuahang where madonhang= '$id'");
			//lay tat ca ket qua tra ve
			return $query->fetchAll();
			
		}
		
		//insert ban ghi
		
		public function deleteUser($id){
			//lay bien ket noi csdl
			$conn = Connection::getInstance();
			//chuan bi truy van
			$query = $conn->prepare("delete from donhang where id=:id");
			//thuc thi truy van
			$query->execute(array("id"=>$id));
        }
        public function cartCheckOut($id)
	{
		    
            $conn = Connection::getInstance();
                //chuan bi truy van
                //thuc thi truy van
            //update ban ghi
            $xacnhan = 1;
			$query = $conn->prepare("update donhang set xacnhan=:xacnhan where id=:id");
            $query->execute(array("xacnhan"=>$xacnhan,"id"=>$id));

            $query = $conn->query("select * from donhang where id= '$id'");
            $datakh = $query->fetch();
            $fullname = $datakh->tenkhachhang;
            $phone = $datakh->sodienthoai;
            $address = $datakh->diachi;
            $email = $datakh->email;
            $query = $conn->query("select * from chitietmuahang where madonhang= '$id'");
            $datapr = $query->fetchAll();
            $query = $conn->query("select sum(giadonhang) as giadonhang  from chitietmuahang where madonhang= '$id'");
            $datatt = $query->fetch();
		//-------------




		$str_body = '';
		$str_body .= '
		<p>
			<b>Khách hàng:</b> ' . $fullname . '<br>
			<b>Điện thoại:</b> ' .'0'.$phone . '<br>
			<b>Địa chỉ:</b> ' . $address . '<br>
		</p>
		';

		$str_body .= '
		<table border="1" cellspacing="0" cellpadding="10" bordercolor="#305eb3" width="100%">
		<tr bgcolor="#305eb3">
			<td width="70%"><b><font color="#FFFFFF">Sản phẩm</font></b></td>
			<td width="10%"><b><font color="#FFFFFF">Số lượng</font></b></td>
			<td width="20%"><b><font color="#FFFFFF">Tổng tiền</font></b></td>
		</tr>';
		foreach ($datapr as $product) :
			$str_body .= '
		<tr>
			<td width="70%">'. $product->tensanpham .'</td>
			<td width="10%">'. $product->soluong .'</td>
			<td width="20%">'. number_format($product->giadonhang) .'đ</td>
		</tr>      
		';
		endforeach;

		$str_body .= '
    <tr>
        <td colspan="2" width="70%"></td>
        <td width="20%"><b><font color="#FF0000">'. number_format($datatt->giadonhang) .'đ</font></b></td>
    </tr>
	</table>	
	';

		$str_body .= '
		<p>
			Cám ơn quý khách đã mua hàng tại Shop của chúng tôi, bộ phận giao hàng sẽ liên hệ với quý khách để xác nhận sau 5 phút kể từ khi đặt hàng thành công và chuyển hàng đến quý khách chậm nhất sau 24 tiếng.
		</p>
		';

		//goi thu vien
		header('location:index.php?area=Backend&controller=Donhang');
		$mail = new PHPMailer(true);                              // Passing 'true' enables exceptions
		try {
			//Server settings
			$mail->SMTPDebug = 2;                                 // Enable verbose debug output
			$mail->isSMTP();                                      // Set mailer to use SMTP
			$mail->Host = 'smtp.gmail.com';  // Specify main and backup SMTP servers
			$mail->SMTPAuth = true;                               // Enable SMTP authentication
			$mail->Username = 'testmail1179@gmail.com';                 // SMTP username
			$mail->Password = 'khanhth99';                           // SMTP password
			$mail->SMTPSecure = 'tls';                            // Enable TLS encryption, 'ssl' also accepted
			$mail->Port = 587;                                    // TCP port to connect to

			//Recipients
			$mail->CharSet = 'UTF-8';
			$mail->setFrom('testmail1179@gmail.com', 'Nguyễn Duy Khánh');                // Gửi mail tới Mail Server
			$mail->addAddress($email);               // Gửi mail tới mail người nhận
			//$mail->addReplyTo('ceo.khanh@gmail.com', 'Information');
			//$mail->addCC('donlykhanh99@gmail.com');
			//$mail->addBCC('bcc@example.com');

			//Attachments
			//$mail->addAttachment('/var/tmp/file.tar.gz');         // Add attachments
			//$mail->addAttachment('/tmp/image.jpg', 'new.jpg');    // Optional name

			//Content
			$mail->isHTML(true);                                  // Set email format to HTML
			$mail->Subject = 'Xác nhận mua hàng từ KHANH SHOP';
			$mail->Body    = $str_body;
			$mail->AltBody = 'Mô tả đơn hàng';

			$mail->send();
		} catch (Exception $e) {
			echo 'Message could not be sent. Mailer Error: ', $mail->ErrorInfo;
		}
		//-------------
		//xoa gio hang
		
	}
	}
 ?>