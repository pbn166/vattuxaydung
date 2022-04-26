<!-- <?php
	// require('layouts/header.php');

	// if (isset($_GET['controller'])) {
	// 	$controller = $_GET['controller'];
	// } else {
	// 	$controller = '';
	// }

	// switch ($controller) {
	// 	case 'test':
	// 		echo "trang test";
	// 		break;
		
	// 	default:
	// 		require('pages/home.php');
	// 		break;
	// }

	// require('layouts/footer.php')  -->
	


	<?php
    include('../admin/config/config.php');
    session_start();
    if(!isset($_SESSION['username'])){
        header('location: dangnhap.php');
    }
?>

<?php
//    session_start();
      // session_destroy();
      if (!isset($_SESSION['username'])) {
          header("location: ./dangnhap.php");
      }
  ?>