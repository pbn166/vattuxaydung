<<<<<<< Updated upstream
<?php
require_once __DIR__ . '../../../modules/model/Products.php';
$product = new Products();

if(isset($_POST['MaSP'])) {
            
    if($product->deleProductbyID($_POST['MaSP'])){
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
=======
<?php
require_once __DIR__ . '../../../modules/model/Products.php';
$product = new Products();

if(isset($_POST['MaSP'])) {
            
    if($product->deleProductbyID($_POST['MaSP'])){
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
>>>>>>> Stashed changes
