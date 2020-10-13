<?php 
	//include model
	include "Models/Backend/DonhangModel.php";
	class DonhangController extends Controller{
		//khai bao de su dung class UserModel
		use DonhangModel;
		//ham tao de xac thuc dang nhap
		public function __construct(){
			$this->authentication();
		}
		public function index(){
			//so ban ghi tren mot trang
			$pageSize = 15;
			//tinh tong so ban ghi
			$totalRecord = $this->totalRecord();//ham trong model
			//tinh so trang
			//ham ceil su dung de lay tran. VD: ceil(2.1)=3
			$numPage = ceil($totalRecord/$pageSize);
			//lay bien p truyen tren url
			$p = isset($_GET["p"])&&is_numeric($_GET["p"])&&$_GET["p"]>0 ? ($_GET["p"]-1) : 0;
			//lay tu ban ghi nao
			$from = $p * $pageSize;
			//lay cac ban ghi
			$data = $this->fetchAll($from,$pageSize);
			//goi view, truyen du lieu ra view
			$this->renderHTML("Views/Backend/DonhangView.php",array("data"=>$data,"numPage"=>$numPage));
		}
		public function chitietdonhang(){
            $id = isset($_GET["id"])&&is_numeric($_GET["id"]) ? $_GET["id"] : 0;
            
            $record = $this->fetch($id);
			//tao bien $formAction de dieu phoi action cua form
			//goi view, truyen du lieu ra view
			$this->renderHTML("Views/Backend/ChitietdonhangView.php",array("record"=>$record));
        }
        public function xacnhan(){
            $id = isset($_GET["id"])&&is_numeric($_GET["id"]) ? $_GET["id"] : 0;
            
           
            $this->cartCheckOut($id);
            
			
            header("location:index.php?area=backend&controller=Donhang");
        }
		//delete user
		public function delete(){
			$id = isset($_GET["id"])&&is_numeric($_GET["id"]) ? $_GET["id"] : 0;
			//goi ham delete trong model de delete ban ghi
			$this->deleteUser($id);
			//quay tro lai duong dan
			header("location:index.php?area=backend&controller=Donhang");
		}
	}
 ?>