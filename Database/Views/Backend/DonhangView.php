<!-- load file layout vao day -->
<?php
$this->fileLayout = "Views/Backend/Layout1.php";
?>
<div class="col-md-12">
    <div style="margin-bottom:5px;">
        <a href="index.php?area=backend&controller=Category&action=add" class="btn btn-primary">Add news</a>
    </div>
    <div class="panel panel-primary">
        <div class="panel-heading">Đơn hàng</div>
        <div class="panel-body">
            <table class="table table-bordered table-hover">
                <tr>
                    <th style="width:100px;">Tên khách hàng</th>

                    <th style="width: 100px;">Số điện thoại</th>
                    <th style="width: 100px;">Email</th>
                    <th style="width: 100px;">Địa chỉ</th>
                    <th style="width: 100px;">Ngày đặt hàng</th>
                    <th style="width: 100px;">Trạng thái</th>
                    <th style="width:100px; text-align: center;">Hành động</th>
                    
                </tr>
                <?php foreach ($data as $rows) : ?>
                    <tr>
                        <td><?php echo $rows->tenkhachhang; ?></td>
                        <td><?php echo $rows->sodienthoai; ?></td>
                        <td><?php echo $rows->email; ?></td>
                        <td><?php echo $rows->diachi; ?></td>
                        <td><?php echo $rows->ngaydathang; ?></td>
                        <td><?php if($rows->xacnhan == 0){echo "<span style='padding: 2px 5px; background-color: #ffb74d'>Đang chờ<span>"; }else{echo "<span style='padding: 2px 5px; background-color: #66bb6a'>Xác nhận<span>";} ?></td>
                        <td style="text-align:center;">
                            <a href="index.php?area=backend&controller=Donhang&action=chitietdonhang&id=<?php echo $rows->id; ?>">Xem</a>&nbsp;
                            <a style="color: red;" href="index.php?area=backend&controller=Donhang&action=delete&id=<?php echo $rows->id; ?>" onclick="return window.confirm('Are you sure?');">Delete</a>
                        </td>
                    </tr>
                <?php endforeach; ?>
            </table>
            <style type="text/css">
                .pagination {
                    padding: 0px;
                    margin: 0px;
                }
            </style>
            <ul class="pagination">
                <li class="page-item disabled">
                    <a href="#" class="page-link">Trang</a>
                </li>
                <?php for ($i = 1; $i <= $numPage; $i++) : ?>
                    <li class="page-item">
                        <a href="index.php?area=backend&controller=Donhang&p=<?php echo $i; ?>" class="page-link"><?php echo $i; ?></a>
                    </li>
                <?php endfor; ?>
            </ul>
        </div>
    </div>
</div>