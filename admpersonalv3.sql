/*
Navicat MySQL Data Transfer

Source Server         : LOCAL
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : admpersonalv3

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2022-09-30 10:18:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cms_apicustom
-- ----------------------------
DROP TABLE IF EXISTS `cms_apicustom`;
CREATE TABLE `cms_apicustom` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci,
  `responses` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_apicustom
-- ----------------------------

-- ----------------------------
-- Table structure for cms_apikey
-- ----------------------------
DROP TABLE IF EXISTS `cms_apikey`;
CREATE TABLE `cms_apikey` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_apikey
-- ----------------------------

-- ----------------------------
-- Table structure for cms_dashboard
-- ----------------------------
DROP TABLE IF EXISTS `cms_dashboard`;
CREATE TABLE `cms_dashboard` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_dashboard
-- ----------------------------

-- ----------------------------
-- Table structure for cms_email_queues
-- ----------------------------
DROP TABLE IF EXISTS `cms_email_queues`;
CREATE TABLE `cms_email_queues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci,
  `email_attachments` text COLLATE utf8mb4_unicode_ci,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_email_queues
-- ----------------------------

-- ----------------------------
-- Table structure for cms_email_templates
-- ----------------------------
DROP TABLE IF EXISTS `cms_email_templates`;
CREATE TABLE `cms_email_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_email_templates
-- ----------------------------
INSERT INTO `cms_email_templates` VALUES ('1', 'Email Template Forgot Password Backend', 'forgot_password_backend', null, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', null, '2022-09-26 23:31:24', null);

-- ----------------------------
-- Table structure for cms_logs
-- ----------------------------
DROP TABLE IF EXISTS `cms_logs`;
CREATE TABLE `cms_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_logs
-- ----------------------------
INSERT INTO `cms_logs` VALUES ('1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', '1', '2022-09-26 23:32:48', null);
INSERT INTO `cms_logs` VALUES ('2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/users/add-save', 'Add New Data Agapito De la cruz Carlos at Users Management', '', '1', '2022-09-26 23:35:14', null);
INSERT INTO `cms_logs` VALUES ('3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', '1', '2022-09-26 23:36:02', null);
INSERT INTO `cms_logs` VALUES ('4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'adelacruzcarlos@gmail.com login with IP Address 127.0.0.1', '', '2', '2022-09-26 23:36:31', null);
INSERT INTO `cms_logs` VALUES ('5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/especialidades/add-save', 'Add New Data  at Especialidad', '', '2', '2022-09-26 23:53:16', null);
INSERT INTO `cms_logs` VALUES ('6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/especialidades/add-save', 'Add New Data  at Especialidad', '', '2', '2022-09-27 00:00:02', null);
INSERT INTO `cms_logs` VALUES ('7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/especialidades/add-save', 'Add New Data  at Especialidad', '', '2', '2022-09-27 00:04:16', null);
INSERT INTO `cms_logs` VALUES ('8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/especialidades/edit-save/1', 'Update data  at Especialidad', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>estado</td><td>1</td><td>2</td></tr></tbody></table>', '2', '2022-09-27 00:22:30', null);
INSERT INTO `cms_logs` VALUES ('9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/especialidades/edit-save/1', 'Update data  at Especialidad', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>estado</td><td>2</td><td>1</td></tr></tbody></table>', '2', '2022-09-27 00:24:01', null);
INSERT INTO `cms_logs` VALUES ('10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tipo_trabajos/add-save', 'Add New Data  at Tipo Trabajo', '', '2', '2022-09-27 00:27:48', null);
INSERT INTO `cms_logs` VALUES ('11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tipo_trabajos/add-save', 'Add New Data  at Tipo Trabajo', '', '2', '2022-09-27 00:27:58', null);
INSERT INTO `cms_logs` VALUES ('12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tipo_trabajos/add-save', 'Add New Data  at Tipo Trabajo', '', '2', '2022-09-27 00:28:08', null);
INSERT INTO `cms_logs` VALUES ('13', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tipo_trabajos/delete/3', 'Delete data  at Tipo Trabajo', '', '2', '2022-09-27 00:28:16', null);
INSERT INTO `cms_logs` VALUES ('14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/personals/add-save', 'Add New Data  at Personal', '', '2', '2022-09-27 00:42:46', null);
INSERT INTO `cms_logs` VALUES ('15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/personals/add-save', 'Add New Data  at Personal', '', '2', '2022-09-27 00:51:36', null);
INSERT INTO `cms_logs` VALUES ('16', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'adelacruzcarlos@gmail.com logout', '', '2', '2022-09-27 01:01:37', null);
INSERT INTO `cms_logs` VALUES ('17', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'adelacruzcarlos@gmail.com login with IP Address 127.0.0.1', '', '2', '2022-09-27 01:02:05', null);
INSERT INTO `cms_logs` VALUES ('18', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'adelacruzcarlos@gmail.com se desconectó', '', '2', '2022-09-26 20:12:01', null);
INSERT INTO `cms_logs` VALUES ('19', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de adelacruzcarlos@gmail.com desde la Dirección IP 127.0.0.1', '', '2', '2022-09-26 20:12:56', null);
INSERT INTO `cms_logs` VALUES ('20', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'adelacruzcarlos@gmail.com se desconectó', '', '2', '2022-09-26 20:17:05', null);
INSERT INTO `cms_logs` VALUES ('21', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de adelacruzcarlos@gmail.com desde la Dirección IP 127.0.0.1', '', '2', '2022-09-26 20:18:20', null);
INSERT INTO `cms_logs` VALUES ('22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'adelacruzcarlos@gmail.com se desconectó', '', '2', '2022-09-26 20:19:38', null);
INSERT INTO `cms_logs` VALUES ('23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de adelacruzcarlos@gmail.com desde la Dirección IP 127.0.0.1', '', '2', '2022-09-26 20:22:46', null);
INSERT INTO `cms_logs` VALUES ('24', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tipo_horarios/add-save', 'Añadir nueva información  en Tipo Horario', '', '2', '2022-09-26 20:25:52', null);
INSERT INTO `cms_logs` VALUES ('25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'adelacruzcarlos@gmail.com se desconectó', '', '2', '2022-09-26 20:32:06', null);
INSERT INTO `cms_logs` VALUES ('26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de adelacruzcarlos@gmail.com desde la Dirección IP 127.0.0.1', '', '2', '2022-09-26 20:39:53', null);
INSERT INTO `cms_logs` VALUES ('27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tipo_horarios/add-save', 'Añadir nueva información  en Tipo Horario', '', '2', '2022-09-26 20:41:32', null);
INSERT INTO `cms_logs` VALUES ('28', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tipo_horarios/add-save', 'Añadir nueva información  en Tipo Horario', '', '2', '2022-09-26 20:42:25', null);
INSERT INTO `cms_logs` VALUES ('29', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/tipo_horarios/add-save', 'Añadir nueva información  en Tipo Horario', '', '2', '2022-09-26 20:43:08', null);
INSERT INTO `cms_logs` VALUES ('30', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/personals/add-save', 'Añadir nueva información  en Personal', '', '2', '2022-09-26 20:50:19', null);
INSERT INTO `cms_logs` VALUES ('31', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/personals/edit-save/3', 'Actualizar información  en Personal', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>apellido_mat</td><td>Castiollo</td><td>Castillo</td></tr></tbody></table>', '2', '2022-09-26 20:50:30', null);
INSERT INTO `cms_logs` VALUES ('32', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/configuracions/add-save', 'Añadir nueva información  en Configuracion', '', '2', '2022-09-26 21:07:25', null);
INSERT INTO `cms_logs` VALUES ('33', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/configuracions/add-save', 'Añadir nueva información  en Configuracion', '', '2', '2022-09-26 21:19:29', null);
INSERT INTO `cms_logs` VALUES ('34', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/configuracions/edit-save/2', 'Actualizar información  en Configuracion', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', '2', '2022-09-26 21:21:46', null);
INSERT INTO `cms_logs` VALUES ('35', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/configuracions/edit-save/2', 'Actualizar información  en Configuracion', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>anio</td><td>0000-00-00</td><td></td></tr></tbody></table>', '2', '2022-09-26 21:26:10', null);
INSERT INTO `cms_logs` VALUES ('36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/configuracions/edit-save/2', 'Actualizar información  en Configuracion', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>estado</td><td>1</td><td>2</td></tr></tbody></table>', '2', '2022-09-26 21:26:36', null);
INSERT INTO `cms_logs` VALUES ('37', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/configuracions/delete/2', 'Eliminar información  en Configuracion', '', '2', '2022-09-26 21:32:16', null);
INSERT INTO `cms_logs` VALUES ('38', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/configuracions/edit-save/1', 'Actualizar información  en Configuracion', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>anio</td><td>0000-00-00</td><td></td></tr></tbody></table>', '2', '2022-09-26 21:32:30', null);
INSERT INTO `cms_logs` VALUES ('39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/horarios/add-save', 'Añadir nueva información 3 en Horario', '', '2', '2022-09-26 21:54:48', null);
INSERT INTO `cms_logs` VALUES ('40', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'adelacruzcarlos@gmail.com se desconectó', '', '2', '2022-09-26 22:01:03', null);
INSERT INTO `cms_logs` VALUES ('41', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de adelacruzcarlos@gmail.com desde la Dirección IP 127.0.0.1', '', '2', '2022-09-26 22:05:36', null);
INSERT INTO `cms_logs` VALUES ('42', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/horarios/edit-save/1', 'Actualizar información 3 en Horario', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>d_lunes</td><td>2</td><td>1</td></tr></tbody></table>', '2', '2022-09-26 22:05:58', null);
INSERT INTO `cms_logs` VALUES ('43', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/statistic_builder/add-save', 'Añadir nueva información Tecnologia en Statistic Builder', '', '2', '2022-09-27 00:04:17', null);
INSERT INTO `cms_logs` VALUES ('44', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de adelacruzcarlos@gmail.com desde la Dirección IP 127.0.0.1', '', '2', '2022-09-27 08:54:51', null);
INSERT INTO `cms_logs` VALUES ('45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de adelacruzcarlos@gmail.com desde la Dirección IP 127.0.0.1', '', '2', '2022-09-28 10:29:18', null);
INSERT INTO `cms_logs` VALUES ('46', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'adelacruzcarlos@gmail.com se desconectó', '', '2', '2022-09-28 10:30:06', null);
INSERT INTO `cms_logs` VALUES ('47', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de adelacruzcarlos@gmail.com desde la Dirección IP 127.0.0.1', '', '2', '2022-09-28 10:30:54', null);
INSERT INTO `cms_logs` VALUES ('48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'adelacruzcarlos@gmail.com se desconectó', '', '2', '2022-09-28 10:31:39', null);
INSERT INTO `cms_logs` VALUES ('49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de adelacruzcarlos@gmail.com desde la Dirección IP 127.0.0.1', '', '2', '2022-09-28 10:33:03', null);
INSERT INTO `cms_logs` VALUES ('50', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'adelacruzcarlos@gmail.com se desconectó', '', '2', '2022-09-28 10:33:35', null);
INSERT INTO `cms_logs` VALUES ('51', '192.168.1.31', 'Mozilla/5.0 (Linux; Android 12; SM-A525M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Mobile Safari/537.36', 'http://192.168.1.32/admpersonalv3/public/admin/login', 'Ingreso de adelacruzcarlos@gmail.com desde la Dirección IP 192.168.1.31', '', '2', '2022-09-28 11:21:16', null);
INSERT INTO `cms_logs` VALUES ('52', '192.168.1.32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://192.168.1.32/admpersonalv3/public/admin/login', 'Ingreso de adelacruzcarlos@gmail.com desde la Dirección IP 192.168.1.32', '', '2', '2022-09-28 11:24:03', null);
INSERT INTO `cms_logs` VALUES ('53', '192.168.1.32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://192.168.1.32/admpersonalv3/public/admin/logout', 'adelacruzcarlos@gmail.com se desconectó', '', '2', '2022-09-28 11:25:22', null);
INSERT INTO `cms_logs` VALUES ('54', '192.168.1.32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://192.168.1.32/admpersonalv3/public/admin/login', 'Ingreso de adelacruzcarlos@gmail.com desde la Dirección IP 192.168.1.32', '', '2', '2022-09-28 11:25:36', null);
INSERT INTO `cms_logs` VALUES ('55', '192.168.1.32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://192.168.1.32/admpersonalv3/public/admin/logout', 'adelacruzcarlos@gmail.com se desconectó', '', '2', '2022-09-28 11:27:06', null);
INSERT INTO `cms_logs` VALUES ('56', '192.168.1.32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://192.168.1.32/admpersonalv3/public/admin/login', 'Ingreso de adelacruzcarlos@gmail.com desde la Dirección IP 192.168.1.32', '', '2', '2022-09-28 11:27:23', null);
INSERT INTO `cms_logs` VALUES ('57', '192.168.1.32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://192.168.1.32/admpersonalv3/public/admin/logout', 'adelacruzcarlos@gmail.com se desconectó', '', '2', '2022-09-28 11:28:53', null);
INSERT INTO `cms_logs` VALUES ('58', '192.168.1.32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://192.168.1.32/admpersonalv3/public/admin/login', 'Ingreso de adelacruzcarlos@gmail.com desde la Dirección IP 192.168.1.32', '', '2', '2022-09-28 11:29:22', null);
INSERT INTO `cms_logs` VALUES ('59', '192.168.1.32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://192.168.1.32/admpersonalv3/public/admin/logout', 'adelacruzcarlos@gmail.com se desconectó', '', '2', '2022-09-28 11:32:09', null);
INSERT INTO `cms_logs` VALUES ('60', '192.168.1.32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://192.168.1.32/admpersonalv3/public/admin/login', 'Ingreso de adelacruzcarlos@gmail.com desde la Dirección IP 192.168.1.32', '', '2', '2022-09-28 11:32:13', null);
INSERT INTO `cms_logs` VALUES ('61', '192.168.1.32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://192.168.1.32/admpersonalv3/public/admin/logout', 'adelacruzcarlos@gmail.com se desconectó', '', '2', '2022-09-28 11:32:34', null);
INSERT INTO `cms_logs` VALUES ('62', '192.168.1.32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://192.168.1.32/admpersonalv3/public/admin/login', 'Ingreso de adelacruzcarlos@gmail.com desde la Dirección IP 192.168.1.32', '', '2', '2022-09-28 11:32:43', null);
INSERT INTO `cms_logs` VALUES ('63', '192.168.1.32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://192.168.1.32/admpersonalv3/public/admin/logout', 'adelacruzcarlos@gmail.com se desconectó', '', '2', '2022-09-28 11:33:11', null);
INSERT INTO `cms_logs` VALUES ('64', '192.168.1.32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://192.168.1.32/admpersonalv3/public/admin/login', 'Ingreso de adelacruzcarlos@gmail.com desde la Dirección IP 192.168.1.32', '', '2', '2022-09-28 11:33:30', null);
INSERT INTO `cms_logs` VALUES ('65', '192.168.1.32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://192.168.1.32/admpersonalv3/public/admin/logout', 'adelacruzcarlos@gmail.com se desconectó', '', '2', '2022-09-28 11:34:04', null);
INSERT INTO `cms_logs` VALUES ('66', '192.168.1.32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://192.168.1.32/admpersonalv3/public/admin/login', 'Ingreso de adelacruzcarlos@gmail.com desde la Dirección IP 192.168.1.32', '', '2', '2022-09-28 11:35:07', null);
INSERT INTO `cms_logs` VALUES ('67', '192.168.1.32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://192.168.1.32/admpersonalv3/public/admin/logout', 'adelacruzcarlos@gmail.com se desconectó', '', '2', '2022-09-28 11:35:25', null);
INSERT INTO `cms_logs` VALUES ('68', '192.168.1.32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://192.168.1.32/admpersonalv3/public/admin/login', 'Ingreso de adelacruzcarlos@gmail.com desde la Dirección IP 192.168.1.32', '', '2', '2022-09-28 11:35:36', null);
INSERT INTO `cms_logs` VALUES ('69', '192.168.1.32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://192.168.1.32/admpersonalv3/public/admin/logout', 'adelacruzcarlos@gmail.com se desconectó', '', '2', '2022-09-28 11:35:55', null);
INSERT INTO `cms_logs` VALUES ('70', '192.168.1.32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://192.168.1.32/admpersonalv3/public/admin/login', 'Ingreso de adelacruzcarlos@gmail.com desde la Dirección IP 192.168.1.32', '', '2', '2022-09-28 11:36:06', null);
INSERT INTO `cms_logs` VALUES ('71', '192.168.1.32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://192.168.1.32/admpersonalv3/public/admin/logout', 'adelacruzcarlos@gmail.com se desconectó', '', '2', '2022-09-28 11:36:34', null);
INSERT INTO `cms_logs` VALUES ('72', '192.168.1.32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://192.168.1.32/admpersonalv3/public/admin/login', 'Ingreso de adelacruzcarlos@gmail.com desde la Dirección IP 192.168.1.32', '', '2', '2022-09-28 11:37:16', null);
INSERT INTO `cms_logs` VALUES ('73', '192.168.1.32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://192.168.1.32/admpersonalv3/public/admin/logout', 'adelacruzcarlos@gmail.com se desconectó', '', '2', '2022-09-28 11:37:42', null);
INSERT INTO `cms_logs` VALUES ('74', '192.168.1.32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://192.168.1.32/admpersonalv3/public/admin/login', 'Ingreso de adelacruzcarlos@gmail.com desde la Dirección IP 192.168.1.32', '', '2', '2022-09-28 11:37:58', null);
INSERT INTO `cms_logs` VALUES ('75', '192.168.1.32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://192.168.1.32/admpersonalv3/public/admin/logout', 'adelacruzcarlos@gmail.com se desconectó', '', '2', '2022-09-28 11:46:04', null);
INSERT INTO `cms_logs` VALUES ('76', '192.168.1.32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://192.168.1.32/admpersonalv3/public/admin/login', 'Ingreso de adelacruzcarlos@gmail.com desde la Dirección IP 192.168.1.32', '', '2', '2022-09-28 11:47:16', null);
INSERT INTO `cms_logs` VALUES ('77', '192.168.1.32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://192.168.1.32/admpersonalv3/public/admin/logout', 'adelacruzcarlos@gmail.com se desconectó', '', '2', '2022-09-28 12:15:29', null);
INSERT INTO `cms_logs` VALUES ('78', '192.168.1.32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://192.168.1.32/admpersonalv3/public/admin/login', 'Ingreso de adelacruzcarlos@gmail.com desde la Dirección IP 192.168.1.32', '', '2', '2022-09-28 12:15:32', null);
INSERT INTO `cms_logs` VALUES ('79', '192.168.1.32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://192.168.1.32/admpersonalv3/public/admin/horarios/add-save', 'Añadir nueva información 3 en Horario', '', '2', '2022-09-28 12:53:51', null);
INSERT INTO `cms_logs` VALUES ('80', '192.168.1.32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://192.168.1.32/admpersonalv3/public/admin/horarios/edit-save/2', 'Actualizar información 3 en Horario', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', '2', '2022-09-28 12:54:11', null);
INSERT INTO `cms_logs` VALUES ('81', '192.168.1.32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://192.168.1.32/admpersonalv3/public/admin/horarios/edit-save/1', 'Actualizar información 3 en Horario', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>d_martes</td><td>m</td><td>4</td></tr><tr><td>d_miercoles</td><td>m</td><td>4</td></tr><tr><td>d_jueves</td><td>m</td><td>4</td></tr><tr><td>d_viernes</td><td>m</td><td>4</td></tr><tr><td>d_sabado</td><td>m</td><td>4</td></tr><tr><td>d_domingo</td><td>m</td><td>3</td></tr><tr><td>observacion</td><td>m</td><td>Corregido</td></tr></tbody></table>', '2', '2022-09-28 12:54:51', null);
INSERT INTO `cms_logs` VALUES ('82', '192.168.1.32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://192.168.1.32/admpersonalv3/public/admin/horarios/edit-save/2', 'Actualizar información 3 en Horario', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', '2', '2022-09-28 12:56:18', null);
INSERT INTO `cms_logs` VALUES ('83', '192.168.1.32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://192.168.1.32/admpersonalv3/public/admin/horarios/edit-save/2', 'Actualizar información 3 en Horario', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>observacion</td><td>ire</td><td>insert</td></tr></tbody></table>', '2', '2022-09-28 13:00:21', null);
INSERT INTO `cms_logs` VALUES ('84', '192.168.1.32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://192.168.1.32/admpersonalv3/public/admin/horarios/edit-save/1', 'Actualizar información 3 en Horario', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', '2', '2022-09-28 13:00:51', null);
INSERT INTO `cms_logs` VALUES ('85', '192.168.1.32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://192.168.1.32/admpersonalv3/public/admin/horarios/edit-save/1', 'Actualizar información 3 en Horario', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', '2', '2022-09-28 13:08:03', null);
INSERT INTO `cms_logs` VALUES ('86', '192.168.1.32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://192.168.1.32/admpersonalv3/public/admin/horarios/edit-save/2', 'Actualizar información 3 en Horario', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>observacion</td><td>insert</td><td></td></tr></tbody></table>', '2', '2022-09-28 13:08:56', null);
INSERT INTO `cms_logs` VALUES ('87', '192.168.1.32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://192.168.1.32/admpersonalv3/public/admin/personals/add-save', 'Añadir nueva información  en Personal', '', '2', '2022-09-28 13:09:52', null);
INSERT INTO `cms_logs` VALUES ('88', '192.168.1.32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://192.168.1.32/admpersonalv3/public/admin/horarios/add-save', 'Añadir nueva información 4 en Horario', '', '2', '2022-09-28 13:11:24', null);
INSERT INTO `cms_logs` VALUES ('89', '192.168.1.32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://192.168.1.32/admpersonalv3/public/admin/horarios/add-save', 'Añadir nueva información 4 en Horario', '', '2', '2022-09-28 13:12:08', null);
INSERT INTO `cms_logs` VALUES ('90', '192.168.1.31', 'Mozilla/5.0 (Linux; Android 12; SM-A525M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Mobile Safari/537.36', 'http://192.168.1.32/admpersonalv3/public/admin/login', 'Ingreso de adelacruzcarlos@gmail.com desde la Dirección IP 192.168.1.31', '', '2', '2022-09-28 14:29:35', null);
INSERT INTO `cms_logs` VALUES ('91', '192.168.1.31', 'Mozilla/5.0 (Linux; Android 12; SM-A525M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Mobile Safari/537.36', 'http://192.168.1.32/admpersonalv3/public/admin/tipo_horarios/add-save', 'Añadir nueva información  en Tipo Horario', '', '2', '2022-09-28 14:31:52', null);
INSERT INTO `cms_logs` VALUES ('92', '192.168.1.31', 'Mozilla/5.0 (Linux; Android 12; SM-A525M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Mobile Safari/537.36', 'http://192.168.1.32/admpersonalv3/public/admin/horarios/edit-save/3', 'Actualizar información 4 en Horario', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', '2', '2022-09-28 14:32:28', null);
INSERT INTO `cms_logs` VALUES ('93', '192.168.1.32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://192.168.1.32/admpersonalv3/public/admin/configuracions/edit-save/1', 'Actualizar información  en Configuracion', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>anio</td><td></td><td>2022</td></tr></tbody></table>', '2', '2022-09-28 15:49:19', null);
INSERT INTO `cms_logs` VALUES ('94', '192.168.1.32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://192.168.1.32/admpersonalv3/public/admin/configuracions/edit-save/1', 'Actualizar información  en Configuracion', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', '2', '2022-09-28 16:29:29', null);
INSERT INTO `cms_logs` VALUES ('95', '192.168.1.32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://192.168.1.32/admpersonalv3/public/admin/logout', 'adelacruzcarlos@gmail.com se desconectó', '', '2', '2022-09-28 18:48:50', null);
INSERT INTO `cms_logs` VALUES ('96', '192.168.1.32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://192.168.1.32/admpersonalv3/public/admin/login', 'Ingreso de adelacruzcarlos@gmail.com desde la Dirección IP 192.168.1.32', '', '2', '2022-09-28 18:58:46', null);
INSERT INTO `cms_logs` VALUES ('97', '192.168.1.32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://192.168.1.32/admpersonalv3/public/admin/logout', 'adelacruzcarlos@gmail.com se desconectó', '', '2', '2022-09-28 19:46:20', null);
INSERT INTO `cms_logs` VALUES ('98', '192.168.1.31', 'Mozilla/5.0 (Linux; Android 12; SM-A525M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Mobile Safari/537.36', 'http://192.168.1.32/admpersonalv3/public/admin/login', 'Ingreso de adelacruzcarlos@gmail.com desde la Dirección IP 192.168.1.31', '', '2', '2022-09-28 20:22:20', null);
INSERT INTO `cms_logs` VALUES ('99', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de adelacruzcarlos@gmail.com desde la Dirección IP 127.0.0.1', '', '2', '2022-09-29 10:26:43', null);
INSERT INTO `cms_logs` VALUES ('100', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://admpersonalv3.com/admin/login', 'Ingreso de adelacruzcarlos@gmail.com desde la Dirección IP 127.0.0.1', '', '2', '2022-09-29 13:11:02', null);
INSERT INTO `cms_logs` VALUES ('101', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://admpersonalv3.com/admin/oficinas/add-save', 'Añadir nueva información  en Oficinas', '', '2', '2022-09-29 15:21:08', null);
INSERT INTO `cms_logs` VALUES ('102', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://admpersonalv3.com/admin/menu_management/edit-save/6', 'Actualizar información Horario en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr></tbody></table>', '2', '2022-09-29 15:32:51', null);
INSERT INTO `cms_logs` VALUES ('103', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://admpersonalv3.com/admin/menu_management/edit-save/3', 'Actualizar información Personal en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', '2', '2022-09-29 15:33:01', null);
INSERT INTO `cms_logs` VALUES ('104', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://admpersonalv3.com/admin/menu_management/edit-save/1', 'Actualizar información Especialidad en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', '2', '2022-09-29 15:33:14', null);
INSERT INTO `cms_logs` VALUES ('105', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://admpersonalv3.com/admin/menu_management/edit-save/2', 'Actualizar información Tipo Trabajo en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', '2', '2022-09-29 15:33:26', null);
INSERT INTO `cms_logs` VALUES ('106', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://admpersonalv3.com/admin/menu_management/edit-save/4', 'Actualizar información Tipo Horario en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', '2', '2022-09-29 15:33:40', null);
INSERT INTO `cms_logs` VALUES ('107', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://admpersonalv3.com/admin/menu_management/edit-save/5', 'Actualizar información Configuracion en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', '2', '2022-09-29 15:33:57', null);
INSERT INTO `cms_logs` VALUES ('108', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://admpersonalv3.com/admin/menu_management/edit-save/7', 'Actualizar información Visitas en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>7</td><td></td></tr></tbody></table>', '2', '2022-09-29 15:34:16', null);
INSERT INTO `cms_logs` VALUES ('109', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://admpersonalv3.com/admin/menu_management/edit-save/8', 'Actualizar información Oficinas en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>8</td><td></td></tr></tbody></table>', '2', '2022-09-29 15:34:25', null);
INSERT INTO `cms_logs` VALUES ('110', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://admpersonalv3.com/admin/users/add-save', 'Añadir nueva información Chistian Espinoza Gallangos en Users Management', '', '2', '2022-09-29 15:35:31', null);
INSERT INTO `cms_logs` VALUES ('111', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://admpersonalv3.com/admin/logout', 'adelacruzcarlos@gmail.com se desconectó', '', '2', '2022-09-29 15:35:50', null);
INSERT INTO `cms_logs` VALUES ('112', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://admpersonalv3.com/admin/login', 'Ingreso de cespinozag@emilima.com.pe desde la Dirección IP 127.0.0.1', '', '3', '2022-09-29 15:36:06', null);
INSERT INTO `cms_logs` VALUES ('113', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://admpersonalv3.com/admin/logout', 'cespinozag@emilima.com.pe se desconectó', '', '3', '2022-09-29 15:36:29', null);
INSERT INTO `cms_logs` VALUES ('114', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://admpersonalv3.com/admin/login', 'Ingreso de adelacruzcarlos@gmail.com desde la Dirección IP 127.0.0.1', '', '2', '2022-09-29 15:36:47', null);
INSERT INTO `cms_logs` VALUES ('115', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://admpersonalv3.com/admin/oficinas/delete/1', 'Eliminar información  en Oficinas', '', '2', '2022-09-29 15:45:13', null);
INSERT INTO `cms_logs` VALUES ('116', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://admpersonalv3.com/admin/visitas/add-save', 'Añadir nueva información  en Visitas', '', '2', '2022-09-29 15:48:59', null);
INSERT INTO `cms_logs` VALUES ('117', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://admpersonalv3.com/admin/logout', 'adelacruzcarlos@gmail.com se desconectó', '', '2', '2022-09-29 15:49:34', null);
INSERT INTO `cms_logs` VALUES ('118', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://admpersonalv3.com/admin/login', 'Ingreso de adelacruzcarlos@gmail.com desde la Dirección IP 127.0.0.1', '', '2', '2022-09-29 15:49:45', null);
INSERT INTO `cms_logs` VALUES ('119', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'http://admpersonalv3.com/admin/visitas/edit-save/1', 'Actualizar información  en Visitas', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', '2', '2022-09-29 16:26:33', null);
INSERT INTO `cms_logs` VALUES ('120', '192.168.1.31', 'Mozilla/5.0 (Linux; Android 12; SM-A525M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Mobile Safari/537.36', 'http://192.168.1.32/admpersonalv3/public/admin/login', 'Ingreso de adelacruzcarlos@gmail.com desde la Dirección IP 192.168.1.31', '', '2', '2022-09-29 16:27:56', null);
INSERT INTO `cms_logs` VALUES ('121', '192.168.1.31', 'Mozilla/5.0 (Linux; Android 12; SM-A525M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Mobile Safari/537.36', 'http://192.168.1.32/admpersonalv3/public/admin/visitas/edit-save/1', 'Actualizar información  en Visitas', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', '2', '2022-09-29 16:28:37', null);

-- ----------------------------
-- Table structure for cms_menus
-- ----------------------------
DROP TABLE IF EXISTS `cms_menus`;
CREATE TABLE `cms_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_dashboard` tinyint(1) NOT NULL DEFAULT '0',
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_menus
-- ----------------------------
INSERT INTO `cms_menus` VALUES ('1', 'Especialidad', 'Route', 'AdminEspecialidadesControllerGetIndex', 'normal', 'fa fa-heart', '0', '1', '0', '1', '3', '2022-09-26 23:41:24', '2022-09-29 15:33:13');
INSERT INTO `cms_menus` VALUES ('2', 'Tipo Trabajo', 'Route', 'AdminTipoTrabajosControllerGetIndex', 'normal', 'fa fa-road', '0', '1', '0', '1', '4', '2022-09-27 00:26:07', '2022-09-29 15:33:25');
INSERT INTO `cms_menus` VALUES ('3', 'Personal', 'Route', 'AdminPersonalsControllerGetIndex', 'normal', 'fa fa-users', '0', '1', '0', '1', '2', '2022-09-27 00:32:20', '2022-09-29 15:33:01');
INSERT INTO `cms_menus` VALUES ('4', 'Tipo Horario', 'Route', 'AdminTipoHorariosControllerGetIndex', 'normal', 'fa fa-clock-o', '0', '1', '0', '1', '5', '2022-09-26 20:23:33', '2022-09-29 15:33:40');
INSERT INTO `cms_menus` VALUES ('5', 'Configuracion', 'Route', 'AdminConfiguracionsControllerGetIndex', 'normal', 'fa fa-cog', '0', '1', '0', '1', '6', '2022-09-26 20:58:15', '2022-09-29 15:33:57');
INSERT INTO `cms_menus` VALUES ('6', 'Horario', 'Route', 'AdminHorariosControllerGetIndex', 'normal', 'fa fa-calendar', '0', '1', '0', '1', '1', '2022-09-26 21:41:03', '2022-09-29 15:32:51');
INSERT INTO `cms_menus` VALUES ('7', 'Visitas', 'Route', 'AdminVisitasControllerGetIndex', 'normal', 'fa fa-book', '0', '1', '0', '1', '7', '2022-09-29 15:15:11', '2022-09-29 15:34:16');
INSERT INTO `cms_menus` VALUES ('8', 'Oficinas', 'Route', 'AdminOficinasControllerGetIndex', 'normal', 'fa fa-glass', '0', '1', '0', '1', '8', '2022-09-29 15:20:01', '2022-09-29 15:34:24');

-- ----------------------------
-- Table structure for cms_menus_privileges
-- ----------------------------
DROP TABLE IF EXISTS `cms_menus_privileges`;
CREATE TABLE `cms_menus_privileges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_menus_privileges
-- ----------------------------
INSERT INTO `cms_menus_privileges` VALUES ('9', '6', '2');
INSERT INTO `cms_menus_privileges` VALUES ('10', '6', '3');
INSERT INTO `cms_menus_privileges` VALUES ('11', '6', '1');
INSERT INTO `cms_menus_privileges` VALUES ('12', '3', '2');
INSERT INTO `cms_menus_privileges` VALUES ('13', '3', '3');
INSERT INTO `cms_menus_privileges` VALUES ('14', '3', '1');
INSERT INTO `cms_menus_privileges` VALUES ('15', '1', '2');
INSERT INTO `cms_menus_privileges` VALUES ('16', '1', '3');
INSERT INTO `cms_menus_privileges` VALUES ('17', '1', '1');
INSERT INTO `cms_menus_privileges` VALUES ('18', '2', '2');
INSERT INTO `cms_menus_privileges` VALUES ('19', '2', '3');
INSERT INTO `cms_menus_privileges` VALUES ('20', '2', '1');
INSERT INTO `cms_menus_privileges` VALUES ('21', '4', '2');
INSERT INTO `cms_menus_privileges` VALUES ('22', '4', '3');
INSERT INTO `cms_menus_privileges` VALUES ('23', '4', '1');
INSERT INTO `cms_menus_privileges` VALUES ('24', '5', '2');
INSERT INTO `cms_menus_privileges` VALUES ('25', '5', '1');
INSERT INTO `cms_menus_privileges` VALUES ('26', '7', '2');
INSERT INTO `cms_menus_privileges` VALUES ('27', '7', '1');
INSERT INTO `cms_menus_privileges` VALUES ('28', '7', '4');
INSERT INTO `cms_menus_privileges` VALUES ('29', '8', '2');
INSERT INTO `cms_menus_privileges` VALUES ('30', '8', '1');
INSERT INTO `cms_menus_privileges` VALUES ('31', '8', '4');

-- ----------------------------
-- Table structure for cms_moduls
-- ----------------------------
DROP TABLE IF EXISTS `cms_moduls`;
CREATE TABLE `cms_moduls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_moduls
-- ----------------------------
INSERT INTO `cms_moduls` VALUES ('1', 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', '1', '1', '2022-09-26 23:31:24', null, null);
INSERT INTO `cms_moduls` VALUES ('2', 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', '1', '1', '2022-09-26 23:31:24', null, null);
INSERT INTO `cms_moduls` VALUES ('3', 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', '1', '1', '2022-09-26 23:31:24', null, null);
INSERT INTO `cms_moduls` VALUES ('4', 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', '0', '1', '2022-09-26 23:31:24', null, null);
INSERT INTO `cms_moduls` VALUES ('5', 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', '1', '1', '2022-09-26 23:31:24', null, null);
INSERT INTO `cms_moduls` VALUES ('6', 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', '1', '1', '2022-09-26 23:31:24', null, null);
INSERT INTO `cms_moduls` VALUES ('7', 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', '1', '1', '2022-09-26 23:31:24', null, null);
INSERT INTO `cms_moduls` VALUES ('8', 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', '1', '1', '2022-09-26 23:31:24', null, null);
INSERT INTO `cms_moduls` VALUES ('9', 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', '1', '1', '2022-09-26 23:31:24', null, null);
INSERT INTO `cms_moduls` VALUES ('10', 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', '1', '1', '2022-09-26 23:31:24', null, null);
INSERT INTO `cms_moduls` VALUES ('11', 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', '1', '1', '2022-09-26 23:31:24', null, null);
INSERT INTO `cms_moduls` VALUES ('12', 'Especialidad', 'fa fa-heart', 'especialidades', 'especialidades', 'AdminEspecialidadesController', '0', '0', '2022-09-26 23:41:24', null, null);
INSERT INTO `cms_moduls` VALUES ('13', 'Tipo Trabajo', 'fa fa-road', 'tipo_trabajos', 'tipo_trabajos', 'AdminTipoTrabajosController', '0', '0', '2022-09-27 00:26:06', null, null);
INSERT INTO `cms_moduls` VALUES ('14', 'Personal', 'fa fa-users', 'personals', 'personals', 'AdminPersonalsController', '0', '0', '2022-09-27 00:32:20', null, null);
INSERT INTO `cms_moduls` VALUES ('15', 'Tipo Horario', 'fa fa-clock-o', 'tipo_horarios', 'tipo_horarios', 'AdminTipoHorariosController', '0', '0', '2022-09-26 20:23:33', null, null);
INSERT INTO `cms_moduls` VALUES ('16', 'Configuracion', 'fa fa-cog', 'configuracions', 'configuracions', 'AdminConfiguracionsController', '0', '0', '2022-09-26 20:58:15', null, null);
INSERT INTO `cms_moduls` VALUES ('17', 'Horario', 'fa fa-calendar', 'horarios', 'horarios', 'AdminHorariosController', '0', '0', '2022-09-26 21:41:03', null, null);
INSERT INTO `cms_moduls` VALUES ('18', 'Visitas', 'fa fa-tripadvisor', 'visitas', 'visitas', 'AdminVisitasController', '0', '0', '2022-09-29 15:15:11', null, null);
INSERT INTO `cms_moduls` VALUES ('19', 'Oficinas', 'fa fa-building', 'oficinas', 'oficinas', 'AdminOficinasController', '0', '0', '2022-09-29 15:20:01', null, null);

-- ----------------------------
-- Table structure for cms_notifications
-- ----------------------------
DROP TABLE IF EXISTS `cms_notifications`;
CREATE TABLE `cms_notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_notifications
-- ----------------------------

-- ----------------------------
-- Table structure for cms_privileges
-- ----------------------------
DROP TABLE IF EXISTS `cms_privileges`;
CREATE TABLE `cms_privileges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_privileges
-- ----------------------------
INSERT INTO `cms_privileges` VALUES ('1', 'Super Administrator', '1', 'skin-blue', '2022-09-26 23:31:25', null);
INSERT INTO `cms_privileges` VALUES ('2', 'Administrador Emilima', '0', 'skin-blue', null, null);
INSERT INTO `cms_privileges` VALUES ('3', 'Horarios', '0', 'skin-blue', null, null);
INSERT INTO `cms_privileges` VALUES ('4', 'Visitas', '0', 'skin-blue', null, null);

-- ----------------------------
-- Table structure for cms_privileges_roles
-- ----------------------------
DROP TABLE IF EXISTS `cms_privileges_roles`;
CREATE TABLE `cms_privileges_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_privileges_roles
-- ----------------------------
INSERT INTO `cms_privileges_roles` VALUES ('15', '1', '1', '1', '1', '1', '1', '12', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('16', '1', '1', '1', '1', '1', '1', '14', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('17', '1', '1', '1', '1', '1', '1', '13', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('18', '1', '1', '1', '1', '1', '1', '4', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('19', '1', '1', '1', '1', '1', '1', '15', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('20', '1', '1', '1', '1', '1', '1', '16', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('21', '1', '1', '1', '1', '1', '1', '17', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('22', '1', '1', '1', '1', '1', '1', '18', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('23', '1', '1', '1', '1', '1', '1', '19', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('24', '1', '1', '1', '1', '1', '2', '16', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('25', '1', '1', '1', '1', '1', '2', '12', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('26', '1', '1', '1', '1', '1', '2', '17', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('27', '1', '1', '1', '1', '1', '2', '19', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('28', '1', '1', '1', '1', '1', '2', '14', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('29', '1', '1', '1', '1', '1', '2', '15', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('30', '1', '1', '1', '1', '1', '2', '13', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('31', '1', '1', '1', '1', '1', '2', '4', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('32', '1', '1', '1', '1', '1', '2', '18', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('33', '1', '1', '1', '1', '1', '3', '16', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('34', '1', '1', '1', '1', '1', '3', '12', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('35', '1', '1', '1', '1', '1', '3', '17', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('36', '1', '1', '1', '1', '1', '3', '14', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('37', '1', '1', '1', '1', '1', '3', '15', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('38', '1', '1', '1', '1', '1', '3', '13', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('39', '1', '1', '1', '1', '1', '4', '19', null, null);
INSERT INTO `cms_privileges_roles` VALUES ('40', '1', '1', '1', '1', '1', '4', '18', null, null);

-- ----------------------------
-- Table structure for cms_settings
-- ----------------------------
DROP TABLE IF EXISTS `cms_settings`;
CREATE TABLE `cms_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_settings
-- ----------------------------
INSERT INTO `cms_settings` VALUES ('1', 'login_background_color', '#FFFFFFF', 'text', null, 'Input hexacode', '2022-09-26 23:31:24', null, 'Login Register Style', 'Login Background Color');
INSERT INTO `cms_settings` VALUES ('2', 'login_font_color', null, 'text', null, 'Input hexacode', '2022-09-26 23:31:24', null, 'Login Register Style', 'Login Font Color');
INSERT INTO `cms_settings` VALUES ('3', 'login_background_image', null, 'upload_image', null, null, '2022-09-26 23:31:24', null, 'Login Register Style', 'Login Background Image');
INSERT INTO `cms_settings` VALUES ('4', 'email_sender', 'support@crudbooster.com', 'text', null, null, '2022-09-26 23:31:24', null, 'Email Setting', 'Email Sender');
INSERT INTO `cms_settings` VALUES ('5', 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', null, '2022-09-26 23:31:24', null, 'Email Setting', 'Mail Driver');
INSERT INTO `cms_settings` VALUES ('6', 'smtp_host', '', 'text', null, null, '2022-09-26 23:31:24', null, 'Email Setting', 'SMTP Host');
INSERT INTO `cms_settings` VALUES ('7', 'smtp_port', '25', 'text', null, 'default 25', '2022-09-26 23:31:24', null, 'Email Setting', 'SMTP Port');
INSERT INTO `cms_settings` VALUES ('8', 'smtp_username', '', 'text', null, null, '2022-09-26 23:31:24', null, 'Email Setting', 'SMTP Username');
INSERT INTO `cms_settings` VALUES ('9', 'smtp_password', '', 'text', null, null, '2022-09-26 23:31:24', null, 'Email Setting', 'SMTP Password');
INSERT INTO `cms_settings` VALUES ('10', 'appname', 'EMILIMA', 'text', null, null, '2022-09-26 23:31:24', null, 'Application Setting', 'Application Name');
INSERT INTO `cms_settings` VALUES ('11', 'default_paper_size', 'A4', 'text', null, 'Paper size, ex : A4, Legal, etc', '2022-09-26 23:31:24', null, 'Application Setting', 'Default Paper Print Size');
INSERT INTO `cms_settings` VALUES ('12', 'logo', 'uploads/2022-09/d9810f7fd63c6f7ec83e980dace4d333.png', 'upload_image', null, null, '2022-09-26 23:31:24', null, 'Application Setting', 'Logo');
INSERT INTO `cms_settings` VALUES ('13', 'favicon', 'uploads/2022-09/c2b15c42af921999312f9bcf08a79576.png', 'upload_image', null, null, '2022-09-26 23:31:24', null, 'Application Setting', 'Favicon');
INSERT INTO `cms_settings` VALUES ('14', 'api_debug_mode', 'true', 'select', 'true,false', null, '2022-09-26 23:31:24', null, 'Application Setting', 'API Debug Mode');
INSERT INTO `cms_settings` VALUES ('15', 'google_api_key', null, 'text', null, null, '2022-09-26 23:31:24', null, 'Application Setting', 'Google API Key');
INSERT INTO `cms_settings` VALUES ('16', 'google_fcm_key', null, 'text', null, null, '2022-09-26 23:31:24', null, 'Application Setting', 'Google FCM Key');

-- ----------------------------
-- Table structure for cms_statistics
-- ----------------------------
DROP TABLE IF EXISTS `cms_statistics`;
CREATE TABLE `cms_statistics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_statistics
-- ----------------------------
INSERT INTO `cms_statistics` VALUES ('1', 'Tecnologia', 'tecnologia', '2022-09-27 00:04:17', null);

-- ----------------------------
-- Table structure for cms_statistic_components
-- ----------------------------
DROP TABLE IF EXISTS `cms_statistic_components`;
CREATE TABLE `cms_statistic_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_statistic_components
-- ----------------------------
INSERT INTO `cms_statistic_components` VALUES ('1', '1', '3d09e93f4018a0784ad212c69c77ccfa', 'smallbox', 'area1', '0', null, '{\"name\":\"Personal\",\"icon\":\"body-outline\",\"color\":\"bg-green\",\"link\":\"contpersonal\",\"sql\":\"SELECT COUNT(*) FROM personals;\"}', '2022-09-27 00:04:47', null);
INSERT INTO `cms_statistic_components` VALUES ('2', '1', '2cce4e36f08beb5070125dea55a4dba8', 'table', 'area5', '0', null, '{\"name\":\"Horarios\",\"sql\":\"SELECT * FROM tipo_horarios;\"}', '2022-09-27 00:07:48', null);

-- ----------------------------
-- Table structure for cms_users
-- ----------------------------
DROP TABLE IF EXISTS `cms_users`;
CREATE TABLE `cms_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_externo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_externo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_users
-- ----------------------------
INSERT INTO `cms_users` VALUES ('1', 'Super Admin', null, 'admin@crudbooster.com', '$2y$10$etIauAD5wDtgyRHPbwfqUOic1OPACApIcOFV3GuqUo8X9dPBij9/u', '1', '2022-09-26 23:31:24', null, 'Active', null, null, null);
INSERT INTO `cms_users` VALUES ('2', 'Agapito De la cruz Carlos', 'uploads/1/2022-09/ingenieria.png', 'adelacruzcarlos@gmail.com', '$2y$10$O4f2GnUXAvnQJGZquk.g/.1cNIhUFngA9Xz2TtDzcnW/Wec6F6de2', '1', '2022-09-26 23:35:14', null, null, null, null, null);
INSERT INTO `cms_users` VALUES ('3', 'Chistian Espinoza Gallangos', 'uploads/2/2022-09/admin.png', 'cespinozag@emilima.com.pe', '$2y$10$wgAT4hc.iCoj3Y90aGYRYeMw43j5HQxjY/L5lb1lU8Bu3bwmX9XtO', '2', '2022-09-29 15:35:31', null, null, null, null, null);

-- ----------------------------
-- Table structure for configuracions
-- ----------------------------
DROP TABLE IF EXISTS `configuracions`;
CREATE TABLE `configuracions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'REPORTE DE ASISTENCIA - SEMANA DEL',
  `desde` date NOT NULL,
  `hasta` date NOT NULL,
  `anio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of configuracions
-- ----------------------------
INSERT INTO `configuracions` VALUES ('1', 'REPORTE DE ASISTENCIA - SEMANA DEL', '2022-09-25', '2022-10-01', '2022', '1', '2022-09-26 21:07:24', '2022-09-28 16:29:29');

-- ----------------------------
-- Table structure for especialidades
-- ----------------------------
DROP TABLE IF EXISTS `especialidades`;
CREATE TABLE `especialidades` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of especialidades
-- ----------------------------
INSERT INTO `especialidades` VALUES ('1', 'Desarrollador', '1', '2022-09-26 23:53:16', '2022-09-27 00:24:01');
INSERT INTO `especialidades` VALUES ('2', 'infraestructura', '1', '2022-09-27 00:00:02', null);
INSERT INTO `especialidades` VALUES ('3', 'Redes', '1', '2022-09-27 00:04:16', null);

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for horarios
-- ----------------------------
DROP TABLE IF EXISTS `horarios`;
CREATE TABLE `horarios` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_config` bigint(20) unsigned DEFAULT NULL,
  `id_personal` bigint(20) unsigned DEFAULT NULL,
  `id_tipo_trabajo` bigint(20) unsigned DEFAULT NULL,
  `d_lunes` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `d_martes` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `d_miercoles` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `d_jueves` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `d_viernes` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `d_sabado` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `d_domingo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `observacion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `horarios_id_config_foreign` (`id_config`),
  KEY `horarios_id_personal_foreign` (`id_personal`),
  KEY `horarios_id_tipo_trabajo_foreign` (`id_tipo_trabajo`),
  CONSTRAINT `horarios_id_config_foreign` FOREIGN KEY (`id_config`) REFERENCES `configuracions` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `horarios_id_personal_foreign` FOREIGN KEY (`id_personal`) REFERENCES `personals` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `horarios_id_tipo_trabajo_foreign` FOREIGN KEY (`id_tipo_trabajo`) REFERENCES `tipo_trabajos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of horarios
-- ----------------------------
INSERT INTO `horarios` VALUES ('1', '1', '3', '2', '3', '3', '3', '3', '3', '4', '4', 'Corregido', '2022-09-26 21:54:48', '2022-09-28 13:08:03');
INSERT INTO `horarios` VALUES ('2', '1', '3', '1', '2', '2', '2', '2', '2', '4', '4', '', '2022-09-28 12:53:51', '2022-09-28 13:08:56');
INSERT INTO `horarios` VALUES ('3', '1', '4', '2', '3', '3', '3', '3', '3', '5', '5', '', '2022-09-28 13:11:24', '2022-09-28 14:32:28');
INSERT INTO `horarios` VALUES ('4', '1', '4', '1', '1', '1', '1', '1', '1', '4', '4', '', '2022-09-28 13:12:08', null);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2016_08_07_145904_add_table_cms_apicustom', '1');
INSERT INTO `migrations` VALUES ('4', '2016_08_07_150834_add_table_cms_dashboard', '1');
INSERT INTO `migrations` VALUES ('5', '2016_08_07_151210_add_table_cms_logs', '1');
INSERT INTO `migrations` VALUES ('6', '2016_08_07_151211_add_details_cms_logs', '1');
INSERT INTO `migrations` VALUES ('7', '2016_08_07_152014_add_table_cms_privileges', '1');
INSERT INTO `migrations` VALUES ('8', '2016_08_07_152214_add_table_cms_privileges_roles', '1');
INSERT INTO `migrations` VALUES ('9', '2016_08_07_152320_add_table_cms_settings', '1');
INSERT INTO `migrations` VALUES ('10', '2016_08_07_152421_add_table_cms_users', '1');
INSERT INTO `migrations` VALUES ('11', '2016_08_07_154624_add_table_cms_menus_privileges', '1');
INSERT INTO `migrations` VALUES ('12', '2016_08_07_154624_add_table_cms_moduls', '1');
INSERT INTO `migrations` VALUES ('13', '2016_08_17_225409_add_status_cms_users', '1');
INSERT INTO `migrations` VALUES ('14', '2016_08_20_125418_add_table_cms_notifications', '1');
INSERT INTO `migrations` VALUES ('15', '2016_09_04_033706_add_table_cms_email_queues', '1');
INSERT INTO `migrations` VALUES ('16', '2016_09_16_035347_add_group_setting', '1');
INSERT INTO `migrations` VALUES ('17', '2016_09_16_045425_add_label_setting', '1');
INSERT INTO `migrations` VALUES ('18', '2016_09_17_104728_create_nullable_cms_apicustom', '1');
INSERT INTO `migrations` VALUES ('19', '2016_10_01_141740_add_method_type_apicustom', '1');
INSERT INTO `migrations` VALUES ('20', '2016_10_01_141846_add_parameters_apicustom', '1');
INSERT INTO `migrations` VALUES ('21', '2016_10_01_141934_add_responses_apicustom', '1');
INSERT INTO `migrations` VALUES ('22', '2016_10_01_144826_add_table_apikey', '1');
INSERT INTO `migrations` VALUES ('23', '2016_11_14_141657_create_cms_menus', '1');
INSERT INTO `migrations` VALUES ('24', '2016_11_15_132350_create_cms_email_templates', '1');
INSERT INTO `migrations` VALUES ('25', '2016_11_15_190410_create_cms_statistics', '1');
INSERT INTO `migrations` VALUES ('26', '2016_11_17_102740_create_cms_statistic_components', '1');
INSERT INTO `migrations` VALUES ('27', '2017_06_06_164501_add_deleted_at_cms_moduls', '1');
INSERT INTO `migrations` VALUES ('28', '2019_08_19_000000_create_failed_jobs_table', '1');
INSERT INTO `migrations` VALUES ('29', '2019_12_14_000001_create_personal_access_tokens_table', '1');
INSERT INTO `migrations` VALUES ('30', '2022_09_26_233746_create_especialidades_table', '2');
INSERT INTO `migrations` VALUES ('31', '2022_09_27_002448_create_tipo_trabajos_table', '3');
INSERT INTO `migrations` VALUES ('32', '2022_09_27_002858_create_personals_table', '4');
INSERT INTO `migrations` VALUES ('33', '2022_09_26_202059_create_tipo_horarios_table', '5');
INSERT INTO `migrations` VALUES ('34', '2022_09_26_205237_create_configuracions_table', '6');
INSERT INTO `migrations` VALUES ('35', '2022_09_26_213438_create_horarios_table', '7');
INSERT INTO `migrations` VALUES ('36', '2022_09_29_113615_update_cms_users_table', '8');
INSERT INTO `migrations` VALUES ('37', '2022_09_29_150921_create_oficinas_table', '9');

-- ----------------------------
-- Table structure for oficinas
-- ----------------------------
DROP TABLE IF EXISTS `oficinas`;
CREATE TABLE `oficinas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oficinas
-- ----------------------------
INSERT INTO `oficinas` VALUES ('2', 'GERENCIA GENERAL', null, null);
INSERT INTO `oficinas` VALUES ('3', 'GERENCIA DE ADMINISTRACIÓN Y FINANZAS', null, null);
INSERT INTO `oficinas` VALUES ('4', 'GERENCIA DE ASUNTOS LEGALES', null, null);
INSERT INTO `oficinas` VALUES ('5', 'GERENCIA DE PLANIFICACIÓN, PRESUPUESTO Y MODERNIZACIÓN', null, null);
INSERT INTO `oficinas` VALUES ('6', 'GERENCIA DE GESTIÓN INMOBILIARIA', null, null);
INSERT INTO `oficinas` VALUES ('7', 'GERENCIA DE PROYECTOS', null, null);
INSERT INTO `oficinas` VALUES ('8', 'SUB GERENCIA DE LOGÍSTICA Y SERVICIOS GENERALES', null, null);
INSERT INTO `oficinas` VALUES ('9', 'SUB GERENCIA DE CONTABILIDAD', null, null);
INSERT INTO `oficinas` VALUES ('10', 'SUB GERENCIA DE TESORERÍA Y RECAUDACIÓN', null, null);
INSERT INTO `oficinas` VALUES ('11', 'SUB GERENCIA DE RECURSOS HUMANOS', null, null);
INSERT INTO `oficinas` VALUES ('12', 'PRESIDENCIA', null, null);
INSERT INTO `oficinas` VALUES ('13', 'ÓRGANO DE CONTROL INSTITUCIONAL', null, null);
INSERT INTO `oficinas` VALUES ('14', 'PRESIDENTE DE JUNTA DE SUBASTA', null, null);
INSERT INTO `oficinas` VALUES ('15', 'GERENCIA DE ATENCIÓN AL CIUDADANO, COMUNICACIONES Y TECNOLOGIA DE LA INFORMACION', null, null);
INSERT INTO `oficinas` VALUES ('16', 'SUB GERENCIA DE SANEAMIENTO Y RENOVACION URBANA', null, null);
INSERT INTO `oficinas` VALUES ('17', 'SUB GERENCIA DE PROMOCION INMOBILIARIA Y CONTRATOS', null, null);
INSERT INTO `oficinas` VALUES ('18', 'FONDO METROPOLITANO DE RENOVACIÓN Y DESARROLLO URBANO', null, null);
INSERT INTO `oficinas` VALUES ('19', 'SECRETARIA TÉCNICA', null, null);
INSERT INTO `oficinas` VALUES ('20', 'GERENCIA DE OPERACIONES', null, null);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for personals
-- ----------------------------
DROP TABLE IF EXISTS `personals`;
CREATE TABLE `personals` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombres` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido_pat` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido_mat` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT '0',
  `id_especialidad` bigint(20) unsigned DEFAULT NULL,
  `id_tipotrabajo` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `personals_id_especialidad_foreign` (`id_especialidad`),
  KEY `personals_id_tipotrabajo_foreign` (`id_tipotrabajo`),
  CONSTRAINT `personals_id_especialidad_foreign` FOREIGN KEY (`id_especialidad`) REFERENCES `especialidades` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `personals_id_tipotrabajo_foreign` FOREIGN KEY (`id_tipotrabajo`) REFERENCES `tipo_trabajos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of personals
-- ----------------------------
INSERT INTO `personals` VALUES ('1', 'Agapito', 'De la cruz', 'Carlos', '1', '1', '1', '2022-09-27 00:42:46', null);
INSERT INTO `personals` VALUES ('2', 'Angel', 'Sayes', 'Malpartida', '1', '1', '2', '2022-09-27 00:51:36', null);
INSERT INTO `personals` VALUES ('3', 'Glen', 'Rios', 'Castillo', '1', '3', '1', '2022-09-26 20:50:19', '2022-09-26 20:50:30');
INSERT INTO `personals` VALUES ('4', 'Diana', 'Carreño', 'Bajonero', '1', '3', '1', '2022-09-28 13:09:52', null);

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for tblanio
-- ----------------------------
DROP TABLE IF EXISTS `tblanio`;
CREATE TABLE `tblanio` (
  `id` int(4) DEFAULT NULL,
  `co_anio` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tblanio
-- ----------------------------
INSERT INTO `tblanio` VALUES ('2022', '2022');
INSERT INTO `tblanio` VALUES ('2023', '2022');
INSERT INTO `tblanio` VALUES ('2024', '2024');
INSERT INTO `tblanio` VALUES ('2025', '2025');

-- ----------------------------
-- Table structure for tipo_horarios
-- ----------------------------
DROP TABLE IF EXISTS `tipo_horarios`;
CREATE TABLE `tipo_horarios` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `desde` time NOT NULL,
  `hasta` time NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tipo_horarios
-- ----------------------------
INSERT INTO `tipo_horarios` VALUES ('1', '08:00:00', '17:00:00', 'Oficina', '2022-09-26 20:25:52', null);
INSERT INTO `tipo_horarios` VALUES ('2', '07:30:00', '16:30:00', 'Manañero', '2022-09-26 20:41:32', null);
INSERT INTO `tipo_horarios` VALUES ('3', '17:00:00', '22:00:00', 'Casa', '2022-09-26 20:42:25', null);
INSERT INTO `tipo_horarios` VALUES ('4', '06:00:00', '23:59:59', 'Apoyo', '2022-09-26 20:43:08', null);
INSERT INTO `tipo_horarios` VALUES ('5', '07:00:00', '22:00:00', 'Remoto', '2022-09-28 14:31:52', null);

-- ----------------------------
-- Table structure for tipo_trabajos
-- ----------------------------
DROP TABLE IF EXISTS `tipo_trabajos`;
CREATE TABLE `tipo_trabajos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tipo_trabajos
-- ----------------------------
INSERT INTO `tipo_trabajos` VALUES ('1', 'Presencial', '1', '2022-09-27 00:27:48', null);
INSERT INTO `tipo_trabajos` VALUES ('2', 'Remoto', '1', '2022-09-27 00:27:58', null);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------

-- ----------------------------
-- Table structure for visitas
-- ----------------------------
DROP TABLE IF EXISTS `visitas`;
CREATE TABLE `visitas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fecha_visita` date NOT NULL,
  `hora_ingreso` time NOT NULL,
  `hora_salida` time NOT NULL,
  `nombres_completos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_oficina` bigint(20) unsigned DEFAULT NULL,
  `motivo_visita` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of visitas
-- ----------------------------
INSERT INTO `visitas` VALUES ('1', '2022-09-29', '15:45:30', '00:00:00', 'Agapito De la cruz', '3', 'viene a preguntar por wsus pagos', '2022-09-29 15:48:59', '2022-09-29 16:28:37');
