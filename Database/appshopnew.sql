-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 25, 2020 lúc 02:13 PM
-- Phiên bản máy phục vụ: 10.4.13-MariaDB
-- Phiên bản PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `appshopnew`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietmuahang`
--

CREATE TABLE `chitietmuahang` (
  `id` int(11) NOT NULL,
  `madonhang` varchar(200) NOT NULL,
  `masanpham` int(11) NOT NULL,
  `tensanpham` varchar(500) NOT NULL,
  `giadonhang` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `ngaydathang` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `chitietmuahang`
--

INSERT INTO `chitietmuahang` (`id`, `madonhang`, `masanpham`, `tensanpham`, `giadonhang`, `soluong`, `ngaydathang`) VALUES
(6, '﻿213', 121, 'Tai Nghe Bluetooth chụp tai SOUL Ultra Wireless Dynamic SU34BK Đen', 2780000, 2, '2020-05-10 10:17:24'),
(7, '﻿214', 120, 'Tai nghe Bluetooth True Wireless Anker Liberty 2 Pro A3909 Đen', 3500000, 1, '2020-05-10 10:18:00'),
(8, '﻿215', 121, 'Tai Nghe Bluetooth chụp tai SOUL Ultra Wireless Dynamic SU34BK Đen', 1390000, 1, '2020-05-21 17:02:23'),
(9, '﻿216', 121, 'Tai Nghe Bluetooth chụp tai SOUL Ultra Wireless Dynamic SU34BK Đen', 2780000, 2, '2020-05-21 17:04:22'),
(10, '﻿217', 121, 'Tai Nghe Bluetooth chụp tai SOUL Ultra Wireless Dynamic SU34BK Đen', 1390000, 1, '2020-05-21 17:05:49'),
(11, '﻿218', 121, 'Tai Nghe Bluetooth chụp tai SOUL Ultra Wireless Dynamic SU34BK Đen', 1390000, 1, '2020-05-21 17:06:33'),
(12, '﻿219', 120, 'Tai nghe Bluetooth True Wireless Anker Liberty 2 Pro A3909 Đen', 14000000, 4, '2020-05-21 17:13:50'),
(13, '﻿220', 121, 'Tai Nghe Bluetooth chụp tai SOUL Ultra Wireless Dynamic SU34BK Đen', 1390000, 1, '2020-05-21 17:36:48'),
(14, '﻿221', 90, 'Laptop Asus VivoBook X509FA', 23380000, 2, '2020-05-21 17:56:55'),
(15, '﻿221', 91, 'Laptop Lenovo IdeaPad S340', 1700000, 1, '2020-05-21 17:56:55'),
(16, '﻿222', 121, 'Tai Nghe Bluetooth chụp tai SOUL Ultra Wireless Dynamic SU34BK Đen', 1390000, 1, '2020-06-24 20:23:45'),
(17, '﻿222', 120, 'Tai nghe Bluetooth True Wireless Anker Liberty 2 Pro A3909 Đen', 3500000, 1, '2020-06-24 20:23:45'),
(18, '﻿223', 120, 'Tai nghe Bluetooth True Wireless Anker Liberty 2 Pro A3909 Đen', 3500000, 1, '2020-06-24 20:26:03'),
(19, '224', 121, 'Tai Nghe Bluetooth chụp tai SOUL Ultra Wireless Dynamic SU34BK Đen', 1390000, 1, '2020-06-25 10:36:59'),
(20, '224', 120, 'Tai nghe Bluetooth True Wireless Anker Liberty 2 Pro A3909 Đen', 3500000, 1, '2020-06-25 10:36:59'),
(21, '225', 119, 'Đồng hồ Nam Timex TW2R49900', 5526000, 2, '2020-06-25 10:38:42'),
(22, '225', 116, 'Điện thoại Xiaomi Redmi Note 9S', 5990000, 1, '2020-06-25 10:38:42'),
(23, '225', 113, 'Máy tính bảng iPad 10.2 inch Wifi 32GB', 150000, 1, '2020-06-25 10:38:42'),
(24, '226', 99, 'Máy tính bảng Samsung Galaxy Tab S6', 18990000, 1, '2020-06-25 11:06:04'),
(25, '227', 124, 'Điện thoại Vivo V19', 8590000, 1, '2020-06-25 14:53:51'),
(26, '228', 94, 'Laptop HP EliteBook X360 1030 G3', 15990000, 1, '2020-06-25 15:10:45'),
(27, '228', 97, 'Máy tính bảng iPad 10.2 inch Wifi 32GB', 150000, 1, '2020-06-25 15:10:45'),
(28, '228', 103, 'Đồng hồ Nam Timex TW2R49900', 8289000, 3, '2020-06-25 15:10:45'),
(29, '229', 105, 'Tai Nghe Bluetooth chụp tai SOUL Ultra Wireless Dynamic SU34BK Đen', 1390000, 1, '2020-06-25 15:45:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `id` int(11) NOT NULL,
  `tenkhachhang` varchar(200) NOT NULL,
  `sodienthoai` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `ngaydathang` datetime NOT NULL,
  `xacnhan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`id`, `tenkhachhang`, `sodienthoai`, `email`, `diachi`, `ngaydathang`, `xacnhan`) VALUES
(123, 'khanh', 964238041, 'khanh@gmail.com', 'ha noi', '0000-00-00 00:00:00', 0),
(129, 'khanh', 1234565432, 'khanh@gmail.com', 'CLB Ha Nội FC', '0000-00-00 00:00:00', 0),
(130, 'khanh', 123456789, 'aa', 'aa', '2020-05-08 18:30:43', 0),
(131, 'khanhnd', 5555555, 'a@gmail.com', 'a@gmail.com', '2020-05-08 18:32:46', 0),
(132, 'hh', 8552, 'tr', 'tr', '2020-05-08 18:35:10', 0),
(133, 'q', 5, 'q', 'q', '2020-05-08 18:51:12', 0),
(134, 'q', 4, 'q', 'q', '2020-05-08 18:53:23', 0),
(135, 'q', 4, 'q', 'q', '2020-05-08 18:53:26', 0),
(136, 'khanh', 986457328, 'khanh@gmail.com', 'khanh@gmail.com', '2020-05-09 03:51:06', 0),
(137, 'tung', 123456789, 'tt', 'tt', '2020-05-09 03:56:25', 0),
(138, 'kkkk', 986523, 'kkk', 'kkk', '2020-05-09 04:01:03', 0),
(139, 'qq', 0, 'dddd', 'dddd', '2020-05-09 04:07:37', 0),
(140, 'qq', 0, 'dddd', 'dddd', '2020-05-09 04:07:40', 0),
(141, 'qq', 0, 'dddd', 'dddd', '2020-05-09 04:07:43', 0),
(142, 'qq', 0, 'dddd', 'dddd', '2020-05-09 04:07:43', 0),
(143, 'qq', 0, 'dddd', 'dddd', '2020-05-09 04:07:43', 0),
(144, 'qq', 0, 'dddd', 'dddd', '2020-05-09 04:07:44', 0),
(145, 'qq', 0, 'dddd', 'dddd', '2020-05-09 04:07:44', 0),
(146, 'qq', 0, 'dddd', 'dddd', '2020-05-09 04:07:45', 0),
(147, 'qq', 0, 'dddd', 'dddd', '2020-05-09 04:07:46', 0),
(148, 'qq', 0, 'dddd', 'dddd', '2020-05-09 04:07:46', 0),
(149, 'qq', 0, 'dddd', 'dddd', '2020-05-09 04:07:46', 0),
(150, 'qqqqq', 89456225, 'kk@dv.com', 'kk@dv.com', '2020-05-09 04:08:10', 0),
(151, 'qqqqq', 89456225, 'kk@dv.com', 'kk@dv.com', '2020-05-09 04:08:39', 0),
(152, 'qqqqq', 89456225, 'kk@dv.com', 'kk@dv.com', '2020-05-09 04:08:46', 0),
(153, 'van', 123456, 'aaa', 'aaa', '2020-05-09 09:37:53', 0),
(154, 'van', 85236974, 'khanh@gmail.com', 'khanh@gmail.com', '2020-05-09 09:47:05', 0),
(155, 'khanh duy', 986457328, 'khanhth99@gmail.com', 'khanhth99@gmail.com', '2020-05-09 09:51:23', 0),
(156, 'kkkkkkkkkkkkkkkkkkkkkkkk', 2147483647, 'kkkkkkkkkkkkkkkkkkkkkkkkkk', 'kkkkkkkkkkkkkkkkkkkkkkkkkk', '2020-05-09 11:08:25', 0),
(157, 'nguyenduy khanh', 986457328, 'khanhth99@gmail.com', 'khanhth99@gmail.com', '2020-05-09 11:50:03', 0),
(158, 'nguyenduy khanh', 986457328, 'khanhth99@gmail.com', 'khanhth99@gmail.com', '2020-05-09 11:50:06', 0),
(159, 'a', 13456789, 'khanhth99@gmail.com', 'khanhth99@gmail.com', '2020-05-09 11:52:51', 0),
(160, 'a', 986457328, 'khanhth99@gmail.com', 'khanhth99@gmail.com', '2020-05-09 12:09:04', 0),
(161, 'a', 986457328, 'khanhth99@gmail.com', 'khanhth99@gmail.com', '2020-05-09 12:09:07', 0),
(162, 'khanh tung', 123456798, 'khanhth99@gmail.com', 'khanhth99@gmail.com', '2020-05-09 12:15:02', 0),
(163, 'khanhtung', 258963, 'khanhth99@gmail.com', 'khanhth99@gmail.com', '2020-05-09 12:16:09', 0),
(164, 'a', 2147483647, 'khanhth99@gmail.com', 'khanhth99@gmail.com', '2020-05-09 12:20:11', 0),
(165, 'a', 2147483647, 'khanhth99@gmail.com', 'khanhth99@gmail.com', '2020-05-09 12:20:13', 0),
(166, 'cuong tran', 123456999, 'iammaytinhdibo@gmail.com', 'iammaytinhdibo@gmail.com', '2020-05-09 12:22:04', 0),
(167, 'cuong tran', 123456999, 'iammaytinhdibo@gmail.com', 'iammaytinhdibo@gmail.com', '2020-05-09 12:22:06', 0),
(168, 'a', 2, 'donlykhanh99@gmail.com', 'donlykhanh99@gmail.com', '2020-05-09 13:37:06', 0),
(169, 'a', 2, 'donlykhanh99@gmail.com', 'donlykhanh99@gmail.com', '2020-05-09 13:37:09', 0),
(170, 'a', 1236, 'donlykhanh99@gmail.com', 'donlykhanh99@gmail.com', '2020-05-09 13:39:07', 0),
(171, 'a', 123, 'khanhth99@gmail.com', 'khanhth99@gmail.com', '2020-05-09 13:44:21', 0),
(172, 'a', 123, 'khanhth99@gmail.com', 'khanhth99@gmail.com', '2020-05-09 13:44:23', 0),
(173, 'com', 2, 'khanhth99@gmail.com', 'khanhth99@gmail.com', '2020-05-09 13:55:47', 0),
(174, 'com', 2, 'khanhth99@gmail.com', 'khanhth99@gmail.com', '2020-05-09 13:55:50', 0),
(175, 'nguyen duy khanh', 986457328, 'khanhth99@gmail.com', 'khanhth99@gmail.com', '2020-05-09 14:12:38', 0),
(176, 'khanh', 111, 'sedfdf', 'sedfdf', '2020-05-09 14:16:45', 0),
(177, 'khanh th 99', 123456999, 'khanh@gmail.cm', 'khanh@gmail.cm', '2020-05-09 14:18:40', 0),
(178, 'kkkanh', 1114422, 'adad', 'aaaaaaaaaaaaaaaaaaa', '2020-05-09 14:21:57', 0),
(179, 'nguyen khanh duy', 2147483647, 'khanhth99@gmail.com', 'Thon trung thanh linh thanh chuong nghe an', '2020-05-09 14:38:27', 0),
(180, 'a', 2, 'aa', 'a', '2020-05-09 14:42:26', 0),
(181, 'a', 2, 'a', 'ccccccccccc', '2020-05-09 14:43:57', 0),
(182, 'khanh', 54264, 'khanhth99@gmail.com', 'Ha Noi Cau Giay', '2020-05-09 14:46:57', 0),
(183, 'khanh kk', 123, 'khanhth99@gmail.com', 'abc', '2020-05-09 14:49:46', 0),
(184, 'kanhhhhh', 9999, 'khanhth99@gmail.com', 'ha noi ham nghi', '2020-05-09 15:23:19', 0),
(185, 'khanhth99', 12345555, 'khanhth99@gmail.com', 'khanhth nguyen duy asdadadasd', '2020-05-09 15:26:10', 0),
(186, 'khanhth99', 12345555, 'khanhth99@gmail.com', 'khanhth nguyen duy asdadadasd', '2020-05-09 15:43:52', 0),
(187, 'a', 986457328, 'donlykhanh99@gmail.com', 'khanh ktx my dinh ham nghi hn', '2020-05-09 16:00:14', 0),
(188, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 123, 'a', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '2020-05-09 16:36:24', 0),
(189, 'a', 2, 'a', 'aaaaaaaaaaaaaaaaaaaaaaaaaaa', '2020-05-09 16:44:41', 0),
(190, 'abbbbbbbbbbbbb', 2, 'a', 'aaaaaaaaaaaaaaaacccccccccccccccc', '2020-05-09 16:47:55', 0),
(191, 'ssssssssssssssss', 2147483647, 'sssssssssssssssssss', 'ssssssssssssssss', '2020-05-09 16:50:44', 0),
(192, 'bbbbbbbbbbbbbbb', 2147483647, 'bbbbbbbbbbbbbbbbb', 'bbbbbbbbbbbbbbbbb', '2020-05-09 16:51:55', 0),
(193, 'Nguyen Duy Khanh', 986457328, 'khanhth99@gmail.com', 'cao cap nha ha noi', '2020-05-09 17:04:13', 0),
(194, 'khanh hhh kkk', 1424, 'ádasd', 'sdfsf', '2020-05-09 17:07:37', 0),
(195, 'mmmm', 66666, 'mmmm', 'mmmmm', '2020-05-09 17:33:19', 0),
(196, 'khanh tung', 123456789, 'khanhth99@gmail.com', '123456', '2020-05-09 19:16:23', 0),
(197, 'khanh tta', 22222222, 'aaaaaaa', 'aaaaaaaaaa', '2020-05-09 19:23:52', 0),
(198, 'khanhnd', 1111111111, 'aaaaaaa', 'bbbbbbbbbbbbbbbbbbbbn', '2020-05-09 19:30:16', 0),
(199, 'khanhkkkkkkkkkkk', 2147483647, 'aaaaaaaaaaaaaaa', 'ssssssssssssssssssssssssssssss', '2020-05-09 19:33:47', 0),
(200, 'aaaa', 2147483647, 'aaaaaaaaaaaa', 'aaaaaaaaaaaaaaaaa', '2020-05-09 19:35:06', 0),
(201, 'adadad', 112424242, 'ad', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '2020-05-09 19:51:08', 0),
(202, 'khanh', 1245478, 'khanhth99@gmail.com', 'ha noi', '2020-05-09 19:54:59', 0),
(203, 'khanh 10 05', 1025, 'khanh@gmail.com', 'thontungthanhlinh', '2020-05-10 09:10:17', 0),
(204, 'sa', 2, 'ad', 'ad', '2020-05-10 09:23:35', 0),
(205, 'a', 2, 'adada', 'a', '2020-05-10 09:27:05', 0),
(206, 'a', 2, 'a', 'a', '2020-05-10 09:39:39', 0),
(207, 'a', 2, 'a', 'a', '2020-05-10 09:55:40', 0),
(208, 'a', 2, 'd', 'a', '2020-05-10 09:59:57', 0),
(209, 'kakak', 525252, 'sdsad', 'dsdasd', '2020-05-10 10:07:31', 0),
(210, 'a', 2, 'a', 'a', '2020-05-10 10:08:26', 0),
(211, '1', 10, '10', '10', '2020-05-10 10:10:13', 0),
(212, 'k', 5, 'k', 'k', '2020-05-10 10:12:29', 0),
(213, 'a', 2, 'a', 'a', '2020-05-10 10:15:17', 0),
(214, 'khanh nguyen duy', 12222222, 'kkkkkaaa', 'kkaaaaaaaaaaaaaaaaa', '2020-05-10 10:18:00', 0),
(215, 'a', 111, 'khanhth99@gmail.com', '123456', '2020-05-21 17:02:23', 0),
(216, 'a', 2222, 'cccc', 'cccc', '2020-05-21 17:04:22', 0),
(217, 'kkk', 5555, 'kkkk', 'kkkk', '2020-05-21 17:05:48', 0),
(218, 'aa', 222, 'aaaa', 'sssss', '2020-05-21 17:06:33', 0),
(221, 'khanh', 123456789, 'khsnhth99@gmil.com', 'aaaa', '2020-05-21 17:56:55', 0),
(222, 'duy khanh', 986457328, 'khanhth99@gmail.com', 'khanhth99', '2020-06-24 20:23:45', 1),
(224, 'duy khánh', 986457328, 'khanhth99', 'nsnsnsns', '2020-06-25 10:36:59', 0),
(225, 'nguyễn duy khánh', 986457328, 'khanhth9o@gmail.com', 'ha noi', '2020-06-25 10:38:42', 1),
(226, 'khanhth99', 986457328, 'khanhth99@gmail.com', 'jajana', '2020-06-25 11:06:04', 1),
(227, 'khanhduy', 986457328, 'khanhth99@gmail.com', 'ha noi', '2020-06-25 14:53:51', 0),
(228, 'nguyen duy khanh', 986457328, 'khanhth99@gmail.com', 'xuan thuy ha noi', '2020-06-25 15:10:45', 0),
(229, 'a khanh', 986457328, 'khanhth99@gmail.com', 'xuan thuy ha noi', '2020-06-25 15:45:38', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `hoten` varchar(200) NOT NULL,
  `email` varchar(255) NOT NULL,
  `matkhau` varchar(50) NOT NULL,
  `flag` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`id`, `ten`, `hoten`, `email`, `matkhau`, `flag`) VALUES
(1, 'admin', '', 'admin@gmail.com', '202cb962ac59075b964b07152d234b70', 1),
(2, 'khanh', '', 'khanh@gmail.com', '202cb962ac59075b964b07152d234b70', NULL),
(3, 'khanh nd', '', 'khanhth99@gmail.com', '202cb962ac59075b964b07152d234b70', NULL),
(4, 'a', '', 'a@gmail.com', '0cc175b9c0f1b6a831c399e269772661', NULL),
(5, 'haha', '', 'hahaha@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL),
(6, 'khanhth99', 'nguyễn duy khánh', 'khanhth99999@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `id` int(11) NOT NULL,
  `tenLoaiSanPham` varchar(200) NOT NULL,
  `hinhAnhLoaiSanPham` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`id`, `tenLoaiSanPham`, `hinhAnhLoaiSanPham`) VALUES
(1, 'Laptop', 'https://kdegroup.com.vn/wp-content/uploads/2020/05/computing.png'),
(2, 'Tablet', 'https://kdegroup.com.vn/wp-content/uploads/2020/05/tablet.png'),
(3, 'Điện thoại', 'https://kdegroup.com.vn/wp-content/uploads/2020/05/phone.png'),
(4, 'Đồng hồ', 'https://kdegroup.com.vn/wp-content/uploads/2020/05/watch.png'),
(5, 'Phụ kiện', 'https://kdegroup.com.vn/wp-content/uploads/2020/05/phukien.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `tenSanPham` varchar(200) NOT NULL,
  `giaSanPham` int(15) NOT NULL,
  `hinhAnhSanPham` varchar(200) NOT NULL,
  `moTaSanPham` varchar(1000) NOT NULL,
  `idLoaiSanPham` int(3) NOT NULL,
  `hot` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `tenSanPham`, `giaSanPham`, `hinhAnhSanPham`, `moTaSanPham`, `idLoaiSanPham`, `hot`) VALUES
(90, 'Laptop Asus VivoBook X509FA', 11690000, 'https://cdn.tgdd.vn/Products/Images/44/220575/asus-vivobook-x509fa-i3-8145u-4gb-512gb-chuot-win1-220575copy-400x400.jpg', 'Nếu bạn là sinh viên hay nhân viên văn phòng đang tìm một chiếc laptop có cấu hình ổn định, phù hợp mang theo đi làm mỗi ngày thì laptop Asus VivoBook X509FA là một sự lựa chọn đáng để bạn cân nhắc.\r\nCấu hình dành cho dân văn phòng\r\nĐược trang bị chip xử lý Core i3 thế hệ thứ 8, laptop Asus VivoBook X509FA sẽ làm bạn hài lòng khi thực hiện các tác vụ văn phòng như soạn thảo hợp đồng, các thư từ kinh doanh hay giải trí, lướt web, nghe nhạc,...\r\n\r\nRAM 4 GB DDR4 sẽ cho bạn cùng lúc làm việc trên nhiều tab khác nhau mà không giật lag.\r\n\r\nAsus hỗ trợ khe RAM cho phép nâng cấp tối đa lên đến 20 GB RAM nếu bạn thường xuyên làm việc đa nhiệm nhiều ứng dụng.', 1, 0),
(91, 'Laptop Lenovo IdeaPad S340', 1700000, 'https://cdn.tgdd.vn/Products/Images/44/214710/lenovo-ideapad-s340-14iil-i3-1005g1-8gb-512gb-win1-18-400x400.jpg', '-Bộ xử lý\r\nCông nghệ CPU:	Intel Core i3 Ice Lake\r\nLoại CPU:	1005G1\r\nTốc độ CPU:	1.20 GHz\r\nTốc độ tối đa:	Turbo Boost 3.4 GHz\r\n-Bộ nhớ RAM, Ổ cứng\r\nRAM:	8 GB\r\nLoại RAM:	DDR4 (On board 4GB +1 khe 4GB)\r\nTốc độ Bus RAM:	2666 MHz\r\nHỗ trợ RAM tối đa:	12 GB\r\nỔ cứng:	SSD 512 GB M.2 PCIe, Hỗ trợ khe cắm HDD SATA\r\n-Màn hình\r\nKích thước màn hình:	14 inch\r\nĐộ phân giải:	Full HD (1920 x 1080)\r\nCông nghệ màn hình:	60Hz, Tấm nền TN, Anti-Glare\r\nMàn hình cảm ứng:	Không\r\n-Đồ họa và Âm thanh\r\nThiết kế card:	Card đồ họa tích hợp\r\nCard đồ họa:	Intel UHD Graphics\r\nCông nghệ âm thanh:	Dolby Audio\r\n-Cổng kết nối & tính năng mở rộng\r\nCổng giao tiếp:	2 x USB 3.1, HDMI, USB Type-C\r\nKết nối không dây:	Bluetooth 4.2, Wi-Fi 802.11 a/b/g/n/ac\r\nKhe đọc thẻ nhớ:	SD\r\nỔ đĩa quang:	Không\r\nWebcam:	HD webcam\r\nTính năng khác:	Không\r\nĐèn bàn phím:	Không\r\n-PIN\r\nLoại PIN:	PIN liền\r\nThông tin Pin:	Li-Ion 3 cell\r\n-Hệ điều hành\r\nHệ điều hành:	Windows 10 Home SL\r\n-Kích thước & trọng lượng\r\nKích thước:	Dài 322.7 mm - Rộng 230.5 mm', 1, 0),
(92, 'Laptop Apple MacBook Air 2019', 34990000, 'https://cdn.tgdd.vn/Products/Images/44/218493/apple-macbook-air-2019-i5-16ghz-8gb-256gb-mvfl2sa-600x600.jpg', 'Thông số kỹ thuật\r\nCPU:	Intel Core i5 Coffee Lake, 1.60 GHz\r\nRAM:	8 GB, LPDDR3, 2133 MHz\r\nỔ cứng:	SSD: 256 GB\r\nMàn hình:	13.3 inch, Retina (2560 x 1600)\r\nCard màn hình:	Card đồ họa tích hợp, Intel UHD Graphics 617\r\nCổng kết nối:	2 x Thunderbolt 3 (USB-C)\r\nHệ điều hành:	Mac OS\r\nThiết kế:	Vỏ kim loại nguyên khối, PIN liền\r\nKích thước:	Dày 4.1 đến 15.6 mm, 1.25 kg\r\nThời điểm ra mắt:	2019', 1, 0),
(93, 'Laptop Asus Gaming ROG Strix G531', 35990000, 'https://cdn.tgdd.vn/Products/Images/44/209617/asus-rog-g531-i7-9750h-8gb-512gb-6gb-gtx2060-win10-14-600x600.jpg', 'Thông số kỹ thuật\r\nCPU:	Intel Core i7 Coffee Lake, 9750H, 2.60 GHz\r\nRAM:	8 GB, DDR4 (2 khe), 2666 MHz\r\nỔ cứng:	SSD 512 GB M.2 PCIe, Hỗ trợ khe cắm HDD SATA\r\nMàn hình:	15.6 inch, Full HD (1920 x 1080)\r\nCard màn hình:	Card đồ họa rời, NVIDIA® GeForce RTX™ 2060, 6GB\r\nCổng kết nối:	HDMI 2.0, 3 x USB 3.1, LAN (RJ45), USB Type-C\r\nHệ điều hành:	Windows 10 Home SL\r\nThiết kế:	Vỏ kim loại, PIN liền\r\nKích thước:	Dày 26 mm, 2.4 kg\r\nThời điểm ra mắt:	2019', 1, 0),
(94, 'Laptop HP EliteBook X360 1030 G3', 15990000, 'https://cdn.tgdd.vn/Products/Images/44/204853/hp-elitebook-x360-1030-g3-i7-8550u-8gb-256gb-133f-204853-600x600.jpg', 'Thông số kỹ thuật\r\nCPU:	Intel Core i7 Coffee Lake, 8550U, 1.80 GHz\r\nRAM:	8 GB, DDR3, 2133 MHz\r\nỔ cứng:	SSD 256GB NVMe PCIe\r\nMàn hình:	13.3 inch, Full HD (1920 x 1080)\r\nCard màn hình:	Card đồ họa tích hợp, Intel® UHD Graphics 620\r\nCổng kết nối:	USB 3.1, HDMI, 2 x Thunderbolt 2\r\nHệ điều hành:	Windows 10 Pro\r\nThiết kế:	Vỏ kim loại nguyên khối, PIN liền\r\nKích thước:	Dày 15.7 mm, 1.32 kg\r\nThời điểm ra mắt:	2019', 1, 0),
(95, 'Máy tính bảng Samsung Galaxy Tab A 10.1 T515', 10990000, 'https://cdn.tgdd.vn/Products/Images/522/200963/samsung-galaxy-tab-a-101-t515-2019-gold-400x460.png', 'Thông số kỹ thuật\r\nMàn hình	TFT LCD, 10.1\"\r\nHệ điều hành	Android 9.0 (Pie)\r\nCPU	Exynos 7904 8 nhân, 2 nhân 1.8 GHz & 6 nhân 1.6 GHz\r\nRAM	3 GB\r\nBộ nhớ trong	32 GB\r\nCamera sau	8 MP\r\nCamera trước	5 MP\r\nKết nối mạng	WiFi, 3G, 4G LTE\r\nHỗ trợ SIM\r\nNano Sim\r\nHOTSIM Vina Bùm 120 (2GB/ngày)\r\nĐàm thoại	Có', 2, 0),
(96, 'Máy tính bảng Huawei MediaPad M5 Lite\r\n', 6890000, 'https://cdn.tgdd.vn/Products/Images/522/215685/huawei-mediapad-m5-lite-gray-400x400.jpg', 'Thông số kỹ thuật\r\nMàn hình	IPS LCD Full HD, 10.1\"\r\nHệ điều hành	Android 8.0\r\nCPU	Kirin 659, 1.7 GHz\r\nRAM	4 GB\r\nBộ nhớ trong	64 GB\r\nCamera sau	8 MP\r\nCamera trước	8 MP\r\nKết nối mạng	WiFi, 3G, 4G LTE\r\nHỗ trợ SIM\r\nNano Sim\r\nHOTSIM Vina Bùm 120 (2GB/ngày)\r\nĐàm thoại	Có', 2, 0),
(97, 'Máy tính bảng iPad 10.2 inch Wifi 32GB', 150000, 'https://cdn.tgdd.vn/Products/Images/522/213096/ipad-10-2-inch-wifi-32gb-2019-gold-400x460.png', 'Thông số kỹ thuật\r\nMàn hình	LED backlit LCD, 10.2\"\r\nHệ điều hành	iOS 13\r\nCPU	Apple A10 Fusion 4 nhân, 2.34 GHz\r\nRAM	3 GB\r\nBộ nhớ trong	32 GB\r\nCamera sau	8 MP\r\nCamera trước	1.2 MP\r\nKết nối mạng	WiFi, Không hỗ trợ 3G, Không hỗ trợ 4G\r\nĐàm thoại	FaceTime\r\nTrọng lượng	483 g', 2, 0),
(98, 'Samsung Galaxy Tab S6 Lite', 9900000, 'https://cdn.tgdd.vn/Products/Images/522/219912/samsung-galaxy-tab-s6-lite-600x600-1-200x200.jpg', 'THÔNG SỐ KỸ THUẬT\r\nMàn hình	PLS LCD, 10.4\"\r\nHệ điều hành	Android 10\r\nCPU	Exynos 9611 8 nhân, 4 nhân 2.3 GHz & 4 nhân 1.7 GHz\r\nRAM	4 GB\r\nBộ nhớ trong	64 GB\r\nCamera sau	8 MP\r\nCamera trước	5 MP\r\nKết nối mạng	WiFi, 3G, 4G LTE\r\nHỗ trợ SIM\r\nNano Sim\r\nHOTSIM Vina Bùm 120 (2GB/ngày)\r\nĐàm thoại	Có\r\nTrọng lượng	467 g\r\nDung lượng pin	7040 mAh', 2, 0),
(99, 'Máy tính bảng Samsung Galaxy Tab S6', 18990000, 'https://cdn.tgdd.vn/Products/Images/522/208870/samsung-galaxy-tab-s6-400x460.png', 'Thông số kỹ thuật\r\nMàn hình	Super AMOLED, 10.5\"\r\nHệ điều hành	Android 9.0 (Pie)\r\nCPU	Snapdragon 855 8 nhân, 1 nhân 2.84 GHz, 3 nhân 2.41 GHz & 4 nhân 1.78 GHz\r\nRAM	6 GB\r\nBộ nhớ trong	128 GB\r\nCamera sau	Chính 13 MP & Phụ 5 MP\r\nCamera trước	8 MP\r\nKết nối mạng	WiFi, 3G, 4G LTE\r\nHỗ trợ SIM\r\nNano Sim\r\nHOTSIM Vina Bùm 120 (2GB/ngày)\r\nĐàm thoại	Có', 2, 0),
(100, 'Điện thoại Xiaomi Redmi Note 9S', 5990000, 'https://cdn.tgdd.vn/Products/Images/42/214924/xiaomi-redmi-note-9s-4gb-green-400x460-400x400.jpg', 'Thông số kỹ thuật\r\nMàn hình:	IPS LCD, 6.67\", Full HD+\r\nHệ điều hành:	Android 10\r\nCamera sau:	Chính 48 MP & Phụ 8 MP, 5 MP, 2 MP\r\nCamera trước:	16 MP\r\nCPU:	Snapdragon 720G 8 nhân\r\nRAM:	6 GB\r\nBộ nhớ trong:	128 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G\r\nHOTSIM Vina Bùm 120 (2GB/ngày)\r\nDung lượng pin:	5020 mAh, có sạc nhanh', 3, 0),
(101, 'Điện thoại iPhone 11 Pro Max 512GB', 41900000, 'https://cdn.tgdd.vn/Products/Images/42/210654/iphone-11-pro-max-512gb-gold-400x460.png', 'Thông số kỹ thuật\r\nMàn hình:	OLED, 6.5\", Super Retina XDR\r\nHệ điều hành:	iOS 13\r\nCamera sau:	3 camera 12 MP\r\nCamera trước:	12 MP\r\nCPU:	Apple A13 Bionic 6 nhân\r\nRAM:	4 GB\r\nBộ nhớ trong:	512 GB\r\nThẻ SIM:\r\n1 eSIM & 1 Nano SIM, Hỗ trợ 4G\r\nHOTSIM Vina Bùm 120 (2GB/ngày)\r\nDung lượng pin:	3969 mAh, có sạc nhanh', 3, 0),
(102, 'Đồng hồ Nữ Q&Q S329J211Y', 980000, 'https://cdn.tgdd.vn/Products/Images/7264/219677/q-q-s329j211y-nu-600x600.jpg', 'Thông số kỹ thuật\r\nĐường kính mặt:	26 mm\r\nChất liệu mặt:	Kính khoáng (Mineral)\r\nChất liệu khung viền:	Inox (Thép không gỉ)\r\nĐộ dày mặt:	Dày 7.6 mm\r\nChất liệu dây:	Da\r\nThay được dây:	Có\r\nChống nước:	5 ATM - Rửa tay, đi mưa, tắm\r\nNguồn năng lượng:	Pin\r\nThời gian sử dụng pin:	Khoảng 2 năm\r\nĐối tượng sử dụng:	Nữ', 4, 0),
(103, 'Đồng hồ Nam Timex TW2R49900', 2763000, 'https://cdn.tgdd.vn/Products/Images/7264/219380/timex-tw2r49900-nam-nau-thum-600x600.jpg', 'Thông số kỹ thuật\r\nĐường kính mặt:	40 mm\r\nChất liệu mặt:	Kính khoáng (Mineral)\r\nChất liệu khung viền:	Thép không gỉ\r\nĐộ dày mặt:	Dày 7 mm\r\nChất liệu dây:	Da\r\nĐộ rộng dây:	20 mm\r\nThay được dây:	Có\r\nChống nước:	3 ATM - Rửa tay, đi mưa\r\nNguồn năng lượng:	Pin\r\nThời gian sử dụng pin:	Khoảng 2 năm', 4, 0),
(104, 'Tai nghe Bluetooth True Wireless Anker Liberty 2 Pro A3909 Đen', 3500000, 'https://cdn.tgdd.vn/Products/Images/54/217853/tai-nghe-true-wireless-anker-liberty-2-pro-a3909-1-600x600-1-600x600.jpg', 'Thông số kỹ thuật\r\nCổng sạc:	Type-C\r\nThời gian sử dụng:	8 giờ\r\nThời gian sạc đầy:	1.5 giờ\r\nKết nối cùng lúc:	1 thiết bị\r\nKhoảng cách kết nối:	10m (Bluetooth 5.0)\r\nTrọng lượng:	300g\r\nThương hiệu của:	Trung Quốc\r\nSản xuất tại:	Trung Quốc', 5, 0),
(105, 'Tai Nghe Bluetooth chụp tai SOUL Ultra Wireless Dynamic SU34BK Đen', 1390000, 'https://cdn.tgdd.vn/Products/Images/54/219172/tai-nghe-bluetooth-soul-ultra-wireless-su34bk-den-add-600x600-1-600x600.jpg', 'Thông số kỹ thuật\r\nJack cắm:	3.5 mm\r\nCổng sạc:	Micro USB\r\nThời gian sử dụng:	36 giờ\r\nKết nối cùng lúc:	1 thiết bị\r\nKhoảng cách kết nối:	10m (Bluetooth 5.0)\r\nPhím điều khiển:	Mic thoạiNghe/nhận cuộc gọiPhát/dừng chơi nhạcTăng/giảm âm lượng\r\nTrọng lượng:	197g\r\nThương hiệu của:	Mỹ\r\nSản xuất tại:	Trung Quốc', 5, 0),
(106, 'Laptop Asus VivoBook X509FA', 11690000, 'https://cdn.tgdd.vn/Products/Images/44/220575/asus-vivobook-x509fa-i3-8145u-4gb-512gb-chuot-win1-220575copy-400x400.jpg', 'Nếu bạn là sinh viên hay nhân viên văn phòng đang tìm một chiếc laptop có cấu hình ổn định, phù hợp mang theo đi làm mỗi ngày thì laptop Asus VivoBook X509FA là một sự lựa chọn đáng để bạn cân nhắc.\r\nCấu hình dành cho dân văn phòng\r\nĐược trang bị chip xử lý Core i3 thế hệ thứ 8, laptop Asus VivoBook X509FA sẽ làm bạn hài lòng khi thực hiện các tác vụ văn phòng như soạn thảo hợp đồng, các thư từ kinh doanh hay giải trí, lướt web, nghe nhạc,...\r\n\r\nRAM 4 GB DDR4 sẽ cho bạn cùng lúc làm việc trên nhiều tab khác nhau mà không giật lag.\r\n\r\nAsus hỗ trợ khe RAM cho phép nâng cấp tối đa lên đến 20 GB RAM nếu bạn thường xuyên làm việc đa nhiệm nhiều ứng dụng.', 1, 0),
(107, 'Laptop Lenovo IdeaPad S340', 1700000, 'https://cdn.tgdd.vn/Products/Images/44/214710/lenovo-ideapad-s340-14iil-i3-1005g1-8gb-512gb-win1-18-400x400.jpg', '-Bộ xử lý\r\nCông nghệ CPU:	Intel Core i3 Ice Lake\r\nLoại CPU:	1005G1\r\nTốc độ CPU:	1.20 GHz\r\nTốc độ tối đa:	Turbo Boost 3.4 GHz\r\n-Bộ nhớ RAM, Ổ cứng\r\nRAM:	8 GB\r\nLoại RAM:	DDR4 (On board 4GB +1 khe 4GB)\r\nTốc độ Bus RAM:	2666 MHz\r\nHỗ trợ RAM tối đa:	12 GB\r\nỔ cứng:	SSD 512 GB M.2 PCIe, Hỗ trợ khe cắm HDD SATA\r\n-Màn hình\r\nKích thước màn hình:	14 inch\r\nĐộ phân giải:	Full HD (1920 x 1080)\r\nCông nghệ màn hình:	60Hz, Tấm nền TN, Anti-Glare\r\nMàn hình cảm ứng:	Không\r\n-Đồ họa và Âm thanh\r\nThiết kế card:	Card đồ họa tích hợp\r\nCard đồ họa:	Intel UHD Graphics\r\nCông nghệ âm thanh:	Dolby Audio\r\n-Cổng kết nối & tính năng mở rộng\r\nCổng giao tiếp:	2 x USB 3.1, HDMI, USB Type-C\r\nKết nối không dây:	Bluetooth 4.2, Wi-Fi 802.11 a/b/g/n/ac\r\nKhe đọc thẻ nhớ:	SD\r\nỔ đĩa quang:	Không\r\nWebcam:	HD webcam\r\nTính năng khác:	Không\r\nĐèn bàn phím:	Không\r\n-PIN\r\nLoại PIN:	PIN liền\r\nThông tin Pin:	Li-Ion 3 cell\r\n-Hệ điều hành\r\nHệ điều hành:	Windows 10 Home SL\r\n-Kích thước & trọng lượng\r\nKích thước:	Dài 322.7 mm - Rộng 230.5 mm', 1, 0),
(108, 'Laptop Apple MacBook Air 2019', 34990000, 'https://cdn.tgdd.vn/Products/Images/44/218493/apple-macbook-air-2019-i5-16ghz-8gb-256gb-mvfl2sa-600x600.jpg', 'Thông số kỹ thuật\r\nCPU:	Intel Core i5 Coffee Lake, 1.60 GHz\r\nRAM:	8 GB, LPDDR3, 2133 MHz\r\nỔ cứng:	SSD: 256 GB\r\nMàn hình:	13.3 inch, Retina (2560 x 1600)\r\nCard màn hình:	Card đồ họa tích hợp, Intel UHD Graphics 617\r\nCổng kết nối:	2 x Thunderbolt 3 (USB-C)\r\nHệ điều hành:	Mac OS\r\nThiết kế:	Vỏ kim loại nguyên khối, PIN liền\r\nKích thước:	Dày 4.1 đến 15.6 mm, 1.25 kg\r\nThời điểm ra mắt:	2019', 1, 0),
(109, 'Laptop Asus Gaming ROG Strix G531', 35990000, 'https://cdn.tgdd.vn/Products/Images/44/209617/asus-rog-g531-i7-9750h-8gb-512gb-6gb-gtx2060-win10-14-600x600.jpg', 'Thông số kỹ thuật\r\nCPU:	Intel Core i7 Coffee Lake, 9750H, 2.60 GHz\r\nRAM:	8 GB, DDR4 (2 khe), 2666 MHz\r\nỔ cứng:	SSD 512 GB M.2 PCIe, Hỗ trợ khe cắm HDD SATA\r\nMàn hình:	15.6 inch, Full HD (1920 x 1080)\r\nCard màn hình:	Card đồ họa rời, NVIDIA® GeForce RTX™ 2060, 6GB\r\nCổng kết nối:	HDMI 2.0, 3 x USB 3.1, LAN (RJ45), USB Type-C\r\nHệ điều hành:	Windows 10 Home SL\r\nThiết kế:	Vỏ kim loại, PIN liền\r\nKích thước:	Dày 26 mm, 2.4 kg\r\nThời điểm ra mắt:	2019', 1, 0),
(110, 'Laptop HP EliteBook X360 1030 G3', 15990000, 'https://cdn.tgdd.vn/Products/Images/44/204853/hp-elitebook-x360-1030-g3-i7-8550u-8gb-256gb-133f-204853-600x600.jpg', 'Thông số kỹ thuật\r\nCPU:	Intel Core i7 Coffee Lake, 8550U, 1.80 GHz\r\nRAM:	8 GB, DDR3, 2133 MHz\r\nỔ cứng:	SSD 256GB NVMe PCIe\r\nMàn hình:	13.3 inch, Full HD (1920 x 1080)\r\nCard màn hình:	Card đồ họa tích hợp, Intel® UHD Graphics 620\r\nCổng kết nối:	USB 3.1, HDMI, 2 x Thunderbolt 2\r\nHệ điều hành:	Windows 10 Pro\r\nThiết kế:	Vỏ kim loại nguyên khối, PIN liền\r\nKích thước:	Dày 15.7 mm, 1.32 kg\r\nThời điểm ra mắt:	2019', 1, 0),
(111, 'Máy tính bảng Samsung Galaxy Tab A 10.1 T515', 10990000, 'https://cdn.tgdd.vn/Products/Images/522/200963/samsung-galaxy-tab-a-101-t515-2019-gold-400x460.png', 'Thông số kỹ thuật\r\nMàn hình	TFT LCD, 10.1\"\r\nHệ điều hành	Android 9.0 (Pie)\r\nCPU	Exynos 7904 8 nhân, 2 nhân 1.8 GHz & 6 nhân 1.6 GHz\r\nRAM	3 GB\r\nBộ nhớ trong	32 GB\r\nCamera sau	8 MP\r\nCamera trước	5 MP\r\nKết nối mạng	WiFi, 3G, 4G LTE\r\nHỗ trợ SIM\r\nNano Sim\r\nHOTSIM Vina Bùm 120 (2GB/ngày)\r\nĐàm thoại	Có', 2, 0),
(112, 'Máy tính bảng Huawei MediaPad M5 Lite\r\n', 6890000, 'https://cdn.tgdd.vn/Products/Images/522/215685/huawei-mediapad-m5-lite-gray-400x400.jpg', 'Thông số kỹ thuật\r\nMàn hình	IPS LCD Full HD, 10.1\"\r\nHệ điều hành	Android 8.0\r\nCPU	Kirin 659, 1.7 GHz\r\nRAM	4 GB\r\nBộ nhớ trong	64 GB\r\nCamera sau	8 MP\r\nCamera trước	8 MP\r\nKết nối mạng	WiFi, 3G, 4G LTE\r\nHỗ trợ SIM\r\nNano Sim\r\nHOTSIM Vina Bùm 120 (2GB/ngày)\r\nĐàm thoại	Có', 2, 0),
(113, 'Máy tính bảng iPad 10.2 inch Wifi 32GB', 150000, 'https://cdn.tgdd.vn/Products/Images/522/213096/ipad-10-2-inch-wifi-32gb-2019-gold-400x460.png', 'Thông số kỹ thuật\r\nMàn hình	LED backlit LCD, 10.2\"\r\nHệ điều hành	iOS 13\r\nCPU	Apple A10 Fusion 4 nhân, 2.34 GHz\r\nRAM	3 GB\r\nBộ nhớ trong	32 GB\r\nCamera sau	8 MP\r\nCamera trước	1.2 MP\r\nKết nối mạng	WiFi, Không hỗ trợ 3G, Không hỗ trợ 4G\r\nĐàm thoại	FaceTime\r\nTrọng lượng	483 g', 2, 0),
(114, 'Samsung Galaxy Tab S6 Lite', 9900000, 'https://cdn.tgdd.vn/Products/Images/522/219912/samsung-galaxy-tab-s6-lite-600x600-1-200x200.jpg', 'THÔNG SỐ KỸ THUẬT\r\nMàn hình	PLS LCD, 10.4\"\r\nHệ điều hành	Android 10\r\nCPU	Exynos 9611 8 nhân, 4 nhân 2.3 GHz & 4 nhân 1.7 GHz\r\nRAM	4 GB\r\nBộ nhớ trong	64 GB\r\nCamera sau	8 MP\r\nCamera trước	5 MP\r\nKết nối mạng	WiFi, 3G, 4G LTE\r\nHỗ trợ SIM\r\nNano Sim\r\nHOTSIM Vina Bùm 120 (2GB/ngày)\r\nĐàm thoại	Có\r\nTrọng lượng	467 g\r\nDung lượng pin	7040 mAh', 2, 0),
(115, 'Máy tính bảng Samsung Galaxy Tab S6', 18990000, 'https://cdn.tgdd.vn/Products/Images/522/208870/samsung-galaxy-tab-s6-400x460.png', 'Thông số kỹ thuật\r\nMàn hình	Super AMOLED, 10.5\"\r\nHệ điều hành	Android 9.0 (Pie)\r\nCPU	Snapdragon 855 8 nhân, 1 nhân 2.84 GHz, 3 nhân 2.41 GHz & 4 nhân 1.78 GHz\r\nRAM	6 GB\r\nBộ nhớ trong	128 GB\r\nCamera sau	Chính 13 MP & Phụ 5 MP\r\nCamera trước	8 MP\r\nKết nối mạng	WiFi, 3G, 4G LTE\r\nHỗ trợ SIM\r\nNano Sim\r\nHOTSIM Vina Bùm 120 (2GB/ngày)\r\nĐàm thoại	Có', 2, 0),
(116, 'Điện thoại Xiaomi Redmi Note 9S', 5990000, 'https://cdn.tgdd.vn/Products/Images/42/214924/xiaomi-redmi-note-9s-4gb-green-400x460-400x400.jpg', 'Thông số kỹ thuật\r\nMàn hình:	IPS LCD, 6.67\", Full HD+\r\nHệ điều hành:	Android 10\r\nCamera sau:	Chính 48 MP & Phụ 8 MP, 5 MP, 2 MP\r\nCamera trước:	16 MP\r\nCPU:	Snapdragon 720G 8 nhân\r\nRAM:	6 GB\r\nBộ nhớ trong:	128 GB\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB\r\nThẻ SIM:\r\n2 Nano SIM, Hỗ trợ 4G\r\nHOTSIM Vina Bùm 120 (2GB/ngày)\r\nDung lượng pin:	5020 mAh, có sạc nhanh', 3, 0),
(117, 'Điện thoại iPhone 11 Pro Max 512GB', 41900000, 'https://cdn.tgdd.vn/Products/Images/42/210654/iphone-11-pro-max-512gb-gold-400x460.png', 'Thông số kỹ thuật\r\nMàn hình:	OLED, 6.5\", Super Retina XDR\r\nHệ điều hành:	iOS 13\r\nCamera sau:	3 camera 12 MP\r\nCamera trước:	12 MP\r\nCPU:	Apple A13 Bionic 6 nhân\r\nRAM:	4 GB\r\nBộ nhớ trong:	512 GB\r\nThẻ SIM:\r\n1 eSIM & 1 Nano SIM, Hỗ trợ 4G\r\nHOTSIM Vina Bùm 120 (2GB/ngày)\r\nDung lượng pin:	3969 mAh, có sạc nhanh', 3, 0),
(118, 'Đồng hồ Nữ Q&Q S329J211Y', 980000, 'https://cdn.tgdd.vn/Products/Images/7264/219677/q-q-s329j211y-nu-600x600.jpg', 'Thông số kỹ thuật\r\nĐường kính mặt:	26 mm\r\nChất liệu mặt:	Kính khoáng (Mineral)\r\nChất liệu khung viền:	Inox (Thép không gỉ)\r\nĐộ dày mặt:	Dày 7.6 mm\r\nChất liệu dây:	Da\r\nThay được dây:	Có\r\nChống nước:	5 ATM - Rửa tay, đi mưa, tắm\r\nNguồn năng lượng:	Pin\r\nThời gian sử dụng pin:	Khoảng 2 năm\r\nĐối tượng sử dụng:	Nữ', 4, 0),
(119, 'Đồng hồ Nam Timex TW2R49900', 2763000, 'https://cdn.tgdd.vn/Products/Images/7264/219380/timex-tw2r49900-nam-nau-thum-600x600.jpg', 'Thông số kỹ thuật\r\nĐường kính mặt:	40 mm\r\nChất liệu mặt:	Kính khoáng (Mineral)\r\nChất liệu khung viền:	Thép không gỉ\r\nĐộ dày mặt:	Dày 7 mm\r\nChất liệu dây:	Da\r\nĐộ rộng dây:	20 mm\r\nThay được dây:	Có\r\nChống nước:	3 ATM - Rửa tay, đi mưa\r\nNguồn năng lượng:	Pin\r\nThời gian sử dụng pin:	Khoảng 2 năm', 4, 0),
(120, 'Tai nghe Bluetooth True Wireless Anker Liberty 2 Pro A3909 Đen', 3500000, 'https://cdn.tgdd.vn/Products/Images/54/217853/tai-nghe-true-wireless-anker-liberty-2-pro-a3909-1-600x600-1-600x600.jpg', 'Thông số kỹ thuật\r\nCổng sạc:	Type-C\r\nThời gian sử dụng:	8 giờ\r\nThời gian sạc đầy:	1.5 giờ\r\nKết nối cùng lúc:	1 thiết bị\r\nKhoảng cách kết nối:	10m (Bluetooth 5.0)\r\nTrọng lượng:	300g\r\nThương hiệu của:	Trung Quốc\r\nSản xuất tại:	Trung Quốc', 5, 0),
(121, 'Tai Nghe Bluetooth chụp tai SOUL Ultra Wireless Dynamic SU34BK Đen', 1390000, 'https://cdn.tgdd.vn/Products/Images/54/219172/tai-nghe-bluetooth-soul-ultra-wireless-su34bk-den-add-600x600-1-600x600.jpg', '<p>sss</p>\r\n', 5, 1),
(123, 'Điện thoại OPPO Reno3', 8490000, 'https://cdn.tgdd.vn/Products/Images/42/213591/oppo-reno3-trang-600x600-400x400.jpg', '<p>OPPO Reno3 l&agrave; một sản phẩm ở ph&acirc;n kh&uacute;c tầm trung nhưng vẫn sở hữu cho m&igrave;nh ngoại h&igrave;nh bắt mắt, cụm camera chất lượng v&agrave; c&ugrave;ng nhiều đột ph&aacute; về m&agrave;n h&igrave;nh cũng như hiệu năng.</p>\r\n\r\n<p>Nhiếp ảnh, quay phim đỉnh với cụm camera chất Xu thế nhiều camera đang &quot;nở rộ&quot; v&agrave; tr&ecirc;n &quot;đứa con cưng của m&igrave;nh&quot; th&igrave; OPPO đ&atilde; mang tới cho người d&ugrave;ng cụm 4 camera chất lượng ở mặt sau m&aacute;y.</p>\r\n', 3, 1),
(124, 'Điện thoại Vivo V19', 8590000, 'https://cdn.tgdd.vn/Products/Images/42/217859/vivo-v19-xanh-600x600-400x400.jpg', '<h2>Đặc điểm nổi bật của Vivo V19</h2>\r\n\r\n<p><img src=\"https://cdn.tgdd.vn/Products/Images/42/217859/Slider/vivo-v19-251720-011749-925.jpg\" /><img src=\"https://www.thegioididong.com/Content/desktop/images/V4/icon-yt.png\" /></p>\r\n\r\n<p>Bộ sản phẩm chuẩn: Hộp, Sạc, Tai nghe, S&aacute;ch hướng dẫn, C&aacute;p, C&acirc;y lấy sim, Ốp lưng</p>\r\n\r\n<h2><a href=\"https://www.thegioididong.com/dtdd/vivo-v19\" target=\"_blank\" title=\"Tham khảo thông tin chi tiết về điện thoại Vivo V19 tại thegioididong.com\" type=\"Tham khảo thông tin chi tiết về điện thoại Vivo V19 tại thegioididong.com\">Vivo V19</a>&nbsp;l&agrave; mẫu&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\" title=\"Tham khảo giá các mẫu điện thoại chính hãng đang bán tại thegioididong.com\" type=\"Tham khảo giá các mẫu điện thoại chính hãng đang bán tại thegioididong.com\">smartphone</a>&nbsp;tầm trung ra mắt v&agrave;o đầu năm 2020 của&nbsp;<a href=\"https://www.thegioididong.com/dtdd-vivo\" target=\"_blank\" title=\"Tham khảo giá c', 3, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanphamflashsale`
--

CREATE TABLE `sanphamflashsale` (
  `id` int(11) NOT NULL,
  `idSanPham` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sanphamflashsale`
--

INSERT INTO `sanphamflashsale` (`id`, `idSanPham`) VALUES
(9, 95),
(4, 100),
(2, 102),
(5, 102),
(6, 105),
(3, 106),
(7, 111),
(1, 115),
(8, 120);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name`, `email`, `password`) VALUES
(1, 'Nguyễn Văn A', 'admin1@mail.com', '202cb962ac59075b964b07152d234b70'),
(2, 'Nguyễn Văn B', 'admin2@mail.com', '202cb962ac59075b964b07152d234b70'),
(3, 'Nguyễn Văn C', 'admin3@mail.com', '202cb962ac59075b964b07152d234b70'),
(4, 'Nguyễn Văn D', 'admin4@mail.com', '202cb962ac59075b964b07152d234b70'),
(5, 'Nguyễn Văn E', 'admin5@mail.com', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tinnhan`
--

CREATE TABLE `tinnhan` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `phone` int(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `ngaygui` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tinnhan`
--

INSERT INTO `tinnhan` (`id`, `name`, `phone`, `email`, `message`, `ngaygui`) VALUES
(1, 'khanh', 986457328, 'khanh@gmail.com', 'san pham a con hang khong ah', '2020-05-09 11:30:11'),
(2, 'khanh', 986457328, 'khanhth99@gmail.com', 'hỗ trợ tìm máy', '2020-06-25 15:24:03');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitietmuahang`
--
ALTER TABLE `chitietmuahang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanphamflashsale`
--
ALTER TABLE `sanphamflashsale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idSanPham` (`idSanPham`);

--
-- Chỉ mục cho bảng `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tinnhan`
--
ALTER TABLE `tinnhan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitietmuahang`
--
ALTER TABLE `chitietmuahang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT cho bảng `sanphamflashsale`
--
ALTER TABLE `sanphamflashsale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tinnhan`
--
ALTER TABLE `tinnhan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `sanphamflashsale`
--
ALTER TABLE `sanphamflashsale`
  ADD CONSTRAINT `sanphamflashsale_ibfk_1` FOREIGN KEY (`idSanPham`) REFERENCES `sanpham` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
