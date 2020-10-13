<!-- load file layout vao day -->
<?php
$this->fileLayout = "Views/Backend/Layout1.php";
?>
<div class="col-md-12">
    <div class="panel panel-primary">
        <div class="panel-heading">Add edit product</div>
        <div class="panel-body">
            <!-- them thuoc tinh enctype="multipart/form-data" de upload file -->
            <form method="post" enctype="multipart/form-data" action="<?php echo $formAction; ?>">
                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Tên sản phẩm</div>
                    <div class="col-md-10">
                        <input type="text" value="<?php echo isset($record->tenSanPham) ? $record->tenSanPham : ''; ?>" name="name" class="form-control" required>
                    </div>
                </div>
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Giá sản phẩm</div>
                    <div class="col-md-10">
                        <input type="text" value="<?php echo isset($record->giaSanPham) ? $record->giaSanPham : ''; ?>" name="giaSanPham" class="form-control" required>
                    </div>
                </div>
                
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Hình ảnh</div>
                    <div class="col-md-10">
                        <input type="text" value="<?php echo isset($record->hinhAnhSanPham) ? $record->hinhAnhSanPham : ''; ?>" name="img" class="form-control" required>
                    </div>
                </div>
                <!-- end rows -->
                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Danh mục</div>
                    <div class="col-md-10">
                        <select name="category_id" class="form-control" style="width: 300px;">
                            <option value="0"></option>
                            <?php
                            $conn = Connection::getInstance();
                            $query = $conn->query("select * from loaisanpham order by id desc");
                            //lay tat ca ket qua tra ve
                            $category = $query->fetchAll();
                            foreach ($category as $rows) :
                            ?>
                                <option <?php if (isset($record->idLoaiSanPham) && $record->idLoaiSanPham == $rows->id) : ?> selected <?php endif; ?> value="<?php echo $rows->id; ?>"><?php echo $rows->tenLoaiSanPham; ?></option>
                            <?php endforeach; ?>
                        </select>
                    </div>
                </div>
                <!-- end rows -->

                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2">Mô tả</div>
                    <div class="col-md-10">
                        <textarea name="content" id="content">
                            <?php echo isset($record->moTaSanPham) ? $record->moTaSanPham : ''; ?>
                         </textarea>
                        <script type="text/javascript">
                            CKEDITOR.replace("content");
                        </script>
                    </div>
                </div>
                <!-- end rows -->
                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2"></div>
                    <div class="col-md-10">
                        <input type="checkbox" <?php if (isset($record->hot) && $record->hot == 1) : ?> checked <?php endif; ?> name="hotnews" id="hotnews"> <label for="hotnews">Hot news</label>
                    </div>
                </div>

                <!-- rows -->
                <div class="row" style="margin-top:5px;">
                    <div class="col-md-2"></div>
                    <div class="col-md-10">
                        <input type="submit" value="Process" class="btn btn-primary">
                    </div>
                </div>
                <!-- end rows -->
            </form>
        </div>
    </div>
</div>