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
        <p class="caption_about"><center><h2>Báo cáo thị trường xi măng quý I/2022, bao gồm nội dung gì?</h2></center></p>
        <br>
        <p>
            <b>Định kỳ hàng quý, Ban Biên tập ximang.vn (Hiệp hội xi măng Việt Nam) xuất bản Báo cáo Thị trường Xi măng Việt Nam (Vietnam Cement Market Report - VCMR) nhằm cung cấp các thông tin, số liệu sản xuất và tiêu thụ, thực tế sự biến động các chỉ số thông tin ngành trong nước và Thế giới.</b><br><br>
            Báo cáo VCMR quý I năm 2022 cập nhật bức tranh toàn cảnh về tình hình sản xuất, tiêu thụ, biến động giá và các dự báo về thị trường xi măng trong nước và Thế giới; biến động thị trường của các ngành, lĩnh vực có liên quan đến thị trường xi măng trong quý I năm 2022.<br><br>
            Sau đây là một số hình ảnh, bảng biểu, số liệu trong báo cáo.
        </p>
        <br>
        <p class="img"><img class="baiviet-img" src="http://localhost/vatlxd/public/img/sukien2.1.png" alt=""></p>
        <br>
        <p>
           Và nhiều thông tin hữu ích khác ... <br>
           VCMR được xuất bản thành 2 phiên bản, tiếng Việt và tiếng Anh.<br>
        </p>
        <p class="img"><img class="baiviet-img" src="http://localhost/vatlxd/public/img/sukien2.2.png" alt=""></p>
        <p>
            xin trân trọng giới thiệu đến quý độc giả
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
