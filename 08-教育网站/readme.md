## 数据字典

```
1.首页
	banner
	产品介绍
	用户评价
2.技术
3.blog
4.联系
	地址+地图
	发送联系消息
5.关于我们
	
```
```
定义：
url		300字

admin_table			管理员用户表
ID
username	varchar(32)
password	varchar(32)

banner_table			焦点图表
ID
title		varchar(32)
description	varchar(300)
href		varchar(300)



intro_table			产品介绍表
ID
title		varchar(32)
description	varchar(200)
href		varchar(300)



custom_evaluation_table		用户评价表
ID
title		varchar(32)
description	varchar(200)
src		varchar(300)



news_table			新闻表
ID
title		varchar(100)
summary		varchar(500)
ico_src		varchar(300)
big_pic_src	varchar(300)
content		text



blog_table			博文表
ID
title		varchar(100)
pic_src		varchar(300)
pic_big_src	varchar(300)
summary		varchar(500)
content		text
post_time	timestamp
author		varchar(32)
n_view		int



contact_table			地址表
ID
street		varchar(50)
phone		varchar(20)
fax		varchar(20)
email		varchar(64)
weibo		varchar(40)
wx		varchar(40)
map?		?



msg_table			发送信息表
ID
name		varchar(16)
email		varchar(64)
phone		varchar(20)
subject		text



aboutus_table			关于我们表
ID
title		varchar(200)
content		text
pic_src		varchar(300)
href		varchar(300)




```
1. tb_node_banner 焦点图表
```
CREATE TABLE `tb_node_banner`  (
  `ID` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '标题',
  `description` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '描述',
  `href` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '连接',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '焦点图表' ROW_FORMAT = Dynamic;
```

2. tb_banner 焦点图表



```
cnpm install express express-static express-route cookie-parser cookie-session multer body-parser consolidate ejs mysql -D

```