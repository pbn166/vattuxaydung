
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="http://localhost/vatlxd/public/img/logo.png">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
    <link rel="stylesheet" href="http://localhost/vatlxd/public/css/layouts.css">
    <link rel="stylesheet" href="http://localhost/vatlxd/public/css/sanpham.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.css" rel="stylesheet"> 

    <title>Sản Phẩm</title>
</head>

<body>
    <div class="wapper">
        <!-- header -->
        <?php include('./view/client/layout/header.php'); ?>
        <!-- End header -->
        <?php
   
           
            $accounts = $account->getAllSP();
         

        ?>

        <!-- Content -->
    <div class="wrap">
        <div class="product">
            <?php
                foreach($accounts as $key => $value) {
            ?>
            <div class="detail_pro">
                <div class="item">
                    <div class="item_img">
                        <img src="public/img/sanpham/<?php echo $value['HinhAnhSP'] ?>" alt="không tồn tại">
                    </div>
                    <div class="item_des">
                      <div class="item_title">Tên sản phẩm: <?php echo $value['TenSP'] ?></div>  
                      <div class="item_price">Giá: <?php echo number_format ($value['GiaSP']) .' VNĐ'?></div>
                      <div class="item_cart"><a class= "cart" href="http://localhost/vatlxd/?router=chitietsp&MaSP=<?php echo $value['MaSP'] ?>">Xem chi tiết</a></div>
                      <div class="item_cart"><a class= "cart" href="#">Thêm vào giỏ hàng</a></div>
                      
                    </div>
                   
                </div>
                
            </div>
            <?php }; ?>
        </div>
        
    </div>

        <!-- End content -->

        <!-- footer -->
        <?php include('./view/client/layout/footer.php'); ?>
        <!-- End footer -->
    </div>
    
    

</body>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>    <script>
        const range = document.getElementById('range');
        const rangeV = document.getElementById('range-V');
        const setValue = () => {
            const newValue = Number( (range.value - range.min) * 100 / (range.max - range.min) );
            const newPosition = 10 - (newValue * 0.2);
            rangeV.innerHTML = `<span style="width:max-content; padding:2px 4px;">${range.value}</span>`;
            rangeV.style.left = `calc(${newValue}% + (${newPosition}px))`;
        };
        document.addEventListener("DOMContentLoaded", setValue);
        range.addEventListener('input', setValue);
    </script>
</html>

