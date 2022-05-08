<?php

require_once __DIR__ . '../../../database/dbConnect.php';

class Member extends dbConnect
{
    public function addMember($username, $name, $phone, $email)
    {
        $stmt = $this->connect()->prepare('INSERT INTO `khachhang`(`TEN_DANG_NHAP`, `ten_khachhang`, `SDT`, `Email`) VALUES (?,?,?,?)');
        $stmt->setFetchMode(PDO::FETCH_ASSOC);
        if ($stmt->execute(array($username, $name, $phone, $email))) {
            return true;
        } else {
            return false;
        }
    }

    

    public function getAMember() {

    }
}
