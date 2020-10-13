<?php 
	trait NewsModel{
		//lay danh sach cac ban ghi: tu ban ghi nao den ban ghi nao
		public function fetchAll($from, $pageSize){
			//lay bien ket noi csdl
			$conn = Connection::getInstance();
			//thuc thi truy van
			$query = $conn->query("select * from sanpham order by id desc limit $from, $pageSize");
			//lay tat ca ket qua tra ve
			return $query->fetchAll();
		}
		//tinh tong so luong ban ghi
		public function totalRecord(){
			//lay bien ket noi csdl
			$conn = Connection::getInstance();
			//thuc thi truy van
			$query = $conn->query("select id from sanpham");
			//tra ve tong so luong ban ghi
			return $query->rowCount();
		}
		//lay mot ban ghi
		public function fetch($id){
			//lay bien ket noi csdl
			$conn = Connection::getInstance();
			//chuan bi truy van
			$query = $conn->prepare("select * from sanpham where id=:id");
			//thuc thi truy van
			$query->execute(array("id"=>$id));
			//tra ve tong so luong ban ghi
			return $query->fetch();
		}
		//update ban ghi
		public function update($id){
			$name = $_POST["name"];
			$category_id = $_POST["category_id"];
			$description = $_POST["content"];
			$hotnews = isset($_POST["hotnews"]) ? 1: 0;	
			$hinhAnhSanPham = $_POST['img'];	
			$giaSanPham = $_POST["giaSanPham"];	
			//lay doi tuong ket noi
			$conn = Connection::getInstance();
			//update ban ghi
			$query = $conn->prepare("update sanpham set tenSanPham=:tenSanPham,giaSanPham=:giaSanPham, idLoaiSanPham=:idLoaiSanPham,moTaSanPham=:moTaSanPham,hot=:hot,hinhAnhSanPham=:hinhAnhSanPham where id=:id");
			$query->execute(array("tenSanPham"=>$name,"giaSanPham"=>$giaSanPham,"idLoaiSanPham"=>$category_id,"moTaSanPham"=>$description,"hot"=>$hotnews,"hinhAnhSanPham"=>$hinhAnhSanPham,"id"=>$id));
			
					
		}
		//insert ban ghi
		public function insert(){
			$name = $_POST["name"];
			$category_id = $_POST["category_id"];
			$description = $_POST["content"];
			$hotnews = isset($_POST["hotnews"]) ? 1: 0;	
			$hinhAnhSanPham = $_POST['img'];
			$giaSanPham = $_POST["giaSanPham"];
			//lay doi tuong ket noi
			$conn = Connection::getInstance();
			//update ban ghi
			$query = $conn->prepare("insert into sanpham set tenSanPham=:tenSanPham,giaSanPham=:giaSanPham, idLoaiSanPham=:idLoaiSanPham,moTaSanPham=:moTaSanPham,hot=:hot,hinhAnhSanPham=:hinhAnhSanPham ");
			$query->execute(array("tenSanPham"=>$name,"giaSanPham"=>$giaSanPham,"idLoaiSanPham"=>$category_id,"moTaSanPham"=>$description,"hot"=>$hotnews,"hinhAnhSanPham"=>$hinhAnhSanPham));		
		}
		//delete
		public function deleteNews($id){
			//lay bien ket noi csdl
			$conn = Connection::getInstance();
			//---
			//lay anh cu de xoa
			$query = $conn->prepare("select img from sanpham where id=:id");
			$query->execute(array("id"=>$id));
			//lay mot ban ghi
			$old_img = $query->fetch();
			if(isset($old_img->img)&&$old_img->img!=""&&file_exists("Assets/upload/news/".$old_img->img))
				unlink("Assets/upload/news/".$old_img->img);
			//---
			//chuan bi truy van
			$query = $conn->prepare("delete from sanpham where id=:id");
			//thuc thi truy van
			$query->execute(array("id"=>$id));
		}
		//lay danh muc tin tuc
		public function getCategory($category_id){
			$conn = Connection::getInstance();
			//thuc thi truy van
			$query = $conn->query("select * from loaisanpham where id=$category_id");
			//tra ve mot ban ghi
			return $query->fetch();
		}
	}
 ?>