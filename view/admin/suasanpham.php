<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="icon" type="image/x-icon" href="http://localhost/vatlxd/public/img/logo.png">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"> </script> 
        <link rel="stylesheet" href="http://localhost/vatlxd/public/css/layouts.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
        <link rel="stylesheet" href="http://localhost/vatlxd/public/css/home.css">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <title>Quản trị</title>
        <style>
            body { background-color: white!important}
            header.row{ height: 120px}
            nav.row {height: 40px; line-height: 40px }
            footer.row { height: 10px;}
            div.noidung { min-height: 500px}
            div.noidung >main  { }
            table{
                margin-left: 300px;
            }
        </style>
    </head>
    <body>
            
        


        <div class="container">
            <header class="row bg-info mt-1">
                <?php include('./view/admin/layouts/header.php');?>
            </header>
            <div class="row noidung">       
                <aside class="col-3 bg-light"> <div class="accordion" id="accordionExample">
            
        <div class="accordion-item">
            <h2 class="accordion-header" id="headingTwo">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                    Quản lý sản phẩm
                </button>
            </h2>
            <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
                <div class="accordion-body">
                    <p><a href="http://localhost/vatlxd/?router=admin&page=DSSP">Danh sách sản phẩm</a></p>
                    <p><a href="http://localhost/vatlxd/?router=admin&page=them">Thêm sản phẩm</a></p>
                </div>
            </div>
        </div>
        <div class="accordion-item">
            <h2 class="accordion-header" id="headingThree">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                    Quản lý loại sản phẩm
                </button>
            </h2>
            <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                <div class="accordion-body">
                    <p><a href="http://localhost/vatlxd/?router=admin&page=DSLSP">Danh sách loại sản phẩm</a></p>
                    <p><a href="http://localhost/vatlxd/?router=admin&page=themloai">Thêm loại sản phẩm</a></p>
                </div>
            </div>
        </div>
        <div class="accordion-item">
            <h2 class="accordion-header" id="headingThree">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                    Quản lý đặt hàng
                </button>
            </h2>
            <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                <div class="accordion-body">
                    <p><a href="#">Danh sách đặt hàng</a></p>
            
                </div>
            </div>
        </div>
    </div> </aside>
                <?php 
                    require_once __DIR__ . '../../../modules/model/Products.php';
                    $products = new Products();
                    $product = null;
                    if (isset($_GET['MaSP'])){
                        $product = $products->getProductbyID($_GET['MaSP']);
                    }
                    
                    if (isset($_POST['btnSubmit'])) {
        
       
                        $DM = trim($_POST['DanhMucSP']);
                        $Loai = trim($_POST['LoaiSP']);
                        $Ten = trim($_POST['TenSP']);
                        $Hinh = trim($_POST['HinhAnhSP']);
                        $Ma = trim($_POST['MaSP']);
                        $NCC = trim($_POST['NhaCungCap']);
                        $XX = trim($_POST['XuatXu']);
                        $Mota = trim($_POST['MoTa']);
                        $Gia = trim($_POST['GiaSP']);
                        $DonVi = trim($_POST['DonViTinh']);
                        
                            
                            if ($products->updateProduct( $DM, $Loai, $Ten, $Hinh, $NCC, $XX, $Mota, $Gia, $DonVi, $Ma)) {
                    ?>
                                <script>
                                    alert('Cập nhật sản phẩm thành công');
                                    window.location = "http://localhost/vatlxd/?router=admin&page=DSSP";
                                </script>
                
                            <?php
                
                            } else {
                            ?>
                                <script>
                                    alert('Cập nhật sản phẩm không thành công');
                                    window.location = "http://localhost/vatlxd/?router=admin&page=suasanpham&MaSP=<?php echo $_GET['MaSP'] ?>";
                                </script>
                            <?php
                
                            }
                        }
                    
                    
                ?>
                <main class="col-9 bg-white mx-n2">
                    <h1 class="h5 py-2 border-bottom text-danger" style="text-align:center"> 
                        Sửa Sản Phẩm
                    </h1>
                    <form action="" method="post">
                        <table>
                            
                        
                            <tr>
                                <td>Danh Mục Sản Phẩm:</td>
                                <td><input type="text" name="DanhMucSP" value="<?php echo $product[0]['DanhMucSP'] ?>"><br><br></td>
                            </tr>
                            
                            <tr>
                                <td>Loại Sản Phẩm:</td>
                                <td><input type="text" name="LoaiSP" value="<?php echo $product[0]['LoaiSP'] ?>"><br><br></td>
                            </tr>
                            <tr>
                                <td>Tên Sản Phẩm:</td>
                                <td><input type="text" name="TenSP" value="<?php echo $product[0]['TenSP'] ?>"><br><br></td>
                            </tr>
                            <tr>
                                <td>Hình Ảnh:</td>
                                <td><input type="text" name="HinhAnhSP" value="<?php echo $product[0]['HinhAnhSP'] ?>"><br><br></td>
                            </tr>
                            <tr>
                                <td>Mã Sản Phẩm:</td>
                                <td><input type="text" name="MaSP" value="<?php echo $product[0]['MaSP'] ?>"><br><br></td>
                            </tr>
                            <tr>
                                <td>Nhà Cung Cấp:</td>
                                <td><input type="text" name="NhaCungCap" value="<?php echo $product[0]['NhaCungCap'] ?>"><br><br></td>
                            </tr>
                            <tr>
                                <td>Xuất Xứ:</td>
                                <td><input type="text" name="XuatXu" value="<?php echo $product[0]['XuatXu'] ?>"><br><br></td>
                            </tr>
                            <tr>
                                <td>Mô Tả:</td>
                                <td><input type="text" name="MoTa" value="<?php echo $product[0]['MoTa'] ?>"><br><br></td>
                            </tr>
                            <tr>
                                <td>Giá:</td>
                                <td><input type="text" name="GiaSP" value="<?php echo $product[0]['GiaSP'] ?>"><br><br></td>
                            </tr>
                            <tr>
                                <td>Đơn Vị Tính:</td>
                                <td><input type="text" name="DonViTinh" value="<?php echo $product[0]['DonViTinh'] ?>"><br><br></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td><input type="submit" name="btnSubmit" value="Sửa"></td>
                            </tr>
                        </table>
                    </form>



                </main>
            </div>
            <footer class="row bg-dark mt-1 mb-2 text-warning text-center">
                <?php include('./view/admin/layouts/footer.php'); ?>
            </footer>
        </div> 
 </body>
 </html>
 