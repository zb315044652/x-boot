/*
SQLyog Ultimate
MySQL - 5.7.24-log : Database - xboot
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `t_department` */

CREATE TABLE `t_department` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `parent_id` varchar(255) DEFAULT NULL,
  `sort_order` decimal(10,2) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `is_parent` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_department` */

insert  into `t_department`(`id`,`create_by`,`create_time`,`del_flag`,`update_by`,`update_time`,`parent_id`,`sort_order`,`status`,`title`,`is_parent`) values
('40322777781112832','','2018-08-10 20:40:40',0,'','2018-08-11 00:03:06','0',1.00,0,'总部',''),
('40322811096469504','','2018-08-10 20:40:48',0,'','2019-03-14 18:50:44','40322777781112832',1.00,0,'技术部',''),
('40322852833988608','','2018-08-10 20:40:58',0,'','2018-08-11 01:29:42','40322811096469504',1.00,0,'研发中心',NULL),
('40327204755738624','','2018-08-10 20:58:15',0,'','2018-08-10 22:02:15','40322811096469504',2.00,0,'大数据',NULL),
('40327253309001728','','2018-08-10 20:58:27',0,'','2018-08-11 17:26:38','40322811096469504',3.00,-1,'人工智障',NULL),
('40343262766043136','','2018-08-10 22:02:04',0,'','2018-08-11 00:02:53','0',2.00,0,'成都分部',''),
('40344005342400512','','2018-08-10 22:05:01',0,'','2018-08-11 17:48:44','40343262766043136',2.00,0,'Vue',NULL),
('40389030113710080','','2018-08-11 01:03:56',0,'','2018-08-11 17:50:04','40343262766043136',1.00,0,'JAVA','\0'),
('40652270295060480','','2018-08-11 18:29:57',0,'','2018-08-12 18:45:01','0',3.00,0,'人事部',''),
('40652338142121984',NULL,'2018-08-11 18:30:13',0,NULL,'2018-08-11 18:30:13','40652270295060480',1.00,0,'游客','\0'),
('40681289119961088','','2018-08-11 20:25:16',0,'','2018-08-11 22:47:48','40652270295060480',2.00,0,'VIP','\0');

/*Table structure for table `t_department_header` */

CREATE TABLE `t_department_header` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `department_id` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_department_header` */

insert  into `t_department_header`(`id`,`create_by`,`create_time`,`del_flag`,`update_by`,`update_time`,`department_id`,`type`,`user_id`) values
('118575966346809344',NULL,'2019-03-14 19:10:54',0,NULL,'2019-03-14 19:10:54','40322777781112832',0,'682265633886209');

/*Table structure for table `t_dict` */

CREATE TABLE `t_dict` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `sort_order` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_dict` */

insert  into `t_dict`(`id`,`create_by`,`create_time`,`del_flag`,`update_by`,`update_time`,`description`,`title`,`type`,`sort_order`) values
('75135930788220928','admin','2018-11-14 22:15:43',0,'admin','2018-11-27 01:39:06','','性别','sex',0.00),
('75388696739713024','admin','2018-11-15 15:00:07',0,'admin','2018-11-27 01:39:22','','按钮权限类型','permission_type',3.00);

/*Table structure for table `t_dict_data` */

CREATE TABLE `t_dict_data` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `dict_id` varchar(255) DEFAULT NULL,
  `sort_order` decimal(10,2) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_dict_data` */

insert  into `t_dict_data`(`id`,`create_by`,`create_time`,`del_flag`,`update_by`,`update_time`,`description`,`dict_id`,`sort_order`,`status`,`title`,`value`) values
('75158227712479232','admin','2018-11-14 23:44:19',0,'admin','2019-04-28 22:15:11','','75135930788220928',0.00,0,'男','男'),
('75159254272577536','admin','2018-11-14 23:48:24',0,'admin','2019-04-28 22:15:17','','75135930788220928',1.00,0,'女','女'),
('75159898425397248','admin','2018-11-14 23:50:57',0,'admin','2019-04-28 22:15:22','','75135930788220928',2.00,-1,'保密','保密'),
('75390787835138048','admin','2018-11-15 15:08:26',0,'admin','2018-11-15 15:08:26','','75388696739713024',0.00,0,'查看操作(view)','view'),
('75390886501945344','admin','2018-11-15 15:08:49',0,'admin','2018-11-15 15:08:57','','75388696739713024',1.00,0,'添加操作(add)','add'),
('75390993939042304','admin','2018-11-15 15:09:15',0,'admin','2018-11-15 15:09:15','','75388696739713024',2.00,0,'编辑操作(edit)','edit'),
('75391067532300288','admin','2018-11-15 15:09:32',0,'admin','2018-11-15 15:09:32','','75388696739713024',3.00,0,'删除操作(delete)','delete'),
('75391126902673408','admin','2018-11-15 15:09:46',0,'admin','2018-11-15 15:09:46','','75388696739713024',4.00,0,'清空操作(clear)','clear'),
('75391192883269632','admin','2018-11-15 15:10:02',0,'admin','2018-11-15 15:10:02','','75388696739713024',5.00,0,'启用操作(enable)','enable'),
('75391251024711680','admin','2018-11-15 15:10:16',0,'admin','2018-11-15 15:10:16','','75388696739713024',6.00,0,'禁用操作(disable)','disable'),
('75391297124306944','admin','2018-11-15 15:10:27',0,'admin','2018-11-15 15:10:27','','75388696739713024',7.00,0,'搜索操作(search)','search'),
('75391343379091456','admin','2018-11-15 15:10:38',0,'admin','2018-11-15 15:10:38','','75388696739713024',8.00,0,'上传文件(upload)','upload'),
('75391407526776832','admin','2018-11-15 15:10:53',0,'admin','2018-11-15 15:10:53','','75388696739713024',9.00,0,'导出操作(output)','output'),
('75391475042488320','admin','2018-11-15 15:11:09',0,'admin','2018-11-15 15:11:09','','75388696739713024',10.00,0,'导入操作(input)','input'),
('75391522182270976','admin','2018-11-15 15:11:21',0,'admin','2018-11-15 15:11:21','','75388696739713024',11.00,0,'分配权限(editPerm)','editPerm'),
('75391576364290048','admin','2018-11-15 15:11:34',0,'admin','2018-11-15 15:11:34','','75388696739713024',12.00,0,'设为默认(setDefault)','setDefault'),
('75391798033256448','admin','2018-11-15 15:12:26',0,'admin','2018-11-15 15:12:26','','75388696739713024',13.00,0,'其他操作(other)','other');

/*Table structure for table `t_permission` */

CREATE TABLE `t_permission` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent_id` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `sort_order` decimal(10,2) DEFAULT NULL,
  `component` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `button_type` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_permission` */

insert  into `t_permission`(`id`,`create_by`,`create_time`,`del_flag`,`update_by`,`update_time`,`description`,`name`,`parent_id`,`type`,`sort_order`,`component`,`path`,`title`,`icon`,`level`,`button_type`,`status`,`url`) values
('121426317022334976','admin','2019-03-22 15:57:11',0,'admin','2019-03-22 15:57:11',NULL,'redis','39915540965232640',0,2.21,'sys/redis/redis','redis','Redis缓存管理','md-barcode',2,'',0,''),
('125909152017944576','admin','2019-04-04 00:50:22',0,'admin','2019-04-10 21:34:38','','xboot','',-1,0.00,'','','XBoot管理系统','md-home',0,'',0,''),
('15701400130424832','','2018-06-03 22:04:06',0,'','2018-09-19 22:16:44','','','5129710648430593',1,1.11,'','/xboot/user/admin/add*','添加用户','',3,'add',0,''),
('15701915807518720','','2018-06-03 22:06:09',0,'','2018-06-06 14:46:51','','','5129710648430593',1,1.13,'','/xboot/user/admin/disable/**','禁用用户','',3,'disable',0,NULL),
('15708892205944832','','2018-06-03 22:33:52',0,'','2018-06-28 16:44:48','','','5129710648430593',1,1.14,'','/xboot/user/admin/enable/**','启用用户','',3,'enable',0,NULL),
('16392452747300864','','2018-06-05 19:50:06',0,'admin','2019-03-01 01:50:12','','access','125909152017944576',0,7.00,'Main','/access','权限按钮测试页','md-lock',1,'',0,''),
('16392767785668608','','2018-06-05 19:51:21',0,'admin','2018-10-23 12:34:38','','access_index','16392452747300864',0,5.10,'access/access','index','权限按钮测试页','md-lock',2,'',0,''),
('16438800255291392','','2018-06-05 22:54:18',0,'admin','2018-10-23 12:34:51','','','16392767785668608',1,5.11,'','test-add','添加按钮测试','',3,'add',0,''),
('16438962738434048','','2018-06-05 22:54:55',0,'admin','2018-10-23 12:35:05','','','16392767785668608',1,5.12,'','test-edit','编辑按钮测试','',3,'edit',0,''),
('16439068543946752','','2018-06-05 22:55:20',0,'admin','2018-10-23 12:34:54','','','16392767785668608',1,5.13,'','test-delete','删除按钮测试','',3,'delete',0,''),
('16678126574637056','','2018-06-06 14:45:16',0,'','2018-09-19 22:16:48','','','5129710648430593',1,1.12,'','/xboot/user/admin/edit*','编辑用户','',3,'edit',0,''),
('16678447719911424','','2018-06-06 14:46:32',0,'','2018-08-10 21:41:16','','','5129710648430593',1,1.15,'','/xboot/user/delByIds/**','删除用户','',3,'delete',0,''),
('16687383932047360','','2018-06-06 15:22:03',0,'','2018-09-19 22:07:34','','','5129710648430594',1,1.21,'','/xboot/role/save*','添加角色','',3,'add',0,''),
('16689632049631232','','2018-06-06 15:30:59',0,'','2018-09-19 22:07:37','','','5129710648430594',1,1.22,'','/xboot/role/edit*','编辑角色','',3,'edit',0,''),
('16689745006432256','','2018-06-06 15:31:26',0,'','2018-08-10 21:41:23','','','5129710648430594',1,1.23,'','/xboot/role/delAllByIds/**','删除角色','',3,'delete',0,''),
('16689883993083904',NULL,'2018-06-06 15:31:59',0,NULL,'2018-06-06 15:31:59',NULL,NULL,'5129710648430594',1,1.24,NULL,'/xboot/role/editRolePerm**','分配权限',NULL,3,'editPerm',0,NULL),
('16690313745666048','','2018-06-06 15:33:41',0,'','2018-09-19 22:07:46','','','5129710648430594',1,1.25,'','/xboot/role/setDefault*','设为默认角色','',3,'setDefault',0,''),
('16694861252005888','','2018-06-06 15:51:46',0,'','2018-09-19 22:07:52','','','5129710648430595',1,1.31,'','/xboot/permission/add*','添加菜单','',3,'add',0,''),
('16695107491205120','','2018-06-06 15:52:44',0,'','2018-09-19 22:07:57','','','5129710648430595',1,1.32,'','/xboot/permission/edit*','编辑菜单','',3,'edit',0,''),
('16695243126607872','','2018-06-06 15:53:17',0,'','2018-08-10 21:41:33','','','5129710648430595',1,1.33,'','/xboot/permission/delByIds/**','删除菜单','',3,'delete',0,''),
('25014528525733888','','2018-06-29 14:51:09',0,'','2018-10-08 11:13:27','','','5129710648430593',1,1.16,'','无','上传图片','',3,'upload',0,''),
('39915540965232640',NULL,'2018-08-09 17:42:28',0,NULL,'2018-08-09 17:42:28',NULL,'monitor','125909152017944576',0,2.00,'Main','/monitor','系统监控','ios-analytics',1,NULL,0,NULL),
('39916171171991552','','2018-08-09 17:44:57',0,'admin','2019-01-20 00:37:29','','druid','39915540965232640',0,2.40,'sys/monitor/monitor','druid','SQL监控','md-analytics',2,'',0,'http://127.0.0.1:8888/druid/login.html'),
('39918482854252544','','2018-08-09 17:54:08',0,'admin','2019-01-20 00:37:41','','swagger','39915540965232640',0,2.50,'sys/monitor/monitor','swagger','接口文档','md-document',2,'',0,'http://127.0.0.1:8888/swagger-ui.html'),
('40238597734928384',NULL,'2018-08-10 15:06:10',0,NULL,'2018-08-10 15:06:10',NULL,'department-manage','5129710648430592',0,1.20,'sys/department-manage/departmentManage','department-manage','部门管理','md-git-branch',2,'',0,NULL),
('45235621697949696','','2018-08-24 10:02:33',0,'','2018-09-19 22:06:57','','','40238597734928384',1,1.21,'','/xboot/department/add*','添加部门','',3,'add',0,''),
('45235787867885568','','2018-08-24 10:03:13',0,'','2018-09-19 22:07:02','','','40238597734928384',1,1.22,'','/xboot/department/edit*','编辑部门','',3,'edit',0,''),
('45235939278065664',NULL,'2018-08-24 10:03:49',0,NULL,'2018-08-24 10:03:49',NULL,'','40238597734928384',1,1.23,'','/xboot/department/delByIds/*','删除部门','',3,'delete',0,NULL),
('5129710648430592','','2018-06-04 19:02:29',0,'','2018-09-29 23:11:56','','sys','125909152017944576',0,1.00,'Main','/sys','系统管理','ios-settings',1,'',0,''),
('5129710648430593','','2018-06-04 19:02:32',0,'','2018-08-13 15:15:33','','user-manage','5129710648430592',0,1.10,'sys/user-manage/userManage','user-manage','用户管理','md-person',2,'',0,''),
('5129710648430594','','2018-06-04 19:02:35',0,'','2018-10-13 13:51:36','','role-manage','5129710648430592',0,1.60,'sys/role-manage/roleManage','role-manage','角色权限管理','md-contacts',2,'',0,''),
('5129710648430595','','2018-06-04 19:02:37',0,'','2018-09-23 23:32:02','','menu-manage','5129710648430592',0,1.70,'sys/menu-manage/menuManage','menu-manage','菜单权限管理','md-menu',2,'',0,''),
('56898976661639168','','2018-09-25 14:28:34',0,'','2018-09-25 15:12:46','','','5129710648430593',1,1.17,'','/xboot/user/importData*','导入用户','',3,'input',0,''),
('75002207560273920','admin','2018-11-14 13:24:21',0,'admin','2018-11-20 20:06:22','','dict','5129710648430592',0,1.80,'sys/dict-manage/dictManage','dict','数据字典管理','md-bookmarks',2,'',0,''),
('76215889006956544','admin','2018-11-17 21:47:05',0,'admin','2018-11-17 21:47:53','','','75002207560273920',1,1.81,'','/xboot/dict/add*','添加字典','',3,'add',0,''),
('76216071333351424','admin','2018-11-17 21:47:48',0,'admin','2018-11-17 21:47:48',NULL,'','75002207560273920',1,1.82,'','/xboot/dict/edit*','编辑字典','',3,'edit',0,NULL),
('76216264070008832','admin','2018-11-17 21:48:34',0,'admin','2018-11-17 21:48:34',NULL,'','75002207560273920',1,1.83,'','/xboot/dict/delByIds/**','删除字典','',3,'delete',0,NULL),
('76216459709124608','admin','2018-11-17 21:49:21',0,'admin','2018-11-17 21:49:21',NULL,'','75002207560273920',1,1.84,'','/xboot/dictData/add*','添加字典数据','',3,'add',0,NULL),
('76216594207870976','admin','2018-11-17 21:49:53',0,'admin','2018-11-17 21:49:53',NULL,'','75002207560273920',1,1.85,'','/xboot/dictData/edit*','编辑字典数据','',3,'edit',0,NULL),
('76216702639017984','admin','2018-11-17 21:50:18',0,'admin','2018-11-17 21:50:18',NULL,'','75002207560273920',1,1.86,'','/xboot/dictData/delByIds/**','删除字典数据','',3,'delete',0,NULL);

/*Table structure for table `t_role` */

CREATE TABLE `t_role` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `default_role` bit(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `data_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_role` */

insert  into `t_role`(`id`,`create_by`,`create_time`,`update_by`,`update_time`,`name`,`del_flag`,`default_role`,`description`,`data_type`) values
('16457350655250432','','2018-06-06 00:08:00','admin','2018-11-02 20:42:24','ROLE_TEST',0,NULL,'测试权限按钮显示',1),
('496138616573952','','2018-04-22 23:03:49','admin','2018-11-15 23:02:59','ROLE_ADMIN',0,NULL,'超级管理员 拥有所有权限',0),
('496138616573953','','2018-05-02 21:40:03','admin','2018-11-01 22:59:48','ROLE_USER',0,'','普通注册用户 路过看看',0);

/*Table structure for table `t_role_department` */

CREATE TABLE `t_role_department` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `department_id` varchar(255) DEFAULT NULL,
  `role_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_role_department` */

insert  into `t_role_department`(`id`,`create_by`,`create_time`,`del_flag`,`update_by`,`update_time`,`department_id`,`role_id`) values
('70763874256687105','admin','2018-11-02 20:42:43',0,'admin','2018-11-02 20:42:43','40322777781112832','16457350655250432'),
('70763874265075712','admin','2018-11-02 20:42:43',0,'admin','2018-11-02 20:42:43','40322811096469504','16457350655250432'),
('70763874277658624','admin','2018-11-02 20:42:43',0,'admin','2018-11-02 20:42:43','40322852833988608','16457350655250432');

/*Table structure for table `t_role_permission` */

CREATE TABLE `t_role_permission` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `permission_id` varchar(255) DEFAULT NULL,
  `role_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_role_permission` */

insert  into `t_role_permission`(`id`,`create_by`,`create_time`,`del_flag`,`update_by`,`update_time`,`permission_id`,`role_id`) values
('156936531779522563',NULL,'2019-06-28 15:42:06',0,NULL,'2019-06-28 15:42:06','125909152017944576','496138616573952'),
('156936531783716864',NULL,'2019-06-28 15:42:06',0,NULL,'2019-06-28 15:42:06','5129710648430592','496138616573952'),
('156936531787911168',NULL,'2019-06-28 15:42:06',0,NULL,'2019-06-28 15:42:06','5129710648430593','496138616573952'),
('156936531792105473',NULL,'2019-06-28 15:42:06',0,NULL,'2019-06-28 15:42:06','15701400130424832','496138616573952'),
('156936531796299777',NULL,'2019-06-28 15:42:06',0,NULL,'2019-06-28 15:42:06','16678126574637056','496138616573952'),
('156936531800494081',NULL,'2019-06-28 15:42:06',0,NULL,'2019-06-28 15:42:06','15701915807518720','496138616573952'),
('156936531804688385',NULL,'2019-06-28 15:42:06',0,NULL,'2019-06-28 15:42:06','15708892205944832','496138616573952'),
('156936531808882689',NULL,'2019-06-28 15:42:06',0,NULL,'2019-06-28 15:42:06','16678447719911424','496138616573952'),
('156936531813076992',NULL,'2019-06-28 15:42:06',0,NULL,'2019-06-28 15:42:06','25014528525733888','496138616573952'),
('156936531817271297',NULL,'2019-06-28 15:42:06',0,NULL,'2019-06-28 15:42:06','56898976661639168','496138616573952'),
('156936531821465600',NULL,'2019-06-28 15:42:06',0,NULL,'2019-06-28 15:42:06','40238597734928384','496138616573952'),
('156936531825659904',NULL,'2019-06-28 15:42:06',0,NULL,'2019-06-28 15:42:06','45235621697949696','496138616573952'),
('156936531829854208',NULL,'2019-06-28 15:42:06',0,NULL,'2019-06-28 15:42:06','45235787867885568','496138616573952'),
('156936531834048512',NULL,'2019-06-28 15:42:06',0,NULL,'2019-06-28 15:42:06','45235939278065664','496138616573952'),
('156936531834048514',NULL,'2019-06-28 15:42:06',0,NULL,'2019-06-28 15:42:06','5129710648430594','496138616573952'),
('156936531838242817',NULL,'2019-06-28 15:42:06',0,NULL,'2019-06-28 15:42:06','16687383932047360','496138616573952'),
('156936531842437120',NULL,'2019-06-28 15:42:06',0,NULL,'2019-06-28 15:42:06','16689632049631232','496138616573952'),
('156936531846631424',NULL,'2019-06-28 15:42:06',0,NULL,'2019-06-28 15:42:06','16689745006432256','496138616573952'),
('156936531850825729',NULL,'2019-06-28 15:42:06',0,NULL,'2019-06-28 15:42:06','16689883993083904','496138616573952'),
('156936531855020033',NULL,'2019-06-28 15:42:06',0,NULL,'2019-06-28 15:42:06','16690313745666048','496138616573952'),
('156936531855020035',NULL,'2019-06-28 15:42:06',0,NULL,'2019-06-28 15:42:06','5129710648430595','496138616573952'),
('156936531859214337',NULL,'2019-06-28 15:42:06',0,NULL,'2019-06-28 15:42:06','16694861252005888','496138616573952'),
('156936531863408641',NULL,'2019-06-28 15:42:06',0,NULL,'2019-06-28 15:42:06','16695107491205120','496138616573952'),
('156936531871797249',NULL,'2019-06-28 15:42:06',0,NULL,'2019-06-28 15:42:06','16695243126607872','496138616573952'),
('156936531871797251',NULL,'2019-06-28 15:42:06',0,NULL,'2019-06-28 15:42:06','75002207560273920','496138616573952'),
('156936531875991552',NULL,'2019-06-28 15:42:06',0,NULL,'2019-06-28 15:42:06','76215889006956544','496138616573952'),
('156936531880185856',NULL,'2019-06-28 15:42:06',0,NULL,'2019-06-28 15:42:06','76216071333351424','496138616573952'),
('156936531884380160',NULL,'2019-06-28 15:42:06',0,NULL,'2019-06-28 15:42:06','76216264070008832','496138616573952'),
('156936531888574464',NULL,'2019-06-28 15:42:06',0,NULL,'2019-06-28 15:42:06','76216459709124608','496138616573952'),
('156936531892768768',NULL,'2019-06-28 15:42:06',0,NULL,'2019-06-28 15:42:06','76216594207870976','496138616573952'),
('156936531896963072',NULL,'2019-06-28 15:42:06',0,NULL,'2019-06-28 15:42:06','76216702639017984','496138616573952'),
('156936531901157376',NULL,'2019-06-28 15:42:06',0,NULL,'2019-06-28 15:42:06','39915540965232640','496138616573952'),
('156936531905351681',NULL,'2019-06-28 15:42:06',0,NULL,'2019-06-28 15:42:06','121426317022334976','496138616573952'),
('156936531909545985',NULL,'2019-06-28 15:42:06',0,NULL,'2019-06-28 15:42:06','39916171171991552','496138616573952'),
('156936531913740288',NULL,'2019-06-28 15:42:06',0,NULL,'2019-06-28 15:42:06','39918482854252544','496138616573952'),
('156936531917934592',NULL,'2019-06-28 15:42:06',0,NULL,'2019-06-28 15:42:06','16392452747300864','496138616573952'),
('156936531922128896',NULL,'2019-06-28 15:42:06',0,NULL,'2019-06-28 15:42:06','16392767785668608','496138616573952'),
('156936531926323200',NULL,'2019-06-28 15:42:06',0,NULL,'2019-06-28 15:42:06','16438800255291392','496138616573952'),
('156936531930517504',NULL,'2019-06-28 15:42:06',0,NULL,'2019-06-28 15:42:06','16438962738434048','496138616573952'),
('156936531930517506',NULL,'2019-06-28 15:42:06',0,NULL,'2019-06-28 15:42:06','16439068543946752','496138616573952'),
('156939010038566929',NULL,'2019-06-28 15:51:57',0,NULL,'2019-06-28 15:51:57','125909152017944576','496138616573953'),
('156939010042761217',NULL,'2019-06-28 15:51:57',0,NULL,'2019-06-28 15:51:57','5129710648430592','496138616573953'),
('156939010046955520',NULL,'2019-06-28 15:51:57',0,NULL,'2019-06-28 15:51:57','5129710648430593','496138616573953'),
('156939010051149824',NULL,'2019-06-28 15:51:57',0,NULL,'2019-06-28 15:51:57','40238597734928384','496138616573953'),
('156939010055344128',NULL,'2019-06-28 15:51:57',0,NULL,'2019-06-28 15:51:57','5129710648430594','496138616573953'),
('156939010059538432',NULL,'2019-06-28 15:51:57',0,NULL,'2019-06-28 15:51:57','5129710648430595','496138616573953'),
('156939010059538434',NULL,'2019-06-28 15:51:57',0,NULL,'2019-06-28 15:51:57','75002207560273920','496138616573953'),
('156939010063732737',NULL,'2019-06-28 15:51:57',0,NULL,'2019-06-28 15:51:57','39915540965232640','496138616573953'),
('156939010067927041',NULL,'2019-06-28 15:51:57',0,NULL,'2019-06-28 15:51:57','121426317022334976','496138616573953'),
('156939010072121344',NULL,'2019-06-28 15:51:57',0,NULL,'2019-06-28 15:51:57','39916171171991552','496138616573953'),
('156939010072121346',NULL,'2019-06-28 15:51:57',0,NULL,'2019-06-28 15:51:57','39918482854252544','496138616573953'),
('156939010088898560',NULL,'2019-06-28 15:51:57',0,NULL,'2019-06-28 15:51:57','16392452747300864','496138616573953'),
('156939010093092864',NULL,'2019-06-28 15:51:57',0,NULL,'2019-06-28 15:51:57','16392767785668608','496138616573953'),
('156939010097287168',NULL,'2019-06-28 15:51:57',0,NULL,'2019-06-28 15:51:57','16438800255291392','496138616573953'),
('156939010101481472',NULL,'2019-06-28 15:51:57',0,NULL,'2019-06-28 15:51:57','16438962738434048','496138616573953'),
('156939010105675776',NULL,'2019-06-28 15:51:57',0,NULL,'2019-06-28 15:51:57','16439068543946752','496138616573953');

/*Table structure for table `t_user` */

CREATE TABLE `t_user` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `avatar` varchar(1000) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `nick_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `department_id` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `pass_strength` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_user` */

insert  into `t_user`(`id`,`create_by`,`create_time`,`update_by`,`update_time`,`address`,`avatar`,`description`,`email`,`mobile`,`nick_name`,`password`,`sex`,`status`,`type`,`username`,`del_flag`,`department_id`,`street`,`pass_strength`) values
('16739222421508096','','2018-06-06 18:48:02','','2018-10-08 00:04:32','','https://s1.ax1x.com/2018/05/19/CcdVQP.png','','1012139570@qq.com','18782059033','','$2a$10$PS04ecXfknNd3V8d.ymLTObQciapMU4xU8.GADBZZsuTZr7ymnagy','男',0,0,'test2',0,'40652338142121984','','弱'),
('4363087427670016','','2018-05-03 15:09:42','','2018-10-08 00:04:46','[\"510000\",\"510100\",\"510114\"]','https://s1.ax1x.com/2018/05/19/CcdVQP.png','','1012139570@qq.com','18782059033','','$2a$10$PS04ecXfknNd3V8d.ymLTObQciapMU4xU8.GADBZZsuTZr7ymnagy','男',0,0,'test',0,'40652338142121984','','弱'),
('682265633886208','','2018-05-01 16:13:51','admin','2019-01-19 14:11:43','[\"510000\",\"510100\",\"510104\"]','https://s1.ax1x.com/2018/05/19/CcdVQP.png','test','2549575805@qq.com','18782059038','Exrick','$2a$10$PS04ecXfknNd3V8d.ymLTObQciapMU4xU8.GADBZZsuTZr7ymnagy','男',0,1,'admin',0,'40322777781112832','天府1街','弱'),
('682265633886209','','2018-04-30 23:28:42','admin','2019-04-28 22:31:02','','https://s1.ax1x.com/2018/05/19/CcdVQP.png','','1012@qq.com','18782059033','','$2a$10$PS04ecXfknNd3V8d.ymLTObQciapMU4xU8.GADBZZsuTZr7ymnagy','女',-1,0,'Exrick',0,'40322777781112832','','弱');

/*Table structure for table `t_user_role` */

CREATE TABLE `t_user_role` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `role_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_user_role` */

insert  into `t_user_role`(`id`,`create_by`,`create_time`,`del_flag`,`update_by`,`update_time`,`role_id`,`user_id`) values
('134933785559961600',NULL,'2019-04-28 22:31:02',0,NULL,'2019-04-28 22:31:02','496138616573953','682265633886209'),
('134933785576738816',NULL,'2019-04-28 22:31:02',0,NULL,'2019-04-28 22:31:02','496138616573952','682265633886209'),
('61392579396112384',NULL,'2018-10-08 00:04:32',0,NULL,'2018-10-08 00:04:32','16457350655250432','16739222421508096'),
('61392637076180992',NULL,'2018-10-08 00:04:46',0,NULL,'2018-10-08 00:04:46','496138616573953','4363087427670016'),
('98931727094779904',NULL,'2019-01-19 14:11:43',0,NULL,'2019-01-19 14:11:43','496138616573952','682265633886208');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
