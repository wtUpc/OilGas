USE `oilgas`;
DROP TABLE if EXISTS cd_basic_data;
CREATE TABLE cd_basic_data (
  id BIGINT AUTO_INCREMENT  PRIMARY KEY ,
  gdh int ,
  jsq float ,
  sjsl float ,
  gxcd float ,
  gdgxcd float ,
  gdzxcd float ,
  ygsl float ,
  tzze float ,
  jstz float ,
  ldzj float NULL,
  zjnx float ,
  jzsyl float ,
  pjq INT ,
  hydj float ,
  hqdj float ,
  hmdj float ,
  hsdj float ,
  hddj float ,
  jjdj float ,
  hyclf float ,
  rjngz float ,
  ngzzzbl float ,
  gzfjbl float ,
  wxf float ,
  agxcdcsbz float ,
  azcyzcsbz float ,
  qtyxfy float ,
  drpjbz float ,
  qtglfy float ,
  drpjglfbz float ,
  cgzwqtfynzzl float ,
  xsfy float ,
  ayysrcsbz float ,
  aqscfyjybl float ,
  cwfy float ,
  gdzctzjkbl float ,
  gncqdkll float ,
  ldzjjkbl float ,
  ldzjdkll float ,
  syqshl float ,
  sjjfj float ,
  sdsl float ,
  zzsl float ,
  gssr float ,
  rl float NULL,
  dl float NULL,
  sh float NULL,
  qt float ,
  cjsl float ,
  jyffj float ,
  dfjyffj float ,
  gsjz varchar(50) ,
  ylx1mc varchar(50) NULL,
  ylx1z float NULL,
  ylx2mc varchar(50) NULL,
  ylx2z float NULL
) ENGINE = InnoDB DEFAULT CHARSET =utf8;

DROP TABLE if EXISTS `fr_basic_data`;
CREATE TABLE `fr_basic_data`(
  id BIGINT AUTO_INCREMENT  PRIMARY KEY ,
  gdh int ,
  jsq float ,
  sjsl float ,
  gxcd float ,
  gdgxcd float ,
  gdzxcd float ,
  ygsl float ,
  tzze float ,
  jstz float ,
  ldzj float NULL,
  zjnx float ,
  jzsyl float ,
  pjq INT ,
  hydj float ,
  hqdj float ,
  hmdj float ,
  hsdj float ,
  hddj float ,
  jjdj float ,
  hyclf float ,
  rjngz float ,
  ngzzzbl float ,
  gzfjbl float ,
  wxf float ,
  agxcdcsbz float ,
  azcyzcsbz float ,
  qtyxfy float ,
  drpjbz float ,
  qtglfy float ,
  drpjglfbz float ,
  cgzwqtfynzzl float ,
  xsfy float ,
  ayysrcsbz float ,
  aqscfyjybl float ,
  cwfy float ,
  gdzctzjkbl float ,
  gncqdkll float ,
  ldzjjkbl float ,
  ldzjdkll float ,
  syqshl float ,
  sjjfj float ,
  sdsl float ,
  zzsl float ,
  gssr float ,
  rl float NULL,
  dl float NULL,
  sh float NULL,
  qt float ,
  cjsl float ,
  jyffj float ,
  dfjyffj float ,
  gsjz varchar(50) ,
  ylx1mc varchar(50) NULL,
  ylx1z float NULL,
  ylx2mc varchar(50) NULL,
  ylx2z float NULL
) ENGINE = InnoDB DEFAULT CHARSET =utf8;

DROP TABLE  if EXISTS `cd_annual_parameter`;
CREATE TABLE `cd_annual_parameter` (
  id BIGINT AUTO_INCREMENT  PRIMARY KEY ,
  gdh int ,
  nh int ,
  gsl float NULL,
  rlxhl float NULL,
  hyl float NULL,
  hql float NULL,
  hml float NULL,
  dlxhl float NULL,
  hsl float NULL,
  hdl float NULL,
  clxhl float NULL,
  jjl float NULL,
  tzjhbl float 

) ENGINE = InnoDB DEFAULT CHARSET =utf8;

DROP TABLE  if EXISTS `fr_annual_parameter`;
CREATE TABLE `fr_annual_parameter` (
  id BIGINT AUTO_INCREMENT  PRIMARY KEY ,
  gdh int ,
  nh int ,
  gsl float NULL,
  rlxhl float NULL,
  hyl float NULL,
  hql float NULL,
  hml float NULL,
  dlxhl float NULL,
  hsl float NULL,
  hdl float NULL,
  clxhl float NULL,
  jjl float NULL,
  tzjhbl float 
) ENGINE = InnoDB DEFAULT CHARSET =utf8;
#
# INSERT INTO fr_annual_parameter VALUES (1, 1, 2017, 0, 0, 0, 0, 0, 0, 0, 0, 0,0 ,0),
#   (2, 1, 2018, 0, 0, 0, 0, 0, 0, 0, 0, 0,0 ,0),
#   (3, 1, 2019, 0, 0, 33.2, 0, 0, 0, 0, 151, 0,0 ,0),
#   (4, 1, 2020, 0, 0, 33.2, 0, 0, 0, 0, 151, 0,0 ,0),
#   (5, 1, 2021, 0, 0, 33.2, 0, 0, 0, 0, 151, 0,0 ,0),
#   (6, 1, 2022, 0, 0, 33.2, 0, 0, 0, 0, 151, 0,0 ,0),
#   (7, 1, 2023, 0, 0, 33.2, 0, 0, 0, 0, 151, 0,0 ,0),
#   (8, 1, 2024, 0, 0, 33.2, 0, 0, 0, 0, 151, 0,0 ,0);

DROP TABLE IF EXISTS `fr_trans_address`;
CREATE TABLE `fr_trans_address` (
  id BIGINT AUTO_INCREMENT  PRIMARY KEY ,
  gdh int  ,
  nh INT  ,
  qsdz VARCHAR(50)  ,
  ssdwl FLOAT  ,
  sqlf FLOAT,
  sfzx VARCHAR(50) ,
  zxcd FLOAT 
) ENGINE = InnoDB DEFAULT CHARSET =utf8;
#
# INSERT INTO fr_trans_address VALUES (1, 1, 2017, 'ffff-iiii', 423, 0, '否', 342),
#   (2, 1, 2018, 'ffff-iiii', 423, 0, '否', 342),
#   (3, 1, 2019, 'ffff-iiii', 423, 0.3309, '否', 342),
#   (4, 1, 2020, 'ffff-iiii', 423, 0.5848, '否', 342),
#   (5, 1, 2021, 'ffff-iiii', 423, 0.5848, '否', 342),
#   (6, 1, 2022, 'ffff-iiii', 423, 0.8756, '否', 342),
#   (7, 1, 2023, 'ffff-iiii', 423, 0.8756, '否', 342),
#   (8, 1, 2024, 'ffff-iiii', 423, 1.411, '否', 342);

DROP TABLE IF EXISTS `cd_trans_address`;
CREATE TABLE `cd_trans_address` (
  id BIGINT AUTO_INCREMENT  PRIMARY KEY ,
  gdh int  ,
  nh INT  ,
  qsdz VARCHAR(50)  ,
  ssdwl FLOAT  ,
  sqlf FLOAT,
  sfzx VARCHAR(50) ,
  zxcd FLOAT 
) ENGINE = InnoDB DEFAULT CHARSET =utf8;

DROP TABLE  if EXISTS `evalu_parameters`;
CREATE TABLE `evalu_parameters`(
  id BIGINT AUTO_INCREMENT  PRIMARY KEY ,
  gdh int  ,
  nh int ,
  jzsyl float ,
  pjq float ,
  zjnx float ,
  njgzbz float ,
  syqshl float ,
  wxffl float ,
  qtyyfyde float ,
  qtglfyde float ,
  aqscfyjtbl float ,
  xsfy float 
) ENGINE = InnoDB DEFAULT CHARSET =utf8;

INSERT INTO evalu_parameters VALUES (1, 1, 2017, 12.0, 2.2, 30, 5000, 3.3, 22, 2313, 12312, 50, 3123123);

DROP TABLE IF EXISTS `data_unit`;
CREATE TABLE `data_unit`(
  id BIGINT AUTO_INCREMENT  PRIMARY KEY ,
  lm varchar(50) ,
  zwlm varchar(50) ,
  sjdw varchar(50) NULL,
  ssbm varchar(50) ,
  fxlm varchar(50) NULL

) ENGINE = InnoDB DEFAULT CHARSET =utf8;

DROP TABLE IF EXISTS `pipe_report`;
CREATE TABLE `pipe_report`(
  id BIGINT AUTO_INCREMENT  PRIMARY KEY ,
  gdh int ,
  gsjgsqbg varchar(50) NULL,
  gsjgsqbgfj varchar(50) NULL,
  gsjgpfwj varchar(50) NULL
) ENGINE = InnoDB DEFAULT CHARSET =utf8;

DROP TABLE IF EXISTS `pipe_trans_price`;
CREATE  TABLE `pipe_trans_price`(
  id BIGINT AUTO_INCREMENT  PRIMARY KEY ,
  gdh int ,
  kybggsjg float ,
  gdgssbgsjg float ,
  pfgsjg float ,
  zxgsjg float ,
  kybggsjg2 float ,
  gdgssbgsjg2 float ,
  pfgsjg2 float ,
  zxgsjg2 float 
) ENGINE = InnoDB DEFAULT CHARSET =utf8;

# INSERT INTO pipe_trans_price VALUES (1, 1, 212, 12, 12, 12323, 123, 123, 123, 123);

DROP TABLE IF EXISTS `project`;
CREATE TABLE `project`(
  id BIGINT AUTO_INCREMENT  PRIMARY KEY ,
  name varchar(50) ,
  time datetime ,
  oilorgas VARCHAR(50) ,
  zxs INT DEFAULT 1
) ENGINE = InnoDB DEFAULT CHARSET =utf8;

DROP  TABLE  IF EXISTS `user`;
CREATE  TABLE `user`(
  id BIGINT AUTO_INCREMENT  PRIMARY KEY ,
  username VARCHAR(50)  ,
  password VARCHAR(50) 
) ENGINE = InnoDB DEFAULT CHARSET =utf8;

INSERT INTO `user` VALUES (1, 'user1', '123456');

# INSERT INTO cd_basic_data VALUES (1,1,2,3,1,2,1,3,12,1,4,4,5,2,1,5,1,2,4,2,5,1,24,52,5,6,3,51,5,3,5,1,6,3,6,3,63,4,63,6,3,6,5,1,21,2,1,1,1,1,1,22,2,2,2,2,2);

# INSERT INTO fr_basic_data VALUES (1,1,2,3,4,5,2,3,4,5,3,4,5,3,2,5,2,5,3,63,3,6,3,63,63,7,8,85,32,7,2,5,7,1,6,6,3,1,2,3,1,2,31,4,5,1,5,1,5,1,5,6,7,1,4,5,1)