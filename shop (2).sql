-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th7 06, 2017 lúc 03:48 CH
-- Phiên bản máy phục vụ: 5.7.17-log
-- Phiên bản PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `bill_id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `payment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` longtext COLLATE utf8_unicode_ci,
  `date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bill`
--

INSERT INTO `bill` (`bill_id`, `user_id`, `total`, `payment`, `address`, `date`) VALUES
(12345, 4, 156788, 'Trực Tiếp', 'Bình Thạnh -TP HCM', '2017-06-30 17:00:00'),
(1498917824254, 0, 6800000, 'Bank transfer', '51/29 PhÆ°á»ng 17 quáº­n BÃ¬nh Tháº¡nh', '2017-07-01 14:03:44'),
(1498917980820, 0, 0, 'Bank transfer', '51/29 PhÆ°á»ng 17 quáº­n BÃ¬nh Tháº¡nh', '2017-07-01 14:06:21'),
(1498919067328, 0, 6800000, 'Bank transfer', 'SÃ i GÃ²n', '2017-07-01 14:24:27'),
(1498929439530, 0, 5600000, 'Bank transfer', 'sÃ i gÃ²n', '2017-07-01 17:17:20'),
(1498931537964, 0, 5600000, 'Live', 'Bình Thạnh', '2017-07-01 17:52:18'),
(1499156161287, 0, 1200000, 'Live', 'Việt Nam', '2017-07-04 08:16:01'),
(1499267790744, 0, 7489000, 'Bank transfer', 'Mỹ', '2017-07-05 15:16:31'),
(1499267936161, 1499267886739, 2340000, 'Bank transfer', 'Ấn Độ', '2017-07-05 15:18:56'),
(0, 0, 0, 's', 's', '2017-07-05 15:26:42'),
(1499281019009, 1499280461651, 2328000, 'Bank transfer', 'Trường Sa Quận Bình Thạnh', '2017-07-05 18:56:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill_detail`
--

CREATE TABLE `bill_detail` (
  `bill_detail_id` bigint(20) NOT NULL,
  `bill_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bill_detail`
--

INSERT INTO `bill_detail` (`bill_detail_id`, `bill_id`, `product_id`, `price`, `quantity`) VALUES
(7, 1498917824254, 2, 5600000, 1),
(8, 1498917824254, 6, 1200000, 1),
(9, 1498919067328, 2, 5600000, 1),
(10, 1498919067328, 6, 1200000, 1),
(11, 1498929439530, 2, 5600000, 1),
(12, 1498931537964, 2, 5600000, 1),
(13, 1499156161287, 6, 1200000, 1),
(14, 1499267790744, 17, 7489000, 1),
(15, 1499267936161, 18, 2340000, 1),
(16, 1499280002640, 4, 6290000, 1),
(17, 1499280002640, 9, 4530000, 1),
(18, 1499280264128, 10, 9200000, 1),
(19, 1499280264128, 27, 2340000, 1),
(20, 1499280529715, 3, 548000, 1),
(21, 1499280529715, 11, 1780000, 1),
(22, 1499281019009, 3, 548000, 1),
(23, 1499281019009, 11, 1780000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'Máy tính'),
(2, 'Máy chụp hình'),
(3, 'Điện thoại'),
(4, 'Máy tính bảng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `product_id` bigint(20) NOT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `product_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_image` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_price` double DEFAULT NULL,
  `product_description` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `category_id`, `product_name`, `product_image`, `product_price`, `product_description`) VALUES
(2, 3, 'Samsung Galaxy S8 (đen)', 'images/2.png', 5600000, 'Màn hình:	Super AMOLED, 6.2\", Quad HD (2K)\r\nHệ điều hành:	Android 7.0\r\nCamera sau:	12 MP\r\nCamera trước:	8 MP\r\nCPU:	Exynos 8895 8 nhân 64-bit\r\nRAM:	4 GB\r\nBộ nhớ trong:	64 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:	2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G\r\nDung lượng pin:	3500 mAh, có sạc nhanh'),
(3, 3, 'Oppo F3 (Đen)', 'images/3.jpg', 548000, 'Cuối cùng thì mẫu \"chuyên gia selfie\" mới OPPO F3 cũng đã chính thức được trình làng với cụm camera trước kép trang bị nhiều tính năng selfie tuyệt vời hứa hẹn sẽ đem đến trải nghiệm đáng giá cho người dùng.\r\nĐầu tiên chắc chắn phải nhắc đến khả năng selfie của F3 với cụm camera selfie kép được thừa hưởng từ F3 Plus. OPPO F3 có một camera selfie 16 MP với nhiều chế độ làm đẹp tương tự như F1s, cùng một camera góc rộng 8 MP cho khung hình rộng gấp đôi, giải quyết các vấn đề khi chụp ảnh nhóm hoặc chụp với khung cảnh phía sau.'),
(4, 3, 'Oppo F1s 2017 (Hồng)', 'images/4.png', 6290000, 'Tiếp nối sự thành công rực rỡ từ người tiền nhiệm OPPO F1s thì mới đây OPPO đã chính thức giới thiệu phiên bản kế nhiệm với nâng cấp nhẹ về cầu hình mang tên OPPO F1s 2017.\r\n\r\nThiết kế quen thuộc\r\n\r\nOPPO F1s 2017 không mang nhiều thay đổi so với người tiền nhiệm. Máy vẫn được thừa hưởng khung vỏ kim loại sang trọng và cứng cáp kết hợp với các đường cong mềm mại cho cảm giác cầm nắm thoải mái.\r\nCấu hình được nâng cấp\r\n\r\nThay đổi lớn nhất trên OPPO F1s 2017 chính là cấu hình, theo đó thì bộ nhớ trong trên OPPO F1s 2017 đã được nâng cấp lên 64 GB so với 32 GB của thế hệ cũ giúp bạn thoải mái lưu trữ dữ liệu và cài đặt game, ứng dụng.'),
(5, 3, ' iPHONE 5 16GB (Đen)', 'images/5.jpg', 5300000, 'Thiết kế mới nguyên khối mỏng nhất trong các siêu phẩm của Apple\r\n\r\nNgay từ buổi lễ ra mắt, các nhà thiết kế của Apple đã khẳng định đây là chiếc điện thoại mỏng nhất mà họ từng làm, iPhone 5 sở hữu những thông số về kích thước thật đáng kinh ngạc, máy mỏng chỉ 7.6 mm và trọng lượng chưa tới 112g, nếu đem ra so sánh với các smartphone hiện nay thì iPhone 5 thực sự là một trong những chiếc điện thoại mỏng nhất, nhẹ nhất.\r\nMàn hình:	LED-backlit IPS LCD, 4\", DVGA\r\nHệ điều hành:	iOS 6\r\nCamera sau:	8 MP\r\nCamera trước:	1.2 MP\r\nCPU:	Apple A6 2 nhân 32-bit\r\nBộ nhớ trong:	16 GB\r\nThẻ SIM:	1 Nano SIM\r\nDung lượng pin:	1440 mAh'),
(6, 3, 'iPhone 5 16GB (Trắng)', 'images/6.jpg', 1200000, 'Màn hình:	LED-backlit IPS LCD, 4\", DVGA\r\nHệ điều hành:	iOS 6\r\nCamera sau:	8 MP\r\nCamera trước:	1.2 MP\r\nCPU:	Apple A6 2 nhân 32-bit\r\nBộ nhớ trong:	16 GB\r\nThẻ SIM:	1 Nano SIM\r\nDung lượng pin:	1440 mAh'),
(7, 3, 'iPhone 6 32GB (Xám)', 'images/7.png', 7200000, 'iPhone 6 là một trong những smartphone được yêu thích nhất của Apple. Lắng nghe nhu cầu về thiết kế, khả năng lưu trữ và giá cả, iPhone 6 32GB được chính thức phân phối chính hãng tại Việt Nam hứa hẹn sẽ là một sản phẩm rất \"Hot\".\r\nMàn hình:	LED-backlit IPS LCD, 4.7\", HD\r\nHệ điều hành:	iOS 10\r\nCamera sau:	8 MP\r\nCamera trước:	1.2 MP\r\nCPU:	Apple A8 2 nhân 64-bit\r\nRAM:	1 GB\r\nBộ nhớ trong:	32 GB\r\nThẻ SIM:	1 Nano SIM, Hỗ trợ 4G\r\nDung lượng pin:	1810 mAh'),
(8, 3, 'iPhone 6 32GB (Vàng)', 'images/8.jpg', 4000000, 'Màn hình:	LED-backlit IPS LCD, 4.7\", HD\r\nHệ điều hành:	iOS 10\r\nCamera sau:	8 MP\r\nCamera trước:	1.2 MP\r\nCPU:	Apple A8 2 nhân 64-bit\r\nRAM:	1 GB\r\nBộ nhớ trong:	32 GB\r\nThẻ SIM:	1 Nano SIM, Hỗ trợ 4G\r\nDung lượng pin:	1810 mAh'),
(9, 1, 'Apple MacbookPro 12\" ( Hồng )', 'images/9.jpg', 4530000, 'Apple Macbook 12\" MMGL2 là một chiếc laptop nổi bật lên hẳn với màu hồng bắt mắt cùng vỏ nhôm nguyên khối sang trọng, siêu mỏng và siêu nhẹ, một màn hình với độ phân giải khủng.\r\n\r\nThiết kế sang trọng, tinh tế\r\n\r\nMacbook 12 inch MMGL2 có thể chinh phục cả những khách hàng khó tính nhất bởi thiết kế của nó. Lớp vỏ kim loại nguyên khối mịn màng với màu hồng cực sang chảnh.\r\n\r\nKích thước máy siêu mỏng và nhẹ, cân nặng chỉ 900 gr và dày 13.1 mm, mỏng hơn đến 24% so với chiếc MacBook Air hiện tại. Đây được xem là dòng laptop đỉnh cao khi di chuyển bởi độ gọn nhẹ của nó.\r\n\r\nCPU:	Intel Core M, -, 1.10 GHz\r\nRAM:	8 GB, DDR3, 1866 MHz\r\nỔ cứng:	SSD: 256 GB\r\nMàn hình:	12 inch, Retina (2304 x 1440)\r\nCard màn hình:	Card đồ họa tích hợp, Intel® HD Graphics 515\r\nCổng kết nối:	USB Type-C\r\nĐặc biệt:	Có đèn bàn phím\r\nHệ điều hành:	Mac OS\r\nThiết kế:	Vỏ kim loại nguyên khối, PIN liền\r\nKích thước:	Dày 13.1 mm, 0.9 kg'),
(10, 1, 'Apple MacbookPro 12\" ( Đen )', 'images/10.jpg', 9200000, 'CPU:	Intel Core i5 Broadwell, -, 2.70 GHz\r\nRAM:	8 GB, DDR3L(On board), 1866 MHz\r\nỔ cứng:	SSD: 128 GB\r\nMàn hình:	13.3 inch, Retina (2560 x 1600)\r\nCard màn hình:	Card đồ họa tích hợp, Intel HD Graphics 6100\r\nCổng kết nối:	MagSafe 2, 2 x USB 3.0, HDMI, 2 x Thunderbolt 2\r\nĐặc biệt:	Có đèn bàn phím\r\nHệ điều hành:	Mac OS'),
(11, 1, 'Dell Inspiron 3467 ', 'images/11.jpg', 1780000, '\r\nBộ sản phẩm chuẩn: Sách hướng dẫn, Thùng máy, Adapter sạc\r\nLaptop Dell Inspiron 3467 trang bị vi xử lý Core i3 thế hệ thứ 7 đem lại hiệu suất làm việc mạnh hơn các thế hệ trước đây, tích hợp với Ram 4 GB và có thể hỗ trợ nâng cấp tối đa 8 GB giúp máy vận hành mượt mà các nhu cầu khác nhau.\r\n\r\nMáy có thể chơi được những game nào?\r\n\r\nTuy không hỗ trợ card đồ họa rời, thế nhưng với sự hỗ trợ card Intel HD Graphics 620 kèm theo ổ cứng HDD lên đến 1TB giúp lưu trữ được nhiều dữ liệu và game hơn.\r\n\r\nCPU:	Intel Core i3 Kabylake, 7100U, 2.30 GHz\r\nRAM:	4 GB, DDR4 (1 khe), 2400 MHz\r\nỔ cứng:	HDD: 1 TB\r\nMàn hình:	14 inch, HD (1366 x 768)\r\nCard màn hình:	Card đồ họa tích hợp, Intel® HD Graphics 620\r\nCổng kết nối:	2 x USB 3.0, HDMI, LAN (RJ45), USB 2.0\r\nHệ điều hành:	Windows 10\r\nThiết kế:	Vỏ nhựa, PIN rời\r\nKích thước:	Dày 21.4 mm, 1.77 kg'),
(12, 1, 'Asus X441NA', 'images/12.jpg', 5920000, 'Asus X441NA N4200 là sự lựa chọn giá tốt phù hợp với học sinh - sinh viên hoặc người dùng làm việc văn phòng, giải trí nhẹ.\r\n\r\nCấu hình Intel Pentium - Giá mềm\r\n\r\nMáy tích hợp Intel Pentium N4200 với tốc độ 1.10 GHz hoạt động ổn với các phần mềm nhẹ cơ bản. RAM 4 GB DDR3L cùng với ổ cứng lưu trữ HDD 500 GB giúp bạn lưu trữ được khá nhiều dữ liệu để học tập, làm việc.\r\nCPU:	Intel Pentium, N4200, 1.10 GHz\r\nRAM:	4 GB, DDR3L(On board), 1600 MHz\r\nỔ cứng:	HDD: 500 GB\r\nMàn hình:	14 inch, HD (1366 x 768)\r\nCard màn hình:	Card đồ họa tích hợp, Intel® HD Graphics\r\nCổng kết nối:	HDMI, LAN (RJ45), USB 2.0, USB 3.0, USB Type-C, VGA (D-Sub)\r\nHệ điều hành:	Windows 10\r\nThiết kế:	Vỏ nhựa, PIN liền\r\nKích thước:	Dày 27.6 mm, 1.7 kg'),
(13, 1, 'HP Pavilion X360 11-u104TU', 'images/13.jpg', 3500000, 'Pavilion X360 11-u104TU được HP trang bị bộ vi xử lý thế hệ thứ 7 của Intel, Intel Core i3-7100U, đem lại cho máy một hiệu năng mạnh mẽ vượt trội, đồng thời tiết kiệm năng lượng một cách hiệu quả. ... Chipset đồ họa tích hợp Intel HD Graphics cho phép máy chạy tốt các ứng dụng đồ họa thông thường.\r\nHãng CPU :	Intel\r\nCông nghệ CPU :	Core i3\r\nLoại CPU :	7100U\r\nTốc độ CPU :	2.4 Ghz\r\nBộ nhớ đệm :	3 MB Cache\r\nTốc độ tối đa :	3.9 GHz'),
(14, 1, 'Lenovo IDP 510-15ISK', 'images/14.jpg', 1840000, 'Laptop phổ thông Lenovo IdeaPad 510-15ISK 80SV00HGVN\r\n\r\nVới mức giá khoảng 13 triệu đồng, Lenovo Ideapad 510-15ISK là một sản phẩm thiên về giải trí đa phương tiện kết hợp làm việc mà bạn không nên bỏ qua. Máy sở hữu màn hình Full HD IPS chất lượng cao, hiệu năng mạnh và hiện đại, thưởng thức âm nhạc tốt với loa Harman.\r\nHãng CPU :	Intel\r\nCông nghệ CPU :	Core i5\r\nLoại CPU :	7200U\r\nTốc độ CPU :	2.50 GHz\r\nBộ nhớ đệm :	3 MB Cache\r\nTốc độ tối đa :	3.10 GHz\r\n '),
(15, 1, 'Acer Aspire E5-575G-39QW', 'images/15.jpg', 4790000, 'Laptop Acer Aspire E5-575G 39QW là một sự lựa chọn phù hợp với những bạn học sinh, sinh viên bởi cấu hình cao và độ bền ổn định cũng như là có mức giá phải chăng. Mang trong mình thiết kế đẹp và nhỏ gọn, laptop Acer Aspire E5-575G 39QW sẽ giúp người sử dụng có thể dễ dàng mang theo bên mình bất cứ lúc nào. Cấu hình của chiếc laptop này cũng khá mạnh mẽ gồm: Chip xử lý Intel Core i3-7100U, RAM 4GB, card màn hình GeForce 940MX 2GB đủ sức để người dùng có thể sử dụng cho các mục đích như học tập, làm việc và giải trí rất hiệu quả.\r\nHãng CPU :	Intel\r\nCông nghệ CPU :	Core i3\r\nLoại CPU :	7100U\r\nTốc độ CPU :	2.4 Ghz\r\nBộ nhớ đệm :	3 MB\r\nTốc độ tối đa : 3.9 GHz'),
(16, 1, 'MSI GL62M', 'images/16.jpg', 9280000, 'Đặc điểm nổi bật của MSI GL62M 7RDX i5 7300HQ/8GB/1TB/2GB GTX1050/Win10\r\n\r\n\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nBộ sản phẩm chuẩn: Sách hướng dẫn, Balo (game), Thùng máy, Adapter sạc\r\n“Gã khổng lồ đen” MSI GL62 7RD i5 7300HQ mang đến làn gió mới cho mặt hàng laptop. Không nói quá khi MSI là nhà sản xuất đi tiên phong về các máy chơi game và luôn nhằm đem lại sự hài lòng tới tất cả các game thủ có cùng chung niềm đam mê về game.\r\n\r\nNhững game nào có thể \"hạ gục\"máy?\r\n\r\nCho đến thời điểm các game hiện tại thì câu trả lời là \"KHÔNG\". Với cấu hình core i5 thế hệ thứ 7, xung nhịp lên đến 2.50 GHz, RAM DDR4 8 GB cùng với ổ cứng HDD 1 TB cho phép lưu trữ tối đa. Tích hợp card đồ họa NVIDIA GeForce GTX 1050 2 GB nâng cao khả năng xử lý đồ họa.\r\nCPU:	Intel Core i5 Kabylake, 7300HQ, 2.50 GHz\r\nRAM:	8 GB, DDR4 (2 khe), 2400 MHz\r\nỔ cứng:	HDD: 1 TB\r\nMàn hình:	15.6 inch, Full HD (1920 x 1080)\r\nCard màn hình:	Card đồ họa rời, NVIDIA GeForce GTX 1050, 2 GB\r\nCổng kết nối:	2 x USB 3.0, HDMI, Mini DisplayPort, LAN (RJ45), USB 2.0, USB Type-C\r\nĐặc biệt:	Có đèn bàn phím\r\nHệ điều hành:	Windows 10\r\nThiết kế:	Vỏ nhựa, PIN liền\r\nKích thước:	Dày 29 mm, 2.4 kg'),
(17, 2, 'Fujifilm X-A10/XC16-50MM', 'images/17.jpg', 7489000, 'Cũng là một sản phẩm phổ thông giống X-A2, máy ảnh Fujifilm XA10 vừa mang tới một trải nghiệm mới trong một thiết kế quen thuộc, lại vừa hỗ trợ tối ưu cho người dùng mọi hoàn cảnh kể cả là lính mới hay dân chuyên\r\nModel:\r\nX-A10\r\nMàu sắc:\r\nĐen phối bạc\r\nNhà sản xuất:\r\nFujifilm\r\nXuất xứ:\r\nIndonesia\r\n\r\n'),
(18, 2, 'Sony DSC-W810/BC E32 (Đen)', 'images/18.jpg', 2340000, 'Một thiết bị cực kỳ cần thiết cho những chuyến đi du lịch đó chính là một chiếc máy ảnh tiện dụng. Chiếc máy ảnh Sony KTS DSC-W810/BC E32 sở hữu những công nghệ chụp ảnh hiện đại, độ phân giải cao giúp chiếc máy ảnh này lấy nét cực kỳ nhanh chóng. Sở hữu chiếc máy ảnh Sony KTS DSC-W810/BC E32 sẽ giúp bạn sở hữu những bức ảnh tuyệt đẹp để lưu trữ lại những khoảnh khắc thú vị cho cuộc sống.\r\nModel:\r\nW810/BC E32\r\nMàu sắc:\r\nĐen\r\nNhà sản xuất:\r\nSony\r\nXuất xứ:\r\nTrung Quốc'),
(19, 2, 'Canon Powershot SX420IS', 'images/19.jpg', 8100000, 'Bạn sắp đi du lịch và cần tìm một chiếc máy ảnh chất lượng thì máy ảnh kỹ thuật số Canon Powershot SX420IS là một sự lựa chọn tốt. Máy với thiết kế nhỏ gọn, chắc chắn cùng những tính năng chụp hiện đại sẽ giúp bạn nhanh chóng sáng tạo từng bức hình theo chất riêng của bạn. Ngoài ra, khối lượng máy nhẹ sẽ giúp cáccô nàng có thể ôm máy và đi chụp cả ngày một cách nhẹ nhàng. Hãy cùng tìm hiểu những tính năng và mua một em về để thỏa sức sáng tạo đi nào!\r\nModel:\r\nPOWERSHOT SX420IS\r\nMàu sắc:\r\nĐen\r\nNhà sản xuất:\r\nCanon'),
(20, 2, 'Sony DSC-WX220/NCE32', 'images/20.jpg', 5200000, 'Máy ảnh Sony DSC-WX220 hội đủ các yếu tố kiểu dáng đẹp, chụp hình sắc nét và giá thành phải chăng. Máy ảnh Sony DSC-WX220 sử dụng gam màu vàng tinh tế làm chủ đạo, cùng với thân máy chắc chắn, cứng cáp, tạo nên sự nổi bật. Máy ảnh Sony DSC-WX220 trang bị zoom quang học và tiêu cự rộng, cho phép bạn chụp những bức ảnh với chủ thể ở xa. Máy ảnh sony DSC-WX220 còn có khả năng quay phim chất lượng cao Full HD.\r\nModel:\r\nDSC-WX220\r\nMàu sắc:\r\nNâu\r\nNhà sản xuất:\r\nSony\r\nXuất xứ:\r\nTrung Quốc'),
(21, 2, 'Canon Powershot G1X MARK ', 'images/21.jpg', 3480000, 'Tại triển lãm công nghệ và thiết bị ngành ảnh vừa diễn ra ở TP.HCM, Canon đã giới thiệu đến người dùng Việt Nam mẫu máy ảnh cao cấp mới nhất của mình. với bộ cảm biến CMOS kích thước lớn 1,5 inch. Độ phân giải 12,8 megapixel. Bộ xử lý Digic 6, chiếc máy ảnh Canon Powershot G1X Mark II này sẽ cho bạn chất lượng hình ảnh tuyệt hảo với thiết kế nhỏ gọn, thân thiện với người sử dụng. Giờ đây bạn sẻ thỏa sức thực hiện đam mê nhiếp ảnh với chiếc máy ảnh Canon Powershot G1X Mark II trong tay.\r\nModel:\r\nPOWERSHOT G1X MARK II\r\nMàu sắc:\r\nĐen\r\nNhà sản xuất:\r\nCanon\r\nXuất xứ:\r\nNhật Bản'),
(22, 2, 'Sony DSC - WX500', 'images/22.jpg', 5480000, 'Máy ảnh Sony DSC-WX500 là một máy ảnh kỹ thuật số nhỏ gọn cảm biến EXMOR CMOS 18.2 MP, ống kính ZEISS zoom quang học lên đến 30x (zoom số 60x) và một màn hình LCD có khả năng lật 180 độ. Điểm nổi bật của Sony DSC-WX500 chính là khả năng lấy nét nhanh, cùng cơ chế ổn định hình ảnh chống rung quang học Optical Steady Shot. Lưu giữ mọi khoảnh khắc và chia sẻ lên mạng xã hội nhanh chóng với kết nối một chạm từ máy chụp hình Sony DSC-WX500 hoặc sử dụng Wifi, NFC.\r\nModel:\r\nDSC-WX500\r\nMàu sắc:\r\nTrắng\r\nNhà sản xuất:\r\nSony'),
(23, 2, 'Canon Powershot SX620HS', 'images/23.jpg', 2360000, 'Lưu giữ những khoảnh khắc quí giá bên gia đình, người thân những dịp trong đại luôn là điều mà mọi người thường quan tâm khi bắt đầu chọn mua một máy ảnh. Nắm được nhu cầu đó, Nguyễn Kim giới thiệu đến bạn máy ảnh Canon Powershot SX620HS hiện đại, cho khả năng chụp ảnh trung thực và chi tiết nhất. Bộ xử lý hình ảnh DIGIC 4+ đem đến những bức ảnh sắc nét hoàn hảo trong bất kỳ điều kiện hoàn cảnh nào.\r\n'),
(24, 2, 'Fujifilm X-A3/XC16-50MM BW', 'images/24.jpg', 7530000, 'Trong những chuyến du lịch hay dạo chơi, chiếc máy ảnh không thể thiếu trong chiếc ba lô của bạn để nắm bắt những khoảnh khắc tuyệt đẹp nhất. Máy ảnh Fujifilm X-A3/XC16-50MM BW nâu có thiết kế trẻ trung năng động, màu nâu bụi cá tính rất phù hợp đồng hành cùng bạn trong các chuyến đi. Với độ phân giải lên đến 24.2 MP, máy ảnh đem đến những hình ảnh đẹp sắc nét, màu sắc sinh động, chân thật từng chi tiết. Bên cạnh đó, máy ảnh Fujifilm X-A3/XC16-50MM BW nâu có chế độ quay phim full HD tuyệt đẹp.'),
(25, 4, 'iPad Pro 3G 128GB (Vàng)', 'images/25.jpg', 6250000, 'Thuộc dòng máy tính bảng cao cấp, iPad Pro 3G 128GB không những mang lại sự tiện lợi cho người sử dụng mà còn giúp thể hiện lên sự đẳng cấp, chuyên nghiệp nơi người dùng. iPad Pro 3G phiên bản 128GB giúp bạn có thể lưu trữ dữ liệu thật nhiều. Hơn nữa, với sự bảo mật cao, bạn có thể yên tâm các dữ liệu, thông tin trên iPad Pro 3G 128GB không bị đánh cắp hay lộ ra ngoài, rất tiện lợi đối với các doanh nhân.\r\n'),
(26, 4, 'iPad Pro 3G 32GB (Hồng)', 'images/26.jpg', 2380000, 'iPad Pro 3G 32GB sở hữu thiết kế đầy sang trọng, tinh tế với gam màu hồng quyến rũ và đang là xu hướng của giới trẻ hiện nay. iPad Pro 3G 32GB có khả năng bảo mật cao, giúp bạn có thể giữ an toàn cho dữ liệu ở trên thiết bị, rất thích hợp cho doanh nhân. iPad Pro 3G 32GB với những tính năng và công nghệ hiện đại, có thể giúp ích bạn rất nhiều trong công việc cũng như khi giải trí.'),
(27, 4, 'Samsung Galaxy Tab Y', 'images/27.jpg', 2340000, 'Máy tính bảng Samsung Galaxy Tab E mang một ngoại hình cuốn hút với thiết kế mỏng, gam màu đen lịch lãm và một thiết kế cứng cáp. Máy tính bảng Samsung Galaxy Tab E có hiệu năng xử lý tốt với chip 4 nhân tốc độ cao cùng RAM 1.5 GB. Tablet Samsung Galaxy Tab E cũng đảm bảo về khả năng lưu trữ khi được hỗ trợ thẻ nhớ ngoài có khả năng mở rộng bộ nhớ lên đến 128 GB. Máy tính bảng Samsung Galaxy Tab E trang bị màn hình lớn kích thước 9.6 inches cảm ứng cực nhạy, giúp bạn dễ dàng thao tác và đảm bảo về mặt giải trí. Máy tính bảng Samsung Galaxy Tab E có khả năng chạy đa nhiệm hiệu quả khi có thể chia màn hình ra làm 2 để chạy song song các chương trình.'),
(28, 4, 'Samsung Galaxy Tab 3V', 'images/28.jpg', 2100000, 'Samsung Galaxy Tab 3 V SM-T116 là chiếc máy tính bảng với mức giá rẻ và có cấu hình ổn đủ để đáp ứng những nhu cầu giải trí hàng ngày của bạn như lướt web, xem phim, chơi game thông dụng. Bên cạnh thiết kế gọn nhẹ, máy còn được tích hợp camera 2MP cho việc chụp ảnh. Máy tính bảng Samsung Galaxy Tab 3 V SM-T116 chạy trên nền hệ điều hành Android dễ sử dụng với kho ứng dụng vô cùng phong phú mang đến những trải nghiệm thú vị dành cho bạn.'),
(29, 4, 'Samsung Galaxy Book', 'images/29.jpg', 5200000, 'Một sự kiện siêu siêu hot sắp diễn ra, vào mùa hè 2017 này \"hội anh em nhà công nghệ Samsung\" sẽ chính thức chào đón thành viên mới siêu nóng bỏng, siêu độc đáo, có thể nói là một model cực bắt mắt, chắc chắn sẽ làm chao đảo toàn cộng đồng. Vậy nên, các fan SamSung hãy nhanh chóng đến Nguyễn Kim để chiêm ngưỡng chiến phẩm siêu ngầu này. Đó chính là sự xuất hiện của chiếc máy tính bảng Samsung Galaxy Book SM W620 phiên bản mới 2017. Với thiết kế thanh mảnh đầy ấn tượng, được trang bị màn hình 10.6 inch lớn hơn, hệ điều hành Windows 10 Home siêu nhạy, cùng RAM 4GB và hỗ trợ thẻ nhớ ngoài lên đến 256GB. Ngoài ra, máy còn có hiệu suất hoạt động mạnh mẽ, cấu hình ổn định chắc chắn sẽ mang lại nhiều điểm thú vị cho làn sóng công nghệ năm nay.'),
(30, 4, 'Huawei Medipad T1', 'images/30.jpg', 2200000, 'Dù mức giá phải chăng nhưng máy tính bảng Huawei Mediapad T1 8.0 (S8-701U) vẫn giữ được cấu hình mạnh mẽ. Với kích thước 8.0 inches, dung lượng pin lớn 4800 mAh, bạn có thể sử dụng máy tính bảng Huawei Mediapad T1 8.0 (S8-701U) cả ngày, không phải lo lắng vấn đề năng lượng khi quên mang theo thiết bị sạc hay đến những nơi không có nguồn điện.'),
(31, 4, 'Acer Iconila B1 723', 'images/31.jpg', 2400000, 'Máy tính bảng Acer Iconia Tab 7 B1-723 là ứng cử viên khá sáng giá trong phân khúc máy tính bảng giá rẻ với một mức giá khá hời cho cấu hình chip lõi tứ tốc độ 1.3Ghz, RAM 1GB và bộ nhớ trong 16GB. Bên cạnh đó thì máy mang sắc vàng cực kỳ sang trọng, kích thước nhỏ gọn dễ dàng cầm với một tay và bạn có thể mang theo bên mình chiếc máy tính bảng này đến bất kỳ đâu bạn muốn.'),
(32, 4, 'Acer Iconia Talk 7 B1-733', 'images/32.jpg', 3200000, 'Chiếc máy tính bảng Acer Iconia Talk 7 B1-733 là bản nâng cấp nhẹ của chiếc B1-723 về màn hình cũng như nâng cấp phần mềm và tinh chỉnh về thiết kế mang đến một sản phẩm hoàn thiện hơn cho người dùng. Acer Iconia B1-733 mang đến cho người dùng những trải nghiệm giải trí tốt trên màn hình lớn mà vừa có chức năng nghe gọi như một chiếc smartphone. Sở hữu thiết kế gọn gàng, cấu hình tốt với nhiều tính năng thông minh và đặc biệt là mức giá khá rẻ, máy tính bảng Acer Iconia B1-733 là một lựa chọn tuyệt vời cho các bạn sinh viên hay người có thu nhập thấp.'),
(33, 5, 'Tai nghe Bluetooth Wones WBT-01', 'images/33.png', 150000, 'Jack cắm:	\r\nĐầu sạc Micro USB\r\nTương thích:	\r\nAndroid\r\niOS (iPhone)\r\nWindows Phone\r\nKhả năng kết nối:	\r\n2 máy\r\nThời gian sạc:	\r\n2 giờ\r\nThời gian dùng:	\r\n7 giờ\r\nPhím điều khiển:	\r\nMic thoại\r\nNghe/nhận cuộc gọi\r\nPhát/dừng chơi nhạc\r\nChuyển bài hát\r\nTăng/giảm âm lượng\r\nBộ bán hàng:	\r\nTai nghe\r\nDây cáp Micro USB\r\n2 cặp đệm tai nghe\r\nKẹp dây\r\nSách hướng dẫn'),
(34, 5, 'Tai nghe nhét trong Xmobile EP', 'images/34.png', 90000, 'Jack cắm:	\r\n3.5 mm\r\nĐộ dài dây:	\r\n1.2 m\r\nPhím điều khiển:	\r\nMic thoại\r\nNghe/nhận cuộc gọi\r\nPhát/dừng chơi nhạc\r\nChuyển bài hát\r\nBộ bán hàng:	\r\nTai nghe\r\n2 cặp đệm tai nghe'),
(35, 5, 'Tai nghe Cliptec Urban Clubz ', 'images/35.png', 300000, 'Jack cắm:	\r\n3.5 mm\r\nĐộ dài dây:	\r\n1.3 m\r\nPhím điều khiển:	\r\nMic thoại\r\nNghe/nhận cuộc gọi\r\nPhát/dừng chơi nhạc\r\nChuyển bài hát'),
(36, 5, 'Chuột không dây Microsoft 1850', 'images/36.png', 200000, 'Nhà sản xuất:	\r\nMicrosoft\r\nModel:	\r\n1850\r\nĐộ phân giải quang học:	\r\n1000 dpi\r\nCách kết nối:	\r\nCổng USB\r\nĐộ dài dây / Khoảng cách kết nối:	\r\n10 m\r\nKích thước:	\r\nDài 5.51 cm - ngang 4.92 cm - cao 4 cm\r\nTrọng lượng:	\r\n113 g'),
(37, 5, 'Chuột Gaming Cliptec Sauris', 'images/37.png', 250000, 'Nhà sản xuất:	\r\nCliptec\r\nModel:	\r\nRGS561\r\nĐộ phân giải quang học:	\r\n2400 dpi\r\nCách kết nối:	\r\nCổng USB\r\nĐộ dài dây / Khoảng cách kết nối:	\r\nDây dài 150 cm\r\nKích thước:	\r\nDài 11.6 cm - ngang 6.5 cm - cao 3.6 cm\r\nTrọng lượng:	\r\n130 g'),
(38, 5, 'Cáp Micro USB Cliptec Titanium', 'images/38.png', 120000, 'Thiết kế dễ mang theo bên mình\r\nCáp có chiều dài dây 1m giúp việc kết nối các thiết bị với nhau dễ dàng, đồng thời người dùng có thể cuộn lại dây gọn nhẹ thuận tiện hơn cho việc mang theo mọi lúc mọi nơi.\r\nKiểu chân sạc:	\r\nMicro USB\r\nTính năng:	\r\nSạc\r\nTruyền dữ liệu\r\nNguồn vào:	\r\n5V - 2.4A\r\nNguồn ra:	\r\n5V - 2.4A\r\nĐộ dài dây:	\r\n100 cm'),
(39, 5, 'Adapter Apple MacbookPro', 'images/39.png', 22500000, 'Sản phẩm nhỏ gọn dễ dàng mang theo\r\nAdapter có thiết kế nhỏ gọn không chiếm nhiều diện tích khi đặt trên bàn, trong balo, túi xách… có thể mang theo bên mình mọi lúc mọi nơi.\r\nKiểu chân sạc:	\r\nMagsafe (sạc Macbook đời cũ)\r\nTính năng:	\r\nSạc\r\nNguồn vào:	\r\nTần số 50/60 Hz\r\n100/240V - 1A\r\nNguồn ra:	\r\n60W\r\nĐộ dài dây:	\r\n170 cm'),
(40, 5, 'Thẻ nhớ Micro SD 128 GB', 'images/40.png', 1900000, 'Tốc độ đọc: 45 MB/s.\r\nTốc độ ghi: 10 MB/s.\r\nThẻ nhớ dành cho các mẫu điện thoại cao cấp.\r\nTương thích với thiết bị có thể nhận thẻ nhớ tối đa 128 GB.\r\nChép một video dung lượng 1 GB vào thẻ chưa tới 2 phút.\r\nLưu trữ hơn 40.000 bài hát (1 bài ~3 MB).'),
(41, 5, 'Thẻ nhớ Micro SD 16 GB', 'images/41.png', 130000, 'hương hiệu uy tín: Transcend, Apacer, SanDisk.\r\nTốc độ đọc: 30 MB/s; Tốc độ ghi: 10 MB/s.\r\nKhông kén thiết bị nhận, dễ dàng sử dụng.\r\nLưu trữ hơn 15.500 tấm ảnh (1 tấm ~1.5 MB).\r\nChép một video dung lượng 1 GB vào thẻ chưa tới 2 phút.\r\nTương thích với hầu hết tất cả thiết bị (điện thoại, máy tính bảng).'),
(42, 5, 'Loa Bluetooth iCutes Thỏ', 'images/42.png', 300000, 'Loa hình chú thỏ nhiều màu sắc, vỏ cao su hạn chế trầy xước.\r\nÂm thanh phát ra lớn, không bị rè, nhỏ gọn trong lòng bàn tay.\r\nCó thể nghe nhạc bằng bluetooth, jack cắm 3.5 mm.\r\nSạc cho loa bằng laptop, dây sạc, pin sạc dự phòng...\r\nDung lượng pin 400 mAh, chơi nhạc từ 3 - 5 giờ, sạc chỉ 2 giờ.'),
(43, 5, 'Loa Bluetooth iCutes Khỉ', 'images/43.png', 300000, 'Sử dụng lỗi pin Li-ion, dung lượng 1800mA.\r\nThời gian sạc tầm 4 giờ.\r\nThời gian hoạt động từ 6 - 8 giờ (với 80% âm lượng).\r\nTần số: 100Hz~20kHz.'),
(44, 5, 'Gậy chụp ảnh Osmia Hình Gấu', 'images/44.png', 70000, 'Thân gậy họa tiết chú gấu Brown nổi tiếng ngộ nghĩnh.\r\nPhù hợp với nhiều dòng điện thoại dưới 6 inch khác nhau.\r\nKhông cần hẹn giờ, chỉ cần ấn nút trên thân gậy để chụp ảnh.\r\nĐộ dài gậy có thể kéo dài lên đến 80 cm.\r\nĐầu gậy có thể gập mở góc 270 độ tùy bạn lựa chọn.'),
(45, 1, 'Lenovo IdeaPad 110 15IBR', 'images/45.png', 6990000, 'Lenovo IdeaPad 110 15IBR N3710 là chiếc laptop đơn giản hỗ trợ bạn công việc nhẹ nhàng và giải trí hằng ngày.\r\n\r\nCấu hình phù hợp cho công việc nhẹ nhàng\r\n\r\nMáy sử dụng chip Pentium N3710 tốc độ CPU 1.6 GHz và có thể nâng cấp lên tối đa 2.56 GHz để giúp máy vận hành hiệu quả hơn.\r\n\r\nLaptop phù hợp cho công việc văn phòng như nhập liệu hay giải trí lướt web, xem phim.\r\n\r\nMáy có RAM sẵn 4 GB và có thể nâng cấp lên tối đa 8 GB, ổ cứng HDD 500 GB để lưu trữ dữ liệu.'),
(46, 1, 'HP 15 ay526TU', 'images/46.png', 1029000, 'HP 15 ay526TU i3 6006U có cấu hình đáp ứng nhu cầu sử dụng nhẹ nhàng cho học sinh, sinh viên hay nhân viên văn phòng.\r\n\r\nThiết kế máy HP 15 ay072TU N3710\r\n\r\nMáy có thiết kế khá đơn giản nhưng cũng có điểm nhấn nổi bật như họa tiết đường kẻ ngang trên nắp lưng.\r\n'),
(47, 1, 'Dell Vostro 3568', 'images/47.png', 1519000, 'CPU:	Intel Core i5 Kabylake, 7200U, 2.50 GHz\r\nRAM:	4 GB, DDR4 (2 khe), 2133 MHz\r\nỔ cứng:	HDD: 1 TB\r\nMàn hình:	15.6 inch, HD (1366 x 768)\r\nCard màn hình:	Card đồ họa rời, AMD Radeon R5 M420, 2 GB\r\nCổng kết nối:	2 x USB 3.0, HDMI, LAN (RJ45), USB 2.0, VGA (D-Sub)\r\nHệ điều hành:	Windows 10\r\nThiết kế:	Vỏ nhựa, PIN rời\r\nKích thước:	Dày 20 mm, 2.18 kg'),
(48, 1, 'Asus G752VS', 'images/48.png', 1920000, 'Asus G752VS-GC175T là sản phẩm có thiết kế thiết giáp hầm hồ với một cấu hình khủng có thể đáp ứng tốt tất cả các nhu cầu hiện nay.\r\nThiết kế độc đáo\r\n\r\nMáy mang một thiết kế đột phá được hoàn thiện trong tông màu Titanium và Plasma Đồng.\r\nCấu hình khủng\r\n\r\nVới cấu hình cực mạnh là Intel Core i7 Skylake sẽ giúp máy vận hành mượt mà hơn, không xảy ra hiện tượng giật lag. RAM DDR4 có dung lượng lớn đến 32 GB, ổ cứng lưu trữ HDD 1 TB cho khả năng lưu trữ thoải mái, kết hợp với SSD 512 GB cho tốc độ truy xuất và bảo mật dữ liệu tốt hơn.'),
(49, 4, 'Lenovo Tab 3 8\"', 'images/49.png', 3190000, 'Lenovo Tab 3 8 inch là chiếc máy tính bảng giá rẻ nhưng vẫn đáp ứng tốt cho người dùng nhu cầu làm việc hay giải trí cơ bản.\r\n\r\nThiết kế đơn giản\r\n\r\nLenovo Tab 3 8 inch mang trong mình thiết kế khá cơ bản cho dòng máy tính bảng giá rẻ với chất liệu nhựa bền bỉ cùng các góc cạnh bo cong mềm mại.'),
(50, 4, 'Mobell Tab 8 Pro', 'images/50.png', 2980000, 'Tiếp nối sự thành công của chiếc tablet Mobell Tab 8 thì phiên bản cải tiến là chiếc Mobell Tab 8 Pro với cải tiến tốt hơn.\r\n\r\nHiệu năng ổn định trong tầm giá\r\n\r\nMobell Tab 8 Pro sở hữu con chip MTK 8321 4 nhân 1.33 GHz, chip đồ họa Mali-400MP, 1 GB RAM cùng bộ nhớ trong được nâng lên 16 GB (Mobell Tab 8 là 8 GB).\r\n\r\nMobell cũng trang bị cho Tab 8 Pro một loạt các cảm biến như G-cảm biến, ánh sáng giúp bạn sử dụng chiếc tablet của mình hiệu quả hơn.'),
(51, 4, 'Asus Zenfone Go ZB690KG', 'images/51.png', 2590000, 'Asus Zenfone Go ZB690KG là mẫu máy tính bảng giá rẻ của Asus năm 2016 với màn hình kích thước lớn cho bạn không gian giải trí thoải mái.\r\n\r\nThiết kế quen thuộc\r\n\r\nMáy sở hữu chất liệu nhựa nhám quen thuộc của các dòng tablet bình dân. Các góc cạnh của máy được bo cong mềm mại cho cảm giác cầm nắm khá thoải mái.'),
(52, 4, 'Acer Iconia Talk S A1-734', 'images/52.png', 2990000, 'Acer Iconia Talk S A1-734 với thiết kết tinh tế, cấu hình tốt cùng camera chất lượng khá sẽ đáp ứng tốt các nhu cầu giải trí của người dùng.\r\n\r\nThiết kế gọn gàng\r\n\r\nMáy sở hữu thiết kế gọn gàng với màn hình có kích thước 7 inch độ phân giải HD tỉ lệ 16.9 giúp người dùng có thể dễ dàng cầm nắm và sử dụng. Các góc cạnh của máy cũng bo tròn mềm mại cho bạn thoải mái khi sử dụng, không bị mỏi khi cầm một tay trong thời gian dài.'),
(53, 2, 'Nikon D3400 24.2MP', 'images/53.png', 9230000, 'Nhằm tránh mặt các đối thủ \"sừng sỏ\" trong phân khúc DSLR tầm trung và cao cấp, Nikon đã rất khôn khéo khi tung ra chiếc D3400 giá rẻ với nhiều tính năng hấp dẫn, nhằm chiếm lĩnh thị trường không kém phần quan trọng này.\r\nLà phiên bản kế nhiệm chiếc Nikon D3300, D3400 có thiết kế ngoại hình gần như không thay đổi, chỉ có kích thước và trọng lượng được giảm đi đôi chút, phù hợp với người dùng là giới trẻ và mới làm quen đến máy ảnh. Ngoài ra, các cổng kết nối phía bên hông D3400 đã được thay đổi, khi chỉ có duy nhất 2 cổng kết nối là Mini USB và HDMI.'),
(54, 2, 'Nikon Coolpix AW130', 'images/54.png', 7999000, 'Được sản xuất cho những người thích hoạt động ngoài trời, COOLPIX AW130 là một tay săn ảnh 16.0 megapixel*1 với cảm biến CMOS chiếu sáng mặt sau. Kết hợp với ống kính f/2.8 NIKKOR và hệ thống Chống Rung (VR), người sử dụng có thể chụp được những hình ảnh ngoạn mục với sự ảnh hưởng do lắc máy ảnh và độ che mờ tối thiểu. Những người yêu thích khám phá sẽ không gặp bất kỳ trở ngại nào khi chụp tất cả các hành động cận cảnh nhờ khả năng thu phóng quang 5x và thu phóng Dynamic Fine Zoom 10x*2.'),
(55, 2, 'Fujifilm Iinstax Mini 8 Kitty', 'images/55.png', 2280000, 'Thiết kế lạ mắt\r\nKhác hẳn với thiết kế nhỏ gọn của các dòng máy ảnh kỹ thuật số hiện thời, Fujifilm Instax Mini 8 sở hữu một vẻ ngoài trẻ trung, thú vị. Có vẻ như nhà sản xuất Nhật Bản đã dựa trên mẫu máy ảnh trong truyện tranh chú mèo máy Doraemon nổi tiếng để thiết kế ra Instax Mini 8 đấy. Tuy có kích thước khá to nhưng chiếc máy ảnh không hề trở nên thô kệch mà trái lại trông càng thêm đáng yêu và ngộ nghĩnh. Trọng lượng của máy chỉ 307g nên cũng đem đến cho bạn sự thuận tiện khi cầm trên tay, cho vào balo khi đi du lịch và nhanh chóng chụp lại những tấm hình đẹp nhất cho riêng mình.'),
(56, 2, 'Fujifilm Instax Wide 300 ', 'images/56.png', 200000, 'Kích thước ảnh: 99mm x 62mm,Ống kính: Đóng mở ống kính Fujino, 2 bộ phận, 2 cấu trúc, f = 95mm, F = 14,Độ lấy nét: Chế độ Bình thường: 0.9 ~ 3m – Chế độ phong cảnh: 3m ~ ∞,Màn trập:. Màn trập điện tử được lập trình, 1/64 ~ 1/200 giây,Phim: Hiển thị số ảnh còn lại,Nguồn điện: pin AA x 4,Kích thước: 94,5 H x 178.5 W 117,5 D ( mm),Trọng lượng (chỉ tính thân máy): 612g\r\n\r\n'),
(57, 3, 'Sony Xperia XA1 (Hồng)', 'images/57.jpg', 6490000, 'Xperia XA1 là bản nâng cấp của chiếc Xperia XA đã khá thành công ở thị trường nước ta, với thiết kế khá tương đồng siêu phẩm Xperia XZ, cấu hình được trang bị cao hơn và camera có chất lượng tốt hơn.\r\nĐiểm nâng cấp dễ dàng nhận thấy nhất của XA1 chính là thiết kế. Năm nay Sony vẫn giữ nguyên ưu điểm 2 cạnh bên không viền sexy, nhưng ngôn ngữ thiết kế được áp dụng trên XA1 lại mang hơi hướng giống với dòng flagship Xperia XZ hơn.'),
(58, 3, 'Asus Zenfone 2 Go ZB500KG', 'images/58.jpg', 1900000, 'Asus ZenFone 2 Go ZB500KG là bản nâng cấp đáng giá của ZenFone Go ZB452KG về camera và dung lượng pin, thiết kế quen thuộc được nhiều người yêu thích của ZenFone vẫn được giữ nguyên.\r\nThiết kế trên quen thuộc và đặc trưng của ZenFone qua nhiều phiên bản vẫn được giữ nguyên, và trên ZenFone 2 Go ta vẫn cảm nhận được sự chắc chắn, ôm tay và thoải mái khi cầm nắm. Tuy nhiên viền màn hình khá dày vẫn là một điểm trừ với thiết kế này.'),
(59, 3, 'Htc U11', 'images/59.png', 4200000, 'HTC U11 là smartphone cao cấp nhất của HTC trong năm 2017 với nhiều nâng cấp tập trung vào trải nghiệm người dùng thú vị so với model tiền nhiệm.\r\n\r\nThiết kế khác biệt\r\n\r\nHTC U11 mang một thiết kế hoàn toàn khác biệt với các smartphone đang có mặt trên thị trường. Máy sở hữu cho mình một mặt lưng bằng kính bóng loáng, bo cong mềm mại cho cảm giác cầm nắm thoải mái.'),
(60, 3, 'Nokia 3', 'images/60.png', 3000000, 'Thương hiệu Nokia vẫn rất được người dùng tin tưởng và đón chờ, năm nay hãng cũng đã đánh dấu sự trở lại với 3 mẫu điện thoại, Nokia 3 là một trong số đó.\r\n\r\nThiết kế hoàn thiện tốt\r\n\r\nNokia 3 vẫn có một phần nào đó thiết kế của hãng Nokia. Với thân máy polycarbonate điêu khắc và chế tác tỉ mỉ, khung nhôm mang lại cảm giác chắc chắn, từng chi tiết được hoàn thiện rất tốt tối ưu rất tốt cho việc sử dụng của người dùng.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `user_id` bigint(20) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `role` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `pass`, `role`) VALUES
(1, 'Hồ Ngọc Hà', 'hongocha01@gmail.com', '123456', b'1'),
(2, 'Mỹ Tâm', 'mytam02@gmail.com', '123456', b'0'),
(3, 'Sơn Tùng MTP', 'sontung03@gmail.com', '123456', b'0'),
(4, 'Đông Nhi', 'dongnhi04@gmail.com', '123456', b'0'),
(5, 'Noo Phước Thịnh', 'noophuocthinh05@gmail.com', '123456', b'0'),
(1498931271915, 'Cao Tuấn kiệt', '12adfsfs', '123456', b'0'),
(1499171892998, 'Thành', 'thanhnguyen@gmail.com', '123456', b'0'),
(1499188265432, 'Liêm', 'liemhuynh@gmail.com', '123456', b'1'),
(1499188395120, 'Đat', 'dkffskfj@gmail.com', '123456', b'1'),
(1499267886739, 'abc', 'abc@gmail.com', '123456', b'0'),
(1499280461651, 'Đạt Nguyễn', 'datnguyen19941@gmail.com', '123456', b'0'),
(1499321462926, 'Nguyễn Tiến Đạt', 'tiendat@gmail.com', '123456', b'1');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bill_id`);

--
-- Chỉ mục cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD PRIMARY KEY (`bill_detail_id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  MODIFY `bill_detail_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `product_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2147483647;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
