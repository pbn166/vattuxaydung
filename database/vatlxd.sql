-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 25, 2022 lúc 04:01 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `vatlxd`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `ID_admin` int(11) NOT NULL,
  `TEN_DANG_NHAP` varchar(50) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `ten_admin` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `ngaysinh` date DEFAULT NULL,
  `SDT` varchar(10) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `email` varchar(60) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`ID_admin`, `TEN_DANG_NHAP`, `ten_admin`, `ngaysinh`, `SDT`, `email`) VALUES
(4, 'admin', 'admin', '1999-01-01', '0798003703', ' vatlieuxaydung@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `ID_sanpham` char(3) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `ID_donhang` int(11) NOT NULL,
  `soluong` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietgiohang`
--

CREATE TABLE `chitietgiohang` (
  `ID_giohang` int(11) NOT NULL,
  `ID_khachhang` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `ID_donhang` int(11) NOT NULL,
  `ID_khachhang` int(11) DEFAULT NULL,
  `trangthai_donhang` char(2) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `thoigianlap` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang`
--

CREATE TABLE `giohang` (
  `ID_giohang` int(11) NOT NULL,
  `ID_khachhang` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `ID_khachhang` int(11) NOT NULL,
  `TEN_DANG_NHAP` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `ten_khachhang` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `ngaysinh` date DEFAULT NULL,
  `gioitinh` varchar(4) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `SDT` varchar(10) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Email` varchar(60) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `ID_loaikhachhang` char(5) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`ID_khachhang`, `TEN_DANG_NHAP`, `ten_khachhang`, `ngaysinh`, `gioitinh`, `SDT`, `Email`, `ID_loaikhachhang`) VALUES
(3, 'thuthuy24', 'HuynhThiThuThuy', NULL, NULL, '0949392730', 'thuyB1906348@student.ctu.edu.vn', NULL),
(5, 'pbn.166', 'Phan Thi Ai Nhi', NULL, NULL, '0798003703', 'nhipta2016@student.ctu.edu.vn', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaikhachhang`
--

CREATE TABLE `loaikhachhang` (
  `ID_loaikhachhang` char(5) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `ten_loaikhachhang` varchar(40) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `ID_loaisanpham` char(3) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `ten_loaisanpham` varchar(30) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `trangthai_loaisanpham` char(2) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`ID_loaisanpham`, `ten_loaisanpham`, `trangthai_loaisanpham`) VALUES
('BT', 'bê tông', 'y'),
('CĐ', 'cát/ đá', 'y'),
('G', 'gạch xây dựng', 'y'),
('ST', 'Sắt/ Thép xây dựng', 'y'),
('XM', 'xi măng', 'y');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `STT` int(11) DEFAULT NULL,
  `DanhMucSP` varchar(30) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `LoaiSP` varchar(30) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `TenSP` varchar(50) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `HinhAnhSP` varchar(250) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `MaSP` char(3) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `NhaCungCap` varchar(30) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `XuatXu` varchar(20) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `MoTa` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `GiaSP` int(11) DEFAULT NULL,
  `DonViTinh` varchar(11) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`STT`, `DanhMucSP`, `LoaiSP`, `TenSP`, `HinhAnhSP`, `MaSP`, `NhaCungCap`, `XuatXu`, `MoTa`, `GiaSP`, `DonViTinh`) VALUES
(1, 'Sắt/ Thép xây dựng', 'Thép cuộn', 'Thép cuộn Hòa Phát', 'thepcuonhoaphat.png', '001', 'Hòa Phát', 'Việt Nam', 'Trên thị trường thép Hòa Phát hiện nay xuất hiện nhiều sản phẩm giả, không đúng với chất lượng, quy cách ,chủng loại và mẫu mã của sản phẩm.Việc mua phải những sản phẩm giả này sẽ ảnh hưởng tới chất lượng công trình thi công. Do vậy, chúng tôi xin chia sẻ', 14000, 'Kg'),
(2, 'Sắt/ Thép xây dựng', 'Thép cuộn', 'Thép cuộn trơn POMINA', 'thepcuontronPOMINA.png', '002', 'POMINA', 'Việt Nam', 'Thép cuộn dạng dây, cuộn tròn, bề mặt trơn nhẵn có đường kính thông thường là: Ø6mm, Ø8mm\nTiêu chuẩn:\n– Theo TCVN 1651-1:2008: CB240-T, CB300-T', 15000000, 'Tấn'),
(3, 'Sắt/ Thép xây dựng', 'Lưới thép ', 'lưới B40 ', '003.png', '003', 'Thành lợi', 'Việt Nam', 'Sản xuất bằng dây thép mạ kẽm nhúng nóng\n\n– Lớp mạ kẽm dày chống rỉ cực tốt\n\n– Giá thành rẻ, lớp mạ bóng đẹp\n\n– Sản phẩm đạt tiêu chuẩn xuất khẩu và  TCVN 2053-1993, JIS 3521-1991\n\n– Lượng kẽm của dây đạt 40µm  128 > 140  g/m2\n\nvà hàng đạt tiêu chuẩn xuất', 25000, 'mét dài'),
(4, 'Sắt/ Thép xây dựng', 'Lưới thép ', 'Lưới B40 mạ kẽm', 'sp04.png', '004', 'thành lợi steel', 'Việt Nam', 'Lưới thép B40 là sản phẩm lưới thép hàng rào truyền thống có mặt trên thị trường khá sớm, với sự tiện lợi về giá thành rẻ, dễ vận chuyển, thi công lắp đặt dễ dàng, không rỉ sét... đem lại hiệu quả rất lớn và thiết thực cho các công trình xây dựng lớn nhỏ.', 65000, 'mét dài'),
(5, 'Sắt/ Thép xây dựng', 'Lưới thép ', 'lưới b40 bọc nhựa', 'sp05.png', '005', 'KHANH KIỀU', 'Việt Nam', 'Lưới B40 bọc nhựa là sản phẩm sợi dây được mạ kẽm và bọc một lớp nhựa phủ bề ngoài , sau đó qua công đoạn máy đan thành mắt hình trám hay hình vuông có kích thước như : 20-20 , 30-30 , 30-30 , 40-40 , 50-50 , 60-60 , 70-70 (mm)\n\nVới lớp nhựa PVC được bọc ', 78000, 'mét dài'),
(6, 'Sắt/ Thép xây dựng', 'Lưới thép ', 'lưới đan inox', 'sp06.png', '006', 'Trường Phát', 'Việt Nam', '- Lưới inox đan được làm từ lưới inox 304, inox 316, lưới inox 201 tùy theo yêu cầu của khách hàng. Đây là loại lưới có độ bền bỉ cao, khả năng chịu lực tác động lớn nên được ứng dụng trong rất nhiều các ngành nghề.  \n\nCác thông tin về lưới đan inox\n\nMẫu ', 60000, 'KG'),
(7, 'Sắt/ Thép xây dựng', 'Lưới thép ', 'lưới b20', 'sp07.png', '007', 'nam phát', 'Việt Nam', 'Lưới thép b20,.. được dệt từ những sợi thép mạ kẽm nhúng nóng có thể chống oxi hóa và tăng độ bền, màu sáng và thẩm mỹ hơn có đường kính từ 1mm-3 mm , hoặc dây thép chưa mạ hay còn gọi là dây thép đen, Các sợi dây được dệt thành các mắt hình vuông hoặc hì', 14500, 'kg'),
(8, 'Sắt/ Thép xây dựng', 'Thép cuộn', 'Thép Hòa Phát Phi 8', '008.png', '008', 'Hòa Phát', 'Việt Nam', 'Kích thước: Φ8Chủng loại: Thép cuộn tròn trơnTình trạng:Mới 100%Chi tiết đóng gói: Đóng gói theo quy chuẩn', 16000, 'Kg'),
(9, 'Sắt/ Thép xây dựng', 'Thép cuộn', 'Thép cuộn VinaKyoei', '009.png', '009', 'VinaKYoei', 'Việt Nam', 'Tiêu chuẩn: TCVN 3783-83Chủng Loại: Thép cuộnỨng dụng: Dừng để xây dựng kết cấu các công trình', 14500000, 'Tấn'),
(10, 'Sắt/ Thép xây dựng', 'Thép cuộn', 'Thép cuộn Việt Nhật', '010.png', '010', 'Thảo Hiền', 'Việt Nam', 'Thép cuộn dạng dây, cuộn tròn, bề mặt trơn nhẵn có đường kính thông thường là: Ø6mm, Ø8mm\n\nTiêu chuẩn:\n\n– Theo TCVN 1651-1:2008: CB240-T, CB300-T\n\n– Theo JIS G 3505 -2004: SWRM 10, SWRM 12, SWRM 15, SWRM 20', 12500000, 'Tấn'),
(11, 'Sắt/ Thép xây dựng', 'thép thanh vằn', 'Thép thanh vằn việt nhật ', 'sp11.png', '011', 'Thành lợi', 'Việt Nam', 'Thép thanh vằn hay còn gọi là thép cốt bê tông, mặt ngoài có gân, đường kính từ 10mm đến 51mm ở dạng thanh có chiều dài 11,7m/thanh\nĐường kính phổ biến: Ø10, Ø12, Ø14, Ø16, Ø18, Ø20, Ø22, Ø25, Ø28, Ø32, Ø35, Ø36, Ø38, Ø41, Ø43, Ø51', 11000000, 'Tấn'),
(12, 'Sắt/ Thép xây dựng', 'thép thanh vằn', 'thép cây', 'sp12.png', '012', 'hưng phước', 'Việt Nam', 'Thép cây là sản phẩm chủ yếu được sử dụng trong xây dựng có kích cỡ từ Ø10 đến Ø43 dạng cây có gân chiều dài 11m7, thép cây được sử dụng có thể nói là một phần không thể thiếu trong xây dựng. Hiện nay trên thị trừơng thép cây được cung cấp bởi nhiều nhà s', 10800000, 'Tấn'),
(13, 'Sắt/ Thép xây dựng', 'thép thanh vằn', 'thép thanh vằn pomina ', '013.png', '013', 'thành lợi', 'Việt Nam', 'Thép thanh vằn hay còn gọi là thép cốt bê tông, mặt ngoài có gân, đường kính từ 10mm đến 32mm ở dạng thanh có chiều dài 11,7m/thanh\n\nTiêu chuẩn:\n\n– Theo TCVN 1651-2: 2008: CB300-V, CB400-V, CB500-V\n\n– Theo JIS G3112 – 2010:SD 295A, SD 390, SD 490\n\n– Theo ', 11000000, 'Tấn'),
(14, 'Sắt/ Thép xây dựng', 'thép thanh vằn', 'thép hòa phát phi 20', 'sp14.png', '014', 'minh đức', 'Việt Nam', 'Sản phẩm thép Hòa Phát là thép cốt bê tông cán nóng: thép cuộn đường kính Ф6mm, Ф8mm, Ф10mm, cuộn D8mm gai và thép thanh vằn đường kính từ D10mm – D55mm.', 434000, 'cây'),
(15, 'Sắt/ Thép xây dựng', 'thép thanh vằn', 'thép việt ý phi 12', 'sp15.png', '015', 'minh đức', 'Việt Nam', 'đáp ứng các yêu cầu về tiêu chuẩn kỹ thuật cao nhất tại các dự án trọng điểm quốc gia ', 150000, 'cây'),
(16, 'Sắt/ Thép xây dựng', 'thép thanh tròn trơn', 'thép thanh tròn trơn', 'sp16.png', '016', 'gang thép thái nguyên', 'Việt Nam', 'Thép tròn, nhẵn có đường kính từ 9 đến 60mm, dạng thanh có chiều dài từ 6m đến 8,6m và theo yêu cầu của khách hàng.\nĐược đóng bó với khối lượng không quá 5 tấn, sản phẩm được bó ít nhất bằng 3 dây thép hoặc đai.\nCác thông số kích thước, diện tích mặt cắt ', 13000000, 'tấn'),
(17, 'Sắt/ Thép xây dựng', 'thép thanh tròn trơn', 'thép thanh tròn trơn', 'sp17.png', '017', 'HAMINCO', 'Việt Nam', 'Thép tròn trơn có các chủng loại thép từ Ø14 đến Ø50 với thông số kích thước dài 6m; 8.6m; 1.7m hay12m/1 bó tùy theo người dùng,  trọng lượng mỗi bó ~ 1000 kg (6m);  ~ 2000 kg (8.6m) hoặc ~ 3000 kg (11.7m – 12m).', 12000000, 'TẤN'),
(18, 'Sắt/ Thép xây dựng', 'thép thanh tròn trơn', 'thép thanh tròn trơn pomina', 'sp18.png', '018', 'pomina', 'Việt Nam', 'Thép tròn trơn Pomina là một trong những loại thép chính được công ty TNHHTM thép Pomina sản xuất, thép tròn trơn Pomina được sử dụng phổ biến trong các công trình xây dựng, đặc biệt là các công trình xây dựng nhà, các công trình cầu đường, cầu cảng,\n\nVới', 11000000, 'TẤN'),
(19, 'Sắt/ Thép xây dựng', 'thép thanh tròn trơn', 'thép cây trơn miền nam', 'sp19.png', '019', 'Thép Miền Nam', 'Việt Nam', 'hép tròn trơn có các chủng loại thép từ Ø14 đến Ø50 với thông số kích thước dài 6m; 8.6m; 1.7m hay12m/1 bó tùy theo người dùng, trọng lượng mỗi bó ~ 1000 kg (6m); ~ 2000 kg (8.6m) hoặc ~ 3000 kg (11.7m – 12m).', 12000000, 'TẤN'),
(20, 'Sắt/ Thép xây dựng', 'thép thanh tròn trơn', 'thép tròn trơn pimina', 'sp20.png', '020', 'Pomina', 'Việt Nam', 'Vật liệu xây dựng Sài Gòn CMC chuyên cung cấp, phân phối sản phẩm thép tròn trơn Pomina chất lượng số 1 tại Việt Nam. Sản phẩm thép tròn trơn Pomina mà chúng tôi cung cấp cho khách hàng là một trong những sản phẩm thép Pomina tiêu chuẩn chất lượng cao, đá', 11000000, 'tấn'),
(21, 'Sắt/ Thép xây dựng', 'dây thép', 'thép buộc ( mạ kẽm )', 'sp21.png', '021', 'hòa phát', 'Việt Nam', 'Dây thép mềm 1 ly được sử dụng trong xây dựng để buộc bê tông với độ dẻo vật lý và độ bền cao\n\nTiêu chuẩn:\n– TCVN TCVC 197 : 2002.\n– Tiêu chuẩn ISO – 9001 : 2015.\n– Khối lượng tầng kẽm theo tiêu chuẩn TCVN 2053-1993 hoặc theo yêu cầu của khách hàng.\n– Sản', 13500, 'kg'),
(22, 'Sắt/ Thép xây dựng', 'dây thép', 'kẽm gai', 'sp22.png', '022', 'Công ty Khanh Kiều', 'Việt Nam', 'Kẽm gai cuộn là sản phẩm có mặt trên thị trường khá sớm, với sự tiện lợi chất lượng cao các đầu gai sắc nhọn đem lại hiệu quả cao cho các công trình lớn nhỏ.\n\nDây thép gai là sản phẩm phổ thông được sử dụng rộng dãi làm hàng rào bảo vệ trong các công trìn', 14400, 'kg'),
(23, 'Sắt/ Thép xây dựng', 'dây thép', 'dây kẽm buộc đen 1ly-4ly', 'sp23.png', '023', 'Thép Việt Nam', 'Việt Nam', 'Dây thép buộc đen và trắng tính theo Kg.\n\nGiá trên đã bao gồm 10% VAT và giao đến tận công trình', 14000, 'kg'),
(24, 'Sắt/ Thép xây dựng', 'dây thép', 'kẽm dỏe 1 li, 2,5 li', 'sp24.png', '024', 'mười lợi', 'Việt Nam', 'Công dụng:\n\nLà loại dây thép được kéo rút nhỏ lại từ nguồn nguyên liệu kim loại đen thường là sắt 6 hoặc 8, dây xả băng, dây biên…', 13500, 'kg'),
(25, 'Sắt/ Thép xây dựng', 'dây thép', 'thép inox dây cuộn', 'sp25.png', '025', 'Tập Đoàn Thép không gỉ Tiến Đạ', 'Việt Nam', '- Độ cứng: 1/4 Hard & 1/2 Hard, Full hard\n- Độ bóng: Bright (BA)/ Matt (2B)\n- Dễ uốn, dễ gia công, dễ đánh bóng sáng. Không bị đứt trong quá trình gia công.\n- Tiêu chuẩn chất lượng: BS EN 10088-3:2005; TCVN ISO: 9001:2008/ ISO 9001:2008.\n- Hệ thống quản l', 60000, 'kg'),
(26, 'cát/ đá', 'đá 1x2', 'đá 1x2', 'sp26.png', '026', 'CÔNG TY TNHH DV - TM VLXD BÌNH', 'Việt Nam', 'CÔNG TY TNHH DV TM VLXD BÌNH DƯƠNG là công ty chuyên cung cấp uy tín, chuyên nghiệp hàng đầu khu vực BD - TPHCM từ Gạch, cát, đá, xi măng, sắt, thép, gạch men… \n\nVới chiến lược trở thành công ty hàng đầu trong lĩnh vực Phân phối Sỉ & Lẻ các loại vật liệu ', 330, 'mét khối'),
(27, 'cát/ đá', 'đá 1x2', 'đá 1x2 xanh biên hòa', 'sp27.png', '027', 'đá biên hòa', 'Việt Nam', 'Đá 1 x 2 là loại đá có kích cỡ 10 x 28mm ( hoặc nhiều loại kích cỡ khác như: 10 x 25 mm còn gọi là đá 1x2 bê tông; 10 x 22 mm còn gọi là đá 1x2 quy cách ( đá 1x1 ), 10 x 16 mm,... tuy theo nhu cầu sử dụng của khác hàng).\n\nSản phẩm dùng để đổ bê tông làm n', 390, 'mét khối'),
(28, 'cát/ đá', 'đá 1x2', 'đá 1x2 loại đẹp', 'sp28.png', '028', 'kiên cường', 'Việt Nam', 'Sử dụng trong các công trình xây dựng dân dụng, xây dựng công trình cầu đường,\n- Sản xuất bê tông tươi để đổ bê tông làm nhà cao tầng, đường băng sân bay, cầu cảng, đường quốc lộ….\n- Sử dụng sản xuất các cấp phối bê tông khô dùng sản xuất các cấu kiện bê ', 310, 'mét khối'),
(29, 'cát/ đá', 'đá 1x2', 'đá 1x2 đen ', 'sp29.png', '029', 'sài gòn cmc', 'Việt Nam', 'Đá xây dựng 1x2 hay còn gọi là đá 1x2 là loại đá được sản xuất từ các loại đá khác, đá 1x2 thường có kích cỡ đường kính 10x28mm ( ngoài ra đá 1x2 còn được sản xuất theo nhiều kích cỡ khác nhau, tùy thuộc vào nhu cầu của khách hàng đối với từng công trình ', 270, 'mét khối'),
(30, 'cát/ đá', 'đá 1x2', 'đá 1x2 tân uyên đen', 'sp30.png', '030', 'thảo hiền', 'Việt Nam', 'Đá xây dựng 1x2 hay còn gọi là đá 1x2 là loại đá được sản xuất từ các loại đá khác, đá 1x2 thường có kích cỡ đường kính 10x28mm ( ngoài ra đá 1x2 còn được sản xuất theo nhiều kích cỡ khác nhau, tùy thuộc vào nhu cầu của khách hàng đối với từng công trình ', 310, 'mét khối'),
(31, 'cát/ đá', 'đá 2x4', 'đá 2x4 ', 'sp31.png', '031', 'CÔNG TY TNHH XÂY DỰNG VẬN TẢI ', 'Việt Nam', 'Đá 2×4 là đá xây dựng kích thước 2x4cm, là một loại đá dăm được khai thác tại mỏ đá. Đá 2×4 khả năng chịu nén tốt, được khuyến nghị nên dùng cho các các công trình đường giao thông hay nền nhà xưởng có độ dầy từ 15cm trở lên và khoảng cách cốt thép trong ', 250, 'mét khối'),
(32, 'cát/ đá', 'đá 4x6', 'đá 4x6', 'sp32.png', '032', ' hưng gia bình', 'Việt Nam', 'Đá 4x6 là loại đá xây dựng có kích cỡ từ 40x60mm (hoặc 50x70mm).\n\nSản phẩm đá 4x6 thường được dùng làm đường giao thông, đổ bê tông móng xây nhà xưởng, cho những hạng mục công trình yêu cầu lực chịu nén cao.', 250, 'mét khối'),
(33, 'cát/ đá', 'đá 4x6', 'đá 4x6', 'sp33.png', '033', 'CÔNG TY TNHH DV - TM VLXD BÌNH', 'Việt Nam', 'Đá 4x6 là loại đá xây dựng có kích cỡ từ 40x60mm (hoặc 50x70mm).\n\nSản phẩm đá 4x6 thường được dùng làm đường giao thông, đổ bê tông móng xây nhà xưởng, cho những hạng mục công trình yêu cầu lực chịu nén cao.', 270, 'mét khối'),
(34, 'cát/ đá', 'đá 4x6', 'đá 4x6 ', 'sp34.png', '034', 'Công ty Hoàng Sơn', 'Việt Nam', 'Đá 4x6 có kích cỡ từ 50 mm đến 70mm, được sàng tách ra từ sản phẩm đá khác. Loại đá này dùng làm chân đế gạch bông, gạch lót sàn, phụ gia cho công nghệ bê tông đúc ống cống và thi công các công trình giao thông và  phụ gia cho các loại VLXD khác .v.v...\n\n', 200, 'mét khối'),
(35, 'cát/ đá', 'đá 4x6', 'đá 4x6 tân uyên', 'sp35.png', '035', 'Thảo Hiền', 'Việt Nam', 'Đá 4 x 6 có kích cỡ từ 40 mm đến 60mm, được sàng tách ra từ sản phẩm đá khác. Loại đá này dùng làm chân đế gạch bông, gạch lót sàn, phụ gia cho công nghệ bê tông đúc ống cống và thi công các công trình giao thông và phụ gia cho các loại VLXD khác\n\nĐá xây ', 280, 'mét khối'),
(36, 'cát/ đá', 'đá 4x6', 'đá 4x6 ', 'sp36.png', '036', 'CII E & C', 'Việt Nam', 'Đá 4×6 có kích cỡ từ 40 mm đến 60mm, được sàng tách ra từ sản phẩm đá khác.\n\nLoại đá này dùng làm chân đế gạch bông, gạch lót sàn, phụ gia cho công nghệ bê tông đúc ống cống và thi công các công trình giao thông và  phụ gia cho các loại VLXD khác .v.v…\n\nĐ', 270, 'mét khối'),
(37, 'cát/ đá', 'đá 5x7', 'đá xây dựng 5x7', 'sp37.png', '037', 'sài gòn cmc', 'Việt Nam', 'Đá xây dựng 5x7 cao cấp hay còn gọi là đá 5x7 là loại đá được sản xuất bằng cách tách ra từ các sản phẩm đá khác, đá 5x7 có kích thước đường kính từ 50>70mm. Loại đá này có nhiều công dụng cho công trình xây dựng như: Làm chân đế gạch bông, gạch lót sàn, ', 270, 'mét khối'),
(38, 'cát/ đá', 'đá 5x7', 'đá 5 x7', 'sp38.png', '038', 'hiền quang huy', 'Việt Nam', 'Đá xây dựng 5x7 cao cấp hay còn gọi là đá 5x7 là loại đá được sản xuất bằng cách tách ra từ các sản phẩm đá khác, đá 5x7 có kích thước đường kính từ 50>70mm.', 280, 'mét khối'),
(39, 'cát/ đá', 'đá 5x7', 'đá 5x7 ', 'sp39.png', '039', 'CII E & C', 'Việt Nam', 'Đá 5×7 có kích cỡ từ 50 mm đến 70mm, được sàng tách ra từ sản phẩm đá khác.\n\nLoại đá này dùng làm chân đế gạch bông, gạch lót sàn, phụ gia cho công nghệ bê tông đúc ống cống và thi công các công trình giao thông và  phụ gia cho các loại VLXD khác .v.v…', 320, 'mét khối'),
(40, 'cát/ đá', 'đá hộc', 'đá chẻ viên xây mỏng', 'sp40.png', '040', 'hưng gia bình', 'Việt Nam', 'Đá chẻ viên là loại đá xây dựng thường được sử dụng để thi công xây móng nhà, xây tường rào, xây vách ngăn, lát lối đi sân vườn.', 12, 'viên'),
(41, 'cát/ đá', 'đá hộc', 'ĐÁ HỘC', 'sp41.png', '041', 'CÔNG TY TNHH XÂY DỰNG VẬN TẢI ', 'Việt Nam', 'Đá hộc là loại đá xây dựng thường được dùng để xây móng nhà xưởng, xây tường rào cho những hạng mục công trình yêu cầu lực chịu nén cao.\n\nĐá hộc xây móng nhà thường có kích thước đường kính viên từ 100 - 300 mm, sản phẩm không đồng nhất về kích thước, độ ', 280, 'MÉT KHỐI'),
(42, 'cát/ đá', 'đá hộc', 'đá học', 'sp42.png', '042', 'TƯ THÀNH PHÁT', 'Việt Nam', 'Đá hộc có kích cỡ 20x30cm được sử dụng trong thi công trong các công trình xây dựng dân dụng, cầu cảng, xây dựng cầu đường,bờ kè,…', 195, 'MÉT KHỐI'),
(43, 'cát/ đá', 'đá hộc', 'Đá Hộc', 'sp43.png', '043', 'BIMICO', 'Việt Nam', 'Đá hộc có kích cỡ 20x30cm được sử dụng trong thi công trong các công trình xây dựng dân dụng, cầu cảng, xây dựng cầu đường,bờ kè,…', 200, 'MÉT KHỐI'),
(44, 'cát/ đá', 'cát bê tông ', 'cát bê tông', 'sp44.png', '044', 'CÔNG TY TNHH DV - TM VLXD BÌNH', 'Việt Nam', 'cát dành để trộn bê tông', 470, 'MÉT KHỐI'),
(45, 'cát/ đá', 'cát bê tông ', 'cat xây đại lộc', 'sp45.png', '045', 'Vật liệu xây dựng THẢO KHANH', 'Việt Nam', 'cát dành để trộn bê tông', 160, 'MÉT KHỐI'),
(46, 'cát/ đá', 'cát bê tông ', 'cát vàng xây dựng', 'sp46.png', '046', 'minh đức', 'Việt Nam', '- Cát vàng dùng để đổ bê tông: màu vàng, cỡ hạt từ 1,5-3mm, không lẫn tạp chất. Có thành phần hóa học được quy định theo tiêu chuẩn', 220, 'MÉT KHỐI'),
(47, 'cát/ đá', 'cát bê tông ', 'cát xây tô', 'sp47.png', '047', 'công ty nguyễn sơn', 'Việt Nam', 'Cát xây tô là loại cát được dùng cho vữa xây trát, đây là phần da thịt của các công trình vì vậy có thể nói cát xây tô có vai trò quan trọng đối với xây dựng, đặc biệt là các công trình xây dựng nhà cửa.\n\nMô đun độ lớn trên 0,7. Hàm lượng muối gốc suphít,', 380, 'MÉT KHỐI'),
(48, 'cát/ đá', 'cát bê tông ', 'cát tô vàng', 'sp48.png', '048', 'hưng gia bình', 'Việt Nam', 'Cát tô vàng thường được sử dụng phổ biến để xây tô tường làm nhà trong hầu hết các công trình xây dựng dân dụng và công nghiệp như nhà cao tầng, nhà phố, biệt thự, đường băng sân bay, cầu cảng, đường quốc lộ, v.v...', 245, 'MÉT KHỐI'),
(49, 'cát/ đá', 'cát bê tông ', 'cát bê tông loại 1', 'sp49.png', '049', 'công ty nguyễn sơn', 'Việt Nam', 'cát bê tông là loại dùng để trộn với xi măng. Cát bê tông là cát hạt lớn, yêu cầu phải sạch, để tăng độ kết dính giữa các hạt cát với xi măng. Với thiết bị lọc cát và rửa cát chuyên dụng, hiện đại chúng tôi đảm bảo cát bê tông có chất lượng tốt nhất sạch ', 580, 'MÉT KHỐI'),
(50, 'gạch xây dựng', 'gạch tuynel', 'gạch Tuynel becamex', 'sp50.png', '050', 'becamex', 'Việt Nam', 'gạch 2 lỗ xây dựng công trình, kiến trúc ', 800, 'viên'),
(51, 'gạch xây dựng', 'gạch tuynel', 'gạch mỹ xuân', 'sp51.png', '051', 'MỸ XUÂN', 'Việt Nam', 'Gạch chống nóng Mỹ Xuân còn có tên là gạch chữ U được thiết kế với công năng chống nóng cho ngôi nhà, cách nhiệt rất tốt nên nhà sản xuất gọi loại gạch này là loại gạch chống nóng hay gạch cách nhiệt và khi nhìn ngang mặt cắt có hình dáng giống chữ U nên ', 1, 'viên'),
(52, 'gạch xây dựng', 'gạch tuynel', 'GẠCH 6 LỖ', 'sp52.png', '052', 'THẠCH BÀN', 'Việt Nam', 'Gạch 6 lỗ thạch bàn được làm từ đất sét,đất đỏ nung. bề mặt đẹp và chất lượng tuyệt hảo', 1, 'VIÊN'),
(53, 'gạch xây dựng', 'gạch tuynel', 'GẠCH ĐẶC TUYNEL', 'sp53.png', '053', 'minh đức', 'Việt Nam', 'Tính năng Gạch Tuynel\n\nGạch Tuynel  là sản phẩm được sản xuất trên dây chuyền công nghệ hiện đại, Được chú trọng từ khâu xử lý nguyên liệu, cho tới tạo hình, đốt nung sản phẩm của chúng tôi luôn vượt và đạt tiêu chuẩn TCVN về kích thước, hình dạng, cường ', 980, 'viên'),
(54, 'gạch xây dựng', 'gạch tuynel', 'gạch nung 4 lỗ tròn ', 'sp54.png', '054', 'VLXD Minh Khang Khánh Hòa', 'Việt Nam', 'gạch 4 lỗ xây dựng công trình, kiến trúc', 1, 'viên'),
(55, 'gạch xây dựng', 'gạch siêu nhẹ', 'gạch siêu nhẹ AAC ', 'sp55.png', '055', 'gạch việt', 'Việt Nam', 'Đặc tính:\n\n-         Tỉ trọng nhẹ\n\n-         Tính bảo ôn cách nhiệt cao\n\n-         Cách  âm tốt\n\n-         Tính chịu nhiệt\n\n-         Khả năng chịu chấn động tốt\n\n-         Có các kích thước phù hợp\n\n-         Gia công dễ dàng\n\n-         Linh hoạt trong s', 900, 'mét khối'),
(56, 'gạch xây dựng', 'gạch siêu nhẹ', 'gạch siêu nhẹ AAC150', 'sp56.png', '056', 'gạch việt', 'Việt Nam', 'Đặc tính:\n\n-         Tỉ trọng nhẹ\n\n-         Tính bảo ôn cách nhiệt cao\n\n-         Cách  âm tốt\n\n-         Tính chịu nhiệt\n\n-         Khả năng chịu chấn động tốt\n\n-         Có các kích thước phù hợp\n\n-         Gia công dễ dàng\n\n-         Linh hoạt trong s', 905, 'mét khối'),
(57, 'gạch xây dựng', 'gạch siêu nhẹ', 'gạch nhje e-block', 'sp57.png', '057', 'Công Nghệ & Xây Dựng 24H', 'Việt Nam', 'Gạch bê tông nhẹ EBLOCK nhẹ hơn từ ½ đến 1/3 so với gạch đất nung và chỉ bằng ¼ trọng lượng gạch bê tông thường. Nguyên nhân chính là do kết cấu bọt khí chiếm đến 80% toàn bộ cấu tạo bên trong viên gạch. Đây là đặc tính nổi trội giúp tiết kiệm lượng vật l', 12, 'viên'),
(58, 'gạch xây dựng', 'gạch siêu nhẹ', 'gạch xây tường đôi', 'sp58.png', '058', 'HTL VIỆT NAM', 'Việt Nam', 'Gạch xây tường đôi cách âm tốt gấp 2 lần gạch xây thông thường nhờ kết cấu nhiều lỗ khí phân bổ đều đặn với mật độ cao trong mỗi viên gạch nhẹ – gạch bê tông khí. Độ cách âm gạch nhẹ – gạch Bê tông khí chưng áp từ 40db – 47db trong khi gạch xây thông thườ', 16, 'viên'),
(59, 'gạch xây dựng', 'gạch siêu nhẹ', 'gạch bê tông nhẹ', 'sp59.png', '059', 'SAMOC', 'Việt Nam', 'Liên hệ mua gạch bê tông nhẹ bọt khí và tấm panel bê tông nhẹ ngay\n\nLợi ích khi sử dụng gạch bê tông nhẹ\n\nGiảm được khoảng 15%20% tổng tải trọng\n\nTiết kiệm kết cấu móng: 12-20%', 10, 'viên'),
(60, 'gạch xây dựng', 'gạch không nung', 'gạch không nung', 'sp60.png', '060', 'CÔNG TY CP BÊ TÔNG ĐĂNG HẢI ĐÀ', 'Việt Nam', 'Vì cường độ chịu lực của gạch không nung khá tốt, vậy nên mọi yêu cầu trong lĩnh vực này đều được đáp ứng đầy đủ, đây được xem là tính năng nổi trội của gạch không nung, tuy nhiên ở những nơi có cường độ chịu lực rất cao từ 300 - 400 kg/cm2 thì nó không đ', 8, 'viên'),
(61, 'gạch xây dựng', 'gạch không nung', 'GẠCH KHÔNG NUNG 4 LỖ', 'sp61.png', '061', 'thái châu', 'Việt Nam', 'Gạch Không nung lỗ hay thường được gọi là gạch không nung 4 lỗ được sản xuất với nguyên vật liệu chủ yếu là đá mi, cát, xi măng, phụ gia tăng cường độ. Gạch có kích thước chi tiết: Dài 18cm, Cao 8cm, Rộng 8cm. Gạch không nung 4 lỗ dùng thay thế cho gạch t', 1, 'viên'),
(62, 'gạch xây dựng', 'gạch không nung', 'gạch không nung 2 lỗ quy chuẩn ', 'sp62.png', '062', 'thanh tuyền', 'Việt Nam', '– Gạch không nung được dùng cho các công trình dân dụng: Nhà ở, biệt thự, nhà phố cũng những các công trình dân dụng nhỏ.\n\n– Công trình công cộng: Gạch không nung đang dần chiếm lĩnh hoàn toàn thị trường này, các công trình lớn, tòa nhà, cao ốc, cầu cống,', 1, 'viên'),
(63, 'gạch xây dựng', 'gạch không nung', 'gạch không nung ', 'sp63.png', '063', 'CII E & C', 'Việt Nam', 'Gạch không nung CII E & C có những ưu điểm về cách âm, cách nhiệt, kết dính bền vững tốt với vữa xây tô xi măng - cát mà không đòi hỏi vữa xây chuyên dụng đặc biệt như các loại gạch không nung khí chưng áp AAC, gạch bọt khí,... Tuy nhiên gạch không nung c', 2, 'viên'),
(64, 'gạch xây dựng', 'gạch không nung', 'gạch thẻ không nung', 'sp64.png', '064', 'Phát triển Việt Nam', 'Việt Nam', 'Gạch Thẻ 5*9*19 ( gạch xây không nung )\n\n- Quy cách: 5 x 9 x 19 cm\n\n- Trọng lượng: 2 kg/viên\n\n- Chất liệu: đá + xi măng\n\nGạch thẻ  làm từ xi măng và đá, dùng xây dựng công trình chuyển đổi từ gạch đất nung theo định hướng phát triển thân thiện với môi trư', 2, 'viên'),
(65, 'gạch xây dựng', 'gạch không nung', 'Gạch xốp cách nhiệt ISOLITE B4', 'sp65.png', '065', 'Lê Vỹ', 'Việt Nam', 'Gạch Xốp cách nhiệt B4 chịu nhiệt độ ở mức 1200 o C.,  tỉ trọng khoảng 0,78 g/cm3 Sản phẩm gạch xốp cách nhiệt sử dụng những vùng lò có tải trọng thấp  và cách nhiệt tốt. Giảm độ thất thoát nhiệt độ, năng lượng, khí thải ra môi trường.  \n\n', 15, 'viên'),
(66, 'gạch xây dựng', 'gạch không nung', 'Gạch chịu lửa cao nhôm', 'sp66.png', '066', 'Lê Vỹ', 'Việt Nam', 'Gạch chịu lửa cao nhôm là loại vật liệu cách nhiệt, chịu lửa được sử dụng khá rộng rãi trong việc xây dựng vách lò, buồng đốt,nóc lò của các ngành công nghiệp hóa chất, luyện kim, đốt rác…\n\nTùy vào thành phần của nhôm oxit mà tính chất cách nhiệt,chịu lửa', 11, 'kg'),
(67, 'gạch xây dựng', 'gạch không nung', 'Gạch thẻ nhỏ', 'sp67.png', '067', 'Tâm Phúc Nguyên', 'Việt Nam', 'Trọng lượng: 2,1 kg\nKích thước: (55 x 90 x 190)mm\nĐịnh mức xây dựng: 69 viên/m2 ; 889 viên/m3\nSố viên/pallet: 675 viên/pallet', 2, 'viên'),
(68, 'gạch xây dựng', 'gạch không nung', 'Gạch thẻ lớn', '068.png', '068', 'Tâm Phúc Nguyên', 'Việt Nam', 'Trọng lượng: 3,2 kg\nKích thước: (65x105x220) mm\nĐịnh mức xây dựng: 65 viên/m2, 570 viên/m3\nSố viên/pallet: 482 viên/pallet', 2, 'viên'),
(69, 'gạch xây dựng', 'gạch không nung', 'Gạch Demi 4 lỗ', '069.png', '069', 'Bách Việt', 'Việt Nam', 'Trọng lượng: 0.65 kg/viên\n\nĐịnh mức: 122.2 viên/m2\n\nCường độ chịu nén: 75Kg/cm2', 800, 'viên'),
(70, 'gạch xây dựng', 'gạch block', 'Gạch block xây R190', '070.png', '070', 'DCB', 'Việt Nam', 'Gạch block xây R190\n\nChuyên dùng xây tường nhà dầy 100; 200 mm Sử dụng cốt liệu đá, cát và xi măng liên kết cường độ nén lên đến trên 100 kg/cm2. Đưa trực tiếp vữa xây lên thành viên gạch mà không cần xử lý bề mặt. Có thể sơn trực tiếp lên bề mặt.', 10, 'viên'),
(71, 'gạch xây dựng', 'gạch block', 'Gạch block 9', '071.png', '071', 'Tâm Phúc Nguyên', 'Việt Nam', 'Kích thước: (90x190x390) mm\nĐịnh mức xây dựng: 12.5 viên/m2, 137 viên/m3\nSố viên/pallet: 100 viên/pallet', 5, 'viên'),
(72, 'gạch xây dựng', 'gạch block', 'Gạch block xây bờ kè', '072.png', '072', 'Gạch miền Nam', 'Việt Nam', 'Gạch Block xây kè bờ có độ cứng cao, bảo ôn, cách nhiệt tốt có thể thay thế hoàn toàn các loại vật liệu cách nhiệt hiện có trên thị trường, phòng hoả, chống thấm, chống nước, kích thước chuẩn xác, quy cách hoàn hoản… nâng cao hiệu quả kiến trúc, giảm thiể', 10, 'viên'),
(73, 'gạch xây dựng', 'gạch block', 'Gạch block xây móng 20', '073.png', '073', 'Ngọc Lam Sài Gòn', 'Việt Nam', 'Gạch block – thân thiện môi trường. Nhà sản xuất: Ngọc Lam Sài GònNơi sản xuất: VIệt NamKích thước: 390 x 190 x 190 mmChất liệu: đá, cát và xi măngChủng loại: Gạch block xây:Số viên/mét vuông:12.5\n\nSản xuất gạch block sử dụng các nguồn nguyên vật liệu chí', 8, 'viên'),
(74, 'gạch xây dựng', 'gạch block', 'Gạch block xây tường bê tông', '074.png', '074', 'Gạch miền Bắc', 'Việt Nam', 'Nhà sản xuất: Gạch miền BắcNơi sản xuất: VIệt NamTiêu chuẩn: TCVN 6477:1999Kích thước: 190 x 135 x 90 mmChất liệu: đá, cát và xi măng:Cường độ nén:100 kg/cm2', 7, 'viên'),
(75, 'gạch xây dựng', 'gạch block', 'Gạch block xây tường R150', '075.png', '075', 'Hưng Gia Bình', 'Việt Nam', 'Gạch block xây tường R150 hay còn gọi là gạch Block bê tông rỗng R150, là loại gạch xây có cường độ chịu nén cao, chống thấm, cách âm và cách nhiệt tốt.\n\nGạch block xây tường R150 thích hợp cho cả công trình dân dụng lẫn công nghiệp, ứng dụng để xây tường', 8, 'viên'),
(76, 'bê tông', 'bê tông thương phẩm', 'Bê tông thương phẩm', '076.png', '076', 'INSEE', 'Việt Nam', 'Nhà sản xuất: INSEELoại xi măng: InseeĐộ sụt: S12+3/-2Mac bê tông: Mac 250Đơn vị tính: Mét khốiCường Độ Sớm:R28Chống thấm:B4Cường độ nén:25MPAỨng dụng:bê tông đổ móng', 1, 'mét khối'),
(77, 'bê tông', 'bê tông thương phẩm', 'Bê tông tươi', '077.png', '077', 'Phú Thịnh Phát', 'Việt Nam', 'Nhà sản xuất: Phú Thịnh PhátLoại xi măng: Bê tông tươiĐộ sụt: 10±2(cm) ÷ 20 ±2(cm)Mac bê tông: 10 MPa – 50 MPaĐơn vị tính: Mét khốiTiêu chuẩn: TCVN, ASTM.Nhiệt độ thấp nhất :đạt 28oC', 900, 'mét khối'),
(78, 'bê tông', 'bê tông thương phẩm', 'Bê tông cốp pha trượt', '078.png', '078', 'Phú Thịnh Phát', 'Việt Nam', 'Nhà sản xuất: Phú Thịnh PhátLoại xi măng: Bê tông tươiĐộ sụt: 10±2(cm) ÷ 20 ±2(cm)Mac bê tông: Mac 200 -300Đơn vị tính: Mét khốiTiêu chuẩn: TCVN, ASTM.Nhiệt độ thấp nhất :đạt 28oCỨng dụng:được sử dụng cho công nghệ thi công bằng ván khuôn trượt như silo x', 1, 'mét khối'),
(79, 'bê tông', 'bê tông thương phẩm', 'Bê tông cốt sợi', '079.png', '079', 'Phú Thịnh Phát', 'Việt Nam', 'Nhà sản xuất: Phú Thịnh PhátLoại xi măng: Bê tông tươiĐộ sụt: 10±2(cm) ÷ 20 ±2(cm)Mac bê tông: Mac 200 -300Đơn vị tính: Mét khốiTiêu chuẩn: TCVN, ASTM.Nhiệt độ thấp nhất :đạt 28oCỨng dụng:Giảm nguy cơ nứt do co ngót cho bê tông tươi, Tăng khả năng chịu ké', 900, 'mét khối'),
(80, 'bê tông', 'bê tông thương phẩm', 'Bê tông màu', '080.png', '080', 'Sài Gòn DRC', 'Việt Nam', 'Nhà sản xuất: Sài Gòn DRCLoại xi măng: Bê tông màuĐộ sụt: 8±2(cm) ÷ 20 ±2(cm), tùy theo yêu cầu thi công của từng cấu kiệnMac bê tông: Mac 200 -300Đơn vị tính: Mét khốiTiêu chuẩn: TCVN, ASTM.Vị trí trạm trộn: TP Hồ Chí MinhTính đột phá:Có thể hỗ trợ gần n', 1, 'mét khối'),
(81, 'bê tông', 'bê tông chịu nhiệt', 'Bê tông dẻo chịu nhiệt TAIRAM PL-170', '081.png', '081', 'TAIRAM', 'Châu Âu', 'Nhà sản xuất: TAIRAMNhãn hiệu: TAIRAMXuất xứ: Châu ÂuNhiệt độ sử dụng cao nhất: 1300 oCLượng nước trộn: 18 m3/100 kgĐộ giãn nở tại 1000°C: 0,8 W/mkHàm lượng Al2O3: 46,5 %', 300, 'bao'),
(82, 'bê tông', 'bê tông chịu nhiệt', 'Bê tông chịu nhiệt TAICAST VN13', '082.png', '082', 'TAICAST', 'Châu Âu', 'Nhà sản xuất: TAICASTNhãn hiệu: TAICASTXuất xứ: Châu ÂuNhiệt độ sử dụng cao nhất: 1300 oCLượng nước trộn: 18 m3/100 kgCường độ nén: 10-15 MPaHệ số giãn nở nhiệt: 1,97 g/cm3Độ giãn nở tại 1000°C: 0,8 W/mkHàm lượng Al2O3: 46,5 %', 200, 'bao'),
(83, 'bê tông', 'bê tông chịu nhiệt', 'Bê tông chịu lửa CA15', '083.png', '083', 'Thêm Ký', 'Việt Nam', 'Bê tông chịu lửa 1500 có khả năng chịu được nhiệt độ làm việc liên tục lên đến 1500°C trong quá trình làm việc của lò, thích hợp dùng để đúc các bộ phận cửa lò, góc khuất khó xây của lò và các bộ phận có hình dạng đặc thù.', 300, 'bao'),
(84, 'bê tông', 'bê tông chịu nhiệt', 'Bê tông nhẹ chịu lửa', '084.png', '084', 'Sài Gòn DRC', 'Việt Nam', 'Loại bê tông này có tổ hợp đặc biệt giúp giảm độ đặc của bê tông xuống còn dưới 1,400kg/m3\n\nCó mức chịu lửa trên 2 tiếng\n\nĐạt độ chịu lực kết cấu đến 20 Mpa và độ cường độ uốn đến 5 Mpa', 1, 'mét khối'),
(85, 'bê tông', 'bê tông chịu nhiệt', 'Bê tông chịu nhiệt CALDECAST M32', '085.png', '085', 'CALDECAST', 'Châu Âu', 'Nhà sản xuất: CALDECASTNhãn hiệu: CALDECASTXuất xứ: Châu ÂuNhiệt độ sử dụng cao nhất: 1650 o CLượng nước trộn: 18 m3/100 kgCường độ nén: 10-15 MPaHệ số giãn nở nhiệt: 1,97 g/cm3Độ giãn nở tại 1000°C: 0,8 W/mkHàm lượng Al2O3: 40 %', 250, 'bao'),
(86, 'bê tông', 'bê tông chịu nhiệt', 'Bê tông chịu lửa CA17', '086.png', '086', 'Thêm Ký', 'Việt Nam', 'Bê tông chịu lửa 1700 có khả năng chịu được nhiệt độ lên đến 17000C trong quá trình làm việc của lò, thích hợp dùng để đúc béc đốt, miệng lò có nhiệt độ cao, va đập nhiểu.', 300, 'bao'),
(87, 'bê tông', 'bê tông tự lèn', 'Bê tông tự lèn', '087.png', '087', 'Lê Phan', 'Việt Nam', 'Nhà sản xuất: Lê PhanXuất xứ: Việt NamLoại xi măng: Bê tông tự chảyĐộ sụt: S12+3/-2Mac bê tông: Mac 250Tiêu chuẩn: TCVN, ASTM.Thành phần: hỗn hợp bê tông tươi có độ linh động caoƯu điểm: hỗn hợp bê tông tươi có độ linh động cao hơn rất nhiều so với các lo', 1, 'mét khối'),
(88, 'bê tông', 'bê tông tự lèn', 'Bê tông chảy', '088.png', '088', 'Phú Thịnh Phát', 'Việt Nam', 'Loại xi măng: Bê tông tự chảyĐộ sụt: 8±2(cm) ÷ 20 ±2(cm), tùy theo yêu cầu thi công của từng cấu kiệnMac bê tông: Mac 250Tiêu chuẩn: TCVN, ASTM.Thành phần: hỗn hợp bê tông tươi có độ linh động caoƯu điểm: Thi công nhanh, dễ thi công, độ ổn định cao, chất ', 1, 'mét khối'),
(89, 'bê tông', 'bê tông tự lèn', 'Bê tông tự lèn BT', '089.png', '089', 'Sài Gòn DRC', 'Việt Nam', 'Độ sụt: 8±2(cm) ÷ 20 ±2(cm), tùy theo yêu cầu thi công của từng cấu kiệnMac bê tông: Mac 200 -300Tiêu chuẩn: TCVN, ASTM.Thành phần: hỗn hợp bê tông tươi có độ linh động caoƯu điểm: hỗn hợp bê tông tươi có độ linh động cao hơn rất nhiều so với các loại bê ', 1, 'mét khối'),
(90, 'bê tông', 'bê tông tự lèn', 'Bê tông chảy tự lèn', '090.png', '090', 'Phú Thịnh Phát', 'Việt Nam', 'Loại xi măng: Bê tông tự chảy Độ sụt: 8±2(cm) ÷ 20 ±2(cm), tùy theo yêu cầu thi công của từng cấu kiện Mac bê tông: Mac 250 Tiêu chuẩn: TCVN, ASTM. Thành phần: hỗn hợp bê tông tươi có độ linh động cao Ưu điểm: Thi công nhanh, dễ thi công, độ ổn định cao, ', 1, 'mét khối'),
(91, 'bê tông', 'bê tông chịu nước', 'Bê tông rỗng chịu nước', '091.png', '091', 'Sài Gòn DRC', 'Việt Nam', 'Mac bê tông: Mac 200 -300 Tiêu chuẩn: TCVN, ASTM. Ưu điểm: Cho phép nước chảy hoàn toàn xuyên qua các kết cấu. Ứng dụng: Được sử dụng cho xây dựng quảng trường, lối đi, công viên, đại lộ…', 1500000, 'mét khối'),
(92, 'bê tông', 'bê tông phun', 'Bê tông phun BT', '092.png', '092', 'Lê Phan', 'Việt Nam', 'Loại xi măng: Bê tông phun Độ sụt: 8±2(cm) ÷ 20 ±2(cm), tùy theo yêu cầu thi công của từng cấu kiện Mac bê tông: Mac 250 Thành phần: bê tông tươi và phụ gia Ưu điểm: được thi công bằng phương pháp phun áp lực cao lên bề mặt cần thi công mà không cần cốp p', 1200000, 'mét khối'),
(93, 'xi măng', 'xi măng', 'Xi măng Sông Gianh PCB40', '093.png', '093', 'Nhà máy xi măng Cosevco Sông G', 'Việt Nam', 'Sản phẩm xi măng Sông Gianh PCB40 là sản phẩm xi măng rất được ưa chuộng trên thị trường VLXD hiện nay, bởi giá thành hợp lý, chất lượng đảm bảo, được sản xuất theo tiêu chuẩn TCVN 6260-1997, TCVN 2682-1999, TCVN 6067-1995, TCVN 6067:2004. Chất lượng sản ', 1400000, 'tấn'),
(94, 'xi măng', 'xi măng', 'Xi măng Nghi Sơn', '094.png', '094', 'Nghi Sơn', 'Việt Nam', 'Nơi sản xuất: Thanh Hóa Trọng lượng: 50kg Đóng gói: Bao Mac xi măng: PC40 Đơn vị tính: Bao Tiêu chuẩn: TCVN 6067:2004 Chi tiết đóng gói: Đóng gói theo quy chuẩn', 72000, 'bao'),
(95, 'xi măng', 'xi măng', 'Xi măng Holcim', '095.png', '095', 'Holcim', 'Việt Nam', 'Nơi sản xuất: Cát Lái Trọng lượng: 50kg Đóng gói: Bao Mac xi măng: PC40 Đơn vị tính: Bao Tiêu chuẩn: TCVN 6067:2004 Chi tiết đóng gói: Đóng gói theo quy chuẩn', 82000, 'bao'),
(96, 'xi măng', 'xi măng', 'Xi măng Hà Tiên 1', '096.png', '096', 'Xi măng Hà tiên', 'Việt Nam', 'Trọng lượng: 50kg Đóng gói: Bao Mac xi măng: PCB30 Tiêu chuẩn: TCVN 6067:2004 Ứng dụng: dùng để đổ bê tông móng, sàn, cột, đà hoặc trộn vữa xây, vữa tô hoặc ốp gạch đá hoặc cán nền.', 80000, 'bao'),
(97, 'xi măng', 'xi măng', 'Xi măng Kim Đỉnh PCB40', '097.png', '097', 'Kiên Cường', 'Việt Nam', 'Trọng lượng: 50kg Đóng gói: Bao Mac xi măng: PCB30 Tiêu chuẩn: TCVN 6067:2004 Ứng dụng: dùng để đổ bê tông móng, sàn, cột, đà hoặc trộn vữa xây, vữa tô hoặc ốp gạch đá hoặc cán nền.', 1500000, 'tấn'),
(98, 'xi măng', 'xi măng', 'Xi măng Hoàng Long', '098.png', '098', 'Hoàng Long', 'Việt Nam', 'Trọng lượng: 50kg Đóng gói: Bao Mac xi măng: PCB40 Tiêu chuẩn: TCVN 6067:2004 Ứng dụng: Dùng để đổ bê tông, xây và tô Bảo quản:Nơi khô ráo, râm mát Chi tiết đóng gói: Đóng gói theo quy chuẩn', 1000000, 'tấn'),
(99, 'xi măng', 'xi măng', 'Xi măng Vissai', '099.png', '099', 'Vissai', 'Việt Nam', 'Xi măng Vissai PCB40 – Mác xi măng (PCB30, PCB40, PCB50 …) là tiêu chuẩn về chất lượng, thành phần và quy trình sản xuất xi măng. Được nhà nước quy định trong “Tiêu Chuẩn Việt Nam” (TCVN). Mỗi bao xi măng khi được bán ra thị trường đều phải được kiểm tra ', 1200000, 'tấn'),
(100, 'xi măng', 'xi măng', 'Xi măng Hạ Long', '100.png', '100', 'Hạ Long', 'Việt Nam', 'Sản phẩm xi măng Hạ Long PCB40 là sản phẩm xi măng rất được ưa chuộng trên thị trường VLXD hiện nay, bởi giá thành hợp lý, chất lượng đảm bảo, được sản xuất theo tiêu chuẩn TCVN 6260-1997. Chất lượng sản phẩm được đảm bảo bởi hệ thống quản lý chất lượng I', 1200000, 'tấn');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `TEN_DANG_NHAP` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `MATKHAU` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `NGAYLAP_TK` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`TEN_DANG_NHAP`, `MATKHAU`, `NGAYLAP_TK`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', '2022-04-20 14:56:23'),
('pbn.166', 'a599757617fa43645a4a2e19c11e0971', '2022-04-19 18:05:59'),
('thuthuy24', '44efdae936b84845bc9dd984d1e7b8ad', '2022-04-19 14:44:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `trangthai`
--

CREATE TABLE `trangthai` (
  `ID_trangthai` char(2) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `ten_trangthai` varchar(10) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `trangthai`
--

INSERT INTO `trangthai` (`ID_trangthai`, `ten_trangthai`) VALUES
('n', 'không'),
('y', 'có');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID_admin`),
  ADD KEY `kn_TEN_DANG_NHAP_ADMIN` (`TEN_DANG_NHAP`);

--
-- Chỉ mục cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`ID_sanpham`,`ID_donhang`),
  ADD KEY `kn_ID_donhang` (`ID_donhang`);

--
-- Chỉ mục cho bảng `chitietgiohang`
--
ALTER TABLE `chitietgiohang`
  ADD PRIMARY KEY (`ID_giohang`),
  ADD KEY `pk_ID_khachhang_giohang` (`ID_khachhang`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`ID_donhang`),
  ADD KEY `kn_id_khachhang` (`ID_khachhang`),
  ADD KEY `kn_trangthai_donhhang` (`trangthai_donhang`);

--
-- Chỉ mục cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`ID_giohang`),
  ADD KEY `kn_id_khachhang_giohang` (`ID_khachhang`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`ID_khachhang`),
  ADD KEY `kn_TEN_DANG_NHAP` (`TEN_DANG_NHAP`),
  ADD KEY `kn_loai_khach_hang` (`ID_loaikhachhang`);

--
-- Chỉ mục cho bảng `loaikhachhang`
--
ALTER TABLE `loaikhachhang`
  ADD PRIMARY KEY (`ID_loaikhachhang`);

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`ID_loaisanpham`),
  ADD UNIQUE KEY `ten_loaisanpham` (`ten_loaisanpham`),
  ADD KEY `kn_trangthai_loaiSP` (`trangthai_loaisanpham`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSP`),
  ADD KEY `kn_ten_loaisanpham` (`LoaiSP`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`TEN_DANG_NHAP`);

--
-- Chỉ mục cho bảng `trangthai`
--
ALTER TABLE `trangthai`
  ADD PRIMARY KEY (`ID_trangthai`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `ID_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `ID_donhang` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `giohang`
--
ALTER TABLE `giohang`
  MODIFY `ID_giohang` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `ID_khachhang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `kn_TEN_DANG_NHAP_ADMIN` FOREIGN KEY (`TEN_DANG_NHAP`) REFERENCES `taikhoan` (`TEN_DANG_NHAP`);

--
-- Các ràng buộc cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `kn_ID_donhang` FOREIGN KEY (`ID_donhang`) REFERENCES `donhang` (`ID_donhang`),
  ADD CONSTRAINT `kn_ID_sanpham` FOREIGN KEY (`ID_sanpham`) REFERENCES `sanpham` (`MaSP`);

--
-- Các ràng buộc cho bảng `chitietgiohang`
--
ALTER TABLE `chitietgiohang`
  ADD CONSTRAINT `kn_ID_giohang` FOREIGN KEY (`ID_giohang`) REFERENCES `giohang` (`ID_giohang`),
  ADD CONSTRAINT `pk_ID_khachhang_giohang` FOREIGN KEY (`ID_khachhang`) REFERENCES `khachhang` (`ID_khachhang`);

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `kn_id_khachhang` FOREIGN KEY (`ID_khachhang`) REFERENCES `khachhang` (`ID_khachhang`),
  ADD CONSTRAINT `kn_trangthai_donhhang` FOREIGN KEY (`trangthai_donhang`) REFERENCES `trangthai` (`ID_trangthai`);

--
-- Các ràng buộc cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD CONSTRAINT `kn_id_khachhang_giohang` FOREIGN KEY (`ID_khachhang`) REFERENCES `khachhang` (`ID_khachhang`);

--
-- Các ràng buộc cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD CONSTRAINT `kn_TEN_DANG_NHAP` FOREIGN KEY (`TEN_DANG_NHAP`) REFERENCES `taikhoan` (`TEN_DANG_NHAP`),
  ADD CONSTRAINT `kn_loai_khach_hang` FOREIGN KEY (`ID_loaikhachhang`) REFERENCES `loaikhachhang` (`ID_loaikhachhang`);

--
-- Các ràng buộc cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD CONSTRAINT `kn_trangthai_loaiSP` FOREIGN KEY (`trangthai_loaisanpham`) REFERENCES `trangthai` (`ID_trangthai`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
