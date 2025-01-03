/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80033
 Source Host           : localhost:3306
 Source Schema         : online_bookstore

 Target Server Type    : MySQL
 Target Server Version : 80033
 File Encoding         : 65001

 Date: 28/12/2024 01:08:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, '888888', 'admin');

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `authors` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `description` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `isbn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `on_shelf` bit(1) NOT NULL,
  `price` double NULL DEFAULT NULL,
  `publish_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `publisher` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 105 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (9, '刘慈欣', '文化大革命如火如荼进行的同时。军方探寻外星文明的绝秘计划“红岸工程”取得了突破性进展。但在按下发射键的那一刻，历经劫难的叶文洁没有意识到，她彻底改变了人类的命运。地球文明向宇宙发出的第一声啼鸣，以太阳为中心，以光速向宇宙深处飞驰……\n\n四光年外，“三体文明”正苦苦挣扎——三颗无规则运行的太阳主导下的百余次毁灭与重生逼迫他们逃离母星。而恰在此时。他们接收到了地球发来的信息。在运用超技术锁死地球人的基础科学之后。三体人庞大的宇宙舰队开始向地球进发……\n\n人类的末日悄然来临。', '9787536692930', b'1', 23, '2008-1', '重庆出版社', '三体', '/images/s2768378.jpg');
INSERT INTO `book` VALUES (10, '刘慈欣', '三体人在利用魔法般的科技锁死了地球人的科学之后，庞大的宇宙舰队杀气腾腾地直扑太阳系，意欲清除地球文明。\r\n\r\n面对前所未有的危局，经历过无数磨难的地球人组建起同样庞大的太空舰队，同时，利用三体人思维透明的致命缺陷，制订了神秘莫测的“面壁计划”，精选出四位“面壁者”。秘密展开对三体人的反击。\r\n\r\n三体人自身虽然无法识破人类的诡谲计谋，却依靠由地球人中的背叛者挑选出的“破壁人”，与“面壁者”展开智慧博弈……\r\n\r\n“', '9787536693968', b'1', 32, '2008-5', '2008-5', '三体Ⅱ : 黑暗森林', '/images/s3078482.jpg');
INSERT INTO `book` VALUES (15, '[韩] 韩江', '亚洲首位国际布克文学奖得主获奖作品\n\n我在写作时，经常会思考这些问题：人类的暴力能达到什么程度；如何界定理智和疯狂；我们能在多大程度上理解别人。我希望《素食者》可以回答我的这些问题。我想通过《素食者》刻画一个誓死不愿加入人类群体的女性。\n\n——韩江在国家布克文学奖颁奖礼上的 致辞\n', '9787541160868', b'1', 48, '2021-9', '四川文艺出版社', '素食者', '/images/s33956462.jpg');
INSERT INTO `book` VALUES (16, '马伯庸', '大唐天宝十四年，长安城的小吏李善德突然接到一个任务：要在贵妃诞日之前，从岭南运来新鲜荔枝。荔枝“一日色变，两日香变，三日味变”，而岭南距长安五千余里，山水迢迢，这是个不可能完成的任务，可为了家人，李善德决心放手一搏：“就算失败，我也想知道，自己倒在距离终点多远的地方。”\n\n《长安的荔枝》是马伯庸备受好评的历史小说。', '9787572608582', b'1', 45, '2022-10', '湖南文艺出版社', '长安的荔枝', '/images/s34327482.jpg');
INSERT INTO `book` VALUES (18, '崔宁 编', '《高职高专计算机系列规划教材•全国高职高专计算机立体化系列规划教材:ASP.NET动态网站开发》采用项目教学法，通过一个实际开发的网站&#34;图书馆在线管理系统&#34;介绍了基于c#的ASP.NET程序设计的基础...', '9787301205655', b'1', 30, '2012-5', '北京大学出版社', 'ASP.NET动态网站开发', '/images/ASP.NET动态网站开发.jpg');
INSERT INTO `book` VALUES (19, '《北大讲座》编委会 编', '《北大讲座(第24辑)》以北大团委在北京大学主持的讲座内容为主，以北大教师的讲座为主，内容涉及政治学、经济、法律、历史、新闻传播、公共管理、社会学及自然科学等。内容丰富，语言生动，可读性强。', '9787301205853', b'1', 39, '2012-5', '北京大学出版社', '北大讲座（第二十四辑）', '/images/北大讲座（第二十四辑）.jpg');
INSERT INTO `book` VALUES (20, 'N/A', '不同寻常的一天，ISBN：9787541441509，作者：（英）巴特勒 著，（英）麦克诺顿 绘，谭旭东，谢毓洁 译', '9787541441509', b'1', 13.5, '2012-5', 'N/A', '不同寻常的一天', '/images/不同寻常的一天.jpg');
INSERT INTO `book` VALUES (21, '王瑜 编', '《21世纪全国高职高专物流管理系列实用规划教材:仓储与配送管理项目式教程》共设置了仓储与配送系统规划设计、仓储与配送商务管理、仓储与配送质量管理、入库作业、信息技术应用、在库管理、出库与盘点作业、拣货...', '9787301206560', b'1', 38, '2012-5', '北京大学出版社', '仓储与配送管理项目式教程', '/images/仓储与配送管理项目式教程.jpg');
INSERT INTO `book` VALUES (22, '黄凤祁', '《操盘大赢家(2选股就选黑马股)》以捕捉黑马股这一市场操盘理念为核心，以最大限度地获取股市利润为目的，全面、详细地讲解了在参与黑马股实战中所需的各种知识、技术、技巧和策略。全书共分两篇，上篇为“翻倍黑...', '9787564213329', b'1', 36, '2012-6', '上海财经大学出版社', '操盘大赢家', '/images/操盘大赢家.jpg');
INSERT INTO `book` VALUES (23, '林之达', '《传播心理学教程》基于国家课题的最新研究成果，把心理作为传播致效过程中一个不可或缺的逻辑环。在考察、揭示传播信息被受传者心理选择、内化为心理能，心理能外化为言行做功的过程中，”献给读者一把开启他人心灵...', '9787301200049', b'1', 28, '2012-5', '北京大学出版社', '传播心理学教程', '/images/传播心理学教程.jpg');
INSERT INTO `book` VALUES (24, '宁广华', '《词韵人生》收录了作者1983年至2011年间的部分词作，共计59首。主要以其经历的四个工作阶段为背景，以词为表现形式，刻画了真实生活的所见所闻，反映了作者的志情感受和成长感悟，展现了作者热爱生活、热...', '9787540228286', b'1', 26, '2012-6', '北京燕山出版社', '词韵人生', '/images/词韵人生.jpg');
INSERT INTO `book` VALUES (25, '王伟，张平　主编', '《当我们走在异国他乡:中西舞蹈文化的对话》记录了首批留学师生的感悟，价值在于它是我国第一部舞蹈艺术专业公派留学师生的思想成果，在于它的真情、真事、真悟和真论。我们的生命看似是一个陌生的道路，时时都会面...', '9787505975446', b'1', 32, '2012-5', '中国文联出版社', '当我们走在异国他乡', '/images/当我们走在异国他乡.jpg');
INSERT INTO `book` VALUES (26, '宏凡', '技术指标分析中存在着“兼听则明，偏信则暗”的情况。在实际交易过程中，几乎每一个投资者都曾经遇见过这样的问题：有时运用某种指标，可以得出非常准确的投资判断，但是，有时用同一种指标却不能得到理想的分析结论...', '9787564213404', b'1', 32, '2012-6', '上海财经大学出版社', '短线必杀技', '/images/短线必杀技.jpg');
INSERT INTO `book` VALUES (27, 'N/A', '《多文化与国家建设》汇集了2011年中国世界民族学会与天津师范大学联合主办的&#34;多文化与国家建设&#34;学术研讨会的论文成果。在这部作品中，来自于政治学和民族学界的学者们就多民族国家所面临的多文化主义，...', '9787201074757', b'1', 78, '2012-4', '天津人民出版社', '多文化与国家建设', '/images/多文化与国家建设.jpg');
INSERT INTO `book` VALUES (28, '盛建武', '唐卡是藏族文化中独具特色的艺术形式，内容多以宗教题材为主，涉及藏族的社会历史和文化生活诸多领域，通常以绘画形式出现。四川博物院藏11幅整套《格萨尔》唐卡，以数百个故事场景，描绘了藏族史诗英雄格萨尔波澜...', '9787101085136', b'1', 1800, '2012-3', '中华书局', '格萨尔唐卡研究', '/images/格萨尔唐卡研究.jpg');
INSERT INTO `book` VALUES (29, '雷兴虎 编', '《法学精品课程系列教材•民商法学系列:公司法学(第2版)》借鉴和吸收了国外公司立法的成功经验及学术研究的最新成果，并全面、系统地梳理和总结了我国公司立法最新进展及近几年的学术研究成果，在完整、准确地阐...', '9787301195321', b'1', 42, '2012-5', '北京大学出版社', '公司法学', '/images/公司法学.jpg');
INSERT INTO `book` VALUES (30, 'N/A', '《国学研究(第29卷)》是在中国最具影响力的国学论文集刊。国学，一国所固有之学术也，就是中华传统治学方法，是指以儒学为主体中国传统文化与学术。国学以儒家哲学为主流，以思想分，分为先秦诸子、儒道释三家等...', '9787301206652', b'1', 60, '2012-6', '北京大学出版社', '国学研究（第29卷）', '/images/国学研究（第29卷）.jpg');
INSERT INTO `book` VALUES (31, '胡正良', '《海事法(修订本)》从海事法的基本理论出发，以我国《海商法》、《海事诉讼特别程序法》的有关规定和相关国际海事条约、国际惯例、民间规则，以及最高人民法院司法解释为主线，理论联系实际，全面、系统、深入地论...', '9787301204009', b'1', 88, '2012-5', '北京大学出版社', '海事法', '/images/海事法.jpg');
INSERT INTO `book` VALUES (32, '曹雪芹', '《中华经典小说注释系列:红楼梦(套装全2册)》以贾宝玉、林黛玉二人的爱情悲剧为线索，展现了广阔的社会现实生活，生动描述了多姿多彩的世俗人情，淋漓尽致地反映了一个封建大家族的方方面面，是一部现实主义和浪...', '9787101086591', b'1', 78, '2012-5', '中华书局', '红楼梦', '/images/红楼梦.jpg');
INSERT INTO `book` VALUES (33, 'N/A', '《普通高等教育&#34;十二五&#34;规划教材•全国高职高专规划教材•财务会计系列:会计电算化实务》注重学生实际操作能力的培养，将学生操作中经常出现的问题在教材中做重点提示，进行分析，并提出具体的解决方法。《普通高...', '9787301205945', b'1', 35, '2012-6', '北京大学出版社', '会计电算化实务', '/images/会计电算化实务.jpg');
INSERT INTO `book` VALUES (34, '邹旻 编', '《全国本科院校机械类创新型应用人才培养规划教材:机械设计基础实验及机构创新设计》分为基础性实验、综合性实验、设计性实验、大学生机械创新设计作品介绍和附录五个部分，内容涉及机械原理、机械设计、理论力学、...', '9787301206539', b'1', 28, '2012-6', '北京大学出版社', '机械设计基础实验及机构创新设计', '/images/机械设计基础实验及机构创新设计.jpg');
INSERT INTO `book` VALUES (35, '王悦', '《集团转移定价、定价参与和组织后果-理论分析与实证研究》，本书主要以权变理论为基础，并融合交易成本经济学、心理学和行为学的研究成果，建立了包括定价方法和定价参与在内的转移定价的研究框架。', '9787564213442', b'1', 29, '2012-6', '上海财经大学出版社', '集团转移定价、定价参与和组织后果', '/images/集团转移定价、定价参与和组织后果.jpg');
INSERT INTO `book` VALUES (36, 'N/A', '《交通事故车辆安全技术鉴定教程》由长期从事机动车安全技术鉴定、道路交通事故司法鉴定的教师和专家共同编写而成，主要内容包括道路交通事故鉴定技术；交通事故车辆转向系统、制动系统、行驶系统、传动系统安全技术...', '9787301206164', b'1', 45, '2012-5', '北京大学出版社', '交通事故车辆安全技术鉴定教程', '/images/交通事故车辆安全技术鉴定教程.jpg');
INSERT INTO `book` VALUES (37, '张守文 编', '《21世纪法学规划教材:经济法学(第5版)》具体介绍了市场规制法、宏观调控法等的细则。国家从整体经济发展的角度对具有社会公共性的经济活动进行干预，管理和调控的法律法规都可以叫做经济法，它是经济学研究的...', '9787301198230', b'1', 45, '2012-5', '北京大学出版社', '经济法学', '/images/经济法学.jpg');
INSERT INTO `book` VALUES (38, '张群成 编', '《21世纪全国高职高专建筑设计专业技能型规划教材:居住区景观设计》根据景观设计和环境艺术设计专业特点编写而成，每个章节设有教学目标、教学要求，分别从不同的设计领域，系统而完整地讲解了居住小区景观设计的...', '9787301205877', b'1', 47, '2012-5', '北京大学出版社', '居住区景观设计', '/images/居住区景观设计.jpg');
INSERT INTO `book` VALUES (39, 'N/A', '跨过青春这道坎，ISBN：9787505974906，作者：梦露', '9787505974906', b'1', 26, '2012-2', '中国文联出版社', '跨过青春这道坎', '/images/跨过青春这道坎.jpg');
INSERT INTO `book` VALUES (40, '莱瑞·克莱布', '你不必假装一切都很好，当你所面对的现实和内心感受其实并没有那么好时；\n你不必假装人际关系很和谐，当你的家庭或职场互动其实并没有那么让你满意时；\n你不必假装曾经的伤痛已经成为过去，当挣扎和困惑其实并没有...', '9787510428296', b'1', 29, '2012-6', '新世界出版社', '里外更新', '/images/里外更新.jpg');
INSERT INTO `book` VALUES (41, '卢作孚', '《卢作孚文集(增订本)》主要选辑了卢作孚的经济论著及与经济有关的教育方面的论述，以此来反映卢作孚的爱国主义思想和社会观，以及他的社会经济思想与经营管理思想。因为这些思想观点和搞经济建设的经验在一定程度...', '9787301200469', b'1', 78, '2012-5', '北京大学出版社', '卢作孚文集', '/images/卢作孚文集.jpg');
INSERT INTO `book` VALUES (42, 'N/A', '《嘛叫天津人》是孙福海继《心中的歌吟》、《没事偷着乐》、《逗你没商量》之后的又一力作。该书用天津人所熟悉的语言和表达风格，叙事行文，讲述天津文艺名家非同凡响的历程，感叹精彩的人生，讴歌天津著名文艺家的...', '9787201075327', b'1', 48, '2012-5', '天津人民出版社', '嘛叫天津人', '/images/嘛叫天津人.jpg');
INSERT INTO `book` VALUES (43, 'N/A', '茫，ISBN：9787505974890，作者：王晖', '9787505974890', b'1', 23, '2012-2', '中国文联出版社', '茫', '/images/茫.jpg');
INSERT INTO `book` VALUES (44, '杨豪良', '《普通书法教育》从书法简史、书写工具、书法技法、书法创作、书法美学、书法欣赏、硬笔书法、名碑（帖）选品等八十方面，对书法教育选门学科进行了全面系统的阐述，帮助读者详细了解书法知识，提高书写技艺，在书法...', '9787301204870', b'1', 38, '2012-5', '北京大学出版社', '普通书法教育', '/images/普通书法教育.jpg');
INSERT INTO `book` VALUES (45, 'N/A', NULL, '9787541441493', b'1', 13.5, '2012-5', '', '奇思妙想的小熊帮波', '/images/奇思妙想的小熊帮波.jpg');
INSERT INTO `book` VALUES (46, '关善勇 编', '《21世纪高职高专财经类能力本位型规划教材•校企合作精品教材:企业管理实务》是21世纪高职高专财经类能力本位型规划教材之一。《21世纪高职高专财经类能力本位型规划教材•校企合作精品教材:企业管理实务》...', '9787301206577', b'1', 28, '2012-6', '北京大学出版社', '企业管理实务', '/images/企业管理实务.jpg');
INSERT INTO `book` VALUES (47, '佟立', '《全球化与后现代思潮研究》依据国内外最新的有关文献，用比较的方法，对全球化与后现代思潮进行分析研究。从历时态考察全球化的内含、起源、发展和影响，从共时态考察全球化与后现代主义的关系。宏观考察全球化背景...', '9787201075112', b'1', 35, '2012-5', '天津人民出版社', '全球化与后现代思潮研究', '/images/全球化与后现代思潮研究.jpg');
INSERT INTO `book` VALUES (48, '朱羿锟', '《21世纪法学系列教材•民商法系列•商法学:原理•图解•实例(第3版)》是21世纪法学系列教材（民商法系列）之一，融商法原理、图解和实例于一体，渗透着新锐学人的严谨务实与创新的学术精神，匠心独运，深入...', '9787301186367', b'1', 69, '2012-5', '北京大学出版社', '商法学', '/images/商法学.jpg');
INSERT INTO `book` VALUES (49, 'N/A', '《21世纪高职高专财经类能力本位型规划教材:商务谈判》以实际的商务谈判活动过程为基本线索，内容涉及商务谈判的基本概念和商务谈判的准备、开局、报价、磋商、让步、成交、签约，以及国际商务谈判的相关内容，环...', '9787301205433', b'1', 26, '2012-5', '北京大学出版社', '商务谈判', '/images/商务谈判.jpg');
INSERT INTO `book` VALUES (50, '胡剑锋', '《神经科学对现代社会的影响》在阐述神经科学基本概念的基础上，从人类经济行为、伦理道德、法律制度、艺术活动、教育发展等方面，广泛探讨神经科学对当今社会所造成的深刻影响，汇总目前国际国内神经科学与社会科学...', '9787301205457', b'1', 38, '2012-5', '北京大学出版社', '神经科学对现代社会的影响', '/images/神经科学对现代社会的影响.jpg');
INSERT INTO `book` VALUES (51, '李经国 编', '《师友笔下的冯其庸》为大家全面地了解、认识冯其庸同志的学术研究、艺术创作提供了很好的机会，其庸同志多才艺，不只书画创作独具风格，就是西部摄影作品集，那雄浑的气势，也令人震撼！即使在学术研究中，他的成就...', '9787503953279', b'1', 58, '2012-4', '文化艺术出版社', '师友笔下的冯其庸', '/images/师友笔下的冯其庸.jpg');
INSERT INTO `book` VALUES (52, '张银杰', '张银杰所著的《市场经济理论与市场经济体制改革新论——社会主义市场经济理论疑难问题探索(第2版)》是“企业·市场·政府”论丛之一。2006年出版后广受好评，不少高校在MBA、EMBA教学中都选用本书作为...', '9787564213381', b'1', 32, '2012-5', '上海财经大学出版社', '市场经济理论与市场经济体制改革新论', '/images/市场经济理论与市场经济体制改革新论.jpg');
INSERT INTO `book` VALUES (53, 'N/A', '《北大版•21世纪全国高职高专土建立体化系列规划教材:市政工程测量》以工作过程为导向，遵循理论联系实际和应用型的原则，共分10个项目单。《北大版•21世纪全国高职高专土建立体化系列规划教材:市政工程...', '9787301204740', b'1', 41, '2012-5', '北京大学出版社', '市政工程测量', '/images/市政工程测量.jpg');
INSERT INTO `book` VALUES (54, '夏淑梅 编', '《21世纪全国高等院校环境系列实用规划教材:水分析化学》全面系统地介绍了水质分析的各类基本知识和基本方法，对常用的水质分析方法的原理和应用作了详尽的叙述，并且介绍了近年来发展起来的新技术、新方法，具体...', '9787301206041', b'1', 42, '2012-5', '北京大学出版社', '水分析化学', '/images/水分析化学.jpg');
INSERT INTO `book` VALUES (55, 'N/A', '《普通高等教育&#34;十二五&#34;规划教材•公共经济与管理系列:税务代理理论与实务(第2版)》根据我国最新税收法律、法规编写，内容设计上兼顾理论与实务，每章后面附有复习思考题、知识巩固与拓展训练，便于学员练习，...', '9787564213374', b'1', 32, '2012-5', '上海财经大学出版社', '税务代理理论与实务', '/images/税务代理理论与实务.jpg');
INSERT INTO `book` VALUES (56, '【法】玛蒂娜·乔丽', '《图像分析》是“法国大学128丛书”之一，全书分为作为媒体图像的图像；普洛透斯的形象；作为符号的图像；理论是怎样帮助理解“图像”一词的使用的；图像，作为对于他人的讯息；一幅绘画的成分分析；修辞学与暗指...', '9787201074887', b'1', 12.8, '2012-6', '天津人民出版社', '图像分析', '/images/图像分析.jpg');
INSERT INTO `book` VALUES (57, '叶成杰 编', '《21世纪全国本科院校土木建筑类创新型应用人才培养规划教材:土木工程结构试验》内容主要包括土木工程结构试验概述、土木工程结构试验设计、结构试验的加载设备、土木工程结构试验的量测技术、土木工程结构静载试...', '9787301206317', b'1', 39, '2012-5', '北京大学出版社', '土木工程结构试验', '/images/土木工程结构试验.jpg');
INSERT INTO `book` VALUES (58, '李秀清 编', '《21世纪法学系列教材•法律史系列:外国法制史》所有撰稿人都是曾在全国重要的外国法制史学科点或国外重要大学接受过多年正规的硕士或博士的学习，并对于各自承担的章节有特别的兴趣和研究，所完成的学位论文多与...', '9787301206454', b'1', 40, '2012-5', '北京大学出版社', '外国法制史', '/images/外国法制史.jpg');
INSERT INTO `book` VALUES (59, '李刚', '《高等院校计算机专业应用技术系列教材:网络数据库技术PHP+MySQL(第2版)》以网络信息管理系统的设计过程和开发方法为背景，主要讲解利用Apache技术建立网站和申请域名的方法，介绍利用MySQL...', '9787301206461', b'1', 28, '2012-9', '北京大学出版社', '网络数据库技术PHP+MySQL', '/images/网络数据库技术PHP+MySQL.jpg');
INSERT INTO `book` VALUES (60, '王宁 编', '《文学理论前沿(第9辑)》作为中国中外文艺理论学会的会刊，由学会委托清华大学比较文学与文化研究中心及上海交通大学外语学院王宁主编。前八辑均在我社出版，由于立足于文学理论和文化研究前沿，针对学术界热点问...', '9787301207031', b'1', 35, '2012-6', '北京大学出版社', '文学理论前沿（第9辑）', '/images/文学理论前沿（第9辑）.jpg');
INSERT INTO `book` VALUES (61, '休伯里', '像你一样的朋友，ISBN：9787541441486，作者：（英）休柏里 著，（英）佩德拉 绘，谭旭东，谢毓洁 译', '9787541441486', b'1', 13.5, '2012-5', '', '像你一样的朋友', '/images/像你一样的朋友.jpg');
INSERT INTO `book` VALUES (62, 'N/A', '《普通高等教育&#34;十一五&#34;国家级规划教材:新编英语专业口语教程4(第2版)》涉及复杂的抽象话题，例如艺术、心理学等；侧重于培养学生的交流技巧，如研讨谈判技巧等。《21世纪英语专业系列教材:新编英语专业口...', '9787301205891', b'1', 29, '2012-5', '北京大学出版社', '新编英语专业口语教程', '/images/新编英语专业口语教程.jpg');
INSERT INTO `book` VALUES (63, '陈光中 编', '《刑事诉讼法(第4版)》是教育部“高等教育面向21世纪教学内容和课程体系改革计划”的一项成果，是面向2l世纪课程教材和教育部法学学科“九五”规划教材，同时也是高等学校法学专业核心课程教材。后又申报批准...', '9787301205099', b'1', 45, '2012-6', '北京大学出版社', '刑事诉讼法', '/images/刑事诉讼法.jpg');
INSERT INTO `book` VALUES (64, '卢现祥', '《寻找一种好制度:卢现祥制度分析文选》对新制度经济学的理论和方法进行研究，并探讨一些转型中的现实问题，为此发表了大量的相关论文，用新制度经济学的理论和方法去观察中国经济社会问题，《寻找一种好制度:卢现...', '9787301206836', b'1', 59, '2012-6', '北京大学出版社', '寻找一种好制度', '/images/寻找一种好制度.jpg');
INSERT INTO `book` VALUES (65, '（英）威廉·巴特勒·叶芝', '《叶芝抒情诗选》遴选了诗人各个时期的代表诗作。具体选自《月下》（1882—1894）、《十字路》（1889）、《玫瑰》（1893）、《苇间风》（1899）、《在那七片树林里》（1904）、《脸盔及其他...', '9787222084186', b'1', 44, '2011-11', '云南人民出版社', '叶芝抒情诗选', '/images/叶芝抒情诗选.jpg');
INSERT INTO `book` VALUES (66, '程正民', '《艺术家个性心理和发展》把文艺心理学的重要组成部分——艺术家心理学作为研究对象，重点研究艺术家个性心理和发展，从理论上阐明了艺术家的个性心理结构（道德情感、艺术气质、文化性格、创造能力、自我意识），艺...', '9787301206119', b'1', 49, '2012-6', '北京大学出版社', '艺术家个性心理和发展', '/images/艺术家个性心理和发展.jpg');
INSERT INTO `book` VALUES (67, '常俊跃', '《英语专业复合型人才培养课程教学研究》主要介绍在英语专业教育政策的诸多变化中，确立“复合型人才”培养目标是近年英语专业教育政策的重大变化之一。本项研究中采用了定性的研究方法，通过典型教育机构的个案，调...', '9787301205921', b'1', 42, '2012-5', '北京大学出版社', '英语专业复合型人才培养课程教学研究', '/images/英语专业复合型人才培养课程教学研究.jpg');
INSERT INTO `book` VALUES (68, '许建民 编', '《21世纪高职高专财经类能力本位型规划教材•教育部工商管理教指委精品课程教材:营销策划》以学生为主体，让学生看了就能会，学了就能用；以教师为主导，授人以渔；以项目为载体，将技能与知识充分结合。内容选取...', '9787301206089', b'1', 37, '2012-5', '北京大学出版社', '营销策划', '/images/营销策划.jpg');
INSERT INTO `book` VALUES (69, '张文显', '《知识经济与法律制度创新》探讨了知识经济的基本要义，知识经济背景下法制创新的基本动因、价值取向和主要内容，作为知识经济进程中的基本秩序模式，自由市场机制、政府规制机制、公共自主机制的基本内容及其具体制...', '9787301205389', b'1', 49, '2012-5', '北京大学出版社', '知识经济与法律制度创新', '/images/知识经济与法律制度创新.jpg');
INSERT INTO `book` VALUES (70, '罗红云', '《中国农村土地制度研究(1949-2008)》，本书主要内容包括：导论；文献综述；基础理论；土地改革时期的农地制度；农业合作化时期的农地制度；人民公社时期的农地制度等。', '9787564211509', b'1', 35, '2012-6', '上海财经大学出版社', '中国农村土地制度研究', '/images/中国农村土地制度研究.jpg');
INSERT INTO `book` VALUES (71, '童旭东', '孙氏武学研究著作', '9787505973930', b'1', 86, '2012-2', '中国文联出版社', '中国武学之道', '/images/中国武学之道.jpg');
INSERT INTO `book` VALUES (72, '莱伯维茨', '追求长期回报：捐赠基金资产配置及投资模式，ISBN：9787301205594，作者：（美）莱伯维茨，（美）波瓦，（美）哈蒙德 著', '9787301205594', b'1', 58, '2012-5', '北京大学出版社', '追求长期回报', '/images/追求长期回报.jpg');
INSERT INTO `book` VALUES (73, '凤宝莲', '《小学生成语词典(配合教材版)》收词精当，所收成语涵盖小学语文教材中出现的、小学生学习和生活中常用的成语及熟语。释义简明、浅显易懂；近义词、反义词准确贴切；提示项有的放矢，防患未然；例句贴近生活，便于...', '9787530396421', b'1', 99, '2012-6', '北京教育出版社', '小学生成语词典', '/images/小学生成语词典.jpg');
INSERT INTO `book` VALUES (74, '凤宝莲', '《小学生字典(配合教材版)》以教育部新课程标准为依据，以最新版小学语文教材为基础，严格按照国家语言文字规范编写。收录《现代汉语常用字表》的全部常用字和次常用字，以及课外读物中的常用字，约4000个。对...', '9787530396414', b'1', 89, '2012-6', '北京教育出版社', '小学生字典', '/images/小学生字典.jpg');
INSERT INTO `book` VALUES (75, NULL, '《牵牛花看太阳》内容简介：小鸟想找个朋友一块儿玩儿，可蜜蜂忙着采蜜，蚂蚁忙着修路，蚕忙着吐丝，蚯蚓忙着挖泥，看到大家都有事要做，小鸟干吗去了呢？清晨，太阳升起来了，火红一团，光彩耀眼，牵牛花和向日葵花...', '9787538564600', b'1', 33, '2012-6', '北方妇女儿童出版社', '牵牛花看太阳', '/images/牵牛花看太阳.jpg');
INSERT INTO `book` VALUES (76, '卜劳恩', '《父与子经典全集》系列漫画始创于1934年，为德国著名幽默漫画大师埃•奥•卜劳恩先生所画，是世界上最经典的连环漫画之一，它最初在《柏林画报》上连载，被誉为德国幽默的象征。漫画自问世以来，受到世界各国读...', '9787510112393', b'1', 328, '2012-6', '中国人口出版社', '父与子经典全集', '/images/父与子经典全集.jpg');
INSERT INTO `book` VALUES (77, '卜劳恩', '《父与子•父子情深》内容简介：为什么《父与子》能够在全球畅销70多年？为什么看《父与子》能够让人旁若无人地又笑又哭？那位肥胖、谢顶、平凡而可爱的父亲，从不用长篇大论来教育孩子，而是身体力行地和儿子做朋...', '9787510112379', b'1', 168, '2012-7', '中国人口出版社', '父子情深-父与子', '/images/父子情深-父与子.jpg');
INSERT INTO `book` VALUES (78, '卜劳恩', '《父与子•父子同乐》内容简介：为什么《父与子》能够在全球畅销70多年？为什么看《父与子》能够让人旁若无人地又笑又哭？那位肥胖、谢顶、平凡而可爱的父亲，从不用长篇大论来教育孩子，而是身体力行地和儿子做朋...', '9787510112386', b'1', 168, '2012-7', '中国人口出版社', '父子同乐-父与子', '/images/父子同乐-父与子.jpg');
INSERT INTO `book` VALUES (79, '北京万国学校', '北京万国学校编著的《万国学校考前冲刺(卷2突破100分)》按照2012年新大纲的考试要求，凭借老师自己多年的授课经验和司法考查规律，找出2012年国家司法考试卷二的重点考点。并对考点精要讲解，加注“小...', '9787513013284', b'1', 58, '2012-6', NULL, '2012万国学校考前冲刺', '/images/2012万国学校考前冲刺.jpg');
INSERT INTO `book` VALUES (80, '北京万国学校', '《2012司法考试培训教材-最后突破试题(密卷)》，本书按照2012年新大纲的考试要求，凭借老师自己多年的授课经验和司法考试规律，直击重点、突破难点和网罗新增考点。从体例上按照2012年新大纲的要求拟...', '9787513013253', b'1', 58, '2012-6', NULL, '2012万国学校考前冲刺（密卷）', '/images/2012万国学校考前冲刺（密卷）.jpg');
INSERT INTO `book` VALUES (81, '北京万国学校', '《2012万国学校考前冲刺:卷1突破100分》按照2012年新大纲的考试要求，凭借老师自己多年的授课经验和司法考查规律，找出2012年国家司法考试卷一的重点考点。并对考点精要讲解，加注“小贴士”来要求...', '9787513013291', b'1', 58, '2012-6', NULL, '2012万国学校考前冲刺', '/images/2012万国学校考前冲刺.jpg');
INSERT INTO `book` VALUES (82, '北京万国学校', '《万国法源司法考试培训教材•万国学校考前冲刺:卷4突破100分(2012)》按照2012年新大纲的考试要求。凭借老师自己多年的授课经验和司法考查规律，找出2012年国家司法考试卷四的重点考点。并对考点...', '9787513013260', b'1', 58, '2012-6', NULL, '2012万国学校考前冲刺－卷四突破100分', '/images/2012万国学校考前冲刺－卷四突破100分.jpg');
INSERT INTO `book` VALUES (83, '北京万国学校', '北京万国学校编著的《万国学校考前冲刺(卷3突破100分)》按照2012年新大纲的考试要求，凭借老师自己多年的授课经验和司法考查规律，找出2叭2年国家司法考试卷三的重点考点。并对考点精要讲解，加注“小贴...', '9787513013277', b'1', 58, '2012-6', NULL, '2012万国学校考前冲刺', '/images/2012万国学校考前冲刺.jpg');
INSERT INTO `book` VALUES (84, '北京万国学校', '北京万国学校、韩友谊编著的《万国学校考前冲刺(大纲送你90分)》是司法考试培训名校万国学校的一线核心教师通过深入细致的分析2012年国家司法考试大纲，并结合自己多年司法考试培训经验写作而成。具体内容包...', '9787513013246', b'1', 58, '2012-6', NULL, '2012万国学校考前冲刺', '/images/2012万国学校考前冲刺.jpg');
INSERT INTO `book` VALUES (85, '安娜·沃克 文/图', '“我看到一条龙。”玛丽老师说。同学们都信了，除了杰克。当其他小朋友都开始想象龙的样子的时候，杰克还是坚持没有龙存在。于是，他只能孤零零地自己玩儿。就在这时，龙出现了！', '9787539176734', b'1', 12, '2012-5', '二十一世纪出版社', '我不相信有龙', '/images/我不相信有龙.jpg');
INSERT INTO `book` VALUES (86, NULL, '新形势下结核病控制工作新思路，ISBN：9787533158873，作者：', '9787533158873', b'1', 68, NULL, '山东科学技术出版社', '新形势下结核病控制工作新思路', '/images/新形势下结核病控制工作新思路.jpg');
INSERT INTO `book` VALUES (87, '马克·韦勒', '《女性形体与健美训练图解》是一本独特的形体与健美训练指南，适合任何一个想根据自身体质与健康水平制订个人锻炼计划的女性。超过90项的练习，从徒手训练、负重训练到健身器训练和有氧运动，帮助你锻炼全身的肌肉...', '9787533158859', b'1', 168, '2012-5', '山东科学技术出版社', '女性形体与健美训练图解', '/images/女性形体与健美训练图解.jpg');
INSERT INTO `book` VALUES (88, '德拉威尔 (Fredreic Delavier)', '肌肉健美训练图解（最新版），ISBN：9787533158842，作者：（法）德拉威尔 著', '9787533158842', b'1', 130, '2012-9', '山东科学技术出版社', '肌肉健美训练图解', '/images/肌肉健美训练图解.jpg');
INSERT INTO `book` VALUES (89, NULL, '《新编建筑工程造价速查快算手册》以现行的新规范和技术标准为依据，阐述了工程量清单计价和定额计价两种不同的计价方式的计算规则和说明，编写了工程量计算所需的计算技巧与统筹方法，提供了工程量计算公式、数据参...', '9787533158040', b'1', 53, '2012-6', '山东科学技术出版社', '新编建筑工程造价速查快算手册', '/images/新编建筑工程造价速查快算手册.jpg');
INSERT INTO `book` VALUES (90, NULL, '《西尔斯育儿经:新手父母最应该知道的50件事》由美国最负盛名的育儿专家、国际超级育儿畅销书作家威廉·西尔斯博士携妻子玛莎·西尔斯以及儿子罗伯特·W·西尔斯博士、詹姆斯·M·西尔斯博士倾力奉献，讲述你未...', '9787533158774', b'1', 41, '2012-6', '山东科学技术出版社', '西尔斯育儿经', '/images/西尔斯育儿经.jpg');
INSERT INTO `book` VALUES (91, NULL, '《营养师职业资格培训辅导用书•健康体魄:从学生时代开始(营养专家指导中小学生营养饮食秘籍)》深入浅出地介绍了蛋白质、脂肪等营养素对人体的重要作用，为不同年龄段的儿童及青少年制订健康饮食计划，从不同角度...', '9787533158927', b'1', 34, '2012-6', '山东科学技术出版社', '健康体魄', '/images/健康体魄.jpg');
INSERT INTO `book` VALUES (92, '刘智恩', '《感性胎教童话》一书蕴含着父母对儿女的良苦用心。书中的童话不仅有助于对孩子的爱心、感恩、友情等方面的培养，还可以刺激胎儿的感性思维。书中就有关妊娠及胎教方面的信息做了非常全面详细的说明。此外，书中还涉...', '9787533158866', b'1', 24, '2012-5', '山东科学技术出版社', '感性胎教童话', '/images/感性胎教童话.jpg');
INSERT INTO `book` VALUES (93, '（日）不讲理不求人', NULL, '9787516806968', b'1', 35, '2017-2', '台海出版社', '无职转生1', '/images/无职转生1.jpg');
INSERT INTO `book` VALUES (94, '[日]羊太郎', '阿尔扎诺帝国魔法学院的临时讲师—格伦·勒达斯是以自习的名义在讲堂上打瞌睡的惯犯。就算偶尔会授课，他也只是搞一些类似“将课本钉在黑板上”的花招，其颓废连学生们都惊讶不已。\n被这样的格伦惹恼的学生—有着“...', '9787534057274', b'1', 35, '2017-4', '浙江人民美术出版社', '不像样的魔法讲师与教典1', '/images/不像样的魔法讲师与教典1.jpg');
INSERT INTO `book` VALUES (95, '[日]三云岳斗', NULL, '9787548926559', b'1', 76, '2017-4', '云南美术出版社', '狂袭系列12', '/images/狂袭系列12.jpg');
INSERT INTO `book` VALUES (96, 'Carol Carnac', 'After firmly establishing a small decorating business in London, ex-Wrens Josephine Brown and Penelo...', '9780330025874', b'1', 88, '1951', 'N/A', 'Copy for Crime', '/images/Copy for Crime.jpg');
INSERT INTO `book` VALUES (97, '（日）三云岳斗', NULL, '9787548925880', b'1', 88, '2016-12', '云南美术出版社', '狂袭系列11', '/images/狂袭系列11.jpg');
INSERT INTO `book` VALUES (98, 'Carol Carnac', 'Inspector Julian Rivers resented being high-pressured into declaring accidental the death of Chindle...', '9780330025041', b'1', 13, '1950', 'N/A', 'Upstairs and Downstairs', '/images/Upstairs and Downstairs.jpg');
INSERT INTO `book` VALUES (99, '三云岳斗', NULL, '9787548925088', b'1', 412, '2016-9', '云南美术出版社', '狂袭系列10', '/images/狂袭系列10.jpg');
INSERT INTO `book` VALUES (100, '種村 季弘', NULL, '9784480427267', b'1', 34, '2010-7-7', 'N/A', '雨の日はソファで散歩', '/images/雨の日はソファで散歩.jpg');
INSERT INTO `book` VALUES (101, '[日] 川原砾 著', 'Under World“最终压力测试”第二天。\n击败了“人界军”最强的整合骑士贝尔库利和使用超级帐号——太阳神索鲁斯的诗乃后，加百列追上了逃走的爱丽丝。\n另一方面，“人界军”诱饵部队被拥有压倒性数量的...', '9787534057267', b'1', 55, '2017-4', '浙江人民美术出版社', '刀剑神域18', '/images/刀剑神域18.jpg');
INSERT INTO `book` VALUES (102, 'Carol Carnac', 'The scene demanded - and got - an artistic murder.\nThe housekeeper Miss Trimming, stretched out back...', '9780440160304', b'1', 56, '1957', 'N/A', 'The Late Miss Trimming', '/images/The Late Miss Trimming.jpg');
INSERT INTO `book` VALUES (104, 'レイモンド・P・シェインドリン', NULL, '9784309463766', b'1', 128, '2012-8-4', 'N/A', 'ユダヤ人の歴史', '/images/ユダヤ人の歴史.jpg');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `order_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `payment_status` bit(1) NOT NULL,
  `total_price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKcpl0mjoeqhxvgeeeq5piwpd3i`(`user_id` ASC) USING BTREE,
  CONSTRAINT `FKcpl0mjoeqhxvgeeeq5piwpd3i` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES (4, '17352873293244256', b'1', '3289.00', 1);
INSERT INTO `order` VALUES (5, '17352873292342566', b'1', '31.00', 1);

-- ----------------------------
-- Table structure for order_item
-- ----------------------------
DROP TABLE IF EXISTS `order_item`;
CREATE TABLE `order_item`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `authors` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `isbn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `price` double NOT NULL,
  `quantity` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `order_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKs234mi6jususbx4b37k44cipy`(`order_id` ASC) USING BTREE,
  CONSTRAINT `FKs234mi6jususbx4b37k44cipy` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_item
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `age` int NULL DEFAULT NULL,
  `gender` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `bio` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `avatar_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '290@163.com', '123456', 'root', 12, '女', '乐子人', '');

-- ----------------------------
-- Table structure for user_cart
-- ----------------------------
DROP TABLE IF EXISTS `user_cart`;
CREATE TABLE `user_cart`  (
  `user_id` bigint NOT NULL,
  `cart_id` bigint NOT NULL,
  UNIQUE INDEX `UK_ie22qiahfkie1ujlksnuuv9bj`(`cart_id` ASC) USING BTREE,
  INDEX `FKsrduvvrrxxek0h3bcpsb5aij7`(`user_id` ASC) USING BTREE,
  CONSTRAINT `FKfla2hijus61sxigfxrws109sr` FOREIGN KEY (`cart_id`) REFERENCES `book` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKsrduvvrrxxek0h3bcpsb5aij7` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_cart
-- ----------------------------
INSERT INTO `user_cart` VALUES (1, 9);
INSERT INTO `user_cart` VALUES (1, 10);
INSERT INTO `user_cart` VALUES (1, 15);

SET FOREIGN_KEY_CHECKS = 1;
