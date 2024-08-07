/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t258`;
CREATE DATABASE IF NOT EXISTS `t258` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t258`;

DROP TABLE IF EXISTS `caipin`;
CREATE TABLE IF NOT EXISTS `caipin` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `caipin_name` varchar(200) DEFAULT NULL COMMENT '菜品名称  Search111 ',
  `caipin_uuid_number` varchar(200) DEFAULT NULL COMMENT '菜品编号  Search111 ',
  `caipin_photo` varchar(200) DEFAULT NULL COMMENT '菜品照片',
  `caipin_types` int DEFAULT NULL COMMENT '菜品类型 Search111',
  `caipin_kucun_number` int DEFAULT NULL COMMENT '菜品库存',
  `caipin_old_money` decimal(10,2) DEFAULT NULL COMMENT '菜品原价 ',
  `caipin_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `caipin_clicknum` int DEFAULT NULL COMMENT '点击次数 ',
  `caipin_content` text COMMENT '菜品介绍 ',
  `shangxia_types` int DEFAULT NULL COMMENT '是否上架 ',
  `caipin_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='菜品';

DELETE FROM `caipin`;
INSERT INTO `caipin` (`id`, `caipin_name`, `caipin_uuid_number`, `caipin_photo`, `caipin_types`, `caipin_kucun_number`, `caipin_old_money`, `caipin_new_money`, `caipin_clicknum`, `caipin_content`, `shangxia_types`, `caipin_delete`, `create_time`) VALUES
	(1, '菜品名称1', '165182250888865', 'http://localhost:8080/huoguodianguanli/upload/caipin1.jpg', 3, 100, 669.46, 85.46, 469, '菜品介绍1', 1, 1, '2022-05-06 07:35:08'),
	(2, '菜品名称2', '165182250888999', 'http://localhost:8080/huoguodianguanli/upload/caipin2.jpg', 3, 102, 822.94, 473.92, 415, '菜品介绍2', 1, 1, '2022-05-06 07:35:08'),
	(3, '菜品名称3', '165182250888915', 'http://localhost:8080/huoguodianguanli/upload/caipin3.jpg', 1, 101, 930.22, 90.27, 467, '菜品介绍3', 1, 1, '2022-05-06 07:35:08'),
	(4, '菜品名称4', '16518225088892', 'http://localhost:8080/huoguodianguanli/upload/caipin4.jpg', 3, 104, 552.55, 148.44, 211, '菜品介绍4', 1, 1, '2022-05-06 07:35:08'),
	(5, '菜品名称5', '16518225088893', 'http://localhost:8080/huoguodianguanli/upload/caipin5.jpg', 2, 105, 860.17, 96.11, 495, '菜品介绍5', 2, 1, '2022-05-06 07:35:08');

DROP TABLE IF EXISTS `caipin_commentback`;
CREATE TABLE IF NOT EXISTS `caipin_commentback` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `caipin_id` int DEFAULT NULL COMMENT '菜品',
  `yonghu_id` int DEFAULT NULL COMMENT '会员',
  `caipin_commentback_text` text COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='菜品评价';

DELETE FROM `caipin_commentback`;
INSERT INTO `caipin_commentback` (`id`, `caipin_id`, `yonghu_id`, `caipin_commentback_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 2, '评价内容1', '2022-05-06 07:35:08', '回复信息1', '2022-05-06 07:35:08', '2022-05-06 07:35:08'),
	(2, 2, 3, '评价内容2', '2022-05-06 07:35:08', '回复信息2', '2022-05-06 07:35:08', '2022-05-06 07:35:08'),
	(3, 3, 1, '评价内容3', '2022-05-06 07:35:08', '回复信息3', '2022-05-06 07:35:08', '2022-05-06 07:35:08'),
	(4, 4, 2, '评价内容4', '2022-05-06 07:35:08', '回复信息4', '2022-05-06 07:35:08', '2022-05-06 07:35:08'),
	(5, 5, 3, '评价内容5', '2022-05-06 07:35:08', '回复信息5', '2022-05-06 07:35:08', '2022-05-06 07:35:08'),
	(6, 1, 1, '评论内容121212', '2022-05-06 08:08:36', NULL, NULL, '2022-05-06 08:08:36');

DROP TABLE IF EXISTS `caipin_order`;
CREATE TABLE IF NOT EXISTS `caipin_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `caipin_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号 Search111 ',
  `caipin_id` int DEFAULT NULL COMMENT '菜品',
  `yonghu_id` int DEFAULT NULL COMMENT '会员',
  `buy_number` int DEFAULT NULL COMMENT '购买数量',
  `caipin_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `caipin_order_types` int DEFAULT NULL COMMENT '订单类型 Search111 ',
  `caipin_order_payment_types` int DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='菜品订单';

DELETE FROM `caipin_order`;
INSERT INTO `caipin_order` (`id`, `caipin_order_uuid_number`, `caipin_id`, `yonghu_id`, `buy_number`, `caipin_order_true_price`, `caipin_order_types`, `caipin_order_payment_types`, `insert_time`, `create_time`) VALUES
	(1, '1651824415046', 3, 1, 1, 90.27, 1, 1, '2022-05-06 08:06:55', '2022-05-06 08:06:55'),
	(2, '1651824415046', 1, 1, 1, 85.46, 5, 1, '2022-05-06 08:06:55', '2022-05-06 08:06:55'),
	(3, '1651824415046', 5, 1, 1, 96.11, 2, 1, '2022-05-06 08:06:55', '2022-05-06 08:06:55'),
	(4, '1720577662727', 3, 1, 1, 90.27, 1, 1, '2024-07-10 02:14:23', '2024-07-10 02:14:23');

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '所属会员',
  `caipin_id` int DEFAULT NULL COMMENT '菜品',
  `buy_number` int DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='购物车';

DELETE FROM `cart`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'http://localhost:8080/huoguodianguanli/upload/config1.jpg'),
	(2, '轮播图2', 'http://localhost:8080/huoguodianguanli/upload/config2.jpg'),
	(3, '轮播图3', 'http://localhost:8080/huoguodianguanli/upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'news_types', '公告类型', 1, '公告类型1', NULL, NULL, '2022-05-06 07:34:58'),
	(2, 'news_types', '公告类型', 2, '公告类型2', NULL, NULL, '2022-05-06 07:34:58'),
	(3, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2022-05-06 07:34:58'),
	(4, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2022-05-06 07:34:58'),
	(5, 'shangxia_types', '上下架', 1, '上架', NULL, NULL, '2022-05-06 07:34:58'),
	(6, 'shangxia_types', '上下架', 2, '下架', NULL, NULL, '2022-05-06 07:34:58'),
	(7, 'caipin_types', '菜品类型', 1, '菜品类型1', NULL, NULL, '2022-05-06 07:34:58'),
	(8, 'caipin_types', '菜品类型', 2, '菜品类型2', NULL, NULL, '2022-05-06 07:34:58'),
	(9, 'caipin_types', '菜品类型', 3, '菜品类型3', NULL, NULL, '2022-05-06 07:34:58'),
	(10, 'caipin_order_types', '订单类型', 1, '已支付', NULL, NULL, '2022-05-06 07:34:58'),
	(11, 'caipin_order_types', '订单类型', 2, '退款', NULL, NULL, '2022-05-06 07:34:58'),
	(12, 'caipin_order_types', '订单类型', 3, '已出餐', NULL, NULL, '2022-05-06 07:34:58'),
	(13, 'caipin_order_types', '订单类型', 4, '已上餐', NULL, NULL, '2022-05-06 07:34:58'),
	(14, 'caipin_order_types', '订单类型', 5, '已评价', NULL, NULL, '2022-05-06 07:34:58'),
	(15, 'caipin_order_payment_types', '订单支付类型', 1, '现金', NULL, NULL, '2022-05-06 07:34:58'),
	(16, 'forum_state_types', '帖子状态', 1, '发帖', NULL, NULL, '2022-05-06 07:34:58'),
	(17, 'forum_state_types', '帖子状态', 2, '回帖', NULL, NULL, '2022-05-06 07:34:58');

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int DEFAULT NULL COMMENT '会员',
  `users_id` int DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int DEFAULT NULL COMMENT '父id',
  `forum_state_types` int DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='论坛';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `forum_name`, `yonghu_id`, `users_id`, `forum_content`, `super_ids`, `forum_state_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, '帖子标题1', 1, NULL, '发布内容1', NULL, 1, '2022-05-06 07:35:08', '2022-05-06 07:35:08', '2022-05-06 07:35:08'),
	(2, '帖子标题2', 1, NULL, '发布内容2', NULL, 1, '2022-05-06 07:35:08', '2022-05-06 07:35:08', '2022-05-06 07:35:08'),
	(3, '帖子标题3', 2, NULL, '发布内容3', NULL, 1, '2022-05-06 07:35:08', '2022-05-06 07:35:08', '2022-05-06 07:35:08'),
	(4, '帖子标题4', 3, NULL, '发布内容4', NULL, 1, '2022-05-06 07:35:08', '2022-05-06 07:35:08', '2022-05-06 07:35:08'),
	(5, '帖子标题5', 1, NULL, '发布内容5', NULL, 1, '2022-05-06 07:35:08', '2022-05-06 07:35:08', '2022-05-06 07:35:08'),
	(6, NULL, 1, NULL, '登录后才能查看数据详情页面和评论购买加入购物车等操作', 5, 2, '2022-05-06 08:03:53', NULL, '2022-05-06 08:03:53'),
	(7, NULL, NULL, 1, '管理111', 5, 2, '2022-05-06 08:07:35', NULL, '2022-05-06 08:07:35');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `news_types` int NOT NULL COMMENT '公告类型 Search111  ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `news_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_photo`, `news_types`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '公告名称1', 'http://localhost:8080/huoguodianguanli/upload/news1.jpg', 1, '2022-05-06 07:35:08', '公告详情1', '2022-05-06 07:35:08'),
	(2, '公告名称2', 'http://localhost:8080/huoguodianguanli/upload/news2.jpg', 2, '2022-05-06 07:35:08', '公告详情2', '2022-05-06 07:35:08'),
	(3, '公告名称3', 'http://localhost:8080/huoguodianguanli/upload/news3.jpg', 1, '2022-05-06 07:35:08', '公告详情3', '2022-05-06 07:35:08'),
	(4, '公告名称4', 'http://localhost:8080/huoguodianguanli/upload/news4.jpg', 2, '2022-05-06 07:35:08', '公告详情4', '2022-05-06 07:35:08'),
	(5, '公告名称5', 'http://localhost:8080/huoguodianguanli/upload/news5.jpg', 2, '2022-05-06 07:35:08', '公告详情5', '2022-05-06 07:35:08');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', '4mpuktq246xg0wackqt9kz3f4ldx0vad', '2022-05-06 08:02:38', '2024-07-10 03:12:48'),
	(2, 1, 'a1', 'yonghu', '会员', 't9ui1erb62n3k2qqm8k96ce2k9djl6i1', '2022-05-06 08:02:45', '2024-07-10 03:13:51');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-08-01 00:15:04');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '会员姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '会员手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '会员身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '会员头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='会员';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `yonghu_email`, `new_money`, `create_time`) VALUES
	(1, '会员1', '123456', '会员姓名1', '17703786901', '410224199610232001', 'http://localhost:8080/huoguodianguanli/upload/yonghu1.jpg', 2, '1@qq.com', 235.55, '2022-05-06 07:35:08'),
	(2, '会员2', '123456', '会员姓名2', '17703786902', '410224199610232002', 'http://localhost:8080/huoguodianguanli/upload/yonghu2.jpg', 1, '2@qq.com', 609.95, '2022-05-06 07:35:08'),
	(3, '会员3', '123456', '会员姓名3', '17703786903', '410224199610232003', 'http://localhost:8080/huoguodianguanli/upload/yonghu3.jpg', 2, '3@qq.com', 202.73, '2022-05-06 07:35:08');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
