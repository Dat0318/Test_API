/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : shopping

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2020-09-17 10:17:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `categories`
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Tên loại cấu hình',
  `parent_id` int(10) unsigned DEFAULT NULL COMMENT 'tên danh mục cha nếu có là id_category của thằng cha',
  `type` tinyint(10) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT 'Trạng thái',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('1', 'Điện Thoại', null, '1', '1', '2019-08-07 16:49:24', '2019-08-07 16:49:26');
INSERT INTO `categories` VALUES ('2', 'Tablet', null, '1', '1', '2019-07-10 16:43:00', '2019-07-10 16:43:00');
INSERT INTO `categories` VALUES ('3', 'Phụ Kiện', null, '1', '0', '2019-07-16 22:41:00', '2019-07-16 22:41:00');
INSERT INTO `categories` VALUES ('4', 'Điện Thoại Bàn', null, '1', '0', '2019-07-16 22:44:00', '2019-07-16 22:44:00');
INSERT INTO `categories` VALUES ('5', 'Laptop', null, '0', '0', '2019-07-16 22:44:00', '2019-07-16 22:44:00');
INSERT INTO `categories` VALUES ('6', 'Máy Tính Bàn', null, '0', '0', '2019-07-16 22:45:00', '2019-07-16 22:45:00');
INSERT INTO `categories` VALUES ('7', 'Màn Hình LCD', null, '0', '0', '2019-08-07 16:50:11', '2019-08-07 16:50:13');
INSERT INTO `categories` VALUES ('8', 'Máy In', null, '1', '1', '2019-07-19 02:09:00', '2019-07-19 02:09:00');
INSERT INTO `categories` VALUES ('9', 'Phu Kiện Máy Tính', '1', '1', '1', '2019-07-19 02:24:00', '2019-07-19 02:24:00');
INSERT INTO `categories` VALUES ('10', 'SamSung', '1', '1', '1', '2019-08-07 16:49:04', '2019-08-07 16:49:07');
INSERT INTO `categories` VALUES ('11', 'Iphone', '1', '1', '1', '2019-07-19 03:00:00', '2019-07-19 03:00:00');
INSERT INTO `categories` VALUES ('12', 'Oppo', '1', '1', '1', '2019-07-19 03:01:00', '2019-07-19 03:01:00');
INSERT INTO `categories` VALUES ('13', 'Vsmart', '1', '1', '0', '2019-07-19 03:01:00', '2019-07-19 03:01:00');
INSERT INTO `categories` VALUES ('14', 'Nokia', '1', '1', '1', '2019-07-19 03:02:00', '2019-07-19 03:02:00');
INSERT INTO `categories` VALUES ('15', 'Realme', '1', '1', '1', '2019-08-07 16:50:37', '2019-08-07 16:50:38');
INSERT INTO `categories` VALUES ('16', 'Vivo', '1', '1', '1', '2019-07-19 03:02:00', '2019-07-19 03:02:00');
INSERT INTO `categories` VALUES ('17', 'Huawei', '1', '1', '0', '2019-07-23 09:56:12', '2019-07-23 09:56:12');
INSERT INTO `categories` VALUES ('18', 'Xiaomi', '1', '1', '0', '2020-09-17 09:52:02', '2020-09-17 09:52:02');
INSERT INTO `categories` VALUES ('19', 'Điện Thoại Hai Sim', '1', '1', null, '2020-09-17 09:52:18', '2020-09-17 09:52:18');
INSERT INTO `categories` VALUES ('20', 'Màn Hình Tràn viền', '1', '1', null, '2020-09-17 09:52:26', '2020-09-17 09:52:26');
INSERT INTO `categories` VALUES ('21', 'Camera kép', '1', '1', null, '2020-09-17 09:52:45', '2020-09-17 09:52:45');
INSERT INTO `categories` VALUES ('22', 'Ipad', '2', '1', null, '2020-09-17 09:53:30', '2020-09-17 09:53:30');
INSERT INTO `categories` VALUES ('23', 'SamSung', '2', '1', null, '2020-09-17 09:53:35', '2020-09-17 09:53:35');
INSERT INTO `categories` VALUES ('24', 'lenovo', '2', '1', null, '2020-09-17 09:53:43', '2020-09-17 09:53:43');
INSERT INTO `categories` VALUES ('25', 'Huawei', '2', '1', null, '2020-09-17 09:53:51', '2020-09-17 09:53:51');
INSERT INTO `categories` VALUES ('26', 'Acer', '2', '1', null, '2020-09-17 09:54:02', '2020-09-17 09:54:02');
INSERT INTO `categories` VALUES ('27', 'Apple Watch', '3', '1', null, '2020-09-17 09:54:27', '2020-09-17 09:54:27');
INSERT INTO `categories` VALUES ('28', 'AirPods', '3', '1', null, '2020-09-17 09:54:44', '2020-09-17 09:54:44');
INSERT INTO `categories` VALUES ('29', 'Đồng Hồ thông minh', '3', '1', null, '2020-09-17 09:54:58', '2020-09-17 09:54:58');
INSERT INTO `categories` VALUES ('30', 'Củ sạc', '3', '1', null, '2020-09-17 09:55:08', '2020-09-17 09:55:08');

-- ----------------------------
-- Table structure for `configs`
-- ----------------------------
DROP TABLE IF EXISTS `configs`;
CREATE TABLE `configs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` tinyint(4) NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `special` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(10) unsigned DEFAULT NULL COMMENT 'Tham chiếu từ bảng users',
  `updated_id` int(10) unsigned DEFAULT NULL COMMENT 'Tham chiếu từ bảng users',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `configs_ibfk_2` (`updated_id`) USING BTREE,
  KEY `configs_ibfk_1` (`created_id`),
  CONSTRAINT `configs_ibfk_1` FOREIGN KEY (`created_id`) REFERENCES `users` (`id`),
  CONSTRAINT `configs_ibfk_2` FOREIGN KEY (`updated_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of configs
-- ----------------------------
INSERT INTO `configs` VALUES ('5', '.system.show.header', '1', 'hiển thị header', 'hien thi header', '', '29', null, '2019-07-23 00:47:00', '2019-07-23 00:47:00');
INSERT INTO `configs` VALUES ('6', '.system.show.footer', '1', 'hiển thị footer', 'hien thi footer', '', '28', null, '2019-07-23 13:36:50', '2019-07-23 13:36:50');
INSERT INTO `configs` VALUES ('7', '.system.phone', '2', 'số điện thoại', '0964589904', '0964589904', '28', null, '2019-07-25 14:38:37', '2019-07-25 14:38:37');

-- ----------------------------
-- Table structure for `groups`
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tên của Group (Admin, Nhân viên bán hàng , Nhân viên Nhập Kho , Giám đốc ...)',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Mô tả chức năng từng nhóm và quyền hạn được cấp',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of groups
-- ----------------------------
INSERT INTO `groups` VALUES ('3', 'Giám đốc', 'Giám sát ', '2019-07-11 09:01:00', '2019-07-11 09:01:00');
INSERT INTO `groups` VALUES ('4', 'Người quản lí hệ thống', 'Quản lí', '2019-07-11 17:18:00', '2019-07-11 17:18:00');
INSERT INTO `groups` VALUES ('5', 'Người đăng bài ', 'Đăng các bài viết', '2019-07-11 17:21:00', '2019-07-11 17:21:00');
INSERT INTO `groups` VALUES ('6', 'Khách hàng', 'Các quyền dành riêng cho khách hàng', '2019-07-11 17:21:00', '2019-07-11 17:21:00');
INSERT INTO `groups` VALUES ('7', 'Nhân viên hỗ trợ', 'Nhân viên hỗ trợ chăm sóc khách hàng cấp 1', '2019-07-11 17:22:00', '2019-07-11 17:22:00');
INSERT INTO `groups` VALUES ('8', 'Thành viên đăng kí', 'Các quyền cho thành viên đăng ký cấp 1', '2019-07-11 17:24:00', '2019-07-11 17:24:00');

-- ----------------------------
-- Table structure for `list_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `list_permissions`;
CREATE TABLE `list_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tên quyền được phép truy nhập',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Mô tả cụ thể các chức năng của quyền đó',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of list_permissions
-- ----------------------------
INSERT INTO `list_permissions` VALUES ('3', 'post.can_edit_news', 'Có thể sửa Bài viết');
INSERT INTO `list_permissions` VALUES ('4', 'post.can_view_list_post_video ', 'Có thể xem danh sách Bài viết');
INSERT INTO `list_permissions` VALUES ('5', 'post.can_view_uploads_news ', 'Có thể xem Bài viết');
INSERT INTO `list_permissions` VALUES ('36', 'post.can_delete_list_post_video', 'Có thể xóa bài viết');
INSERT INTO `list_permissions` VALUES ('38', 'can_add_roles_keys', 'có thể thêm phân quyền');
INSERT INTO `list_permissions` VALUES ('39', 'can_edit_roles_keys', 'Có thể chỉnh sửa phân quyền');
INSERT INTO `list_permissions` VALUES ('40', 'can_view_roles_keys', 'Có thể xem phân quyền');
INSERT INTO `list_permissions` VALUES ('41', 'can_delete_roles_keys', 'Có thể xóa phân quyền');

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `users_id` int(10) unsigned DEFAULT NULL COMMENT 'id của người mua hàng',
  `delivery_at` datetime NOT NULL COMMENT 'thời gian mua hàng',
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT 'Trang thái đơn hàng (chờ xử lí , giao hàng , nhận hàng , xác nhận , đánh giá sản phẩm )',
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Địa chỉ',
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_recipient` int(10) NOT NULL COMMENT 'số điện thoại người nhận',
  `name_recipient` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tên người nhập ',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Thời gian đặt hàng',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_cost` int(10) DEFAULT NULL,
  `type_ship` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `users_id` (`users_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', '33', '2019-07-17 09:34:00', '1000', '10', 'Ha Dong', 'thu@gmail.com', '904401250', 'Tam Anh', '2019-07-17 16:34:00', '2019-07-17 16:34:00', '', '0', '0');
INSERT INTO `orders` VALUES ('2', '30', '2019-07-25 19:24:00', '1011', '10', '3A, Duy Tân', 'hai@gmail.com', '904401250', 'Tú', '2019-07-25 19:25:00', '2019-07-25 19:25:00', '', '0', '0');
INSERT INTO `orders` VALUES ('3', '23', '2019-07-17 10:25:00', '1002', '10', 'Thanh Xuân', 'ba@gmail.com', '457263132', 'tam', '2019-07-17 10:24:00', '2019-07-17 10:24:00', '', '0', '0');
INSERT INTO `orders` VALUES ('5', '30', '2019-07-19 09:32:18', '1003', '10', 'Duy Tân ', 'nam@gmail.com', '904401250', 'anh', '2019-07-19 09:32:22', '2019-07-19 09:32:22', '', '0', '0');
INSERT INTO `orders` VALUES ('6', '27', '2019-07-19 14:20:00', '1001', '10', 'Lala land', 'tam@gmail.com', '904401250', 'Hoa', '2019-07-19 14:20:00', '2019-07-19 14:20:00', '', '0', '0');
INSERT INTO `orders` VALUES ('8', '21', '2019-07-19 15:48:00', '1006', '9', 'Long Biên', 'tu@gmail.com', '904401250', 'Hoa', '2019-07-19 22:48:00', '2019-07-19 22:48:00', '', '0', '0');
INSERT INTO `orders` VALUES ('9', '23', '2019-07-19 15:56:00', '1004', '10', 'Cau Giay', 'ngu@gmail.com', '904401250', 'tam', '2019-07-19 22:56:00', '2019-07-19 22:56:00', '', '0', '0');
INSERT INTO `orders` VALUES ('10', '40', '0000-00-00 00:00:00', '1005', '0', 'Thanh Xuân Ha Noi', 'luc@gmail.com', '904401250', 'Linh', '2019-08-05 17:51:07', '2019-08-05 17:51:07', null, null, '0');
INSERT INTO `orders` VALUES ('22', '30', '2019-07-29 13:14:00', '1212', '10', 'HN', 'con@gmail.com', '904401250', 'Nguyễn', '2019-07-22 14:34:00', '2019-07-22 14:34:00', '', '0', '0');
INSERT INTO `orders` VALUES ('23', '33', '2019-07-25 17:28:00', '1009', '10', 'Cau Giay', 'kia@gmail.com', '457263132', 'Linh', '2019-07-26 00:28:00', '2019-07-26 00:28:00', '', '0', '1');
INSERT INTO `orders` VALUES ('24', '27', '2019-07-25 17:23:00', '1005', '10', 'Văn Quán, Hà Đông', 'moter@gmail.com', '904401250', 'Thái', '2019-07-25 19:22:00', '2019-07-25 19:22:00', '', '0', '1');
INSERT INTO `orders` VALUES ('25', '33', '2019-07-29 09:54:00', '1010', '10', 'Văn Phú', 'vespa@gmail.com', '904401250', 'Hoa', '2019-07-29 09:54:00', '2019-07-29 09:54:00', '', '0', '1');
INSERT INTO `orders` VALUES ('26', '21', '2019-07-29 09:59:00', '1997', '10', 'Thanh Xuân', 'vin@gmail.com', '904401250', 'Linh', '2019-07-29 16:59:00', '2019-07-29 16:59:00', '', '0', '1');
INSERT INTO `orders` VALUES ('30', '21', '2019-07-29 11:20:00', '1021', '10', 'Ha Dong', 'center@gmail.com', '904401250', 'tâm', '2019-07-29 18:20:00', '2019-07-29 18:20:00', '', '0', '1');
INSERT INTO `orders` VALUES ('31', '22', '2019-07-29 11:27:00', '1022', '10', 'Japan', 'hoem@gmail.com', '904401250', 'Linh', '2019-07-29 18:27:00', '2019-07-29 18:27:00', '', '0', '1');
INSERT INTO `orders` VALUES ('32', '25', '2019-08-05 11:08:16', '2019-08-05', '1', 'ha noi', 'kus@gmail.com', '904401250', 'sam sam', '2019-07-31 11:29:13', '2019-07-31 11:29:13', '', '0', '1');
INSERT INTO `orders` VALUES ('33', '21', '2019-08-05 11:08:59', '2019-08-05', '1', 'ha noi', 'cute@gmail.com', '904401250', 'Linh', '2019-07-31 11:29:56', '2019-07-31 11:29:56', '', '0', '1');
INSERT INTO `orders` VALUES ('65', '23', '2019-08-05 16:08:58', '2019-08-05', '1', 'ha noi', 'han.ngothu@gmail.com', '904401250', 'Linh', '2019-07-31 16:44:55', '2019-07-31 16:44:55', '', '44', '1');
INSERT INTO `orders` VALUES ('66', '24', '2019-08-05 17:08:01', '2019-08-05', '1', 'Ha Dong', 'tam', '904401250', 'sam sam', '2019-07-31 17:44:57', '2019-07-31 17:44:57', '', '615', '1');
INSERT INTO `orders` VALUES ('71', '35', '2019-08-01 14:46:39', '1035', '10', 'Từ Liêm', 'taptit@gmail.com', '457263132', 'Linh', '2019-08-01 14:47:07', '2019-08-01 14:47:07', null, null, '2');
INSERT INTO `orders` VALUES ('72', '36', '2019-08-01 14:47:48', '1036', '10', 'Chương Mỹ', null, '457263132', 'Hoa', '2019-08-01 14:47:43', '2019-08-01 14:47:43', null, null, '2');
INSERT INTO `orders` VALUES ('73', '29', '2019-08-01 14:50:00', '1037', '10', 'Gia Lâm', null, '457263132', 'Lâm', '2019-08-01 21:50:00', '2019-08-01 21:50:00', null, null, '2');
INSERT INTO `orders` VALUES ('74', '29', '2019-08-01 15:00:00', '1032', '10', 'Đông Anh', null, '457263132', 'Anh', '2019-08-01 22:00:00', '2019-08-01 22:00:00', null, null, '2');
INSERT INTO `orders` VALUES ('75', '29', '2019-08-01 15:06:00', '1025', '10', 'Thanh Trì', null, '457263132', 'Trì', '2019-08-01 22:06:00', '2019-08-01 22:06:00', null, null, '2');
INSERT INTO `orders` VALUES ('76', '29', '2019-08-01 15:09:00', '1029', '10', 'Hoàng Mai', null, '457263132', 'mai', '2019-08-01 22:09:00', '2019-08-01 22:09:00', null, null, '2');
INSERT INTO `orders` VALUES ('77', '30', '2019-08-01 15:15:00', '1036', '1', 'Thanh Hóa', null, '457263132', 'Hóa', '2019-08-01 22:15:00', '2019-08-01 22:15:00', null, null, '1');
INSERT INTO `orders` VALUES ('78', '39', '2019-08-01 15:30:00', '1039', '10', 'Quế', null, '457263132', 'Linh', '2019-08-01 22:30:00', '2019-08-01 22:30:00', null, null, '2');
INSERT INTO `orders` VALUES ('79', '40', '2019-08-01 15:31:00', '1040', '9', 'Điện Biên Phủ', null, '457263132', 'Bình', '2019-08-01 22:31:00', '2019-08-01 22:31:00', null, null, '2');
INSERT INTO `orders` VALUES ('80', '33', '2019-08-01 15:32:00', '1033', '10', 'Thái Bình', null, '33334572', 'Ba', '2019-08-01 22:32:00', '2019-08-01 22:32:00', null, null, '2');
INSERT INTO `orders` VALUES ('81', '21', '2019-08-07 15:08:00', '2019-08-07', '1', 'Nam Dinh', 'han.ngothu@gmail.com', '457263132', 'Sam San', '2019-08-02 15:15:56', '2019-08-02 15:15:56', 'dsad', '22', '2');
INSERT INTO `orders` VALUES ('82', '25', '2019-08-07 15:08:00', '2019-08-07', '1', 'Quang Ninh', 'han.ngothu@gmail.com', '457263132', 'Linh', '2019-08-02 15:17:56', '2019-08-02 15:17:56', 'dsad', '22', '2');
INSERT INTO `orders` VALUES ('83', '24', '2019-08-07 15:08:17', '2019-08-07', '1', 'Thanh Hoa', 'han.ngothu@gmail.com', '457263132', 'Linh', '2019-08-02 15:18:13', '2019-08-02 15:18:13', 'dsad', '22', '0');
INSERT INTO `orders` VALUES ('84', '23', '2019-08-07 15:08:31', '2019-08-07', '1', 'Chuong Duong', 'han.ngothu@gmail.com', '457263132', 'Sam San', '2019-08-02 15:18:27', '2019-08-02 15:18:27', 'dsad', '22', '0');
INSERT INTO `orders` VALUES ('85', null, '2019-08-07 15:08:49', '2019-08-07', '1', 'Vu Han', 'han.ngothu@gmail.com', '457263132', 'Linh', '2019-08-02 15:18:45', '2019-08-02 15:18:45', 'dsad', '22', '0');
INSERT INTO `orders` VALUES ('86', null, '2019-08-07 15:08:19', '2019-08-07', '1', 'Bac Kinh', 'han.ngothu@gmail.com', '457263132', 'Sam San', '2019-08-02 15:21:15', '2019-08-02 15:21:15', '', '22', '0');
INSERT INTO `orders` VALUES ('87', null, '2019-08-07 15:08:41', '2019-08-07', '1', 'New York', 'han.ngothu@gmail.com', '457263132', 'Linh', '2019-08-02 15:24:37', '2019-08-02 15:24:37', '', '11', '0');
INSERT INTO `orders` VALUES ('88', null, '2019-08-07 15:08:06', '2019-08-07', '1', 'Home', 'duc@gmail.com', '457263132', 'Kim Nguyễn', '2019-08-02 15:42:02', '2019-08-02 15:42:02', '', '11', '0');
INSERT INTO `orders` VALUES ('89', '23', '2019-08-06 10:23:00', '4151215', '0', 'Xuân Thủy', 'nam@gmaill.com', '457263132', 'Thủy ', '2019-08-06 16:29:00', '2019-08-06 16:29:00', null, null, '0');
INSERT INTO `orders` VALUES ('90', '21', '2019-08-08 08:09:00', '451234', '2', 'Xuân Thủy', 'viet@gmail.com', '282845724', 'Tám', '2019-08-06 10:44:53', '2019-08-06 10:44:53', null, null, '0');
INSERT INTO `orders` VALUES ('91', '24', '2019-08-11 10:08:46', '2019-08-11', '1', 'Duong That', 'duc@gmail.com', '457263132', 'Kim Nguyễn', '2019-08-06 10:48:40', '2019-08-06 10:48:40', 'gfd', '700', '0');
INSERT INTO `orders` VALUES ('92', '24', '2019-08-11 10:08:23', '2019-08-11', '1', 'Kien Xuong', 'duc@gmail.com', '457263132', 'Kim Nguyễn', '2019-08-06 10:50:17', '2019-08-06 10:50:17', '', '180', '0');
INSERT INTO `orders` VALUES ('93', '20', '2019-08-09 10:09:00', '1561134', '9', 'Long Biên', 'nam@gmail.com', '373745726', 'Linh', '2019-08-06 11:13:00', '2019-08-06 11:13:00', null, null, '0');
INSERT INTO `orders` VALUES ('94', null, '2019-08-12 17:08:10', '2019-08-12', '1', 'ha noi', 'han.ngothu@gmail.com', '457263132', 'Linh', '2019-08-07 17:08:04', '2019-08-07 17:08:04', 's', '218', '0');
INSERT INTO `orders` VALUES ('95', null, '2019-08-12 17:08:36', '2019-08-12', '1', 'Trung Kính', 'han.ngothu@gmail.com', '457263132', 'Linh', '2019-08-07 17:08:30', '2019-08-07 17:08:30', 's', '218', '0');
INSERT INTO `orders` VALUES ('96', null, '2019-08-12 17:08:43', '2019-08-12', '1', 'Mễ Trì Hạ', 'han.ngothu@gmail.com', '457263132', 'Linh', '2019-08-07 17:08:37', '2019-08-07 17:08:37', 's', '218', '0');
INSERT INTO `orders` VALUES ('97', '28', '2019-08-14 15:08:46', '2019-08-14', '1', 'Xuân Thủy', 'tamptit2016@gmail.com', '457263132', 'Tâm Anh Hoàng', '2019-08-09 15:10:37', '2019-08-09 15:10:37', 'thử thật', '53', '0');

-- ----------------------------
-- Table structure for `orders_products`
-- ----------------------------
DROP TABLE IF EXISTS `orders_products`;
CREATE TABLE `orders_products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `orders_id` int(10) unsigned NOT NULL,
  `products_id` int(10) unsigned NOT NULL,
  `price` int(10) DEFAULT NULL COMMENT 'giá sản phẩm',
  `quantity` int(10) DEFAULT NULL COMMENT 'số lượng sản phẩm',
  `products_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Tên sản phẩm',
  `price_entered` int(10) DEFAULT NULL COMMENT 'Giá tại lúc đã nhập ',
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_id` (`orders_id`),
  KEY `products_id` (`products_id`),
  CONSTRAINT `orders_products_ibfk_1` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `orders_products_ibfk_2` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of orders_products
-- ----------------------------
INSERT INTO `orders_products` VALUES ('1', '1', '14', '1000', '109', 'thừa còn sai :3', '10', '/uploads/day-chuyen-1.jpg');
INSERT INTO `orders_products` VALUES ('2', '1', '17', '100', '444', 'sai rrrr', '10', '/uploads/day-chuyen-1.jpg');
INSERT INTO `orders_products` VALUES ('3', '1', '44', '10000002', '1', 'your name', '10', '/uploads/day-chuyen-1.jpg');
INSERT INTO `orders_products` VALUES ('4', '2', '80', '100', '3', 'sp1', '10', '/products/order-2');
INSERT INTO `orders_products` VALUES ('5', '2', '81', '100', '5', 'sp1', '10', '/products/order-2');
INSERT INTO `orders_products` VALUES ('6', '3', '69', '100', '2', 'sp3', '10', '/products/order-3');
INSERT INTO `orders_products` VALUES ('7', '5', '18', '111', '111', 'không set Text như này', '100', '/uploads/day-chuyen-1.jpg');
INSERT INTO `orders_products` VALUES ('8', '6', '19', '100', '10', 'sp6', '50', '/products/order-6');
INSERT INTO `orders_products` VALUES ('9', '8', '19', '100', '100', 'sản phẩm 19', '90', '/uploads/day-chuyen-1.jpg');
INSERT INTO `orders_products` VALUES ('10', '9', '37', '100', '100', 'sp 37', '80', '/uploads/day-chuyen-1.jpg');
INSERT INTO `orders_products` VALUES ('11', '10', '55', '20', '2', 'sp10', '0', '/products/order-10');
INSERT INTO `orders_products` VALUES ('12', '22', '17', '200', '2', 'sp22 pr 17', '5', '/products/17');
INSERT INTO `orders_products` VALUES ('13', '22', '69', '200', '2', 'sp22 pr69', '10', '/products/order-22');
INSERT INTO `orders_products` VALUES ('14', '23', '61', '500', '5', 'sp23', '10', '/products/order-23');
INSERT INTO `orders_products` VALUES ('15', '24', '44', '12000', '2', 'sp24 pr 44', '70', '/uploads/day-chuyen-1.jpg');
INSERT INTO `orders_products` VALUES ('16', '25', '44', '120000', '1', 'kkk', '100', '/uploads/day-chuyen-1.jpg');
INSERT INTO `orders_products` VALUES ('17', '26', '65', '600', '10', 'sp26 pr65', '10', '/products/order-26');
INSERT INTO `orders_products` VALUES ('18', '30', '14', '200', '10', 'sp30 pr14', '50', '/products/14');
INSERT INTO `orders_products` VALUES ('19', '31', '44', '300', '30', 'sp31 pr44', '10', '/products/order-31');
INSERT INTO `orders_products` VALUES ('20', '32', '37', '400', '5', 'sp32 pr37', '20', '/products/order-32');
INSERT INTO `orders_products` VALUES ('21', '33', '37', '400', '5', 'sp32 pr37', '20', '/products/order-37');
INSERT INTO `orders_products` VALUES ('22', '65', '53', '6500', '2', 'sp65 pr53', '10', '/products/order-65');
INSERT INTO `orders_products` VALUES ('23', '66', '55', '25000', '4', 'sp66 pr55', '10', '/products/order-66');
INSERT INTO `orders_products` VALUES ('24', '81', '54', '100', '1', 'sp81 pr54', '20', '/products/54');
INSERT INTO `orders_products` VALUES ('25', '84', '54', '100', '1', 'test chon file', '30', '/products/54');
INSERT INTO `orders_products` VALUES ('26', '85', '54', '100', '1', 'test chon file', '40', '/products/54');
INSERT INTO `orders_products` VALUES ('27', '86', '54', '100', '1', 'test chon file', '10', '/products/54');
INSERT INTO `orders_products` VALUES ('28', '87', '53', '100', '1', 'test chon file', '10', '/products/53');
INSERT INTO `orders_products` VALUES ('29', '88', '54', '100', '1', 'test chon file', '10', '/products/54');
INSERT INTO `orders_products` VALUES ('30', '91', '54', '500000', '10', 'test chon file', '10', '/products/54');
INSERT INTO `orders_products` VALUES ('31', '92', '53', '10000000', '2', 'test chon file', '5', '/products/53');
INSERT INTO `orders_products` VALUES ('32', '96', '85', '13', '16', 'Product chưa có ảnh thì sao', '500', '/products/85');
INSERT INTO `orders_products` VALUES ('33', '97', '19', '40', '1', 'rrr', '4', '/products/19');
INSERT INTO `orders_products` VALUES ('34', '97', '85', '13', '1', 'Product chưa có ảnh thì sao', '500', '/products/85');

-- ----------------------------
-- Table structure for `pages`
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tiêu đề trang',
  `content` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Nội dung của trang',
  `type` tinyint(4) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT 'Trang thái bài viết',
  `users_id` int(10) unsigned DEFAULT NULL COMMENT 'id người viết bài',
  `created_at` timestamp NULL DEFAULT current_timestamp() COMMENT 'Thời gian tạo bài viết',
  `updated_at` timestamp NULL DEFAULT current_timestamp() COMMENT 'Thời gian cập nhập bài viết',
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Tối giản link',
  `count_views` int(10) DEFAULT 0 COMMENT 'Lượt xem của trang',
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` tinyint(4) DEFAULT 0 COMMENT 'Ngôn ngữ ',
  PRIMARY KEY (`id`),
  KEY `users_id` (`users_id`),
  CONSTRAINT `pages_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of pages
-- ----------------------------
INSERT INTO `pages` VALUES ('36', 'tê', 'ádasd', null, '1', '24', '2019-07-24 15:55:47', '2019-07-24 15:55:47', 'te', '0', 'award.png', '0');
INSERT INTO `pages` VALUES ('37', 'lan 1', 'lan 1', null, '2', '24', '2019-07-24 15:59:31', '2019-07-24 15:59:31', 'lan - 1', '0', 'award.png', '0');
INSERT INTO `pages` VALUES ('38', 'my phanm', '??????', null, '0', '24', '2019-07-24 16:21:24', '2019-07-24 16:21:24', 'my - phanm', '0', 'award.png', '0');
INSERT INTO `pages` VALUES ('39', 'thoi trangDGREG', 'fhfgh', null, '0', '24', '2019-07-26 11:33:30', '2019-07-26 11:33:30', 'thoi-trangdgreg', '0', 'award.png', '0');
INSERT INTO `pages` VALUES ('40', 'thoi trang', '<p>rgetrhtrhtrnhbt</p>\r\n', null, '1', '24', '2019-07-26 11:37:05', '2019-07-26 11:37:05', 'thoi-trang', '0', 'ajax-loader.gif', '0');
INSERT INTO `pages` VALUES ('41', 'mac ngu vcl ', '<p>rgreg3g34g 43t56</p>\r\n', null, '1', '24', '2019-07-26 11:40:02', '2019-07-26 11:40:02', 'mac-ngu-vcl', '0', 'exchange.png', '0');
INSERT INTO `pages` VALUES ('42', 'thoi trang viet nam ', '<p>ch&aacute;n ch&aacute;n ch&aacute;n ...........................ch&aacute;n</p>\r\n', null, '1', '24', '2019-07-26 13:44:37', '2019-07-26 13:44:37', 'thoi-trang-viet-nam', '0', 'blur-background04.jpg', '0');
INSERT INTO `pages` VALUES ('43', 'lap top chinh hang', '<p>chuyen cac loai laptop chinh hang, cac loai mat hang moi 100%</p>\r\n', null, '1', '24', '2019-07-26 13:45:39', '2019-07-26 13:45:39', 'lap-top-chinh-hang', '0', 'ship.png', '0');
INSERT INTO `pages` VALUES ('44', 'dien thu tien lanh', '<p>jnwirt viewru3hr vjgh 4it</p>\r\n', null, '2', '29', '2019-07-30 10:25:33', '2019-07-30 10:25:33', 'dien-thu-tien-lanh', '0', 'user-bg.png', '0');
INSERT INTO `pages` VALUES ('45', 'test chon file', '<p>test&nbsp; File</p>\r\n', null, '0', '24', '2019-07-30 10:43:16', '2019-07-30 10:43:16', 'test-chon-file', '0', '/pages/paypal.png', '0');
INSERT INTO `pages` VALUES ('46', 'my phanm', '<p>aaaaaaaaaa</p>\r\n', null, '1', '24', '2019-07-30 14:12:58', '2019-07-30 14:12:58', 'my-phanm', '0', 'banner-2-aunzcaus.png', '0');
INSERT INTO `pages` VALUES ('47', 'hanhcho.com fgrgreghr4g4h54hj56hj6jh', '<p>thi ra nhung cam giac bay lau nay , bong tan dan , thơi gian cũng ngừng lại,r&ocirc;i anh nhận ra, anh cũng đ&atilde; qu&aacute; ch&oacute;ng v&aacute;ng b&acirc;y l&acirc;u nay, thời gian anh gặp m.. ngơ gi&aacute; lạnh, ngỡ chẳng y&ecirc;u ai laanfn ữa, giờ anh mới biết c&oacute; lẽ trai tim n&agrave;y đ&atilde; nang theo hinh em,,, chinh l&uacute;c n&agrave;y anh mới biết dc rằng tr&aacute;i tim n&agrave;y yeu em. hjanh phuc kiếm t&igrave;m đ&acirc;u , t... h&atilde;y b&ecirc;n em, hay y&ecirc;u em nh&oacute; anh</p>\r\n', null, '1', '24', '2019-07-30 15:23:03', '2019-07-30 15:23:03', 'hanhchocom-fgrgreghr4g4h54hj56hj6jh', '0', 'user.jpg', '0');
INSERT INTO `pages` VALUES ('48', 'DFSFDSF', '<p>pay 2</p>\r\n', null, '0', '24', '2019-08-02 10:41:48', '2019-08-02 10:41:48', 'dfsfdsf', '0', '/pages/visa.png', '0');
INSERT INTO `pages` VALUES ('49', 'thoi trang', '<p>ad</p>\r\n', null, '0', '24', '2019-08-02 10:42:41', '2019-08-02 10:42:41', 'thoi-trang', '0', '/pages/paypal2.png', '0');
INSERT INTO `pages` VALUES ('50', 'my phanm', '<p>trey</p>\r\n', null, '0', '24', '2019-08-02 10:44:40', '2019-08-02 10:44:40', 'my-phanm', '0', '/pages/mastercard.png', '0');
INSERT INTO `pages` VALUES ('52', 'kim le thi 123', '<p>rgeohgv jhf vbuety[4 bynby56y bn7u</p>\r\n', null, '1', '36', '2019-08-02 13:25:47', '2019-08-02 13:25:47', 'kim-le-thi-123', '0', '/pages/american-express.png', '0');

-- ----------------------------
-- Table structure for `permissions`
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `list_permissions_id` int(10) unsigned NOT NULL COMMENT 'lấy 2 khóa chính của 2 bảng phân quyền và group để tạo khóa chính',
  `groups_id` int(10) unsigned NOT NULL COMMENT 'lấy 2 khóa chính của 2 bảng phân quyền và group để tạo khóa chính',
  `value` tinyint(4) NOT NULL COMMENT '1: được cấp quyền ,0 : không được cấp quyền',
  KEY `list_permissions_id` (`list_permissions_id`),
  KEY `groups_id` (`groups_id`),
  CONSTRAINT `permissions_ibfk_1` FOREIGN KEY (`list_permissions_id`) REFERENCES `list_permissions` (`id`),
  CONSTRAINT `permissions_ibfk_2` FOREIGN KEY (`groups_id`) REFERENCES `groups` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES ('40', '3', '1');
INSERT INTO `permissions` VALUES ('41', '3', '1');
INSERT INTO `permissions` VALUES ('38', '3', '1');
INSERT INTO `permissions` VALUES ('39', '3', '1');

-- ----------------------------
-- Table structure for `products`
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tên sản phẩm',
  `price_sale` int(10) NOT NULL COMMENT 'Giá bán ra',
  `price_entered` int(10) NOT NULL COMMENT 'Giá nhập vào',
  `price_commercial` int(10) DEFAULT NULL,
  `quantity` int(10) NOT NULL COMMENT 'số lượng tồn kho',
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Miểu tả ',
  `categories_id` int(10) unsigned NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Tối giản link ',
  `count_views` int(10) DEFAULT NULL COMMENT 'Số lượt xem sản phẩm',
  `status` tinyint(4) DEFAULT NULL COMMENT 'Hiển thị chức năng là đã xóa hay chưa',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `categories_id` (`categories_id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('14', 'vòng', '150000', '200', '10', '99', '/uploads/day-chuyen-1-100x100.jpg', '<p>Test conflict V&ograve;ng nữ</p>', '5', 'vong', '101', '1', '2019-07-17 17:45:00', '2019-07-17 17:45:00');
INSERT INTO `products` VALUES ('17', 'edit không phải chọn lại ảnh', '150000', '600', '10', '66', '/uploads/ring-1-300x300.jpg', '<p>test img ship</p>', '2', 'ab7', '1', '1', '2024-07-17 18:15:00', '2024-07-17 18:15:00');
INSERT INTO `products` VALUES ('18', 'X99', '150000', '2', '20', '22', '/uploads/earring-2.jpg', '<p style=\"text-align: justify;\">test tiny<br /><em>italic</em></p>\r\n<p style=\"text-align: justify;\"><strong>Bold</strong></p>', '6', 'x99', '2', '1', '2019-07-18 16:02:55', '2019-07-18 16:02:00');
INSERT INTO `products` VALUES ('19', 'Main board', '150000', '4', '40', '4', '/uploads/day-chuyen-2-100x100.jpg', '<p>test edit</p>', '4', 'rrr', '4', '1', '2019-07-18 16:48:24', '2019-07-18 16:48:00');
INSERT INTO `products` VALUES ('37', 'edit không phải chọn lại ảnh', '150000', '34', '10', '1', '/uploads/ring-5-300x300.jpg', '<p>t&ocirc;i th&iacute;ch bạn.. test conflict</p>', '5', 'test-tiny', '1', '1', '2019-07-23 22:51:00', '2019-07-23 22:51:00');
INSERT INTO `products` VALUES ('44', 'H110', '150000', '123', '10', '1', '/uploads/ring-1-300x300.jpg', '<p>test editor 5:15</p>', '5', 'test', '1', '1', '2019-07-25 00:15:00', '2019-07-25 00:15:00');
INSERT INTO `products` VALUES ('53', 'test Mac', '150000', '11', '90', '11', '/uploads/ring-3-300x300.jpg', '<p>test chon file</p>', '3', 'test-chon', '11', '2', '2019-07-29 22:24:00', '2019-07-29 22:24:00');
INSERT INTO `products` VALUES ('54', 'test chon file', '150000', '11', '100', '11', '/uploads/ring-5-300x300.jpg', '<p>test chon file</p>', '3', 'abc', '11', '2', '2019-07-29 22:24:00', '2019-07-29 22:24:00');
INSERT INTO `products` VALUES ('55', 'H110', '150000', '12', '70', '12', '/uploads/ring-3-100x100.jpg', '<p>test chon file ring-5.jpg</p>', '5', 'abe', '12', '3', '2019-07-29 22:26:00', '2019-07-29 22:26:00');
INSERT INTO `products` VALUES ('57', 'test chon file', '150000', '11', '50', '11', '/uploads/day-chuyen-2-100x100.jpg', '<p>test chon file</p>', '2', 'fi', '11', '5', '2019-07-29 22:43:00', '2019-07-29 22:43:00');
INSERT INTO `products` VALUES ('58', 'test Mac', '150000', '11', '50', '11', '/uploads/day-chuyen-1.jpg', '<p>test add sp co chon file</p>', '5', 'mac', '11', '4', '2019-07-29 23:07:00', '2019-07-29 23:07:00');
INSERT INTO `products` VALUES ('59', 'H81', '150000', '123', '0', '1', '/uploads/ring-3.jpg', '<p>them chon file cho add sp.. ring 3</p>', '2', 'add', '1', '4', '2019-07-29 23:12:00', '2019-07-29 23:12:00');
INSERT INTO `products` VALUES ('61', 'tesst fix conflict', '150000', '123', '0', '1', '/uploads/ring-5.jpg', '<p>test danh mục select</p>', '2', 'danh', '1', '1', '2019-07-29 23:56:00', '2019-07-29 23:56:00');
INSERT INTO `products` VALUES ('63', 'test validation slug trùng', '150000', '123', '0', '123', '/uploads/logo.png', '<p>tesst confilct</p>', '1', 'slug', '123', '1', '2019-07-30 23:30:00', '2019-07-30 16:31:19');
INSERT INTO `products` VALUES ('65', 'test validation', '150000', '1', '0', '123', '/uploads/ring-4-100x100.jpg', '<p>test validation</p>', '17', 'z1', '1', '1', '2019-07-31 00:49:00', '2019-07-30 17:52:00');
INSERT INTO `products` VALUES ('66', 'test validation slug trùng', '150000', '1', '0', '123', '/uploads/ring-3-300x300.jpg', '<p>test validation... slug tr&ugrave;ng</p>', '17', 'z2', '1', '1', '2019-07-31 00:49:00', '2019-07-30 17:53:00');
INSERT INTO `products` VALUES ('67', 'test chon file', '150000', '1230000', '0', '1', '/uploads/day-chuyen-1.jpg', 'test', '3', 'slug-co-tam', '789', '1', '2019-07-31 17:47:00', '2019-07-31 10:50:10');
INSERT INTO `products` VALUES ('68', 'H110', '150000', '123', '0', '1', '/uploads/day-chuyen-1.jpg', 'mm', '2', 'oke', '1', '1', '2019-07-31 18:02:00', '2019-07-31 11:03:08');
INSERT INTO `products` VALUES ('69', 'Mac2017', '150000', '123', '0', '123', '/uploads/day-chuyen-2.jpg', 'ax', '2', 'anh-abdx-safa', '1', '1', '2019-07-31 18:08:00', '2019-07-31 11:10:54');
INSERT INTO `products` VALUES ('70', 'Dây chuyền', '150000', '12', '0', '12', '/uploads/day-chuyen-2.jpg', 'day chuyen', '5', 'day-chuyen', '12', '4', '2019-08-01 21:52:00', '2019-08-01 14:53:23');
INSERT INTO `products` VALUES ('71', 'earriing blue', '150000', '11', '0', '11', '/uploads/earring-3.jpg', 'earring blue\r\n- blue\r\n- yellow', '1', 'earriing-blue', '11', '1', '2019-08-01 21:54:00', '2019-08-01 14:56:41');
INSERT INTO `products` VALUES ('72', 'bông tai xanh ', '150000', '11', '0', '11', '/uploads/earring-3.jpg', 'bông tai', '5', 'earring-blue', '11', '3', '2019-08-01 21:57:00', '2019-08-01 14:57:47');
INSERT INTO `products` VALUES ('73', 'Bông Tai xanh ngọc', '150000', '89', '0', '89', '/uploads/earring-4.jpg', 'xanh ngọc', '5', 'earring-04', '89', '4', '2019-08-01 21:58:00', '2019-08-01 14:59:12');
INSERT INTO `products` VALUES ('74', 'Ví đỏ', '150000', '33', '0', '33', '/uploads/ring-5-300x300.jpg', 'ví da nữ, màu đỏ tươi', '5', 'cate-1', '33', '2', '2019-08-01 22:04:00', '2019-08-01 15:05:00');
INSERT INTO `products` VALUES ('75', 'check lại add', '150000', '123', '0', '1', '/uploads/day-chuyen-1.jpg', 'check lại add', '1', 'check-lai-add', '1', '1', '2019-08-02 17:43:00', '2019-08-02 10:44:33');
INSERT INTO `products` VALUES ('76', 'bông tai xanh ', '150000', '123', '0', '123', '/uploads/day-chuyen-1.jpg', 'check action add, chọn file ', '1', 'check-add-file', '1', '1', '2019-08-02 17:46:00', '2019-08-02 10:47:55');
INSERT INTO `products` VALUES ('77', 'check action add', '150000', '123', '1', '1', '/uploads/day-chuyen-1.jpg', 'check uploads đã có ảnh này', '9', 'check-action-add', '123', '1', '2019-08-02 17:52:00', '2019-08-02 10:53:00');
INSERT INTO `products` VALUES ('78', 'test không chọn danh muc', '150000', '123', '0', '123', '/uploads/day-chuyen-1.jpg', 'test không chọn danh muc', '1', 'test-khong-chon-danh-muc', '123', '1', '2019-08-02 17:56:00', '2019-08-02 10:57:04');
INSERT INTO `products` VALUES ('79', 'bông tai xanh ', '150000', '123', '0', '123', '/uploads/ship.png', 'cau', '2', 'a-b-c', '123', '1', '2019-08-02 18:08:00', '2019-08-02 11:10:06');
INSERT INTO `products` VALUES ('80', 'Dell PC', '150000', '123', '0', '123', '/uploads/tam.jpg', 'acc', '2', 'acc-1', '123', '1', '2019-08-02 18:23:00', '2019-08-02 11:25:14');
INSERT INTO `products` VALUES ('81', 'bông tai xanh ', '150000', '123', '0', '123', '/uploads/tam.jpg', 'tesst add ko danh muc', '2', 'add-1', '123', '1', '2019-08-02 20:13:00', '2019-08-02 13:15:25');
INSERT INTO `products` VALUES ('82', 'Dell PC', '150000', '123', '0', '123', '/uploads/rsz_tam.jpg', 'add', '2', 'add-2', '123', '1', '2019-08-02 20:27:00', '2019-08-02 13:28:23');
INSERT INTO `products` VALUES ('83', 'bông tai xanh ', '150000', '123', '0', '123', '/uploads/BlackWhite.jpg', 'nhap', '1', 'g-h', '123', '5', '2019-08-02 22:58:00', '2019-08-02 16:10:54');
INSERT INTO `products` VALUES ('84', 'laptop', '150000', '1200', '5', '23', '/uploads/ring-2-300x300.jpg', 'mô tả', '3', 'abcdgfgs', '234', '5', '2019-08-02 23:20:00', '2019-08-02 16:21:00');
INSERT INTO `products` VALUES ('85', 'Product chưa có ảnh thì sao', '150000', '500', '13', '10', '/uploads/ring-3-300x300.jpg', 'test edit ảnh', '8', 'product-chua-co-anh', '10', '3', '2019-08-07 00:33:00', '2019-08-06 17:34:00');
INSERT INTO `products` VALUES ('86', 'Dell PC', '150000', '2000', '15', '200', '/uploads/ring-4-300x300.jpg', 'test add ', '3', 'dell-pc-2019', '2000', '4', '2019-08-07 00:39:00', '2019-08-06 17:40:00');
INSERT INTO `products` VALUES ('87', 'test created_at', '150000', '700', '20', '1', '/uploads/ring-3-300x300.jpg', 'test bỏ created, lưu db', '16', 'tieu-dung', '1', '1', '2019-08-07 10:42:46', '2019-08-07 10:42:00');
INSERT INTO `products` VALUES ('88', 'Vòng Co thu nhat', '150000', '200000', '100000', '10', '/uploads/day-chuyen-1-100x100.jpg', 'Noi dung mo ta', '5', null, '100', '1', '2020-09-16 12:00:47', '2020-09-16 12:00:47');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tên',
  `lastname` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Họ và tên đệm',
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'tài khoản đăng nhập ',
  `pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'mật khẩu',
  `gender` tinyint(4) NOT NULL COMMENT 'Giới tình',
  `birthday` date NOT NULL COMMENT 'Sinh nhật',
  `avatar` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Link ảnh đại diện',
  `token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'chuỗi xác nhận tài khoản',
  `status` tinyint(4) NOT NULL COMMENT 'Trạng Thái',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'thời gian tạo tài khoản',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Thời gian cập nhập tài khoản',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT 'thời gian xóa tài khoản',
  `groups_id` int(10) unsigned NOT NULL,
  `phone` int(10) NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `groups_id` (`groups_id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`groups_id`) REFERENCES `groups` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('20', 'Tạ Văn ', 'Chung', 'chung@gmail.com', 'chung', '$2y$10$rrKVlBc6neFcOAfBFGcV1OC8l1YwAk5L.CEbtICMTMni/SEBFFrfG', '0', '2003-07-16', '', '', '0', '2019-07-16 13:22:27', '2019-07-16 13:22:27', null, '6', '0', '');
INSERT INTO `users` VALUES ('21', 'Nguyễn ', 'Việt Long', 'long@gmail.com', 'long', '$2y$10$UQx2bo6jLlcxhleGI8kIGuYaIaiLYJecKfZkAPX5CF8cUex6aJ1K2', '0', '1996-06-10', '', '4535323', '0', '2019-07-16 13:23:30', '2019-07-16 13:23:30', null, '3', '0', '');
INSERT INTO `users` VALUES ('22', 'Nguyễnn', 'Tất Vinh', 'vinh@gmail.com', 'vinh', '$2y$10$9TDOTBhFMSPMxgKfpAFrWOucv2CMam1Oq1RFYZUkappQFOSee7ACm', '0', '1999-09-16', '', '', '0', '2019-07-16 13:37:17', '2019-07-16 13:37:17', null, '6', '0', '');
INSERT INTO `users` VALUES ('23', 'Phạm ', 'Thảo', 'bthao@gmail.com', 'bthao', '$2y$10$8Ak5VlUmswDMc9CnyMp4weCGA1tvFaZtnw/jv8MLqsgRvVDuN.7Vi', '1', '1997-09-01', '', '197', '0', '2019-07-16 13:39:47', '2019-07-16 13:39:47', null, '6', '0', '');
INSERT INTO `users` VALUES ('24', 'Nguyễn', 'Kim', 'duc@gmail.com', 'admin123', '$2y$10$5gAQKoYiOuXOsmS2a7xfJ.rbwy0hThXyKRsljv8Ou4X7a9MfMWlEW', '0', '2016-06-05', 'Kim', '', '0', '2019-07-16 14:31:14', '2019-07-16 14:31:14', null, '5', '0', '');
INSERT INTO `users` VALUES ('25', 'Trần ', 'Lớn', 'lon123@gmail.com', 'tl', '123', '1', '2019-07-19', null, null, '1', '2019-07-19 14:53:20', '2019-07-19 14:53:23', null, '6', '0', '');
INSERT INTO `users` VALUES ('26', 'thoải', 'mái', 'mai@gmail,com', 'mai', 'mai', '0', '2019-07-22', null, null, '0', '2019-07-22 16:57:06', '2019-07-22 16:57:17', null, '7', '0', '');
INSERT INTO `users` VALUES ('27', 'Nguyễn ', 'Tiến Đạt', 'dat09@gmail.com', 'dat123', '$2y$10$IlGxMC1QW8v6vhf7cuAlPuTcwQf2HkXOIrHdpNn4M/r/ukijJD76y', '0', '1997-03-13', 'Image Pasted at 2019-7-17 08-57.png', null, '1', '2019-07-17 10:24:59', '2019-07-17 10:24:59', null, '6', '0', '');
INSERT INTO `users` VALUES ('28', 'Hoàng', 'Tâm Anh', 'tamptit2016@gmail.com', 'tam', '$2y$10$S0GxuekqB3s3yGX6QUDkU.W28mn3McW885PxPv62Ck6/W8DHqqN.C', '0', '2001-09-09', 'tam.jpg', null, '0', '2019-07-17 11:26:02', '2019-07-17 11:26:02', null, '4', '0', '');
INSERT INTO `users` VALUES ('29', 'quang', 'tạ', 'quang.tavan@vietis.com.vn', 'admin', '$2y$10$LdFE6RztrQKg8EW.ImpuHOLzm7cEST9ysElKpLWlWC.mCIVJx3UrC', '0', '2000-01-18', '', null, '0', '2019-07-17 16:51:56', '2019-07-17 16:51:56', null, '3', '0', '');
INSERT INTO `users` VALUES ('30', 'zz', 'zz', 'z2016@gmail.com', 'zzz', '$2y$10$TliKYu11A6yeQwXSOP7LO.9R8F.q8oB5DOisVWYWqfxbowkJNIp8y', '0', '2000-11-20', '', null, '0', '2019-07-18 16:00:12', '2019-07-18 16:00:12', null, '7', '0', '');
INSERT INTO `users` VALUES ('32', 'vu', 'hanh', 'hanhvu123@gmail.com', 'hanh123', '$2y$10$sT2RVLCsnS2iE6RqOcLPiOzJ0cfAdtSjcpQqk3V7FlcGSwfRSWzVq', '1', '2014-02-02', '', null, '0', '2019-07-19 08:39:50', '2019-07-19 08:39:50', null, '3', '0', '');
INSERT INTO `users` VALUES ('33', 'ta', 'ta', 'ta2016@gmail.com', 'ta', '$2y$10$7pd3n.e/kc.cIa7yPS6Qye2uKmDZXly7AQDNGm/whePAmd7C.9Lw2', '0', '2004-02-17', '', null, '0', '2019-07-22 09:42:16', '2019-07-22 09:42:16', null, '3', '0', '');
INSERT INTO `users` VALUES ('34', 'Đinh', 'tạ', 'dinhta@gmail.com', 'dinh123', '$2y$10$TS8nl6/Hyh.3scrQFSwQK.kuF2HLitswtldhRXThPttMiip8e0h2m', '0', '2005-10-16', '', null, '0', '2019-07-22 09:43:20', '2019-07-22 09:43:20', null, '8', '0', '');
INSERT INTO `users` VALUES ('35', 'qwe', 'à', 'han.ngothu@vietis.com.vn', 'sa', '$2y$10$C6nUh5wzkMhhE73cDt5Ks.bKRMh.Dm7qs92j2utuXOxKKocwLPCYG', '0', '2004-01-20', 'day-chuyen-1.jpg', null, '0', '2019-07-23 08:46:55', '2019-07-23 08:46:55', null, '3', '0', '');
INSERT INTO `users` VALUES ('36', 'San', 'Sam', 'han.ngothu@gmail.com', 'samsam', '$2y$10$JCxGXVYiJqc3qUTgEJjn8.7AtW0Sumhd/mDkj.hhZddtAhMre3wQ6', '1', '2006-10-19', 'avatar_2.png', null, '0', '2019-07-25 13:48:24', '2019-07-25 13:48:24', null, '4', '0', '');
INSERT INTO `users` VALUES ('37', 'vu', 'dfwef', 'ta@gmail.com.vn', 'abc', '$2y$10$TLvU1fZ5l/fyq.xHzvgBde5sOr0NgCJB6KfiUEdy3cVpnX029AFSO', '0', '2018-01-01', 'sprite-skin-flat.png', null, '0', '2019-07-26 09:35:30', '2019-07-26 09:35:30', null, '3', '0', '');
INSERT INTO `users` VALUES ('39', 'Hoa', 'Thanh', 'quethanhhoa@gmail.com', 'hoa', '$2y$10$cR9T2kxb5IiyPtTTiWmhUeobZFXbcTHp1a2urZFFqQPUwbAz/ZqIO', '1', '2018-08-19', 'cate-2.jpg', null, '0', '2019-08-01 15:28:03', '2019-08-01 15:28:03', null, '8', '0', '');
INSERT INTO `users` VALUES ('40', 'My', 'Name', 'name@vietis.com', 'user', '$2y$10$3E761DhqSH672dyC6bDzOOCQBYk78NPPVgEZVBPGeFQLIOhG.Ahpi', '0', '2003-12-15', 'customer-4-100x100.png', null, '0', '2019-08-01 15:28:53', '2019-08-01 15:28:53', null, '8', '0', '');
INSERT INTO `users` VALUES ('45', 'ac', 'ac', 'ac@gmail.com', 'ac', '$2y$10$ybYID9fYSycW3XeLJBrmOuFMC3fKE5PbOm90ZvnwgteV98r6xsee6', '1', '2003-02-18', 'tam.jpg', null, '0', '2019-08-02 11:16:31', '2019-08-02 11:16:31', null, '3', '0', '');
INSERT INTO `users` VALUES ('47', 'not', 'null', 'null@gmail.com', 'null', '$2y$10$n04XCgRrZaBHbC1AWWcw6OL0EcLbbTsRx.llk5b24vIuBzJy3smE.', '0', '2007-09-17', '', null, '1', '2019-08-05 09:58:43', '2019-08-05 09:58:43', null, '5', '0', '');
INSERT INTO `users` VALUES ('48', 'Ngô thị', 'Thu hân', 'han@gmail.com', 'hanhan', '$2y$10$WW74Co4g5Ow0uiEAAFJNTeaqjQ/gQvEqTP2B6q9DpJhSUhq8RRJri', '1', '1997-08-02', '', null, '0', '2019-08-09 13:52:20', '2019-08-09 13:52:20', null, '5', '0', '');
