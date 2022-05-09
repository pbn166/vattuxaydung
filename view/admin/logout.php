<?php
require_once __DIR__ . '../../../modules/model/Accounts.php';
$account = new Accounts();
$account->logout();
header('location: http://localhost/vatlxd/?router=admin&page=dangnhap');