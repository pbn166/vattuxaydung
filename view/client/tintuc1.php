<style>
         .about {
            width: 960px;
            margin: 0 auto;
            height: auto;
        }
        p.caption_about {
            font-size: 20px;
        }
        p.img {
            text-align: center;
        }
    </style>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="http://localhost/vatlxd/public/img/logo.png">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
    <link rel="stylesheet" href="http://localhost/vatlxd/public/css/layouts.css">
    <title>Tin tức</title>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
</head>
<div class="wapper">
        <!-- header -->
        <?php include('./view/client/layout/header.php'); ?>
        <!-- End header -->
    <div class="about">
        <br>
        <p class="caption_about"><center><h2>GIÁ THÉP BẮT ĐẦU TĂNG THEO GIÁ ĐIỆN</h2></center></p>
        <br>
        <p>
        Một số nhà thầu xây dựng, đại lý sắt thép và nhà sản xuất thép tại TPHCM cho biết giá thép xây dựng tăng 150.000 đồng/tấn kể từ 
        hôm nay do tác động của giá đầu vào như điện, chi phí vận chuyển..
        </p>
        <br>
        <p class="img"><img class="baiviet-img" src="http://localhost/vatlxd/public/img/tintuc1.png" alt=""></p>
        <br>
        <p>
            Ông Đỗ Duy Thái, Tổng giám đốc Tổng công ty Thép Việt (đơn vị sản xuất thép Pomina) xác nhận mức tăng giá thép thêm 150.000 đồng/tấn được áp dụng từ hôm nay (12-8).<br>
            “Mặc dù sức mua thép trên thị trường chưa cải thiện nhiều nhưng do chi phí vận chuyển, giá điện, nguyên liệu đầu vào tăng nên chúng tôi buộc phải tăng giá thép chứ không thể cầm cự, chịu lỗ mãi được”, ông Thái cho hay.<br>
            Đại diện Cửa hàng Sắt thép Vĩnh Hưng ở quận Gò Vấp, TPHCM cũng cho hay hiện giá thép xây dựng bán lẻ tại thành phố khoảng 14,9 triệu đồng/tấn, nếu tăng thêm 150.000 đồng/tấn cũng chỉ là mức tăng nhẹ, dự báo không tác động lớn đến sức mua trên thị trường sắp tới.<br>
            Theo Hiệp hội Thép Việt Nam (VSA), tổng lượng thép xây dựng tiêu thụ của các thành viên VSA trong 7 tháng đầu năm đạt 2,6 triệu tấn, tăng khoảng 3% so với cùng kỳ.<br>
            Ông Đinh Huy Tam, Tổng thư ký VSA cho rằng sức mua thép xây dựng trên thị trường bắt đầu phục hồi từ tháng 6 trở lại đây do kinh tế từng bước ổn định, lãi suất cho vay giảm cũng giúp nhiều dự án bất động khởi động trở lại.
        </p>   
        
    </div>
    
    <div class="container">
        <h2><b>Bình Luận Của Khách Hàng</b></h2>
        <p></p>
        <form>
            <div class="form-group">
                <label for="comment"><b>Comment:</b></label>
                <textarea class="form-control" rows="5" id="comment"></textarea>
            </div>
        </form>
    </div>  
        <!-- footer -->
        <?php include('./view/client/layout/footer.php'); ?>
        <!-- End footer -->
</div>
