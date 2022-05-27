CREATE TABLE `study`  (
  `id` int(11) NOT NULL,
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `score` int(11) DEFAULT NULL,
  `credit` float(10, 1) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;


INSERT INTO `study` VALUES (1, '2021-2022-1', 'Web前端开发', 92, 2.5);
INSERT INTO `study` VALUES (2, '2020-2021-1', '大学英语4', 86, 4.0);
INSERT INTO `study` VALUES (3, '2020-2021-2', '大学物理B', 91, 5);
INSERT INTO `study` VALUES (4, '2020-2021-1', '计算机导论', 84, 2.0);
INSERT INTO `study` VALUES (5, '2020-2021-1', '心理健康教育', 86,2.0 );
INSERT INTO `study` VALUES (6, '2021-2022-1', '物理实验B', 75, 2.0);
INSERT INTO `study` VALUES (7, '2020-2021-1', '体育', 97, 1.0);
INSERT INTO `study` VALUES (8, '2020-2021-1', '高等数学A1', 85, 5.0);
INSERT INTO `study` VALUES (9, '2020-2021-2', '高等数学A2', 86, 5.0);
INSERT INTO `study` VALUES (10, '2020-2021-1', '线性代数B', 88, 2.5);
INSERT INTO `study` VALUES (11, '2020-2021-2', '大学英语5', 79, 4.0);
INSERT INTO `study` VALUES (12, '2021-2022-1', '概率论与数理统计B', 90, 2.5);
INSERT INTO `study` VALUES (14, '2020-2021-2', '当代科技伦理学', 95, 2.0);
INSERT INTO `study` VALUES (15, '2020-2021-2', '数据库原理及其应用技术', 90, 2.0);
INSERT INTO `study` VALUES (16, '2021-2022-1', '检测技术与仪器', 85, 2.0);
INSERT INTO `study` VALUES (17, '2021-2022-1', '英美文学简史及作品欣赏', 95, 2.0);
INSERT INTO `study` VALUES (18, '2020-2021-2', '高级语言程序设计', 88, 4.0);
INSERT INTO `study` VALUES (19, '2021-2022-1', '数据结构与算法', 88, 4.0);
INSERT INTO `study` VALUES (20, '2020-2021-2', '面向对象程序设计(Java)', 92, 3.5);
INSERT INTO `study` VALUES (22, '2021-2022-1', '离散数学', 95, 3.5);
INSERT INTO `study` VALUES (23, '2021-2022-1', '计算机网络原理', 88, 3.5);
INSERT INTO `study` VALUES (24, '2021-2022-1', 'Python程序设计', 85, 2.0);
INSERT INTO `study` VALUES (25, '2020-2021-2', '数字逻辑电路', 95, 3.0);



CREATE TABLE `science`  (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of science
-- ----------------------------
INSERT INTO `science` VALUES (1, '高级语言程序设计————加密解密系统', '已完成');
INSERT INTO `science` VALUES (2, '数据结构课设————富文本编辑器', '已完成');
INSERT INTO `science` VALUES (3, '数据结构课设————导游系统', '已完成');
INSERT INTO `science` VALUES (4, 'python课设————人脸识别', '已完成');
INSERT INTO `science` VALUES (5, '浙游诗画APP开发', '进行中');


CREATE TABLE `reward`  (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `level` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reward
-- ----------------------------
INSERT INTO `reward` VALUES (1, '社会实践缘溪渔公益队省百强', '省');
INSERT INTO `reward` VALUES (2, '2021-2022-1中国计量大学优秀学生一等奖学金', '校');
INSERT INTO `reward` VALUES (3, '2020-2021-2中国计量大学优秀学生二等奖学金', '校');
INSERT INTO `reward` VALUES (4, '2020-2021-1中国计量大学优秀学生三等奖学金', '校');
INSERT INTO `reward` VALUES (5, '2021-2022-1学年三好学生', '校');
INSERT INTO `reward` VALUES (6, '2021浙江省大学生健美操比赛男子三人操第四', '省');




-- ----------------------------
-- Table structure for food
-- ----------------------------
DROP TABLE IF EXISTS `food`;
CREATE TABLE `food`  (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`feature` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `info` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of food
-- ----------------------------
INSERT INTO `food` VALUES(1,'象山大黄鱼','野生最为稀少','大黄鱼黄鱼分布于黄海中部以南至琼州海峡以东的中国大陆近海及朝鲜西海岸。雷州半岛以西也偶有发现。中国沿海的大黄鱼可分为3个种群:①东海北部、中部群。分布于黄海南部至东海中部，包括吕泗洋、岱衢洋、猫头洋、洞头洋至福建嵛山岛附近。②闽、粤东群。主要分布在东海南部、台湾海峡和南海北部（嵛山岛以南至珠江口）。这一种群又分为北部和南部两大群体。③粤西群。主要分布于珠江口以西至琼州海峡的南海区。生物习性　　大黄鱼为暖温性近海集群洄游鱼类,主要栖息于80米以内的沿岸和近海水域的中下层。产卵鱼群怕强光,喜逆流,好透明度较小的混浊水域。黎明、黄昏或大潮时多上浮，白昼或小潮时下沉。成鱼主要摄食各种小型鱼类及甲壳动物（虾、蟹、虾蛄类）。生殖盛期摄食强度显著降低；生殖结束后摄食强度增加。幼鱼主食桡足类、糠虾、燐虾等浮游动物。','img/food1.jpeg');
INSERT INTO `food` VALUES(2,'南田泥螺','南田岛地域特产','“南田泥螺”证明商标的产品，其生产地域范围为浙江省宁波市象山县南田岛特定生产区域，位于象山半岛南沿，处北纬29。09，，东经121。54，。象山县南田岛即鹤浦镇，岛屿面积102.8平方公里，浅海区域19.5万亩，滩涂2万亩。滩涂潮流缓慢，底质为泥质，底栖生物丰富，近海水质清新，盐度适中。更兼产地内气候条件绝佳，养殖条件得天独厚，非常适合泥螺生长，据悉，南田泥螺丰产年产量可达到500公斤∕亩左右。成功获批地理标志证明商标，对于全面提升扩大南田泥螺的影响力和市场占有率，加快该县水产品品牌建设，进一步推进渔业产业化进程，都有着十分重要而积极的意义。泥螺，又称吐铁，呈螺圆形，壳薄而脆，沿海泥涂均产，以南田涂、水湖涂最盛，质佳。“吐铁”名称的来历，是由于泥螺生长在海涂上“吐舌含沙，沙黑如铁”，每年要到桃花开时，泥螺的“铁”才吐完，肚内清洁，味就美了。','img/food2.jpeg');
INSERT INTO `food` VALUES(3,'象山红美人','橘子爱马仕','红美人”柑橘除了口感绝佳外，1个柑橘果肉含有1人1天所需的维生素C，提高身体抵抗力，有效地清除体内对健康有害的自由基，还可辅助美容；维生素A含量高，能缓解患有夜盲症者；此柑橘富含柠檬酸，可缓解人体疲劳。红美人柑橘还可润肺、止咳、化痰和止渴，橘子皮可理气燥湿、健脾和胃。检测证实，“红美人”柑橘还含有黄酮类物质，具有抗炎症、强化血管和抑制凝血的功效。故冬季进补水果中，“红美人”柑橘优选。','img/food3.jpeg');




DROP TABLE IF EXISTS `scene`;
CREATE TABLE `scene`  (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`rank` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `info` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scene
-- ----------------------------
INSERT INTO `scene` VALUES(1,'象山影视城','AAAA级','象山影视城位于浙江省宁波市象山县新桥镇大塘港生态休闲旅游区块宁波影视文化产业区内，总占地面积1176亩。以灵岩山为大背景，围绕游客体验性、影视趣味性、旅游互动性，打造中国首个实景电影主题乐园。 自2005年开城以来，象山影视城相继接待拍摄《神雕侠侣》《赵氏孤儿》《西游记》《大轰炸》《琅琊榜》《芈月传》《太子妃升职记》《三生三世十里桃花》《长安十二时辰》《斗罗大陆》 [65] 《青簪行》 [66] 《庆余年》 [67] 等1500多部影视作品 [43] 。同时，影视城摄影棚面积超35万平方米，居全国第一；年接待剧组量过百，居全国第二；年接待游客量突破200万人次，居全国影视基地第三。 [68] 除大量明星拍戏外，还不定期举行影迷见面会，让游客“零距离”接触明星。 [1-2] [4-6] 游客在影城中可亲身体验电影声音合成制作，木偶戏、皮影戏、励志魔幻剧、“天地英雄”情景剧、影视梦工厂体验剧等，过年期间有影视庙会，早春时节有踏青节、风筝节，“五一”、“十一”有影视嘉年华，暑期盛夏有万人狂欢泼水节等等。截至2019年，影视城累计接待游客超过1500万人次。 象山影视城是中国十大影视基地、国家AAAA级景区、中国魅力景区，还荣膺“亚洲金旅奖·首批最具特色魅力旅游目的地”“2017年度旅游景区人气奖”称号。2015年至2017年，影视嘉年华旅游节庆连续荣获宁波旅游节社会办节一等奖。 [7] 象山影视城已逐步形成场景制作、服装道具、群众演员、吃住服务、购物消费影视旅游的产业链，品牌价值达102.6亿元 [44] ，“宁波品牌百强榜”文旅类第一名 [8] 。','img/scene1.jpeg');
INSERT INTO `scene` VALUES(2,'松兰山','AAAA级','宁波松兰山滨海旅游度假区是国家4A级旅游区、省级旅游度假区，位于浙江省宁波市象山县，总面积约31.22平方公里，度假区山海交融，岬湾众多，沙滩连绵，负氧离子含量每立方厘米高达14700个，誉称“天然氧吧”。 度假区现有各类酒店及农家乐20余家，在建五星级酒店2家（喜来登、希尔顿酒店），开放经营性沙滩2个，在建有亚帆中心、东海铭城、白沙湾度假村等一批重大功能性项目，拥有度假酒店、海鲜美食、婚恋摄影、汽车露营、温泉养生、海上运动、旅游演艺等业态产品。是华东地区陆岸仅有的一处以大海为主题，集休闲、娱乐、运动、避暑、度假、会议等为一体的综合性滨海旅游度假胜地，被誉为“东方不老岛”上的一颗明珠。','img/scene2.jpeg');
INSERT INTO `scene` VALUES(3,'石浦渔港古城','AAAA级','石浦渔港古城，又名荔港，呈东北西南走向，为“月牙”状封闭型港湾，面积27平方公里，水深4-33米，可泊万艘渔船，行万吨海轮，港内风平浪静，是东南沿海著名的避风良港，兼渔港、商港之利，系全国四大渔港之一。 石浦是中国最早海洋渔业发祥地之一，秦汉时即有先民在此渔猎生息，唐宋时已成为远近闻名的渔商埠，海防要塞，浙洋中路重镇。石浦古城沿山而筑，依山临海，人称“城在港上，山在城中”。它一头连着渔港、一头深藏在山间谷地，城墙随山势起伏而筑，城门就形而构，居高控港是“海防重镇”石浦古城雄姿的主要特征。老屋梯级而建，街巷拾级而上，蜿蜒曲折。','img/scene3.jpeg');
INSERT INTO `scene` VALUES(4,'花岙岛','自然风景','花岙岛海湾众多，地貌雄奇，是抗清名将张苍水聚兵处。长期以来因交通不便，游人罕至。 花岙岛以自然景观为主，素有“海上仙子国、人间瀛洲城”之称，悬壁陡峭，岩石柱颇多，号称“石林”，岩层或巍然挺拔，或斜倚横仆，尤其是海蚀地貌景观堪称东南一绝：宏伟壮丽的万柱崖、琳仙屿，神奇的洞穴，雄伟的大佛头山，神秘的伟人座像，奇特的大小岬山，五彩鲜艳的鹅卵石铺在了清水岙石滩，环境幽雅秀丽。而张苍水抗清兵营遗址，则又为花岙岛增添了一层历史沧桑感。','img/scene4.jpeg');




DROP TABLE IF EXISTS `custom`;
CREATE TABLE `custom`  (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`classify` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `info` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of custom
-- ----------------------------
INSERT INTO `custom` VALUES(1,'象山开渔节','节日','浙江象山县是一个中国著名的滨海城市。每年一届在此举行的“开渔节”开创了中国独一无二的海洋庆典活动，具有浓郁的渔乡风情和海滨旅游特色，是中国著名民间节日之一。东海渔民自古以来就有开捕祭海的民俗。当地政府和有识之士将渔民的自发仪式上升为一个海洋文化的盛大典礼，集文化、旅游、经贸活动于一体，赋予其丰富的文化内涵和鲜明的渔乡特色。传统的祭海仪式表达了渔民出海平安的祝愿；“蓝色保护志愿者”行动体现了人们保护海洋生态环境的意识；而锣鼓齐鸣、千帆竞发的开渔盛况吸引了来自全国的数十万游客。','img/custom1.jpeg');
INSERT INTO `custom` VALUES(2,'陈汉章','名人','陈汉章(1864-1938)，谱名得闻，字云从，别号倬云，晚号伯弢，浙江省宁波市象山县东陈乡东陈村人。其一生自始至终勤奋自学和刻苦研读；一生致力经史子集“四部”的研究；一生弘扬国学的发展和人才的培养；一生充满爱国情怀和民族自豪感。他是国立北京大学、中央大学的历史系主任，经史学家，教育家，一代鸿儒，国学大师。','img/custom2.jpeg');


DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1@qq.com', 'guest1', '1');
INSERT INTO `user` VALUES ('test@qq.com', 'test', 'test');


DROP TABLE IF EXISTS `logstatus`;
CREATE TABLE `logstatus`  (
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of logstatus
-- ----------------------------
INSERT INTO `logstatus` VALUES ('wfs777');
