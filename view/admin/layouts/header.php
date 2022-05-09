
<div id="header">
    <div id="he1">
        <a href="http://localhost/vatlxd" class="link-header-home">
            <img style="width: 80%; height: 80%; padding: 5px;" src="http://localhost/vatlxd/public/img/logo.png" alt="">
        </a>
    </div>
    <div id="he2">
       
        <div id="he2-2">
            <ul id="luachon">
                <li><a href="http://localhost/vatlxd/?router=trangchu">Trang chủ</a></li>
               
            </ul>
        </div>
    </div>
    <div id="he4">
    
    
        <div id="he4-2">
            <?php 
                require __DIR__.'../../../../modules/model/Accounts.php';
                $account =  new Accounts();
                if($account->isLogin()) {
            ?>
            <div id="a2">
                <a href="" class="link-header"><i class="fas fa-user icon-header"></i> 
                <?php $account->getAdminBySession()?> <i class="fas fa-caret-down"></i></a>
                <ul class="dropdown-header">
                    <li><a href="http://localhost/vatlxd/?router=thongtintaikhoan" class="link-header">Thông tin tài khoản</a></li>
                    <li><a href="" class="link-header">Đổi mật khẩu</a></li>
                    <li><a href="http://localhost/vatlxd/?router=admin&page=dangxuat" class="link-header">Đăng xuất</a></li>
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