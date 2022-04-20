<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="http://localhost/vatlxd/public/img/logo.png">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
    <link rel="stylesheet" href="http://localhost/vatlxd/public/css/home.css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="http://localhost/vatlxd/public/css/layouts.css">
    <title>Trang chủ</title>
</head>

<body>
    <div class="wapper">
        <!-- header -->
        <?php include('./view/client/layout/header.php'); ?>
        <!-- End header -->

        <!-- Content -->
        <!-- Code trang chu o day -->
        <div id="wrap">
            <div id="content0">
                <div id="cnt0-1">
                    <div class="w3-content w3-display-container" id="slideshow">
                        <img style="width: 100%; height: 100%; border-radius: 5px;" class="mySlides" src="https://www.congtythietke.co/uploads/category/vat-lieu-xay-dung_1625038991.jpg">
                        <img style="width: 100%; height: 100%; border-radius: 5px;" class="mySlides" src="https://buiphat.vn/uploaded/kienthuc/cac-loai-vat-lieu-xay-dung-moi.jpg">
                        <img style="width: 100%; height: 100%; border-radius: 5px;" class="mySlides" src="https://www.congtythietke.co/uploads/contents/thi-truong-vat-lieu-xay-dung_1625038871.jpg">
                        <img style="width: 100%; height: 100%; border-radius: 5px;" class="mySlides" src="https://bizweb.dktcdn.net/100/398/008/articles/chon-vat-lieu-xay-dung.jpg?v=1620118345600">
                        <button class="w3-button w3-black w3-display-left" onclick="plusDivs(-1)">&#10094;</button>
                        <button class="w3-button w3-black w3-display-right" onclick="plusDivs(1)">&#10095;</button>
                    </div>
                    <script>
                        var slideIndex = 1;
                        showDivs(slideIndex);

                        function plusDivs(n) {
                            showDivs(slideIndex += n);
                        }

                        function showDivs(n) {
                            var i;
                            var x = document.getElementsByClassName("mySlides");
                            if (n > x.length) {
                                slideIndex = 1
                            }
                            if (n < 1) {
                                slideIndex = x.length
                            }
                            for (i = 0; i < x.length; i++) {
                                x[i].style.display = "none";
                            }
                            x[slideIndex - 1].style.display = "block";
                        }
                    </script>

                </div>
                <div id="cnt0-2">
                    <div id="cnt02a">
                        <img style="width: 100%; height: 100%; border-radius: 5px;" src="https://cf.shopee.vn/file/47b26a12d96788aebb0d9c5e6ecaa7c8">
                    </div>

                    <div id="cnt02b">
                        <img style="width: 100%; height: 100%; border-radius: 5px;" src="https://magiamgiashopee.com/wp-content/uploads/2019/05/sieu-giam-gia-shopee.jpg">
                    </div>
                </div>
            </div>
            <!-- <div id="content4">
                danh cho ban
            </div> -->
            <div id="content1">
                <div id="category">
                    <br>
                    <b>DANH MỤC SẢN PHẨM</b>
                </div>
                <div id="product">
                    <div class="prod">
                        <div class="prd prd-1">
                            <div class="ctg_i">
                                <img style="width: 100%; height: 100%; border-radius: 5px;" src="https://satthepxaydung.com.vn/wp-content/uploads/2021/01/gia-sat-thep-xay-dung-viet-nam-giam-gia_400x300.jpg" alt="">
                            </div>
                            <div class="ctg_n">
                                <a href="">
                                    <div class="edit">Sắt - Thép</div>
                                </a>
                            </div>
                        </div>
                        <div class="prd prd-1">
                            <div class="ctg_i">
                                <img style="width: 100%; height: 100%; border-radius: 5px;" src="https://nhamaysatthep.vn/wp-content/uploads/2020/11/cat-trang-1.jpg" alt="">
                            </div>
                            <div class="ctg_n">
                                <a href="">
                                    <div class="edit">Cát</div>
                                </a>
                            </div>
                        </div>
                        <div class="prd prd-1">
                            <div class="ctg_i">
                                <img style="width: 100%; height: 100%; border-radius: 5px;" src="https://nhamaysatthep.vn/wp-content/uploads/2020/11/1-3.jpg" alt="">
                            </div>
                            <div class="ctg_n">
                                <a href="">
                                    <div class="edit">Đá</div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="prod">
                        <div class="prd prd-2">
                            <div class="ctg_i">
                                <img style="width: 100%; height: 100%; border-radius: 5px;" src="http://www.phudien.vn/upload/Product%20400x200/Gach-tuynel-4-lo---Phu-Dien-.jpg" alt="">
                            </div>
                            <div class="ctg_n">
                                <a href="">
                                    <div class="edit">Gạch</div>
                                </a>
                            </div>
                        </div>
                        <div class="prd prd-2">
                            <div class="ctg_i">
                                <img style="width: 100%; height: 100%; border-radius: 5px;" src="https://www.tradeline.vn/Thumb.ashx?s=240&file=/UploadImages/users/upload/member/SIAMCITY/22111808531253insee-betong-san-tradelinejpg0.jpg" alt="">
                            </div>
                            <div class="ctg_n">
                                <a href="">
                                    <div class="edit">Bê tông</div>
                                </a>
                            </div>
                        </div>
                        <div class="prd prd-2">
                            <div class="ctg_i">
                                <img style="width: 100%; height: 100%; border-radius: 5px;" src="https://www.tradeline.vn/Thumb.ashx?s=240&file=/UploadImages/users/upload/member/VATTUHAUGIANG/28031909200520bao-xi-mang-tay-do-export-tradelinejpg0.jpg" alt="">
                            </div>
                            <div class="ctg_n">
                                <a href="">
                                    <div class="edit">Xi măng</div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div></div>
            </div>
            <div id="content2">

                <div class="con2-1">
                    <div id="con211">XU HƯỚNG TIỀM KIẾM</div>
                    <a href="">
                        <div id="con212">XEM THÊM <i class="fas fa-angle-right"></i></div>
                    </a>
                </div>
                <div class="con2-2">
                    <a class="con22" href="">
                        <div class="con221">
                            <div class="con-tt">Phân bón hữu cơ</div>
                            <div class="con-sl">150+ sản phẩm</div>
                        </div>

                        <div class="con222img">
                            <img style="height: 100%; width: 100%;" src="https://product.hstatic.net/200000239387/product/phan_bon_npk_dau_bo_19-12-8_5s_1kg_55c0b35cd8384626845e75a5db1e792a_1024x1024.jpg" alt="">
                        </div>
                    </a>

                    <a class="con22" href="">
                        <div class="con221">
                            <div class="con-tt">Máy cắt cỏ</div>
                            <div class="con-sl">100+ sản phẩm</div>
                        </div>

                        <div class="con222img">
                            <img style="height: 100%; width: 100%;" src="https://kingsport.vn/image/catalog/product/may_cat_co/M_y_c_t_c_Shindaiwa_260.png" alt="">
                        </div>
                    </a>

                    <a class="con22" href="">
                        <div class="con221">
                            <div class="con-tt">Phâm đạm</div>
                            <div class="con-sl">60+ sản phẩm</div>
                        </div>

                        <div class="con222img">
                            <img style="height: 100%; width: 100%;" src="https://product.hstatic.net/1000269461/product/phan-bon-ure-dam-phu-my_89c43f2bfccb45babe76bee869033818_master.jpg" alt="">
                        </div>
                    </a>

                    <a class="con22" href="">
                        <div class="con221">
                            <div class="con-tt">Kéo cắt cành</div>
                            <div class="con-sl">50+ sản phẩm</div>
                        </div>

                        <div class="con222img">
                            <img style="height: 100%; width: 100%;" src="https://www.ketnoitieudung.vn/data/bt10/keo-cat-canh-tolsen-31018-1512958240.jpg" alt="">
                        </div>
                    </a>

                    <a class="con22" href="">
                        <div class="con221">
                            <div class="con-tt">Bình tưới cây</div>
                            <div class="con-sl">50+ sản phẩm</div>
                        </div>

                        <div class="con222img">
                            <img style="height: 100%; width: 100%;" src="https://thapxanh.com/images/thumbs/0018917_binh-xit-tuoi-cay-8-lit-dudaco-binh-tuoi-phun-suong-binh-phun-thuoc-tru-sau-phun-thuoc-muoi-moi.jpeg" alt="">
                        </div>
                    </a>
                </div>
            </div>
            <!-- <div id="content3">
                best seller
            </div> -->

            <div id="content5">
                <div class="con5-1">
                    <h3><b>BÀI VIẾT NỔI BẬT</b> </h3>
                </div>
                <div class="con5-2">


                    <article class="con5-2-1">
                        <a class="thea" href="">
                            <h4>QUY TRÌNH TRỒNG VÀ CHẮM SÓC CÂY MAI ĐÚNG KỸ THUẬT</h4>
                        </a>
                        <img class="theimg" src="http://localhost/santmdt/public/img/hoa-mai-vang.jpg" alt="">
                        <p class="thep">Mai có xuất xứ từ cây hoang dại, có khả năng thích ứng tốt với điều kiện khí hậu nhiệt đới,
                            đặc biệt với khí hậu miền Nam. Cây mai sinh trưởng và phát triển mạnh,
                            có tuổi thọ cao và nếu được chăm sóc chu đáo sẽ cho hoa nhiều và có màu sắc đẹp.</p>
                    </article>
                    <article class="con5-2-1">
                        <a class="thea" href="">
                            <h4>QUY TRÌNH TRỒNG VÀ CHẮM SÓC CÂY CÀ PHÊ ĐÚNG KỸ THUẬT</h4>
                        </a>
                        <img class="theimg" src="http://localhost/santmdt/public/img/ky_thuat_trong_ca_phe.jpg" alt="">
                        <p class="thep">Mai có xuất xứ từ cây hoang dại, có khả năng thích ứng tốt với điều kiện khí hậu nhiệt đới,
                            đặc biệt với khí hậu miền Nam. Cây mai sinh trưởng và phát triển mạnh,
                            có tuổi thọ cao và nếu được chăm sóc chu đáo sẽ cho hoa nhiều và có màu sắc đẹp.</p>

                    </article>
                    <article class="con5-2-1">
                        <a class="thea" href="">
                            <h4>GIỚI THIỆU QUY TRÌNH TRỒNG XOÀI, HƯỚNG DẪN CHĂM SÓC CÂY XOÀI</h4>
                        </a>
                        <img class="theimg" src="http://localhost/santmdt/public/img/cay-xoai-6.jpg" alt="">
                        <p class="thep">Giới thiệu quy trình kỹ thuật trồng cà phê, hướng dẫn chăm sóc cây cà phê cho năng suất cao và ổn định.
                            Ngoài việc lựa chọn giống cà phê đạt tiêu chuẩn, có xuất xứ rõ ràng, thì kỹ thuật trồng cũng quyết định không nhỏ đến sinh trưởng và năng suất của vườn cà phê.
                        </p>

                    </article>
                </div>

                            
            </div>
        </div>
        <!-- End content -->

        <!-- footer -->
        <?php include('./view/client/layout/footer.php'); ?>
        <!-- End footer -->
    </div>

</body>

</html>