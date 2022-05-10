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
        <?php
   
           
            $accounts = $account->getAllLSP();
         

        ?>
        <!-- Content -->
        <!-- Code trang chu o day -->
        <div id="wrap">
            <div id="content0">
                <div id="cnt0-1">
                    <div class="w3-content w3-display-container" id="slideshow">
                        <img style="width: 100%; height: 100%; border-radius: 5px;" class="mySlides" src="https://www.congtythietke.co/uploads/category/vat-lieu-xay-dung_1625038991.jpg">
                        
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
                    <?php
                        foreach($accounts as $key => $value) {
                    ?>
                    <div class="prod">
                        <div class="prd prd-1">
                            <div class="ctg_i">
                                <img src="public/img/LSP/<?php echo $value['HinhAnhLSP'] ?>" alt="">
                            </div>
                            <div class="ctg_n">
                                <a href="http://localhost/vatlxd/?router=danhmuc&DanhMucSP=<?php echo $value['DanhMucSP'] ?>">
                                    <div class="edit"><?php echo $value['ten_loaisanpham'] ?></div>
                                </a>
                            </div>

                        </div>
                    </div>
                    <?php }; ?>
                </div>    
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
                            <div class="con-tt">Thép cuộn</div>
                            <div class="con-sl">10+ sản phẩm</div>
                        </div>

                        <div class="con222img">
                            <img style="height: 100%; width: 100%;" src="https://www.tradeline.vn/Thumb.ashx?s=500&file=/UploadImages/users/upload/member/THANHCONGINDEX/280818021817thephoaphat68jpg.jpg" alt="">
                        </div>
                    </a>

                    <a class="con22" href="">
                        <div class="con221">
                            <div class="con-tt">Dây thép</div>
                            <div class="con-sl">10+ sản phẩm</div>
                        </div>

                        <div class="con222img">
                            <img style="height: 100%; width: 100%;" src="https://www.tradeline.vn/Thumb.ashx?s=500&file=/UploadImages/users/upload/member/KIMTINGROUP/02051902134113day-thep-buoc-nikkojpg0.jpg"alt="">
                        </div>
                    </a>

                    <a class="con22" href="">
                        <div class="con221">
                            <div class="con-tt">Đá 4x6</div>
                            <div class="con-sl">10+ sản phẩm</div>
                        </div>

                        <div class="con222img">
                            <img style="height: 100%; width: 100%;" src="https://www.tradeline.vn/Thumb.ashx?s=500&file=/UploadImages/users/upload/member/LUONGTHANHDAT/17121804450745da-4x6-tradelinejpg0.jpg" alt="">
                        </div>
                    </a>

                    <a class="con22" href="">
                        <div class="con221">
                            <div class="con-tt">Bê tông chịu nhiệt</div>
                            <div class="con-sl">10+ sản phẩm</div>
                        </div>

                        <div class="con222img">
                            <img style="height: 100%; width: 100%;" src="https://www.tradeline.vn/Thumb.ashx?s=500&file=/UploadImages/users/upload/member/CHIULUAHUNGDAO/23111803073607be-tong-chiu-lua-tradelinejpg0.jpg" alt="">
                        </div>
                    </a>

                    <a class="con22" href="">
                        <div class="con221">
                            <div class="con-tt">Xi măng</div>
                            <div class="con-sl">10+ sản phẩm</div>
                        </div>

                        <div class="con222img">
                            <img style="height: 100%; width: 100%;" src="https://www.tradeline.vn/Thumb.ashx?s=500&file=/UploadImages/users/upload/member/VLXDBINHDUONG/050918110720796x796zmaxxi-mang-holcimjpg.jpg" alt="">
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
                            <h4>CƯ DÂN CĂN HỘ "TRIỆU ĐÔ" TRUNG TÂM QUẬN 1 LÀ AI? </h4>
                        </a>
                        <img class="theimg" src="https://www.tradeline.vn/Thumb.ashx?s=370&file=/https://cdn.24h.com.vn/upload/1-2019/images/2019-01-22/Cu-dan-can-ho-trieu-do-trung-tam-quan-1-la-ai-can-ho-trieu-do-4-1548119975-81-width660height368.jpg" alt="">
                        <p class="thep">Bà Elena Goh – nhà đầu tư bất động sản người Singapore là một trong những chủ nhân đầu tiên
						của The Grand Manhattan. Bà cho biết: “TP.HCM là một thị trường mà vợ chồng tôi đã để ý từ lâu. Khi dự án vừa ra mắt, 
						chúng tôi đã quyết định ngay mà không cần đắn đo gì cả.</p>
                    </article>
                    <article class="con5-2-1">
                        <a class="thea" href="">
                            <h4>THỪA THIÊN - HUẾ: XÂY DỰNG CÔNG TRÌNH TRÁI PHÉP THÁCH THỨC DƯ LUẬN</h4>
                        </a>
                        <img class="theimg" src="https://www.tradeline.vn/Thumb.ashx?s=370&file=/https://bxdgate.baoxaydung.com.vn/stores/news_dataimages/hiep/032020/26/10/4128_image001.jpg" alt="">
                        <p class="thep">(Xây dựng) - Liên tục bị xử phạt vi phạm về trật tự xây dựng công trình cư xá Vỹ Dạ, kiệt 138 Nguyễn Sinh Cung
						(thành phố Huế), nhưng không hiểu vì lý do gì, chủ đầu tư vẫn ngang nhiên xây vượt thêm 2 tầng so với giấy phép xây dựng mà 
						không gặp bất cứ trở ngại nào từ phía chính quyền địa phương.</p>

                    </article>
                    <article class="con5-2-1">
                        <a class="thea" href="">
                            <h4>PHỤ GIA KÉO DÀI THỜI GIAN NINH KẾT</h4>
                        </a>
                        <img class="theimg" src="https://www.tradeline.vn/UploadImages/phu%20gia%20keo%20dai%20thoi%20gian%20ninh%20ket(1)-min.png" alt="">
                        <p class="thep">Giống như tên của nó, phụ gia kéo dài thời gian ninh kết có tác dụng kéo dài thời gian ninh kết của hỗn hợp bê tông. Tác dụng của phụ gia biểu hiện ở các mức độ khác nhau, phụ thuộc vào tính chất của xi măng, liều lượng sử dụng. Cần lưu ý khi sử dụng quá liều lượng sẽ làm chậm đáng kể thời gian ninh kết.
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