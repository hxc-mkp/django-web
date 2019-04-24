/*
Navicat MySQL Data Transfer

Source Server         : mkp
Source Server Version : 50725
Source Host           : localhost:3306
Source Database       : myweb

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2019-04-24 14:45:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('5', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('8', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('9', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('11', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('12', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('13', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission` VALUES ('14', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission` VALUES ('16', 'Can view user', '4', 'view_user');
INSERT INTO `auth_permission` VALUES ('17', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('18', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('19', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('20', 'Can view content type', '5', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('21', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('22', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('23', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('24', 'Can view session', '6', 'view_session');
INSERT INTO `auth_permission` VALUES ('25', 'Can add movie', '7', 'add_movie');
INSERT INTO `auth_permission` VALUES ('26', 'Can change movie', '7', 'change_movie');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete movie', '7', 'delete_movie');
INSERT INTO `auth_permission` VALUES ('28', 'Can view movie', '7', 'view_movie');
INSERT INTO `auth_permission` VALUES ('29', 'Can add phone', '8', 'add_phone');
INSERT INTO `auth_permission` VALUES ('30', 'Can change phone', '8', 'change_phone');
INSERT INTO `auth_permission` VALUES ('31', 'Can delete phone', '8', 'delete_phone');
INSERT INTO `auth_permission` VALUES ('32', 'Can view phone', '8', 'view_phone');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('7', 'web', 'movie');
INSERT INTO `django_content_type` VALUES ('8', 'web', 'phone');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2019-04-24 04:54:08.268372');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2019-04-24 04:54:10.630414');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2019-04-24 04:54:18.892383');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2019-04-24 04:54:21.130278');
INSERT INTO `django_migrations` VALUES ('5', 'admin', '0003_logentry_add_action_flag_choices', '2019-04-24 04:54:21.198325');
INSERT INTO `django_migrations` VALUES ('6', 'contenttypes', '0002_remove_content_type_name', '2019-04-24 04:54:22.090955');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0002_alter_permission_name_max_length', '2019-04-24 04:54:22.868520');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0003_alter_user_email_max_length', '2019-04-24 04:54:23.487940');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0004_alter_user_username_opts', '2019-04-24 04:54:23.525968');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0005_alter_user_last_login_null', '2019-04-24 04:54:24.009308');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0006_require_contenttypes_0002', '2019-04-24 04:54:24.070350');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0007_alter_validators_add_error_messages', '2019-04-24 04:54:24.113381');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0008_alter_user_username_max_length', '2019-04-24 04:54:24.945050');
INSERT INTO `django_migrations` VALUES ('14', 'auth', '0009_alter_user_last_name_max_length', '2019-04-24 04:54:25.626087');
INSERT INTO `django_migrations` VALUES ('15', 'auth', '0010_alter_group_name_max_length', '2019-04-24 04:54:26.278548');
INSERT INTO `django_migrations` VALUES ('16', 'auth', '0011_update_proxy_permissions', '2019-04-24 04:54:26.312587');
INSERT INTO `django_migrations` VALUES ('17', 'sessions', '0001_initial', '2019-04-24 04:54:26.767921');
INSERT INTO `django_migrations` VALUES ('18', 'web', '0001_initial', '2019-04-24 04:54:27.673801');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------

-- ----------------------------
-- Table structure for web_movie
-- ----------------------------
DROP TABLE IF EXISTS `web_movie`;
CREATE TABLE `web_movie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `director` varchar(20) NOT NULL,
  `Country` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_movie
-- ----------------------------
INSERT INTO `web_movie` VALUES ('1', '肖申克的救赎', '弗兰克·德拉邦特', '美国');
INSERT INTO `web_movie` VALUES ('2', '霸王别姬', '陈凯歌', '中国大陆 香港');
INSERT INTO `web_movie` VALUES ('3', '这个杀手不太冷', '吕克·贝松', '法国');
INSERT INTO `web_movie` VALUES ('4', '阿甘正传', '罗伯特·泽米吉斯', '美国');
INSERT INTO `web_movie` VALUES ('5', '美丽人生', '罗伯托·贝尼尼', '意大利');
INSERT INTO `web_movie` VALUES ('6', '泰坦尼克号', '詹姆斯·卡梅隆', '美国');
INSERT INTO `web_movie` VALUES ('7', '千与千寻', '宫崎骏', '日本');
INSERT INTO `web_movie` VALUES ('8', '辛德勒的名单', '史蒂文·斯皮尔伯格', '美国');
INSERT INTO `web_movie` VALUES ('9', '盗梦空间', '克里斯托弗·诺兰', '美国 英国');
INSERT INTO `web_movie` VALUES ('10', '忠犬八公的故事', '莱塞·霍尔斯道姆', '美国 英国');
INSERT INTO `web_movie` VALUES ('11', '机器人总动员', '安德鲁·斯坦顿', '美国');
INSERT INTO `web_movie` VALUES ('12', '三傻大闹宝莱坞', '拉库马·希拉尼', '印度');
INSERT INTO `web_movie` VALUES ('13', '海上钢琴师', '朱塞佩·托纳多雷', '意大利');
INSERT INTO `web_movie` VALUES ('14', '放牛班的春天', '克里斯托夫·巴拉蒂', '法国 瑞士 德国');
INSERT INTO `web_movie` VALUES ('15', '楚门的世界', '彼得·威尔', '美国');
INSERT INTO `web_movie` VALUES ('16', '大话西游之大圣娶亲', '刘镇伟', '香港 中国大陆');
INSERT INTO `web_movie` VALUES ('17', '星际穿越', '克里斯托弗·诺兰', '美国 英国 加拿大 冰岛');
INSERT INTO `web_movie` VALUES ('18', '龙猫', '宫崎骏', '日本');
INSERT INTO `web_movie` VALUES ('19', '教父', '弗朗西斯·福特·科波拉', '美国');
INSERT INTO `web_movie` VALUES ('20', '熔炉', '黄东赫', '韩国');
INSERT INTO `web_movie` VALUES ('21', '无间道', '刘伟强', '香港');
INSERT INTO `web_movie` VALUES ('22', '疯狂动物城', '拜伦·霍华德', '美国');
INSERT INTO `web_movie` VALUES ('23', '当幸福来敲门', '加布里尔·穆奇诺', '美国');
INSERT INTO `web_movie` VALUES ('24', '怦然心动', '罗伯·莱纳', '美国');
INSERT INTO `web_movie` VALUES ('25', '触不可及', '奥利维·那卡什', '法国');
INSERT INTO `web_movie` VALUES ('26', '蝙蝠侠：黑暗骑士', '克里斯托弗·诺兰', '美国 英国');
INSERT INTO `web_movie` VALUES ('27', '乱世佳人', '维克多·弗莱明', '美国');
INSERT INTO `web_movie` VALUES ('28', '活着', '张艺谋', '中国大陆 香港');
INSERT INTO `web_movie` VALUES ('29', '少年派的奇幻漂流', '李安', '美国 台湾 英国 加拿大');
INSERT INTO `web_movie` VALUES ('30', '控方证人', '比利·怀尔德', '美国');
INSERT INTO `web_movie` VALUES ('31', '天堂电影院', '朱塞佩·托纳多雷', '意大利 法国');
INSERT INTO `web_movie` VALUES ('32', '鬼子来了', '姜文', '中国大陆');
INSERT INTO `web_movie` VALUES ('33', '指环王3：王者无敌', '彼得·杰克逊', '美国 新西兰');
INSERT INTO `web_movie` VALUES ('34', '十二怒汉', 'Sidney', '美国');
INSERT INTO `web_movie` VALUES ('35', '天空之城', '宫崎骏', '日本');
INSERT INTO `web_movie` VALUES ('36', '摔跤吧！爸爸', '涅提·蒂瓦里', '印度');
INSERT INTO `web_movie` VALUES ('37', '飞屋环游记', '彼特·道格特', '美国');
INSERT INTO `web_movie` VALUES ('38', '大话西游之月光宝盒', '刘镇伟', '香港 中国大陆');
INSERT INTO `web_movie` VALUES ('39', '搏击俱乐部', '大卫·芬奇', '美国 德国');
INSERT INTO `web_movie` VALUES ('40', '罗马假日', '威廉·惠勒', '美国');
INSERT INTO `web_movie` VALUES ('41', '哈尔的移动城堡', '宫崎骏', '日本');
INSERT INTO `web_movie` VALUES ('42', '闻香识女人', '马丁·布莱斯', '美国');
INSERT INTO `web_movie` VALUES ('43', '辩护人', '杨宇硕', '韩国');
INSERT INTO `web_movie` VALUES ('44', '窃听风暴', '弗洛里安·亨克尔·冯·多纳斯马尔克', '德国');
INSERT INTO `web_movie` VALUES ('45', '末代皇帝', '贝纳尔多·贝托鲁奇', '英国 意大利 中国大陆 法国 美国');
INSERT INTO `web_movie` VALUES ('46', '两杆大烟枪', 'Guy', '英国');
INSERT INTO `web_movie` VALUES ('47', '飞越疯人院', '米洛斯·福尔曼', '美国');
INSERT INTO `web_movie` VALUES ('48', '死亡诗社', '彼得·威尔', '美国');
INSERT INTO `web_movie` VALUES ('49', '素媛', '李濬益', '韩国');
INSERT INTO `web_movie` VALUES ('50', '寻梦环游记', '李·昂克里奇', '美国');
INSERT INTO `web_movie` VALUES ('51', '指环王2：双塔奇兵', '彼得·杰克逊', '美国 新西兰');
INSERT INTO `web_movie` VALUES ('52', '教父2', '弗朗西斯·福特·科波拉', '美国');
INSERT INTO `web_movie` VALUES ('53', 'V字仇杀队', '詹姆斯·麦克特格', '美国 英国 德国');
INSERT INTO `web_movie` VALUES ('54', '指环王1：魔戒再现', '彼得·杰克逊', '新西兰 美国');
INSERT INTO `web_movie` VALUES ('55', '海豚湾', '路易·西霍尤斯', '美国');
INSERT INTO `web_movie` VALUES ('56', '饮食男女', '李安', '台湾 美国');
INSERT INTO `web_movie` VALUES ('57', '狮子王', 'Roger', '美国');
INSERT INTO `web_movie` VALUES ('58', '美丽心灵', '朗·霍华德', '美国');
INSERT INTO `web_movie` VALUES ('59', '情书', '岩井俊二', '日本');
INSERT INTO `web_movie` VALUES ('60', '钢琴家', '罗曼·波兰斯基', '法国 德国 英国 波兰');
INSERT INTO `web_movie` VALUES ('61', '本杰明·巴顿奇事', '大卫·芬奇', '美国');
INSERT INTO `web_movie` VALUES ('62', '美国往事', '赛尔乔·莱翁内', '意大利 美国');
INSERT INTO `web_movie` VALUES ('63', '看不见的客人', '奥里奥尔·保罗', '西班牙');
INSERT INTO `web_movie` VALUES ('64', '黑客帝国', '安迪·沃卓斯基', '美国 澳大利亚');
INSERT INTO `web_movie` VALUES ('65', '小鞋子', '马基德·马基迪', '伊朗');
INSERT INTO `web_movie` VALUES ('66', '西西里的美丽传说', '朱塞佩·托纳多雷', '意大利 美国');
INSERT INTO `web_movie` VALUES ('67', '大闹天宫', '万籁鸣', '中国大陆');
INSERT INTO `web_movie` VALUES ('68', '哈利·波特与魔法石', 'Chris', '美国 英国');
INSERT INTO `web_movie` VALUES ('69', '让子弹飞', '姜文', '中国大陆 香港');
INSERT INTO `web_movie` VALUES ('70', '拯救大兵瑞恩', '史蒂文·斯皮尔伯格', '美国');
INSERT INTO `web_movie` VALUES ('71', '致命魔术', '克里斯托弗·诺兰', '美国 英国');
INSERT INTO `web_movie` VALUES ('72', '七宗罪', '大卫·芬奇', '美国');
INSERT INTO `web_movie` VALUES ('73', '被嫌弃的松子的一生', '中岛哲也', '日本');
INSERT INTO `web_movie` VALUES ('74', '音乐之声', '罗伯特·怀斯', '美国');
INSERT INTO `web_movie` VALUES ('75', '低俗小说', '昆汀·塔伦蒂诺', '美国');
INSERT INTO `web_movie` VALUES ('76', '沉默的羔羊', '乔纳森·戴米', '美国');
INSERT INTO `web_movie` VALUES ('77', '天使爱美丽', '让-皮埃尔·热内', '法国 德国');
INSERT INTO `web_movie` VALUES ('78', '猫鼠游戏', '史蒂文·斯皮尔伯格', '美国 加拿大');
INSERT INTO `web_movie` VALUES ('79', '勇敢的心', '梅尔·吉布森', '美国');
INSERT INTO `web_movie` VALUES ('80', '蝴蝶效应', '埃里克·布雷斯', '美国 加拿大');
INSERT INTO `web_movie` VALUES ('81', '剪刀手爱德华', '蒂姆·波顿', '美国');
INSERT INTO `web_movie` VALUES ('82', '春光乍泄', '王家卫', '香港 日本 韩国');
INSERT INTO `web_movie` VALUES ('83', '心灵捕手', '格斯·范·桑特', '美国');
INSERT INTO `web_movie` VALUES ('84', '禁闭岛', 'Martin', '美国');
INSERT INTO `web_movie` VALUES ('85', '布达佩斯大饭店', '韦斯·安德森', '美国 德国 英国');
INSERT INTO `web_movie` VALUES ('86', '穿条纹睡衣的男孩', '马克·赫尔曼', '英国 美国');
INSERT INTO `web_movie` VALUES ('87', '入殓师', '泷田洋二郎', '日本');
INSERT INTO `web_movie` VALUES ('88', '阿凡达', '詹姆斯·卡梅隆', '美国 英国');
INSERT INTO `web_movie` VALUES ('89', '幽灵公主', '宫崎骏', '日本');
INSERT INTO `web_movie` VALUES ('90', '阳光灿烂的日子', '姜文', '中国大陆 香港');
INSERT INTO `web_movie` VALUES ('91', '致命ID', 'James', '美国');
INSERT INTO `web_movie` VALUES ('92', '第六感', 'M·奈特·沙马兰', '美国');
INSERT INTO `web_movie` VALUES ('93', '加勒比海盗', '戈尔·维宾斯基', '美国');
INSERT INTO `web_movie` VALUES ('94', '狩猎', '托马斯·温特伯格', '丹麦 瑞典');
INSERT INTO `web_movie` VALUES ('95', '断背山', '李安', '美国 加拿大');
INSERT INTO `web_movie` VALUES ('96', '玛丽和马克思', '亚当·艾略特', '澳大利亚');
INSERT INTO `web_movie` VALUES ('97', '重庆森林', '王家卫', '香港');
INSERT INTO `web_movie` VALUES ('98', '摩登时代', '查理·卓别林', '美国');
INSERT INTO `web_movie` VALUES ('99', '喜剧之王', '周星驰', '香港');
INSERT INTO `web_movie` VALUES ('100', '告白', '中岛哲也', '日本');
INSERT INTO `web_movie` VALUES ('101', '大鱼', '蒂姆·波顿', '美国');
INSERT INTO `web_movie` VALUES ('102', '消失的爱人', '大卫·芬奇', '美国');
INSERT INTO `web_movie` VALUES ('103', '一一', '杨德昌', '台湾 日本');
INSERT INTO `web_movie` VALUES ('104', '射雕英雄传之东成西就', '刘镇伟', '香港');
INSERT INTO `web_movie` VALUES ('105', '阳光姐妹淘', '姜炯哲', '韩国');
INSERT INTO `web_movie` VALUES ('106', '甜蜜蜜', '陈可辛', '香港');
INSERT INTO `web_movie` VALUES ('107', '爱在黎明破晓前', '理查德·林克莱特', '美国 奥地利 瑞士');
INSERT INTO `web_movie` VALUES ('108', '小森林 夏秋篇', '森淳一', '日本');
INSERT INTO `web_movie` VALUES ('109', '驯龙高手', '迪恩·德布洛斯', '美国');
INSERT INTO `web_movie` VALUES ('110', '侧耳倾听', '近藤喜文', '日本');
INSERT INTO `web_movie` VALUES ('111', '请以你的名字呼唤我', '卢卡·瓜达尼诺', '意大利 法国 巴西 美国 荷兰 德国');
INSERT INTO `web_movie` VALUES ('112', '红辣椒', '今敏', '日本');
INSERT INTO `web_movie` VALUES ('113', '倩女幽魂', '程小东', '香港');
INSERT INTO `web_movie` VALUES ('114', '恐怖直播', '金秉祐', '韩国');
INSERT INTO `web_movie` VALUES ('115', '风之谷', '宫崎骏', '日本');
INSERT INTO `web_movie` VALUES ('116', '超脱', '托尼·凯耶', '美国');
INSERT INTO `web_movie` VALUES ('117', '上帝之城', 'Kátia', '巴西 法国');
INSERT INTO `web_movie` VALUES ('118', '爱在日落黄昏时', '理查德·林克莱特', '美国');
INSERT INTO `web_movie` VALUES ('119', '菊次郎的夏天', '北野武', '日本');
INSERT INTO `web_movie` VALUES ('120', '幸福终点站', '史蒂文·斯皮尔伯格', '美国');
INSERT INTO `web_movie` VALUES ('121', '哈利·波特与死亡圣器(下)', '大卫·叶茨', '美国 英国');
INSERT INTO `web_movie` VALUES ('122', '小森林 冬春篇', '森淳一', '日本');
INSERT INTO `web_movie` VALUES ('123', '杀人回忆', '奉俊昊', '韩国');
INSERT INTO `web_movie` VALUES ('124', '7号房的礼物', '李焕庆', '韩国');
INSERT INTO `web_movie` VALUES ('125', '神偷奶爸', '皮艾尔·柯芬', '美国 法国');
INSERT INTO `web_movie` VALUES ('126', '借东西的小人阿莉埃蒂', '米林宏昌', '日本');
INSERT INTO `web_movie` VALUES ('127', '萤火之森', '大森贵弘', '日本');
INSERT INTO `web_movie` VALUES ('128', '唐伯虎点秋香', '李力持', '香港');
INSERT INTO `web_movie` VALUES ('129', '蝙蝠侠：黑暗骑士崛起', '克里斯托弗·诺兰', '美国 英国');
INSERT INTO `web_movie` VALUES ('130', '超能陆战队', '唐·霍尔', '美国');
INSERT INTO `web_movie` VALUES ('131', '怪兽电力公司', '彼特·道格特', '美国');
INSERT INTO `web_movie` VALUES ('132', '岁月神偷', '罗启锐', '香港 中国大陆');
INSERT INTO `web_movie` VALUES ('133', '电锯惊魂', '詹姆斯·温', '美国');
INSERT INTO `web_movie` VALUES ('134', '七武士', '黑泽明', '日本');
INSERT INTO `web_movie` VALUES ('135', '谍影重重3', '保罗·格林格拉斯', '美国 德国');
INSERT INTO `web_movie` VALUES ('136', '真爱至上', '理查德·柯蒂斯', '英国 美国 法国');
INSERT INTO `web_movie` VALUES ('137', '无人知晓', '是枝裕和', '日本');
INSERT INTO `web_movie` VALUES ('138', '疯狂原始人', '科克·德·米科', '美国');
INSERT INTO `web_movie` VALUES ('139', '喜宴', '李安', '台湾 美国');
INSERT INTO `web_movie` VALUES ('140', '英雄本色', '吴宇森', '香港');
INSERT INTO `web_movie` VALUES ('141', '萤火虫之墓', '高畑勋', '日本');
INSERT INTO `web_movie` VALUES ('142', '东邪西毒', '王家卫', '香港 台湾');
INSERT INTO `web_movie` VALUES ('143', '贫民窟的百万富翁', '丹尼·鲍尔', '英国 美国');
INSERT INTO `web_movie` VALUES ('144', '黑天鹅', '达伦·阿罗诺夫斯基', '美国');
INSERT INTO `web_movie` VALUES ('145', '记忆碎片', '克里斯托弗·诺兰', '美国');
INSERT INTO `web_movie` VALUES ('146', '血战钢锯岭', '梅尔·吉布森', '美国 澳大利亚');
INSERT INTO `web_movie` VALUES ('147', '傲慢与偏见', '乔·怀特', '法国 英国 美国');
INSERT INTO `web_movie` VALUES ('148', '心迷宫', '忻钰坤', '中国大陆');
INSERT INTO `web_movie` VALUES ('149', '时空恋旅人', '理查德·柯蒂斯', '英国');
INSERT INTO `web_movie` VALUES ('150', '荒蛮故事', '达米安·斯兹弗隆', '阿根廷 西班牙');
INSERT INTO `web_movie` VALUES ('151', '纵横四海', '吴宇森', '香港');
INSERT INTO `web_movie` VALUES ('152', '雨人', '巴瑞·莱文森', '美国');
INSERT INTO `web_movie` VALUES ('153', '教父3', '弗朗西斯·福特·科波拉', '美国');
INSERT INTO `web_movie` VALUES ('154', '达拉斯买家俱乐部', '让-马克·瓦雷', '美国');
INSERT INTO `web_movie` VALUES ('155', '玩具总动员3', '李·昂克里奇', '美国');
INSERT INTO `web_movie` VALUES ('156', '完美的世界', '克林特·伊斯特伍德', '美国');
INSERT INTO `web_movie` VALUES ('157', '卢旺达饭店', '特瑞·乔治', '英国 南非 意大利 美国');
INSERT INTO `web_movie` VALUES ('158', '花样年华', '王家卫', '香港');
INSERT INTO `web_movie` VALUES ('159', '海边的曼彻斯特', '肯尼斯·罗纳根', '美国');
INSERT INTO `web_movie` VALUES ('160', '海洋', '雅克·贝汉', '法国 瑞士 西班牙 美国 阿联酋');
INSERT INTO `web_movie` VALUES ('161', '恋恋笔记本', '尼克·卡索维茨', '美国');
INSERT INTO `web_movie` VALUES ('162', '虎口脱险', '杰拉尔·乌里', '法国 英国');
INSERT INTO `web_movie` VALUES ('163', '你看起来好像很好吃', '藤森雅也', '日本');
INSERT INTO `web_movie` VALUES ('164', '被解救的姜戈', '昆汀·塔伦蒂诺', '美国');
INSERT INTO `web_movie` VALUES ('165', '二十二', '郭柯', '中国大陆');
INSERT INTO `web_movie` VALUES ('166', '头脑特工队', '彼特·道格特', '美国');
INSERT INTO `web_movie` VALUES ('167', '三块广告牌', '马丁·麦克唐纳', '美国 英国');
INSERT INTO `web_movie` VALUES ('168', '无敌破坏王', '瑞奇·莫尔', '美国');
INSERT INTO `web_movie` VALUES ('169', '雨中曲', '斯坦利·多南', '美国');
INSERT INTO `web_movie` VALUES ('170', '冰川时代', '卡洛斯·沙尔丹哈', '美国');
INSERT INTO `web_movie` VALUES ('171', '你的名字。', '新海诚', '日本');
INSERT INTO `web_movie` VALUES ('172', '燃情岁月', '爱德华·兹威克', '美国');
INSERT INTO `web_movie` VALUES ('173', '我是山姆', '杰茜·尼尔森', '美国');
INSERT INTO `web_movie` VALUES ('174', '爆裂鼓手', '达米恩·查泽雷', '美国');
INSERT INTO `web_movie` VALUES ('175', '人工智能', '史蒂文·斯皮尔伯格', '美国');
INSERT INTO `web_movie` VALUES ('176', '未麻的部屋', '今敏', '日本');
INSERT INTO `web_movie` VALUES ('177', '穿越时空的少女', '细田守', '日本');
INSERT INTO `web_movie` VALUES ('178', '魂断蓝桥', '茂文·勒鲁瓦', '美国');
INSERT INTO `web_movie` VALUES ('179', '一个叫欧维的男人决定去死', '汉内斯·赫尔姆', '瑞典');
INSERT INTO `web_movie` VALUES ('180', '模仿游戏', '莫滕·泰杜姆', '英国 美国');
INSERT INTO `web_movie` VALUES ('181', '猜火车', '丹尼·博伊尔', '英国');
INSERT INTO `web_movie` VALUES ('182', '房间', '伦尼·阿伯拉罕森', '爱尔兰 加拿大 英国 美国');
INSERT INTO `web_movie` VALUES ('183', '忠犬八公物语', 'Seijirô', '日本');
INSERT INTO `web_movie` VALUES ('184', '恐怖游轮', '克里斯托弗·史密斯', '英国 澳大利亚');
INSERT INTO `web_movie` VALUES ('185', '罗生门', '黑泽明', '日本');
INSERT INTO `web_movie` VALUES ('186', '完美陌生人', '保罗·格诺维瑟', '意大利');
INSERT INTO `web_movie` VALUES ('187', '魔女宅急便', '宫崎骏', '日本');
INSERT INTO `web_movie` VALUES ('188', '阿飞正传', '王家卫', '香港');
INSERT INTO `web_movie` VALUES ('189', '香水', '汤姆·提克威', '德国 法国 西班牙 美国');
INSERT INTO `web_movie` VALUES ('190', '哪吒闹海', '严定宪', '中国大陆');
INSERT INTO `web_movie` VALUES ('191', '浪潮', '丹尼斯·甘塞尔', '德国');
INSERT INTO `web_movie` VALUES ('192', '黑客帝国3：矩阵革命', 'Andy', '美国 澳大利亚');
INSERT INTO `web_movie` VALUES ('193', '海街日记', '是枝裕和', '日本');
INSERT INTO `web_movie` VALUES ('194', '朗读者', '史蒂芬·戴德利', '美国 德国');
INSERT INTO `web_movie` VALUES ('195', '可可西里', '陆川', '中国大陆 香港');
INSERT INTO `web_movie` VALUES ('196', '谍影重重2', '保罗·格林格拉斯', '美国 德国');
INSERT INTO `web_movie` VALUES ('197', '谍影重重', '道格·里曼', '美国 德国 捷克');
INSERT INTO `web_movie` VALUES ('198', '战争之王', '安德鲁·尼科尔', '美国 法国');
INSERT INTO `web_movie` VALUES ('199', '牯岭街少年杀人事件', '杨德昌', '台湾');
INSERT INTO `web_movie` VALUES ('200', '地球上的星星', '阿米尔·汗', '印度');
INSERT INTO `web_movie` VALUES ('201', '惊魂记', 'Alfred', '美国');
INSERT INTO `web_movie` VALUES ('202', '青蛇', '徐克', '香港');
INSERT INTO `web_movie` VALUES ('203', '疯狂的石头', '宁浩', '中国大陆 香港');
INSERT INTO `web_movie` VALUES ('204', '一次别离', '阿斯哈·法哈蒂', '伊朗 法国');
INSERT INTO `web_movie` VALUES ('205', '追随', '克里斯托弗·诺兰', '英国');
INSERT INTO `web_movie` VALUES ('206', '天书奇谭', '王树忱', '中国大陆');
INSERT INTO `web_movie` VALUES ('207', '终结者2：审判日', '詹姆斯·卡梅隆', '美国 法国');
INSERT INTO `web_movie` VALUES ('208', '源代码', '邓肯·琼斯', '美国 加拿大');
INSERT INTO `web_movie` VALUES ('209', '初恋这件小事', '普特鹏·普罗萨卡·那·萨克那卡林', '泰国');
INSERT INTO `web_movie` VALUES ('210', '步履不停', '是枝裕和', '日本');
INSERT INTO `web_movie` VALUES ('211', '小萝莉的猴神大叔', '卡比尔·汗', '印度');
INSERT INTO `web_movie` VALUES ('212', '新龙门客栈', '李惠民', '香港 中国大陆');
INSERT INTO `web_movie` VALUES ('213', '再次出发之纽约遇见你', '约翰·卡尼', '美国');
INSERT INTO `web_movie` VALUES ('214', '撞车', '保罗·哈吉斯', '美国 德国');
INSERT INTO `web_movie` VALUES ('215', '爱在午夜降临前', '理查德·林克莱特', '美国 希腊');
INSERT INTO `web_movie` VALUES ('216', '梦之安魂曲', '达伦·阿伦诺夫斯基', '美国');
INSERT INTO `web_movie` VALUES ('217', '海蒂和爷爷', '阿兰·葛斯彭纳', '德国 瑞士 南非');
INSERT INTO `web_movie` VALUES ('218', '无耻混蛋', 'Quentin', '美国 德国');
INSERT INTO `web_movie` VALUES ('219', '东京物语', '小津安二郎', '日本');
INSERT INTO `web_movie` VALUES ('220', '城市之光', 'Charles', '美国');
INSERT INTO `web_movie` VALUES ('221', '绿里奇迹', 'Frank', '美国');
INSERT INTO `web_movie` VALUES ('222', '彗星来的那一夜', '詹姆斯·沃德·布柯特', '美国 英国');
INSERT INTO `web_movie` VALUES ('223', '血钻', '爱德华·兹威克', '美国 德国');
INSERT INTO `web_movie` VALUES ('224', '2001太空漫游', '斯坦利·库布里克', '英国 美国');
INSERT INTO `web_movie` VALUES ('225', '这个男人来自地球', '理查德·沙因克曼', '美国');
INSERT INTO `web_movie` VALUES ('226', 'E.T. 外星人', 'Steven', '美国');
INSERT INTO `web_movie` VALUES ('227', '末路狂花', '雷德利·斯科特', '美国 法国');
INSERT INTO `web_movie` VALUES ('228', '聚焦', '托马斯·麦卡锡', '美国');
INSERT INTO `web_movie` VALUES ('229', '功夫', '周星驰', '中国大陆 香港');
INSERT INTO `web_movie` VALUES ('230', '勇闯夺命岛', '迈克尔·贝', '美国');
INSERT INTO `web_movie` VALUES ('231', '变脸', '吴宇森', '美国');
INSERT INTO `web_movie` VALUES ('232', '发条橙', 'Stanley', '英国 美国');
INSERT INTO `web_movie` VALUES ('233', '黄金三镖客', 'Sergio', '意大利 西班牙 西德');
INSERT INTO `web_movie` VALUES ('234', '黑鹰坠落', '雷德利·斯科特', '美国');
INSERT INTO `web_movie` VALUES ('235', '秒速5厘米', '新海诚', '日本');
INSERT INTO `web_movie` VALUES ('236', '非常嫌疑犯', '布莱恩·辛格', '德国 美国');
INSERT INTO `web_movie` VALUES ('237', '我爱你', '秋昌民', '韩国');
INSERT INTO `web_movie` VALUES ('238', '卡萨布兰卡', '迈克尔·柯蒂兹', '美国');
INSERT INTO `web_movie` VALUES ('239', '国王的演讲', '汤姆·霍珀', '英国 澳大利亚 美国');
INSERT INTO `web_movie` VALUES ('240', '千钧一发', '安德鲁·尼科尔', '美国');
INSERT INTO `web_movie` VALUES ('241', '奇迹男孩', '斯蒂芬·卓博斯基', '美国 香港');
INSERT INTO `web_movie` VALUES ('242', '疯狂的麦克斯4：狂暴之路', '乔治·米勒', '澳大利亚 美国');
INSERT INTO `web_movie` VALUES ('243', '遗愿清单', '罗伯·莱纳', '美国');
INSERT INTO `web_movie` VALUES ('244', '美国丽人', '萨姆·门德斯', '美国');
INSERT INTO `web_movie` VALUES ('245', '驴得水', '周申', '中国大陆');
INSERT INTO `web_movie` VALUES ('246', '荒岛余生', '罗伯特·泽米吉斯', '美国');
INSERT INTO `web_movie` VALUES ('247', '碧海蓝天', 'Luc', '法国 美国 意大利');
INSERT INTO `web_movie` VALUES ('248', '枪火', '杜琪峰', '香港');
INSERT INTO `web_movie` VALUES ('249', '四个春天', '陆庆屹', '中国大陆');
INSERT INTO `web_movie` VALUES ('250', '新世界', '朴勋政', '韩国');

-- ----------------------------
-- Table structure for web_phone
-- ----------------------------
DROP TABLE IF EXISTS `web_phone`;
CREATE TABLE `web_phone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `author` varchar(20) NOT NULL,
  `summary` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_phone
-- ----------------------------
INSERT INTO `web_phone` VALUES ('1', '不要让这10个坑毁了你的转化率', 'UXRen', '为什么有些网站能够长期在人气榜上领先，而其他网站耗费大量时间和财力都无法吸引用户？最重要的原因在于这些网站的信息架构与用户交互的方式。');
INSERT INTO `web_phone` VALUES ('2', '谁吃掉了我们创造的数据？', '造就', '“理性只能把你带到一定的边界，但是如果你想越过边界，可能你需要的是诗意，还有想象力 。”');
INSERT INTO `web_phone` VALUES ('3', '再见，复仇者', '极客公园', '十一年来，这一幕幕可歌可泣的英雄复仇，说到底，不过是一个个平凡的人探究自我的故事罢了。');
INSERT INTO `web_phone` VALUES ('4', '为什么游戏第一股不是斗鱼？', '刺猬公社', '整体来讲，直播行业已经不再是当初那个“一片蓝海”的朝阳产业，接力棒早已传给短视频，进入稳定发展阶段。');
INSERT INTO `web_phone` VALUES ('5', '36氪「融资合伙人」顶级专家团重磅来袭！', '张达', '顶级专家团线下加持，「融资合伙人」计划报名进入一周倒计时！助力1%创新者，先看到未来！');
INSERT INTO `web_phone` VALUES ('6', '贝壳找房熟了', '棱镜深网', '从链家到贝壳，中介巨头转型谋上市。');
INSERT INTO `web_phone` VALUES ('7', '恋爱综艺，滤镜下的造假游戏', '吴怼怼', '恋爱综艺发生了什么样的变迁？');
INSERT INTO `web_phone` VALUES ('8', '明知IP不赚钱还追IP的商业逻辑', '冯仑', '做 IP ，终归还是门投资，心急吃不了热豆腐。');
INSERT INTO `web_phone` VALUES ('9', '跨越7个时区：百亿新风生意', '石亚琼', '两个国家，一个拥有相对成熟的新风产品，一个拥有600多亿平米建筑面积的市场。双方的联系或许还会更加频繁。');
INSERT INTO `web_phone` VALUES ('10', '苹果雇了一位哲学家，工作内容高度保密', '爱范儿', '在设计科技的颠覆性应用时，哲学的地位显得越发重要');
INSERT INTO `web_phone` VALUES ('11', '小鹏汽车“失速”', '一点财经', '瞬息万变的商场之上，有人乘势而起，亦有人胜势“退兵”');
INSERT INTO `web_phone` VALUES ('12', 'Snap财报超预期，股价盘后“过山车”', '36氪的朋友们', 'Snap今日公布财报盈利、收入、用户规模等各项指标均超出分析师预期');
INSERT INTO `web_phone` VALUES ('13', '斗鱼“跃龙门”', 'Tech星球', '曾经的TMT神话在招股书中终于揭开神秘面纱');
INSERT INTO `web_phone` VALUES ('14', '博弈论的现实意义', '吴昊@SaaS', '逆向思维一下，也正是因为这些造物主制定的大规则，才让我们智人能够走到今天。');
INSERT INTO `web_phone` VALUES ('15', '36氪领读 | 我们为什么无法专注？', '36氪领读', '管理自我情绪能够减少一个人内心的焦虑，降低压力给个体状态的干扰程度，其精神世界将更加专注。');
INSERT INTO `web_phone` VALUES ('16', '百事，为什么可乐？', '硅兔赛跑', '对企业来讲，打造一家百年老店，实现基业长青的目标变得越来越难。');
INSERT INTO `web_phone` VALUES ('17', 'AI换脸是色情报复的新武器', '36氪的朋友们', '科技永远是把双刃剑，两边同样锋利。');
INSERT INTO `web_phone` VALUES ('18', '白银时代，房企的武学路', '地产情报站', '曾经“招保万金”四大门派为首的格局，已变成“恒万碧融”');
INSERT INTO `web_phone` VALUES ('19', '读书日：世界有迹可循', '宽带资本', '所有费解的偶然，可能都有迹可循。');
INSERT INTO `web_phone` VALUES ('20', '把未来装进车里都需要什么？', '36氪品牌', '从贴地飞行到自动驾驶，被“黑科技”改变的汽车和生活。');
INSERT INTO `web_phone` VALUES ('21', '《中国首店经济发展报告》4.29成都首发', '商业地产志', '继上海之后，成都的“首店经济热”开始涌现。');
INSERT INTO `web_phone` VALUES ('22', '特斯拉烧掉的钱谁来付?', '叁里河', '保险不是万能的，但是没有保险是万万不能的。');
INSERT INTO `web_phone` VALUES ('23', '医疗AI在印度：广阔天地，大有可为？', '令晨@36氪出海', '印度医生严重短缺，医疗 AI 正向着多病种、多场景发展……');
INSERT INTO `web_phone` VALUES ('24', '拆解前置仓', '灵兽传媒', '前置仓的问题不仅仅体现在盈利的不确定性上，单纯的离合规都还有很长一段距离。');
INSERT INTO `web_phone` VALUES ('25', '密室逃脱七年之痒：逃离北上广，远嫁文旅城', '娱乐资本论', '线下沉浸式实景娱乐。这在2019年，也成为了各行各业的关键热词。');
INSERT INTO `web_phone` VALUES ('26', '我在抖音“扮”女人', '娱乐产业', '比女人还了解女人的男人。');
INSERT INTO `web_phone` VALUES ('27', '网红电商第一股折戟记', '棱镜深网', '网红电商模式本身确实还需时间来验证');
INSERT INTO `web_phone` VALUES ('28', '进化与消亡：我们终将失去台式机吗？', '脑极体', '沉舟侧畔千帆过');
INSERT INTO `web_phone` VALUES ('29', '腾讯游戏的困局与突围战', 'Tech星球', '游戏营收出现负增长后，游戏界老大腾讯也坐不住了');
INSERT INTO `web_phone` VALUES ('30', '福建人再塑互联网', '潮声财经社', '冒险，是他们的生存法则。');
