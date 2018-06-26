CREATE DATABASE IF NOT EXISTS app default character set utf8;
use app;
CREATE TABLE IF NOT EXISTS `sys_logs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `operator_time` datetime DEFAULT NULL COMMENT '操作时间',
  `operator` varchar(50) DEFAULT NULL COMMENT '操作人',
  `description` varchar(500) DEFAULT NULL COMMENT '操作内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='操作日志';

INSERT INTO `sys_logs` ( `operator_time`, `operator`, `description`)
VALUES('2017-11-29 23:21:31','admin','用户登录');
