<?php
require_once __DIR__ . '../../../modules/model/Producttypes.php';
$producttype = new Producttypes();

if(isset($_POST['ten_loaisanpham'])) {
            
    if($producttype->deleProducttypebyname($_POST['ten_loaisanpham'])){
        header('Content-Type: application/json;');
        echo json_encode(['message' => 'success']);
    }
    else{
        header('Content-Type: application/json;');
        echo json_encode(['message' => 'non success']);

    }

}
else{
    header('Content-Type: application/json;');
    echo json_encode(['message' => 'non success']);
}
