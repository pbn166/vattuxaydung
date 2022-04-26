<?php
require_once './router/Route.php';
$route = new Route();
$route->add('dangnhap','client/dangnhap.php');
$route->add('dangxuat','client/dangxuat.php');
$route->add('dangky','client/dangky.php');
$route->add('giohang','client/giohang.php');
$route->add('yeuthich','client/yeuthich.php');
$route->add('sanpham','client/sanpham.php');
$route->add('chitietsp','client/chitietsp.php');
$route->add('tintuc','client/tintuc.php');
$route->add('tintuc1','client/tintuc1.php');
$route->add('tintuc2','client/tintuc2.php');
$route->add('tintuc3','client/tintuc3.php');
$route->add('sukien1','client/sukien1.php');
$route->add('sukien2','client/sukien2.php');
$route->add('kinhdoanh1','client/kinhdoanh1.php');
$route->add('kinhdoanh2','client/kinhdoanh2.php');
$route->add('thongtintaikhoan','client/thongtintaikhoan.php');
$route->add('trangchu','client/trangchu.php');
$route->add('lienhe','client/lienhe.php');
$route->add('gioithieu','client/gioithieu.php');
//admin
$route->add('admin','public/admin/home.php','trangchu');