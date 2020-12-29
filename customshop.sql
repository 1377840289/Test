
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `id` int(11) NOT NULL,
  `content` varchar(9999) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `title` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (1, '<p class=\"g-para\">\r\n            商城集团坚持“以信赖为基础、以客户为中心的价值创造”的经营理念，持续创新，不断为用户和合作伙伴创造价值。截至目前，商城集团拥有超过4.174亿活跃用户，致力于在不同的消费场景和连接终端上，通过强大的供应链、数据、技术以及营销能力，在正确的时间、正确的地点为客户提供最适合他们的产品和服务。\r\n        </p>\r\n        <p class=\"g-para\">\r\n            过去十六年，商城通过打造全球最佳客户体验和行业最优效率，赢得了客户的信赖。商城已完成全品类覆盖，是中国领先的电脑数码、、家电、消费品、生鲜等商，也是全球2600多家超亿元品牌和数十万个第三方商家的最大增量场。\r\n        </p>\r\n        <p class=\"g-para\">\r\n            商城是中国最大的电脑数码产品平台，致力于为用户打造极致购物体验。2018年下半年商城开始在全国二至六线城市开设商城电脑数码专卖店，目前已开业近400家。作为国内领先的产品及周边业务线上平台，商城与品牌商、运营商保持了长期紧密的合作，共同推动了5G生态发展，为消费者打造一站式购机服务体验。据中国电子信息产业发展研究院发布的报告显示，2020年一季度，商城以国内家电线上线下全渠道29.1%的份额，继续保持全渠道第一的家电平台地位。商城超市是中国线上线下领先的超市，目前已经成为众多知名国际快消品牌的全渠道最大商。截至2019年4月，商城超市累计下单量突破60亿单。商城超市打造“物竞天择”项目拓展全渠道业务，已经成功在全国多个城市、区域建立起了完善的全品类即时消费的生态。截至2020年5月，“物竞天择”共引入线下门店5万个，覆盖200个城市，超160个城市实现1小时达，打造2万个一小时生活圈。全品类发展的商城生鲜已成为中国线上最大的生鲜平台，目前拥有123万个SKU，可为消费者提供超过60个国家和地区的生鲜产品，并通过7FRESH七鲜超市、七鲜生活及友家铺子、区区购等业态，线上线下相结合，为消费者创造最佳体验。\r\n        </p>\r\n        <p class=\"g-para\">\r\n            在高增长潜力品类中，通过构建全球时尚和奢侈品生态体系，商城时尚正成为国内外顶级品牌开拓中国市场的重要合作伙伴。截至2020年6月，已有近200家奢侈品品牌旗舰店入驻商城。2019年5月底，全球顶级时尚垂直电商Farfetch官方入驻商城时尚。高速成长的商城美妆吸引了近万家店铺入驻，其中旗舰店占比超过4成。商城运动在提供品质运动消费的同时，提供互联网+体育的一站式解决方案。商城居家合作品牌数万家，为消费者提供高品质的家装、家具、家居日用产品及服务。2019年11月，商城正式推出国内首个全面专注于大进口业务的消费平台——商城国际，打造可信赖的进口商品一站式消费平台。\r\n        </p>\r\n        <p class=\"g-para\">\r\n            2019年起，商城全面发力本地化生活服务，围绕汽车维保、买房租房、生活旅行、拍卖消费、鲜花订购等场景，高效整合全产业链资源，为消费者提供了连接线上和线下、囊括实物和服务、覆盖日常生活各方面的丰富选择，带来“商品+服务”一体化消费体验。目前，商城汽车平台SKU数量超1亿，线下合作门店近3万家；超过800 家店铺入驻商城房产，“自营房产”模式开创行业先河；商城生活旅行与全球百余家主要航司建立合作，销售全球数万条航线机票；商城鲜花LBS门店30万家，实现全国同城1-2小时极速达；商城拍卖的海关拍卖连续3年保持全国海关合作规模及成交规模全网第一。\r\n        </p>\r\n        <p class=\"g-para\">\r\n            作为商城集团旗下专注于经营大健康业务的子公司，2019年5月，商城健康正式独立运营。目前，商城健康已经建立起业内布局最广、最完整的“互联网+医疗健康”生态。商城健康以成为“最受用户信赖的首席健康管家”为目标，打通线上线下，提供贴心便捷的就医购药体验和专业的健康管理服务，业务布局包括医药电商、互联网医疗、智慧医疗解决方案、健康服务等四大板块。商城健康旗下商城大药房已经成为国内线上线下收入规模最大的药房，商城互联网医院是业内增速最快的互联网医疗平台，日接诊量超过10万。\r\n        </p>\r\n        <p class=\"g-para\">\r\n            面对发展迅速的下沉新兴市场，商城在主站下沉的同时，推出创新业务“京喜”，并融合线上线下，以创新的社交、社群电商，为5亿以上的下沉新兴市场消费者带来优价好物。商城新通路已成为贯通1-6线，深入3线及以下市场，多场景覆盖的百万用户级B2B2C智能平台。通过布局商城便利店、名酒荟、母婴生活馆等 “六统一”门店，新通路持续加强线上线下的融合，升级传统中小业态，提升消费体验。“商城家电专卖店”数量已突破1.5万家，进一步实现对全国2.5万个乡镇、60万个行政村的全面覆盖。京喜业务以全面升级的商城拼购业务为核心，基于包括微信、QQ两大亿级平台在内的六大移动端渠道，通过高质价比的好货及丰富的社交玩法，打造全域社交电商平台。目前，京喜已布局全国100个产业带，通过京喜产业带厂直优品计划，深入供应链货品源头，省去中间环节，将源头好货直接送达消费者手中。\r\n        </p>\r\n        <p class=\"g-para\">\r\n            商城企业业务为政府、企业及事业单位提供智能化、定制化的采购管理解决方案，帮助政企客户提高采购效率，合理管控成本，目前拥有超800万活跃企业客户，是超91%世界500强企业的共同选择。\r\n        </p>\r\n        <p class=\"g-para\">\r\n            经过多年的积累，商城已经成为一家典型的以技术驱动为主的公司。在数字化的基础上，商城不断推进智能化能力建设，并通过大数据、人工智能等各项技术对外赋能，推动行业的降本增效，并打造最优的用户体验。目前，商城在C2M领域已经有了相对成熟的商业模式和开发能力，并通过C2M模式催生了众多贴合消费者需求、甚至引领消费者需求的新品类，比如游戏本、高性能轻薄本、带鱼屏等。商城是首家采用大数据和AI技术管控价格的平台，确保能够给到消费者最实、最稳、最具竞争力的价格。智能化、全渠道的履约网络能从不同场景和业态中选出成本最优、效率最高的订单生成路径和配送方案，具备其他平台所没有的后台履约能力。商城为实体打造了成熟的数字化运营体系，可以帮助线下店提升选址、选品、营销等环节的效率和准确度。目前，商城技术研发人员的数量已经超过员工总数的三分之一。\r\n        </p>\r\n        <p class=\"g-para\">\r\n            商城打造50余种服务项目，覆盖购物、售后、送装全链条，为消费者提供高品质的服务。商城客服始终坚持“客户为先”的服务理念，目前已拥有一万多名员工及中国电商行业规模最大、服务和技术能力领先的客服团队，成为商城的核心竞争力之一。2019年底，商城在过去十年累计向客服投入超过150亿元的基础上，将继续加大对客服的投入，为消费者提供更加优质的购物体验。\r\n        </p>', '<h3 class=\"title\">\r\n            <strong class=\"icon-font\">/</strong>商城：备受用户信赖、以供应链为基础的友好交易平台\r\n        </h3>');

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner`  (
  `id` int(11) NOT NULL,
  `imgurls` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES (1, 'http://localhost:3001/public/image/banner1.jpg');
INSERT INTO `banner` VALUES (2, 'http://localhost:3001/public/image/banner2.jpg');
INSERT INTO `banner` VALUES (3, 'http://localhost:3001/public/image/banner3.jpg');

-- ----------------------------
-- Table structure for carts
-- ----------------------------
DROP TABLE IF EXISTS `carts`;
CREATE TABLE `carts`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `screen` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `posterurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `info` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of carts
-- ----------------------------
INSERT INTO `carts` VALUES (2, 'gzp', 2, 120, 'http://img2.imgtn.bdimg.com/it/u=1452048128,4141241134&fm=26&gp=0.jpg', '梦想之城', '1');
INSERT INTO `carts` VALUES (3, 'gzp', 1, 198, 'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=122592915,2313113112&fm=26&gp=0.jpg', '图书', '2');
INSERT INTO `carts` VALUES (4, 'gzp', 1, 198, 'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=122592915,2313113112&fm=26&gp=0.jpg', '飞龙在天', '2');

-- ----------------------------
-- Table structure for collect
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect`  (
  `collectid` int(11) NOT NULL AUTO_INCREMENT,
  `goodsid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `goodsname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `imgurl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `goodsprice` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`collectid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of collect
-- ----------------------------
INSERT INTO `collect` VALUES (1, 19, 47, '苹果青春版', 'http://localhost:3001/public/image/1%20(5).jpg', '1980');
INSERT INTO `collect` VALUES (3, 13, 48, '苹果8 pro', 'http://localhost:3001/public/image/1%20(2).jpg', '3300');
INSERT INTO `collect` VALUES (4, 115, 48, '华为NORW', 'http://localhost:3001/public/image/1%20(21).jpg', '2980');
INSERT INTO `collect` VALUES (5, 115, 48, '华为NORW', 'http://localhost:3001/public/image/1%20(21).jpg', '2980');
INSERT INTO `collect` VALUES (6, 46, 49, 'HUAWEI P40 Pro 5G 全网通 8GB+256GB', 'http://localhost:3001/public/image/1%20(12).jpg', '1298');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `commentid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `content` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `creattime` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `goodsid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `info` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`commentid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (18, 'aaa', 'wowkk', '', '17', '');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `posterurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `score` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `actor` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `screen` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `isshow` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `wish` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `playinfo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `imgurl` varchar(855) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 206 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (5, '中国兵乓球拍', 'http://localhost:3001/public/image/1%20(26).jpg', '4', '120', '真实限量高科技', '170', '免运费', '特价', '假一赔十', 'http://localhost:3001/public/image/1%20(1).jpg,http://localhost:3001/public/image/1%20(31).jpg,http://localhost:3001/public/image/1%20(32).jpg');
INSERT INTO `goods` VALUES (13, '兵乓球拍', 'http://localhost:3001/public/image/1%20(27).jpg', '4', '330', '专业柔软可用性强出色', '340', '免运费', '特价', '假一赔十', 'http://localhost:3001/public/image/1%20(28).jpg,http://localhost:3001/public/image/1%20(29).jpg');
INSERT INTO `goods` VALUES (17, '羽毛球拍', 'http://localhost:3001/public/image/1%20(30).jpg', '4', '2800', '专业柔软可用性强出色升级版', '290', '免运费', '特价', '假一赔十', NULL);
INSERT INTO `goods` VALUES (18, '买一送一球拍', 'http://localhost:3001/public/image/1%20(28).jpg', '4', '298', '情侣球拍能力加强轻量型', '300', '免运费', '特价', '假一赔十', NULL);
INSERT INTO `goods` VALUES (19, '苹果青春版', 'http://localhost:3001/public/image/1%20(5).jpg', '1', '1980', '5000mAh超长续航 / 高通骁龙439八核处理器 / 4GB+64GB', '2000', '免运费', '特价', '假一赔十', NULL);
INSERT INTO `goods` VALUES (21, 'Redmi k20', 'http://localhost:3001/public/image/1%20(6).jpg', '1', '2980', ' 高通骁龙439八核处理器 / 4GB+64GB / 1200万AI后置相机', '3000', '免运费', '特价', '假一赔十', NULL);
INSERT INTO `goods` VALUES (22, 'Redmi Note8 Pro', 'http://localhost:3001/public/image/1%20(7).jpg', '1', '1980', '\'6400万四摄小金刚拍照新旗舰超强解析力，超震撼', '2000', '免运费', '特价', '假一赔十', NULL);
INSERT INTO `goods` VALUES (23, '吹风筒', 'http://localhost:3001/public/image/1%20(8).jpg', '3', '290', '低功率高旋转出风量强安全性高', '350', '免运费', '暂无活动', '假一赔十', NULL);
INSERT INTO `goods` VALUES (26, '蓝色手机壳', 'http://localhost:3001/public/image/1%20(9).jpg', '1', '98', '潮流非主流耐看', '130', '免运费', '暂无活动', '假一赔十', NULL);
INSERT INTO `goods` VALUES (27, '红色手机壳', 'http://localhost:3001/public/image/1%20(10).jpg', '1', '290', '漂亮性感气质好看', '340', '免运费', '特价', '假一赔十', NULL);
INSERT INTO `goods` VALUES (28, '黑色手机壳', 'http://localhost:3001/public/image/1%20(11).jpg', '1', '2980', '1200万AI后置相机', '3200', '免运费', '特价', '假一赔十', NULL);
INSERT INTO `goods` VALUES (46, '黄色裙子', 'http://localhost:3001/public/image/1%20(12).jpg', '2', '129', '个性时尚 / 细节出众 / 纤薄轻巧 / 多彩时尚', '158', '免运费', '特价', '假一赔十', NULL);
INSERT INTO `goods` VALUES (47, '运动鞋子', 'http://localhost:3001/public/image/1%20(13).jpg', '4', '292', '舒服耐用柔软', '318', '免运费', '特价', '假一赔十', NULL);
INSERT INTO `goods` VALUES (48, '外套女装冬天', 'http://localhost:3001/public/image/1%20(14).jpg', '2', '298', '保暖耐寒便宜低价出售', '308', '免运费', '特价', '假一赔十', NULL);
INSERT INTO `goods` VALUES (51, '美白滴水', 'http://localhost:3001/public/image/1%20(15).jpg', '3', '290', '美白迅速清凉安全', '318', '免运费', '特价', '假一赔十', NULL);
INSERT INTO `goods` VALUES (52, '安踏运动鞋', 'http://localhost:3001/public/image/1%20(16).jpg', '4', '298', '国产品牌值得信赖', '328', '免运费', '特价', '假一赔十', NULL);
INSERT INTO `goods` VALUES (53, '新款手表', 'http://localhost:3001/public/image/1%20(17).jpg', '3', '298', '霸气高端上档次', '310', '免运费', '特价', '假一赔十', NULL);
INSERT INTO `goods` VALUES (54, '项链', 'http://localhost:3001/public/image/1%20(18).jpg', '2', '120', '气质女生专用', '130', '免运费', '特价', '假一赔十', NULL);
INSERT INTO `goods` VALUES (113, '潮流男短袖', 'http://localhost:3001/public/image/1%20(19).jpg', '2', '298', '非主流/市场热选择', '310', '免运费', '特价', '假一赔十', NULL);
INSERT INTO `goods` VALUES (114, '男士短袖上衣', 'http://localhost:3001/public/image/1%20(20).jpg', '2', '298', '男士/花纹/多人选', '329', '免运费', '特价', '假一赔十', NULL);
INSERT INTO `goods` VALUES (115, '潮流高帮鞋', 'http://localhost:3001/public/image/1%20(21).jpg', '4', '298', '增高保暖', '339', '免运费', '特价', '假一赔十', NULL);
INSERT INTO `goods` VALUES (116, '黄色女装短袖', 'http://localhost:3001/public/image/1%20(22).jpg', '2', '298', ' 全面贴合，有效抵抗灰尘 / 鲜亮三种颜色可选，为爱机随时换装', '347', '免运费', '特价', '假一赔十', NULL);
INSERT INTO `goods` VALUES (117, '台式屏幕', 'http://localhost:3001/public/image/1 (1).png', '1', '500', '高端大屏游戏屏幕24K', '600', '免运费', '特价', '假一赔十', NULL);
INSERT INTO `goods` VALUES (203, '男士短袖上衣', 'http://localhost:3001/public/image/1%20(24).jpg', '2', '331', '美示衣服', '400', '免运费', '特价', '假一赔十', NULL);

-- ----------------------------
-- Table structure for m_user
-- ----------------------------
DROP TABLE IF EXISTS `m_user`;
CREATE TABLE `m_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `usersex` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `userage` int(11) DEFAULT NULL,
  `useraddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `userpwd` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `usertype` int(2) DEFAULT 1,
  `nickname` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 50 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of m_user
-- ----------------------------
INSERT INTO `m_user` VALUES (1, '13414444451', '男', 12, '广东深圳', '123456', 1, NULL);
INSERT INTO `m_user` VALUES (2, 'admin', '男', 30, '广东广州', '1', 2, NULL);
INSERT INTO `m_user` VALUES (41, '13566666611', NULL, NULL, NULL, '13566666611', 1, NULL);
INSERT INTO `m_user` VALUES (42, '13566666610', NULL, NULL, NULL, '13566666610', 1, NULL);
INSERT INTO `m_user` VALUES (43, '18059556736', NULL, NULL, NULL, '12345678', 1, NULL);
INSERT INTO `m_user` VALUES (44, '13788889999', NULL, NULL, NULL, '13788889999', 1, 'aaa');
INSERT INTO `m_user` VALUES (45, NULL, NULL, NULL, NULL, NULL, 1, 'asdasd');
INSERT INTO `m_user` VALUES (46, '137888899992', NULL, NULL, NULL, NULL, 1, 'asd');
INSERT INTO `m_user` VALUES (47, '13788889993', NULL, NULL, NULL, '13788889993', 1, '137888899992');
INSERT INTO `m_user` VALUES (48, '13977775555', NULL, NULL, NULL, '13977775555', 1, '阿松大');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ordernumber` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `goodsid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `creattime` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `info` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for orderdetail
-- ----------------------------
DROP TABLE IF EXISTS `orderdetail`;
CREATE TABLE `orderdetail`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ordernumber` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `goodsid` int(11) DEFAULT NULL,
  `screen` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `posterurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 132 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for shopcart
-- ----------------------------
DROP TABLE IF EXISTS `shopcart`;
CREATE TABLE `shopcart`  (
  `shopcartid` int(11) NOT NULL AUTO_INCREMENT,
  `uersid` int(11) DEFAULT NULL,
  `goodsid` int(11) DEFAULT NULL,
  `goodsname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `goodsnumber` int(11) DEFAULT NULL,
  `goodsintroduce` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `imgurl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `goodsprice` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`shopcartid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shopcart
-- ----------------------------
INSERT INTO `shopcart` VALUES (6, 47, 5, '华为荣耀10s', 10, '120Hz高帧率流速屏/ 索尼6400万前后六摄 / 6.67\'小孔径全面屏 / 最高可选8GB+256GB大存储 / 高通骁龙730G处理器 / 3D四曲面玻璃机身 / 4500mAh+27W快充 / 多功能NFC', 'http://localhost:3001/public/image/1%20(1).jpg', '1200');
INSERT INTO `shopcart` VALUES (7, 47, 51, '荣耀20青春版 PLUS', 3, '120Hz高帧率流速屏/ 索尼6400万前后六摄', 'http://localhost:3001/public/image/1%20(15).jpg', '2900');
INSERT INTO `shopcart` VALUES (8, 47, 19, '苹果青春版', 4, '5000mAh超长续航 / 高通骁龙439八核处理器 / 4GB+64GB', 'http://localhost:3001/public/image/1%20(5).jpg', '1980');
INSERT INTO `shopcart` VALUES (9, 48, 115, '华为NORW', 2, '全场景五摄像头 / 四闪光灯 / 3200万自拍 / 10 倍混合光学变焦，50倍数字变焦', 'http://localhost:3001/public/image/1%20(21).jpg', '2980');
INSERT INTO `shopcart` VALUES (10, 48, 51, '荣耀20青春版 PLUS', 4, '120Hz高帧率流速屏/ 索尼6400万前后六摄', 'http://localhost:3001/public/image/1%20(15).jpg', '2900');
INSERT INTO `shopcart` VALUES (11, 49, 46, 'HUAWEI P40 Pro 5G 全网通 8GB+256GB', 3, '个性时尚 / 细节出众 / 纤薄轻巧 / 多彩时尚', 'http://localhost:3001/public/image/1%20(12).jpg', '1298');
INSERT INTO `shopcart` VALUES (12, 49, 28, '小米CC9&小米CC9美图定制版 标准高透贴膜', 1, '1200万AI后置相机', 'http://localhost:3001/public/image/1%20(11).jpg', '2980');

-- ----------------------------
-- Table structure for useradrress
-- ----------------------------
DROP TABLE IF EXISTS `useradrress`;
CREATE TABLE `useradrress`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `jieshouname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `jieshouaddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `jieshoutel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `userid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of useradrress
-- ----------------------------
INSERT INTO `useradrress` VALUES (1, '郭试试a', '广东sadasd', '13566666661', '35', 2);
INSERT INTO `useradrress` VALUES (2, '陈安安', '深圳', '13566666626', '35', 1);
INSERT INTO `useradrress` VALUES (3, 'sad', 'sadasdasdasdasd', '13666666668', '35', 1);
INSERT INTO `useradrress` VALUES (4, 'sad', '啊实打实的', '13854444444', '35', 1);
INSERT INTO `useradrress` VALUES (5, '郭问', '啊萨达撒啊问问', '13666666666', '27', 2);
INSERT INTO `useradrress` VALUES (6, '郭安安', '啊萨达撒啊问问', '13444444444', '1', 1);
INSERT INTO `useradrress` VALUES (7, 'dds', '过啊阿斯顿了', '13566666611', '41', 1);
INSERT INTO `useradrress` VALUES (8, 'sss', '刚刚各色', '13566666610', '42', 1);
INSERT INTO `useradrress` VALUES (9, '黄棒棒', '福建省', '18059556736', '43', 1);

SET FOREIGN_KEY_CHECKS = 1;
