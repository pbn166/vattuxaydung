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
        </style>
    </head>
    <body>
        <div class="container">
            <header class="row bg-info mt-1">
                <?php include('./view/admin/layouts/header.php'); ?>
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
                <main class="col-9 bg-white mx-n2">
                    <h1 class="h5 py-2 border-bottom text-danger"> 
                        Tên Chức Năng
                    </h1>
                        Nội dung chính 
                </main>
            </div>
            <footer class="row bg-dark mt-1 mb-2 text-warning text-center">
                <?php include('./view/admin/layouts/footer.php'); ?>
            </footer>
        </div> 
 </body>
 </html>
 