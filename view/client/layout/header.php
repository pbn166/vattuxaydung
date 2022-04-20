
<div id="header">
    <div id="he1">
        <a href="http://localhost/vatlxd" class="link-header-home">
            <img style="width: 100%; height: 100%; padding: 10px;" src="http://localhost/vatlxd/public/img/logo.png" alt="">
        </a>
    </div>
    <div id="he2">
        <div id="he2-1">
            <form action="" id="search">
                <input type="text" placeholder="Nhập từ khóa tìm kiếm" list="topics" id="input" name="search">
                <button type="submit" id="submit"><i class="fas fa-search"></i> &ensp; Tìm kiếm</button>
            </form>
            <datalist id="topics">
                <option value="Thép cuộn Hòa Phát">
                <option value="Lưới B40">
                <option value="Kẽm gai">
            </datalist>
        </div>
        <div id="he2-2">
            <ul id="luachon">
                <li><a href="http://localhost/vatlxd/?router=trangchu">Trang chủ</a></li>
                <li><a href="">Sản phẩm</a>
                </li>
                <li><a href="">Giới thiệu</a></li>
                <li><a href="">Tin tức</a></li>
                <li><a href="">Liên hệ</a></li>
            </ul>
        </div>
    </div>
    <div id="he4">
        <div id="he4-1">
            <div id="cart">
                <a href="http://localhost/vatlxd/?router=giohang" class="link-header"><i class="fas fa-shopping-cart icon-cart icon-header"><span class="count-cart">0</span></i>Giỏ hàng</a>

            </div>
            
        </div>
        <div id="he4-2">
            <?php 
                require __DIR__.'../../../../modules/model/Accounts.php';
                $account =  new Accounts();
                if($account->isLogin()) {
            ?>
            <div id="a2">
                <a href="" class="link-header"><i class="fas fa-user icon-header"></i> <?php $account->getNameBySession(); ?> <i class="fas fa-caret-down"></i></a>
                <ul class="dropdown-header">
                    <li><a href="http://localhost/vatlxd/?router=thongtintaikhoan" class="link-header">Thông tin tài khoản</a></li>
                    <li><a href="" class="link-header">Đổi mật khẩu</a></li>
                    <li><a href="http://localhost/vatlxd/?router=dangxuat" class="link-header">Đăng xuất</a></li>
                </ul>
            </div>
            
            <?php } else {?>
                <div id="a2">
                <i class="fas fa-user icon-header"></i>
                <a href="http://localhost/vatlxd/?router=dangnhap" class="link-header d-inline">Đăng nhập</a><b>/</b>
                <a href="http://localhost/vatlxd/?router=dangky" class="link-header d-inline">Đăng ký</a>
            </div>

            <?php } ?>
        </div>
    </div>
</div>