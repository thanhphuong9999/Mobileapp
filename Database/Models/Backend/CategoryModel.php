<?php 
	trait CategoryModel{
		//lay danh sach cac ban ghi: tu ban ghi nao den ban ghi nao
		public function fetchAll($from, $pageSize){
			//lay bien ket noi csdl
			$conn = Connection::getInstance();
			//thuc thi truy van
			$query = $conn->query("select * from loaisanpham order by id desc limit $from, $pageSize");
			//lay tat ca ket qua tra ve
			return $query->fetchAll();
		}
		//tinh tong so luong ban ghi
		public function totalRecord(){
			//lay bien ket noi csdl
			$conn = Connection::getInstance();
			//thuc thi truy van
			$query = $conn->query("select id from loaisanpham");
			//tra ve tong so luong ban ghi
			return $query->rowCount();
		}
		//lay mot ban ghi
		public function fetch($id){
			//lay bien ket noi csdl
			$conn = Connection::getInstance();
			//chuan bi truy van
			$query = $conn->prepare("select * from loaisanpham where id=:id");
			//thuc thi truy van
			$query->execute(array("id"=>$id));
			//tra ve tong so luong ban ghi
			return $query->fetch();
		}
		//update ban ghi
		public function update($id){
			$name = $_POST["name"];
			$hinhanh = $_POST["email"];
					
			//lay doi tuong ket noi
			$conn = Connection::getInstance();
			//update ban ghi
			$query = $conn->prepare("update loaisanpham set tenLoaiSanPham=:tenLoaiSanPham, hinhAnhLoaiSanPham=:hinhAnhLoaiSanPham where id=:id");
			$query->execute(array("tenLoaiSanPham"=>$name,"hinhAnhLoaiSanPham"=>$hinhanh,"id"=>$id));
			//neu user upload anh
						
		}
		//insert ban ghi
		public function insert(){
			$name = $_POST["name"];
			$urlanh = $_POST["email"];
			//lay doi tuong ket noi
			$conn = Connection::getInstance();
			//update ban ghi
			$query = $conn->prepare("insert into loaisanpham set tenLoaiSanPham=:tenLoaiSanPham, hinhAnhLoaiSanPham=:hinhAnhLoaiSanPham");
			$query->execute(array("tenLoaiSanPham"=>$name,"hinhAnhLoaiSanPham"=>$urlanh));		
		}
		//delete
		public function deleteCategory($id){
			//lay bien ket noi csdl
			$conn = Connection::getInstance();
			//---
			//lay anh cu de xoa
			$query = $conn->prepare("select img from loaisanpham where id=:id");
			$query->execute(array("id"=>$id));
			//lay mot ban ghi
			$old_img = $query->fetch();
			if(isset($old_img->img)&&$old_img->img!=""&&file_exists("Assets/upload/Category/".$old_img->img))
				unlink("Assets/upload/Category/".$old_img->img);
			//---
			//chuan bi truy van
			$query = $conn->prepare("delete from loaisanpham where id=:id");
			//thuc thi truy van
			$query->execute(array("id"=>$id));
		}
		//lay danh muc tin tuc
		public function getCategory($category_id){
			$conn = Connection::getInstance();
			//thuc thi truy van
			$query = $conn->query("select name from loaisanpham where id=$category_id");
			//tra ve mot ban ghi
			return $query->fetch();
		}
	}
 ?>