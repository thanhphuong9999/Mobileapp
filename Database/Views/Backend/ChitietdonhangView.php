<!-- load file layout vao day -->
<?php
$this->fileLayout = "Views/Backend/Layout1.php";
?>
<div class="col-md-12">
    
    <div class="panel panel-primary">
        <div class="panel-heading">Chi tiết đơn hàng</div>
        <div class="panel-body">
            <table class="table table-bordered table-hover">
                <tr>
                    <th style="width:100px;">Tên sản phẩm </th>
                    <th style="width: 100px;">Giá đơn hàng</th>
                    <th style="width: 100px;">Số lượng</th>
                    
                </tr>
                <?php foreach ($record as $rows) : ?>
                    <tr>
                        <td><?php echo $rows->tensanpham; ?></td>
                        <td><?php echo $rows->giadonhang; ?></td>
                        <td><?php echo $rows->soluong; ?></td> 
                    </tr>
                <?php endforeach; ?>
            </table>
           <div>
               <a class="btn btn-primary" href="index.php?area=backend&controller=Donhang&action=xacnhan&id=<?php echo $_GET['id'] ?>">Xác nhận</a>
           </div>
        </div>
    </div>
</div>