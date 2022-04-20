<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="http://localhost/vatlxd/public/img/logo.png">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
    <link rel="stylesheet" href="http://localhost/vatlxd/public/css/layouts.css">
    
    
    <title>Tin tức</title>
</head>

<style>

.sidebar-baiviet{
    width: 98%;
    height: 1400px;
    background-color: rgb(255, 255, 255);
    display: flex;
    flex-direction: column;
    margin-bottom: 10px;
}

.a{
    flex-basis: 10%;
    text-align: center;
    background-color: rgb(255, 255, 255);
}


.tt{
    flex-basis: 10%;
    text-align: center;
    
}
.b{
    flex-basis: 200%;
    display: flex;
    justify-content: space-evenly;
    float:right;
    width:auto;
}

.sidebar{
    flex-basis: 35%;
    position: relative;
}

.hinhanh{
    flex-basis: 65%;
   
    
    position: relative;
    box-shadow: 5px 5px 3px #ffffff;
}
.the_a{
    position: absolute;
    

    width: 100%;
    background-color: orange;
    height: 15%;
    top: 0;
    
}
.baiviet-img{
    width: 50%;
    height: 80%;
    position: absolute;
    bottom: 0;
    left: 0;
}
.the_p{
    width: 50%;
    height: 85%;
    position: absolute;
    bottom: 10;
    right: 0;
    font-size: 22px;
    padding: 5%;
    box-sizing: border-box;
    text-align:  justify;
}

.h{
    font-size: 22px;
    border-radius: 25px
}

.hh{
    font-size: 20px;
    border-radius: 25px
}

.danhmuc{
    text-align: center;
    font-size: 20px;
    height: auto;
}

.meow{
    background-color: orange;   
    margin-left: 90px;
    margin-right: 90px;
    border-radius: 20px;
    text-align: justify;
    padding-left: 10px ;
    padding-bottom: 10px;
    padding-right:10px ;
}
a{
    color: brown;
}
.meow a{
    color:white;
}

.meow a:hover{
    color: brown;
}

.the_p a{
    color: black;
}

.the_p a:hover{
    color: orange;
}
</style>

<body>
<div class="wapper">
    <!-- header -->
    <?php include('./view/client/layout/header.php'); ?>
    <!-- End header -->
        <br>
        <div class="sidebar-baiviet">
            <div class="a">
                <h1>BÀI VIẾT MỚI NHẤT<h1>
            </div>
            <br>
            <br>
            <!-- SIDEBAR -->
            <div class="b">
                <article class="sidebar">
                    <div class="h">
                        <h1><center>Các loại tin tức</center></h1>
                    </div>
                    <br>
                    <div class="danhmuc">
                        <div class="meow">
                            <ul>
                                <b><center>Sự kiện</b></center>
                                <li><a href="http://localhost/vatlxd/?router=sukien1">1.Khai mạc Tuần lễ giao thương quốc tế đồ gỗ và nội thất 2022</a></li>
                                <li><a href="http://localhost/vatlxd/?router=sukien2">2.Báo cáo thị trường xi măng quý I/2022, bao gồm nội dung gì?</a></li>
                            </ul>
                            <ul>
                                <b><center>Kinh doanh - đầu tư</center></b>
                                <li><a href="http://localhost/vatlxd/?router=kinhdoanh1">1.Hiệp hội Thép Thế giới dự báo nhu cầu sử dụng thép chỉ tăng 0,4% trong năm 2022</a></li>
                                <li><a href="http://localhost/vatlxd/?router=kinhdoanh2">2.Thị trường năng lượng Thế giới tồn tại nhiều bất ổn</a></li>
                            </ul>
                        </div>
                    </div>
                   
                </article>

            <!-- SIDEBAR -->
            <!-- BÀI VIẾT -->
                <article class="hinhanh">
                    <div class="the_a">
                        <br>
                        <h2><center>ĐẰNG SAU CÂU CHUYỆN HÀNG TỒN KHO</center></h2>
                    </div>
                    <img class="baiviet-img" src="http://localhost/vatlxd/public/img/tintuc2.png" alt="">
                    <p class="the_p">Hàng tồn kho mặc dù đã giảm dần trong thời gian qua nhưng cũng kéo theo sự suy giảm đáng lo ngại
                         về chỉ số sản xuất của doanh nghiệp, đồng thời cho thấy doanh nghiệp trong nước có thể...
                        <br>
                        <a href="http://localhost/vatlxd/?router=tintuc2">
                            >>Xem Thêm
                        </a>
                        <br>
                    </p>

                </article>  

</div>
            <br>



            
            <div class="b">
                <article class="sidebar">

                </article>

                <article class="hinhanh">
                    <div class="the_a">
                        <br>
                        <h2><center>GIÁ THÉP BẮT ĐẦU TĂNG THEO GIÁ ĐIỆN</center></h2>
                    </div>
                    <img class="baiviet-img" src="http://localhost/vatlxd/public/img/tintuc1.png" alt="">
                    <p class="the_p">Một số nhà thầu xây dựng, đại lý sắt thép và nhà sản xuất thép tại TPHCM cho biết giá thép xây dựng tăng 150.000 đồng/tấn kể từ hôm nay do tác động của giá đầu vào như điện, 
                        chi phí vận chuyển..
                        <br>
                        <a href="http://localhost/vatlxd/?router=tintuc1">
                            >>Xem Thêm
                        </a>
                    </p>
                </article>
</div>
            <br>
            



            <div class="b">
                <article class="sidebar">

                </article>

                <article class="hinhanh">
                    <div class="the_a">
                        <br>
                        <h2><center>VẬT LIỆU XÂY DỰNG ĐIÊU ĐỨNG</center></h2>
                    </div>
                    <img class="baiviet-img" src="http://localhost/vatlxd/public/img/tintuc3.png" alt="">
                    <p class="the_p">
                    Đầu ra thu hẹp, bị chiếm dụng vốn, hàng ế kéo dài... nên các doanh nghiệp ngành xây dựng và vật liệu xây dựng đều lao đao.
                        <br>
                        <a href="http://localhost/vatlxd/?router=tintuc3">
                            >>Xem Thêm
                        </a>
                        <br>
                    </p>
                </article>
</div>

            <br>
            <!-- END BÀI VIẾT -->

            



           
</div>

    
</div>
<!-- footer -->
<?php include('./view/client/layout/footer.php'); ?>
    <!-- End footer -->
</body>
</html>