-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 03, 2023 lúc 06:22 PM
-- Phiên bản máy phục vụ: 8.0.34
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `nien_luan`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `username`, `password`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e'),
(2, 'hieuuser', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category_product`
--

CREATE TABLE `tbl_category_product` (
  `id_category_product` int UNSIGNED NOT NULL,
  `title_category_product` varchar(100) NOT NULL,
  `desc_category_product` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `tbl_category_product`
--

INSERT INTO `tbl_category_product` (`id_category_product`, `title_category_product`, `desc_category_product`) VALUES
(32, 'Áo sơ mi nữ', ''),
(33, 'Áo Thun Nữ Polo', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customers`
--

CREATE TABLE `tbl_customers` (
  `customer_id` int NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_phone` varchar(100) NOT NULL,
  `customer_email` varchar(200) NOT NULL,
  `customer_password` varchar(100) NOT NULL,
  `customer_address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `tbl_customers`
--

INSERT INTO `tbl_customers` (`customer_id`, `customer_name`, `customer_phone`, `customer_email`, `customer_password`, `customer_address`) VALUES
(1, 'Hiếu tấn', '65645645645', 'truongngoctanhieu2018@gmail.com', '25f9e794323b453885f5181f1b624d0b', 'Hà nội ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int NOT NULL,
  `order_code` varchar(100) NOT NULL,
  `order_date` varchar(100) NOT NULL,
  `order_status` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `order_code`, `order_date`, `order_status`) VALUES
(11, '5473', '04/12/2023 12:21:02am', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order_details`
--

CREATE TABLE `tbl_order_details` (
  `order_details_id` int NOT NULL,
  `order_code` varchar(100) NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `product_quantity` int NOT NULL,
  `name` varchar(200) NOT NULL,
  `sodienthoai` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `noidung` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `tbl_order_details`
--

INSERT INTO `tbl_order_details` (`order_details_id`, `order_code`, `product_id`, `product_quantity`, `name`, `sodienthoai`, `email`, `diachi`, `noidung`) VALUES
(7, '5473', 78, 1, 'Phạm Hửu Trí', '0704796583', 'phamhuutri101@gmail.com', 'Cần thơ', 'Giao gấp');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id_product` int UNSIGNED NOT NULL,
  `title_product` varchar(255) NOT NULL,
  `price_product` varchar(100) NOT NULL,
  `desc_product` text NOT NULL,
  `quantity_product` int NOT NULL,
  `image_product` varchar(100) NOT NULL,
  `id_category_product` int UNSIGNED NOT NULL,
  `product_hot` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`id_product`, `title_product`, `price_product`, `desc_product`, `quantity_product`, `image_product`, `id_category_product`, `product_hot`) VALUES
(76, 'Áo polo phối bo', '265000', '<p><strong>THUN C&Aacute; SẤU TICI - MẶC L&Agrave; ƯNG &Yacute;</strong></p>\r\n\r\n<p><br />\r\nRa mắt mẫu &aacute;o POLO PHỐI BO XINH XUẤT SẮC, thiết kế đơn giản nhưng diện l&ecirc;n sang chảnh v&ocirc; c&ugrave;ng.<br />\r\n<br />\r\nChất liệu thun thun c&aacute; sấu tici cải tiến, co gi&atilde;n tốt, mềm mịn tay, chỉ cần lướt nhẹ l&agrave; đủ cảm nhận chất lượng của từng mẫu &aacute;o.<br />\r\n<br />\r\nForm &aacute;o phối 3 n&uacute;t nhỏ, lai xẻ t&agrave; cuốn viền đẹp mắt. Th&ecirc;m phần bo cổ v&agrave; bo tay rất tinh tế, che được khuyết điểm sẽ gi&uacute;p bạn tự tin trong mọi hoạt động.<br />\r\n<br />\r\nÁo rất dễ mặc, form áo vừa vặn cơ thể, thoải mái theo từng cử động. Thiết kế trẻ trung, năng động giúp người mặc thỏa sức tung tăng cùng gia đình, bạn b&egrave;.&nbsp;</p>\r\n', 50, '2-TRANG-ATD120331701617123.jpg', 33, 1),
(77, 'Áo polo phối dây kéo ', '315000', '<h3>Đặc điểm nổi bật của sản phẩm</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Kiểu d&aacute;ng trẻ trung, xu hướng, chuẩn style thời thượng</p>\r\n	</li>\r\n	<li>\r\n	<p>Vải nhẹ, bền m&agrave;u,c&oacute; khả năng truyền dẫn kh&iacute; v&agrave; h&uacute;t ẩm tốt</p>\r\n	</li>\r\n	<li>\r\n	<p>Độ bền cao, khả năng co gi&atilde;n v&agrave; phục hồi form nhanh ch&oacute;ng</p>\r\n	</li>\r\n	<li>\r\n	<p>Chất liệu mềm mịn, tạo cảm gi&aacute;c tiếp x&uacute;c dễ chịu tr&ecirc;n bề mặt da</p>\r\n	</li>\r\n	<li>\r\n	<p>&Aacute;o Form cơ bản, tay ngắn, m&aacute;t mẻ, lưu hương tối đa</p>\r\n	</li>\r\n</ul>\r\n', 50, '2-TRANG-ATD110381701622189.jpg', 33, 0),
(78, 'Áo polo phối nút ', '249000', '<h3>Đặc điểm nổi bật của sản phẩm</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Form &aacute;o &ocirc;m gi&uacute;p t&ocirc;n l&ecirc;n đường cong tự nhi&ecirc;n, tạo vẻ quyến rũ v&agrave; nữ t&iacute;nh. Tay ngắn l&agrave; sự lựa chọn ho&agrave;n hảo cho những ng&agrave;y năng động.</p>\r\n	</li>\r\n	<li>\r\n	<p>Chất liệu thun g&acirc;n tạo n&ecirc;n sự co gi&atilde;n linh hoạt v&agrave; &ocirc;m s&aacute;t vừa vặn, tho&aacute;ng kh&iacute; đồng thời tạo cảm gi&aacute;c thoải m&aacute;i.</p>\r\n	</li>\r\n	<li>\r\n	<p>Trụ &aacute;o được thiết kế phối n&uacute;t nữ t&iacute;nh, tạo điểm nhấn vừa giản dị vừa thanh lịch . Lai tay v&agrave; lai &aacute;o kansai chắc chắn</p>\r\n	</li>\r\n	<li>\r\n	<p>L&agrave; sự kết hợp ho&agrave;n hảo cho cả những buổi gặp gỡ v&agrave; những hoạt động nhẹ nh&agrave;ng.</p>\r\n	</li>\r\n</ul>\r\n', 50, '2-xanh-atd100311701622431.jpg', 33, 1),
(79, 'Áo polo phối dây kéo', '249000', '<h3>Đặc điểm nổi bật của sản phẩm</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Form &aacute;o cơ bản tạo ra sự dễ d&agrave;ng kết hợp v&agrave; ph&ugrave; hợp với nhiều d&aacute;ng v&oacute;c. Thiết kế &aacute;o tay ngắn tạo vẻ trẻ trung, năng động</p>\r\n	</li>\r\n	<li>\r\n	<p>Chất liệu thun tổ ong co gi&atilde;n, dễ chịu v&agrave; rất tho&aacute;ng m&aacute;t.</p>\r\n	</li>\r\n	<li>\r\n	<p>Trụ &aacute;o được trang tr&iacute; bằng d&acirc;y k&eacute;o kim loại &aacute;nh v&agrave;ng, tạo điểm nhấn thanh lịch v&agrave; hiện đại. D&acirc;y k&eacute;o kh&ocirc;ng chỉ l&agrave; trang tr&iacute; m&agrave; c&ograve;n tăng th&ecirc;m t&iacute;nh tiện &iacute;ch, cho ph&eacute;p n&agrave;ng điều chỉnh thoải m&aacute;i. Lai tay v&agrave; lai &aacute;o kansai chắc chắn</p>\r\n	</li>\r\n	<li>\r\n	<p>Thiết kế trẻ trung, hiện đại v&agrave; năng động, ph&ugrave; hợp với những hoạt động ngo&agrave;i trời hoặc gặp gỡ hằng ng&agrave;y. Ph&ugrave; hợp để phối với những thiết kế kh&aacute;c nhau.</p>\r\n	</li>\r\n</ul>\r\n', 50, '3-den-atd100321701622424.jpg', 33, 1),
(80, 'Áo polo trụ kiểu ', '199000', '<h3>Đặc điểm nổi bật của sản phẩm</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Áo polo là sự lựa chọn t&ocirc;́i ưu cho những c&ocirc; nàng mu&ocirc;́n có sự thoải mái nhưng v&acirc;̃n thanh lịch, sang trọng.</p>\r\n	</li>\r\n	<li>\r\n	<p>Chất liệu thun g&acirc;n c&oacute; t&iacute;nh đ&agrave;n hồi tốt v&agrave; co gi&atilde;n linh hoạt, &ocirc;m sát cơ th&ecirc;̉ t&ocirc;n l&ecirc;n đường cong vóc dáng.</p>\r\n	</li>\r\n	<li>\r\n	<p>Với tay ngắn mang đến sự thoải m&aacute;i trong ng&agrave;y h&egrave; n&oacute;ng bức. Nàng tự tin diện &aacute;o trong những buổi dạo phố, hẹn h&ograve; hay gặp gỡ bạn b&egrave;.</p>\r\n	</li>\r\n	<li>\r\n	<p>Chất liệu thun g&acirc;n c&oacute; t&iacute;nh đ&agrave;n hồi tốt v&agrave; co gi&atilde;n linh hoạt, &ocirc;m sát cơ th&ecirc;̉ t&ocirc;n l&ecirc;n đường cong vóc dáng.</p>\r\n	</li>\r\n</ul>\r\n', 50, '2-be-atd080471701622529.jpg', 33, 0),
(81, 'Áo sơ mi lá cổ nhọn', '337500', '<h3>Đặc điểm nổi bật của sản phẩm</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Kiểu d&aacute;ng xinh xắn, trẻ trung, chuẩn girl thời thượng</p>\r\n	</li>\r\n	<li>\r\n	<p>D&agrave;y dặn, kh&ocirc;ng sợ lộ h&agrave;ng, tạo cảm gi&aacute;c tự tin cho người mặc</p>\r\n	</li>\r\n	<li>\r\n	<p>M&agrave;u sắc nịnh da, t&ocirc;n d&aacute;ng, che khuyết điểm</p>\r\n	</li>\r\n	<li>\r\n	<p>Đường may tỉ mỉ, kh&ocirc;ng bụi vải, kh&ocirc;ng chỉ thừa</p>\r\n	</li>\r\n	<li>\r\n	<p>Dễ d&agrave;ng giặt ủi, l&agrave;nh t&iacute;nh, th&acirc;n thiện với l&agrave;n da</p>\r\n	</li>\r\n</ul>\r\n', 50, '2-HONG-AD120541701622613.jpg', 32, 0),
(82, 'Áo sơ mi sọc', '315000', '<h3>Đặc điểm nổi bật của sản phẩm</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Kiểu d&aacute;ng xinh xắn, trẻ trung, chuẩn girl thời thượng</p>\r\n	</li>\r\n	<li>\r\n	<p>D&agrave;y dặn, kh&ocirc;ng sợ lộ h&agrave;ng, tạo cảm gi&aacute;c tự tin cho người mặc</p>\r\n	</li>\r\n	<li>\r\n	<p>M&agrave;u sắc nịnh da, t&ocirc;n d&aacute;ng, che khuyết điểm</p>\r\n	</li>\r\n	<li>\r\n	<p>Đường may tỉ mỉ, kh&ocirc;ng bụi vải, kh&ocirc;ng chỉ thừa</p>\r\n	</li>\r\n	<li>\r\n	<p>Dễ d&agrave;ng giặt ủi, l&agrave;nh t&iacute;nh, th&acirc;n thiện với l&agrave;n da</p>\r\n	</li>\r\n</ul>\r\n', 50, '2-TRANG-AD120411701622660.jpg', 32, 0),
(83, 'Áo sơ mi tay ngắn', '198000', '<h3>Đặc điểm nổi bật của sản phẩm</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Kiểu d&aacute;ng xinh xắn, trẻ trung, chuẩn girl thời thượng</p>\r\n	</li>\r\n	<li>\r\n	<p>D&agrave;y dặn, kh&ocirc;ng sợ lộ h&agrave;ng, tạo cảm gi&aacute;c tự tin cho người mặc</p>\r\n	</li>\r\n	<li>\r\n	<p>M&agrave;u sắc nịnh da, t&ocirc;n d&aacute;ng, che khuyết điểm</p>\r\n	</li>\r\n	<li>\r\n	<p>Đường may tỉ mỉ, kh&ocirc;ng bụi vải, kh&ocirc;ng chỉ thừa</p>\r\n	</li>\r\n	<li>\r\n	<p>Dễ d&agrave;ng giặt ủi, l&agrave;nh t&iacute;nh, th&acirc;n thiện với l&agrave;n da</p>\r\n	</li>\r\n</ul>\r\n', 50, '2-TRANG-AD110601701623214.jpg', 32, 0),
(84, 'Áo sơ mi cách điệu', '427500', '<h3>Đặc điểm nổi bật của sản phẩm</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>&Aacute;o sơ mi c&aacute;ch điệu kiểu form su&ocirc;ng, nhẹ nh&agrave;ng, duy&ecirc;n d&aacute;ng ph&ugrave; hợp cho mọi v&oacute;c d&aacute;ng, l&agrave; m&oacute;n đồ cơ bản kh&ocirc;ng thiếu trong tủ quần &aacute;o.</p>\r\n	</li>\r\n	<li>\r\n	<p>Chất liệu tơ xước mềm mại, thoải m&aacute;i, c&oacute; &aacute;o 2 d&acirc;y l&oacute;t chiffon đi k&egrave;m tinh tế, tạo n&ecirc;n lớp vải phối độc đ&aacute;o v&agrave; quyến rũ</p>\r\n	</li>\r\n	<li>\r\n	<p>Th&acirc;n trước cổ V quyến rũ, l&aacute; cổ c&aacute;ch điệu nhọn độc đ&aacute;o, mới lạ. Nẹp c&agrave;i khuy n&uacute;t tr&ecirc;n th&acirc;n &aacute;o tạo điểm nhấn thời trang sang trọng. Tay &aacute;o d&agrave;i gi&uacute;p tạo n&ecirc;n vẻ chuy&ecirc;n nghiệp v&agrave; lịch sự. Phần cổ tay nh&uacute;n nhẹ với măng-s&eacute;t c&agrave;i khuy n&uacute;t tinh tế.</p>\r\n	</li>\r\n	<li>\r\n	<p>Th&acirc;n sau r&atilde; đ&ocirc; cong gi&uacute;p tạo n&ecirc;n lớp vải x&ograve;e nhẹ thoải m&aacute;i. &Aacute;o lai bầu tinh tế gi&uacute;p che đi khuyết điểm v&agrave; t&ocirc;n l&ecirc;n vẻ nữ t&iacute;nh của n&agrave;ng.</p>\r\n	</li>\r\n</ul>\r\n', 50, '2-TRANG-AD100291701623513.jpg', 32, 1),
(85, 'Áo sơ mi thắt nơ', '387000', '<h3>Đặc điểm nổi bật của sản phẩm</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Form rộng mang lại sự thoải m&aacute;i v&agrave; ph&oacute;ng kho&aacute;ng, ph&ugrave; hợp với nhiều d&aacute;ng v&oacute;c, gi&uacute;p che được những khuyết điểm tr&ecirc;n cơ thể</p>\r\n	</li>\r\n	<li>\r\n	<p>Chất liệu tơ xước mềm mại, thoải m&aacute;i. &Aacute;o sơ mi thắt nơ tinh tế, gi&uacute;p n&agrave;ng trở n&ecirc;n dễ thương v&agrave; nữ t&iacute;nh hơn bao giờ hết</p>\r\n	</li>\r\n	<li>\r\n	<p>Thiết kế t&uacute;i đắp ph&aacute; c&aacute;ch ở phần th&acirc;n &aacute;o trước. Th&acirc;n sau r&atilde; đ&ocirc; v&agrave; lai &aacute;o lượn tạo n&ecirc;n sự thoải m&aacute;i v&agrave; phong c&aacute;ch, tăng th&ecirc;m điểm nhấn th&uacute; vị. Ở vị tr&iacute; ngang eo, c&oacute; hai d&acirc;y nhỏ được may để n&agrave;ng c&oacute; thể thắt nơ, tạo n&ecirc;n đường n&eacute;t &ocirc;m eo tinh tế v&agrave; nữ t&iacute;nh</p>\r\n	</li>\r\n	<li>\r\n	<p>Thiết kế thanh lịch, thời thượng, dễ d&agrave;ng mix &amp; match với c&aacute;c trang phục kh&aacute;c.</p>\r\n	</li>\r\n</ul>\r\n', 50, '2-DEN-AD100521701623576.jpg', 32, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  ADD PRIMARY KEY (`id_category_product`);

--
-- Chỉ mục cho bảng `tbl_customers`
--
ALTER TABLE `tbl_customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD PRIMARY KEY (`order_details_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `id_category_product` (`id_category_product`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  MODIFY `id_category_product` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `tbl_customers`
--
ALTER TABLE `tbl_customers`
  MODIFY `customer_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  MODIFY `order_details_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id_product` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD CONSTRAINT `tbl_order_details_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`id_product`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD CONSTRAINT `tbl_product_ibfk_1` FOREIGN KEY (`id_category_product`) REFERENCES `tbl_category_product` (`id_category_product`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
