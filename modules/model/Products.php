<<<<<<< Updated upstream
<?php

require_once __DIR__ . '../../../database/dbConnect.php';
class Products extends dbConnect
{
    public function addProduct( $DM, $Loai, $Ten, $Hinh, $Ma, $NCC, $XX, $Mota, $Gia, $DonVi)
    {
        $stmt = $this->connect()->prepare('INSERT INTO `sanpham`( `DanhMucSP`,`LoaiSP`,`TenSP`,`HinhAnhSP`,`MaSP`,`NhaCungCap`,`XuatXu`,`MoTa`,`GiaSP`,`DonViTinh`) VALUES (?,?,?,?,?,?,?,?,?,?)');
        $stmt->setFetchMode(PDO::FETCH_ASSOC);
        if ($stmt->execute(array( $DM, $Loai, $Ten, $Hinh, $Ma, $NCC, $XX, $Mota, $Gia, $DonVi))) {
            return true;
        } else {
            return false;
        }
    }

    public function addMemberProduct( $DM, $Loai, $Ten, $Hinh, $Ma, $NCC, $XX, $Mota, $Gia, $DonVi)
    {
        $stmt = $this->connect()->prepare('INSERT INTO `sanpham`( `DanhMucSP`,`LoaiSP`,`TenSP`,`HinhAnhSP`,`MaSP`,`NhaCungCap`,`XuatXu`,`MoTa`,`GiaSP`,`DonViTinh`) VALUES (?,?,?,?,?,?,?,?,?,?)');
        $stmt->setFetchMode(PDO::FETCH_ASSOC);
        if ($stmt->execute(array( $DM, $Loai, $Ten, $Hinh, $Ma, $NCC, $XX, $Mota, $Gia, $DonVi))) {
            return true;
        } else {
            return false;
        }
    }

    public function getProductbyID($Ma){
        $stmt = $this->connect()->prepare('Select * from `sanpham` where `MaSP` = ?');
        $stmt->setFetchMode(PDO::FETCH_ASSOC);
        if ($stmt->execute(array($Ma))) {
            return ($stmt->fetchAll()) ;
        } else {
            return false;
        }
    }

   

    public function deleProductbyID($Ma){
        $stmt = $this->connect()->prepare('DELETE FROM `sanpham` WHERE `MaSP` = ?');
        $stmt->setFetchMode(PDO::FETCH_ASSOC);
        if ($stmt->execute(array( $Ma))) {
            return true;
        } else {
            return false;
        }
    }
    public function updateProduct( $DM, $Loai, $Ten, $Hinh, $NCC, $XX, $Mota, $Gia, $DonVi, $Ma)
    {
        $stmt = $this->connect()->prepare('UPDATE `sanpham` SET `DanhMucSP`=?,`LoaiSP`=?,`TenSP`=?,`HinhAnhSP`=?,`NhaCungCap`=?,`XuatXu`=?,`MoTa`=?,`GiaSP`=?,`DonViTinh`=? WHERE `MaSP`=?');
        $stmt->setFetchMode(PDO::FETCH_ASSOC);
        if ($stmt->execute(array( $DM, $Loai, $Ten, $Hinh, $NCC, $XX, $Mota, $Gia, $DonVi,$Ma))) {
            return true;
        } else {
            return false;
        }
    }

    
}
=======
<?php

require_once __DIR__ . '../../../database/dbConnect.php';
class Products extends dbConnect
{
    public function addProduct( $DM, $Loai, $Ten, $Hinh, $Ma, $NCC, $XX, $Mota, $Gia, $DonVi)
    {
        $stmt = $this->connect()->prepare('INSERT INTO `sanpham`( `DanhMucSP`,`LoaiSP`,`TenSP`,`HinhAnhSP`,`MaSP`,`NhaCungCap`,`XuatXu`,`MoTa`,`GiaSP`,`DonViTinh`) VALUES (?,?,?,?,?,?,?,?,?,?)');
        $stmt->setFetchMode(PDO::FETCH_ASSOC);
        if ($stmt->execute(array( $DM, $Loai, $Ten, $Hinh, $Ma, $NCC, $XX, $Mota, $Gia, $DonVi))) {
            return true;
        } else {
            return false;
        }
    }

    public function addMemberProduct( $DM, $Loai, $Ten, $Hinh, $Ma, $NCC, $XX, $Mota, $Gia, $DonVi)
    {
        $stmt = $this->connect()->prepare('INSERT INTO `sanpham`( `DanhMucSP`,`LoaiSP`,`TenSP`,`HinhAnhSP`,`MaSP`,`NhaCungCap`,`XuatXu`,`MoTa`,`GiaSP`,`DonViTinh`) VALUES (?,?,?,?,?,?,?,?,?,?)');
        $stmt->setFetchMode(PDO::FETCH_ASSOC);
        if ($stmt->execute(array( $DM, $Loai, $Ten, $Hinh, $Ma, $NCC, $XX, $Mota, $Gia, $DonVi))) {
            return true;
        } else {
            return false;
        }
    }

    public function getProductbyID($Ma){
        $stmt = $this->connect()->prepare('Select * from `sanpham` where `MaSP` = ?');
        $stmt->setFetchMode(PDO::FETCH_ASSOC);
        if ($stmt->execute(array($Ma))) {
            return ($stmt->fetchAll()) ;
        } else {
            return false;
        }
    }

   

    public function deleProductbyID($Ma){
        $stmt = $this->connect()->prepare('DELETE FROM `sanpham` WHERE `MaSP` = ?');
        $stmt->setFetchMode(PDO::FETCH_ASSOC);
        if ($stmt->execute(array( $Ma))) {
            return true;
        } else {
            return false;
        }
    }
    public function updateProduct( $DM, $Loai, $Ten, $Hinh, $NCC, $XX, $Mota, $Gia, $DonVi, $Ma)
    {
        $stmt = $this->connect()->prepare('UPDATE `sanpham` SET `DanhMucSP`=?,`LoaiSP`=?,`TenSP`=?,`HinhAnhSP`=?,`NhaCungCap`=?,`XuatXu`=?,`MoTa`=?,`GiaSP`=?,`DonViTinh`=? WHERE `MaSP`=?');
        $stmt->setFetchMode(PDO::FETCH_ASSOC);
        if ($stmt->execute(array( $DM, $Loai, $Ten, $Hinh, $NCC, $XX, $Mota, $Gia, $DonVi,$Ma))) {
            return true;
        } else {
            return false;
        }
    }

    
}
>>>>>>> Stashed changes
?>