<?php

require_once __DIR__ . '../../../database/dbConnect.php';
class Producttypes extends dbConnect
{
    public function addProducttype($Ten, $Trangthai)
    {
        $stmt = $this->connect()->prepare('INSERT INTO `loaisanpham`(`ten_loaisanpham`,`trangthai_loaisanpham`) VALUES (?,?)');
        $stmt->setFetchMode(PDO::FETCH_ASSOC);
        if ($stmt->execute(array($Ten, $Trangthai))) {
            return true;
        } else {
            return false;
        }
    }

    public function addMemberProducttype($ID, $Ten,$Trangthai)
    {
        $stmt = $this->connect()->prepare('INSERT INTO `loaisanpham`(`ID_loaisanpham`, `ten_loaisanpham`,`trangthai_loaisanpham`) VALUES (?,?,?)');
        $stmt->setFetchMode(PDO::FETCH_ASSOC);
        if ($stmt->execute(array($ID, $Ten,$Trangthai))) {
            return true;
        } else {
            return false;
        }
    }

    public function deleProducttypebyname($tenloaisanpham){
        $stmt = $this->connect()->prepare('DELETE FROM `loaisanpham` WHERE `ten_loaisanpham` = ?');
        $stmt->setFetchMode(PDO::FETCH_ASSOC);
        if ($stmt->execute(array( $tenloaisanpham))) {
            return true;
        } else {
            return false;
        }
    }

    public function getProducttypebyname($tenloaisanpham){
        $stmt = $this->connect()->prepare('SELECT * FROM `loaisanpham` WHERE `ten_loaisanpham` = ?');
        $stmt->setFetchMode(PDO::FETCH_ASSOC);
        if ($stmt->execute(array($tenloaisanpham))) {
            return ($stmt->fetchAll()) ;
        } else {
            return false;
        }
    }

    public function updateProducttype( $Trangthai, $tenloaisanpham)
    {
        $stmt = $this->connect()->prepare('UPDATE `loaisanpham` SET `trangthai_loaisanpham`=? WHERE `ten_loaisanpham`=?');
        $stmt->setFetchMode(PDO::FETCH_ASSOC);
        if ($stmt->execute(array( $Trangthai, $tenloaisanpham))) {
            return true;
        } else {
            return false;
        }
    }
}
?>