-- 创建期货信息表
CREATE TABLE FUTURE_QUOT_DAY
(
  ID int PRIMARY KEY COMMENT '主键' AUTO_INCREMENT,
  CODE varchar(10) NOT NULL COMMENT '编码',
  name varchar(20) COMMENT '名称',
  price numeric(20,4) DEFAULT 0 COMMENT '价格',
  price_max numeric(20,4) DEFAULT 0 COMMENT '最高价',
  price_min numeric(20,4) DEFAULT 0 COMMENT '最低价',
  change_percent numeric(10,6) DEFAULT 0 COMMENT '涨幅',
  create_date  datetime  COMMENT '创建时间',
  update_date TIMESTAMP NOT NULL  DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NOT NULL COMMENT '修改时间',
  use_date datetime COMMENT '数据对应日期'
);
ALTER TABLE FUTURE_QUOT_DAY COMMENT = '期货数据-每日数据';