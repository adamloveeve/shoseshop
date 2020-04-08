-- 创建鞋子表
CREATE TABLE `shose` (
  `shose_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '鞋子ID',
  `name` varchar(100) NOT NULL COMMENT '鞋子名称',
  `number` int(11) NOT NULL COMMENT '数量',
  `price` decimal(19,2) NOT NULL COMMENT '价格',
  `remarks` varchar(1000)  NULL COMMENT '备注',
  `simg` varchar(1000)  NULL COMMENT '图片',
  PRIMARY KEY (`shose_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT='鞋子表';

-- 初始化鞋子数据
INSERT INTO `shose` (`shose_id`, `name`, `number`,`price`)
VALUES
	(1000, '阿迪1', 10,100),
	(1001, '阿迪2', 10,400),
	(1002, '耐克1', 15,300),
	(1003, '耐克2', 20,600);

-- 创建预约鞋子表
CREATE TABLE `shose_appointment` (
  `shose_id` bigint(20) NOT NULL COMMENT '鞋子ID',
  `wechat` varchar(100) NOT NULL COMMENT '微信号',
  `buyname` varchar(100)  NULL COMMENT '买家名字',
  `phone` varchar(50)  NULL COMMENT '手机号',
  `appoint_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '预约时间' ,
  PRIMARY KEY (`shose_id`, `wechat`),
  INDEX `idx_appoint_time` (`appoint_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='预约鞋子表';
