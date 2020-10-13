<!-- load file layout vao day -->
<?php
$this->fileLayout = "Views/Backend/Layout1.php";
?>
<div class="col-md-12">
    <div style="margin-bottom:5px;">
        <a href="index.php?area=backend&controller=Category&action=add" class="btn btn-primary">Add news</a>
    </div>
    <div class="panel panel-primary">
        <div class="panel-heading">List Category</div>
        <div class="panel-body">
            <table class="table table-bordered table-hover">
                <tr>
                    <th style="width:100px;">Image</th>
                    
                    <th style="width: 200px;">Category</th>
                    
                    <th style="width:100px;"></th>
                </tr>
                <?php foreach ($data as $rows) : ?>
                    <tr>
                        <td>
                        <img src="<?php echo $rows->hinhAnhLoaiSanPham; ?>" style="width: 20%;">
                        </td>
                        <td><?php echo $rows->tenLoaiSanPham; ?></td>
                       
                        <td style="text-align:center;">
                            <a href="index.php?area=backend&controller=Category&action=edit&id=<?php echo $rows->id; ?>">Edit</a>&nbsp;
                            <a href="index.php?area=backend&controller=Category&action=delete&id=<?php echo $rows->id; ?>" onclick="return window.confirm('Are you sure?');">Delete</a>
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
                        <a href="index.php?area=backend&controller=News&p=<?php echo $i; ?>" class="page-link"><?php echo $i; ?></a>
                    </li>
                <?php endfor; ?>
            </ul>
        </div>
    </div>
</div>