-- MariaDB dump 10.19  Distrib 10.7.3-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: path-finder
-- ------------------------------------------------------
-- Server version	10.7.3-MariaDB-1:10.7.3+maria~focal

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `pharmacy`
--

DROP TABLE IF EXISTS `pharmacy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pharmacy` (
                            `id` bigint(20) NOT NULL AUTO_INCREMENT,
                            `created_date` datetime(6) DEFAULT NULL,
                            `modified_date` datetime(6) DEFAULT NULL,
                            `latitude` double NOT NULL,
                            `longitude` double NOT NULL,
                            `pharmacy_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                            `pharmacy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                            PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pharmacy`
--

LOCK TABLES `pharmacy` WRITE;
/*!40000 ALTER TABLE `pharmacy` DISABLE KEYS */;
INSERT INTO `pharmacy` VALUES
                           (1,'2022-10-17 23:46:34.982624','2022-10-17 23:46:34.982624',37.60894036,127.029052,'서울특별시 성북구 동소문로47길 12','호수온누리약국'),
                           (2,'2022-10-17 23:46:35.025774','2022-10-17 23:46:35.025774',37.61040424,127.0569046,'서울특별시 성북구 화랑로 248','돌곶이온누리약국'),
                           (3,'2022-10-17 23:46:35.028083','2022-10-17 23:46:35.028083',37.60101417,127.0331664,'서울특별시 성북구 종암로 123 홀리데이약국','홀리데이약국'),
                           (4,'2022-10-17 23:46:35.030080','2022-10-17 23:46:35.030080',37.59373053,127.0159792,'서울특별시 성북구 아리랑로 9','하얀약국'),
                           (5,'2022-10-17 23:46:35.032241','2022-10-17 23:46:35.032241',37.60475389,127.0230392,'서울특별시 성북구 길음로 20','콩약국'),
                           (6,'2022-10-17 23:46:35.034546','2022-10-17 23:46:35.034546',37.58650918,127.0294735,'서울특별시 성북구 개운사길 2','소원약국'),
                           (7,'2022-10-17 23:46:35.036422','2022-10-17 23:46:35.036422',37.59415547,127.0182168,'서울특별시 성북구 동소문로 125','새성신약국'),
                           (8,'2022-10-17 23:46:35.038377','2022-10-17 23:46:35.038377',37.59423501,127.0165047,'서울특별시 성북구 아리랑로 16','더사랑약국'),
                           (9,'2022-10-17 23:46:35.040175','2022-10-17 23:46:35.040175',37.5925735,127.0170886,'서울특별시 성북구 동소문로 106','육층약국'),
                           (10,'2022-10-17 23:46:35.041806','2022-10-17 23:46:35.041806',37.60269641,127.0209503,'서울특별시 성북구 길음로9길 50 길음시장약국','길음시장약국'),
                           (11,'2022-10-17 23:46:35.043405','2022-10-17 23:46:35.043405',37.58910393,127.0066168,'서울특별시 성북구 동소문로3길 4','나바론약국'),
                           (12,'2022-10-17 23:46:35.045021','2022-10-17 23:46:35.045021',37.60737578,127.0101247,'서울특별시 성북구 보국문로 33','정릉아름드리약국'),
                           (13,'2022-10-17 23:46:35.046680','2022-10-17 23:46:35.046680',37.5944185,127.0185882,'서울특별시 성북구 동소문로 127-2','유민약국'),
                           (14,'2022-10-17 23:46:35.048536','2022-10-17 23:46:35.048536',37.60504961,127.022011,'서울특별시 성북구 길음로 33','아름다운약국'),
                           (15,'2022-10-17 23:46:35.050249','2022-10-17 23:46:35.050249',37.60346697,127.0245563,'서울특별시 성북구 동소문로 248','삼층약국'),
                           (16,'2022-10-17 23:46:35.052790','2022-10-17 23:46:35.052790',37.5859924,127.018731,'서울특별시 성북구 보문로 123','보문약국'),
                           (17,'2022-10-17 23:46:35.054580','2022-10-17 23:46:35.054580',37.60264852,127.0392054,'서울특별시 성북구 화랑로 61','월곡보건약국'),
                           (18,'2022-10-17 23:46:35.056178','2022-10-17 23:46:35.056178',37.59816326,127.0337585,'서울특별시 성북구 종암로19길 17','열린약국'),
                           (19,'2022-10-17 23:46:35.057765','2022-10-17 23:46:35.057765',37.61381947,127.0429806,'서울특별시 성북구 장위로 58','새롬약국'),
                           (20,'2022-10-17 23:46:35.059170','2022-10-17 23:46:35.059170',37.59889042,127.0220907,'서울특별시 성북구 동소문로 190 삼성약국','삼성약국'),
                           (21,'2022-10-17 23:46:35.060596','2022-10-17 23:46:35.060596',37.60684624,127.0299391,'서울특별시 성북구 동소문로46길 18 아이메디칼약국','아이메디칼약국'),
                           (22,'2022-10-17 23:46:35.062136','2022-10-17 23:46:35.062136',37.60318761,127.0137843,'서울특별시 성북구 정릉로 274','아가페온누리약국'),
                           (23,'2022-10-17 23:46:35.063606','2022-10-17 23:46:35.063606',37.58699702,127.0236768,'서울특별시 성북구 고려대로13길 8','가까운행복약국'),
                           (24,'2022-10-17 23:46:35.065054','2022-10-17 23:46:35.065054',37.60737284,127.0282179,'서울특별시 성북구 동소문로 305','도담약국'),
                           (25,'2022-10-17 23:46:35.066566','2022-10-17 23:46:35.066566',37.61345289,127.0644864,'서울특별시 성북구 화랑로40길 54 (석관동)','세계로약국'),
                           (26,'2022-10-17 23:46:35.068135','2022-10-17 23:46:35.068135',37.59738445,127.0193227,'서울특별시 성북구 북악산로 844','현약국'),
                           (27,'2022-10-17 23:46:35.069967','2022-10-17 23:46:35.069967',37.61086348,127.0179762,'서울특별시 성북구 길음로 103 아이팜 약국','아이팜약국'),
                           (28,'2022-10-17 23:46:35.071694','2022-10-17 23:46:35.071694',37.60854349,127.0097715,'서울특별시 성북구 보국문로 45','정릉약국'),
                           (29,'2022-10-17 23:46:35.073254','2022-10-17 23:46:35.073254',37.58873268,127.0073324,'서울특별시 성북구 동소문로 10','미소드림약국'),
                           (30,'2022-10-17 23:46:35.074795','2022-10-17 23:46:35.074795',37.59017717,127.0147873,'서울특별시 성북구 보문로 183','이층봄약국'),
                           (31,'2022-10-17 23:46:35.076594','2022-10-17 23:46:35.076594',37.58982089,127.0098778,'서울특별시 성북구 동소문로 34','W스토어 참좋은약국'),
                           (32,'2022-10-17 23:46:35.078231','2022-10-17 23:46:35.078231',37.58898852,127.0078895,'서울특별시 성북구 동소문로 14-1','스타온누리약국'),
                           (33,'2022-10-17 23:46:35.080005','2022-10-17 23:46:35.080005',37.60665405,127.0610377,'서울특별시 성북구 돌곶이로 25 (석관동','늘푸른약국'),
                           (34,'2022-10-17 23:46:35.082681','2022-10-17 23:46:35.082681',37.60746535,127.0602456,'서울특별시 성북구 돌곶이로 37','두리약국'),
                           (35,'2022-10-17 23:46:35.084533','2022-10-17 23:46:35.084533',37.59216647,127.0154942,'서울특별시 성북구 동소문로 92','스타약국'),
                           (36,'2022-10-17 23:46:35.086361','2022-10-17 23:46:35.086361',37.58938497,127.007731,'서울특별시 성북구 동소문로 15','보림약국'),
                           (37,'2022-10-17 23:46:35.088175','2022-10-17 23:46:35.088175',37.60836326,127.01022,'서울특별시 성북구 보국문로 40-3 (정릉동)','정릉열린약국'),
                           (38,'2022-10-17 23:46:35.089899','2022-10-17 23:46:35.089899',37.60241233,127.0170727,'서울특별시 성북구 정릉로36길 28','사랑받는 약국'),
                           (39,'2022-10-17 23:46:35.091652','2022-10-17 23:46:35.091652',37.59025998,127.0154033,'서울특별시 성북구 보문로 180','스마일약국'),
                           (40,'2022-10-17 23:46:35.093684','2022-10-17 23:46:35.093684',37.6094433,127.0193259,'서울특별시 성북구 길음로13길 22','웰팜약국'),
                           (41,'2022-10-17 23:46:35.095684','2022-10-17 23:46:35.095684',37.61691223,127.0036155,'서울특별시 성북구 보국문로 160','허브약국'),
                           (42,'2022-10-17 23:46:35.097476','2022-10-17 23:46:35.097476',37.60625445,127.014863,'서울특별시 성북구 서경로 27','다정약국'),
                           (43,'2022-10-17 23:46:35.099330','2022-10-17 23:46:35.099330',37.60504961,127.022011,'서울특별시 성북구 길음로 33','햇님약국'),
                           (44,'2022-10-17 23:46:35.101296','2022-10-17 23:46:35.101296',37.58499865,127.0312935,'서울특별시 성북구 안암로 103','금강약국'),
                           (45,'2022-10-17 23:46:35.102799','2022-10-17 23:46:35.102799',37.60120135,127.0339547,'서울특별시 성북구 종암로 122','참약사약국'),
                           (46,'2022-10-17 23:46:35.104573','2022-10-17 23:46:35.104573',37.60475389,127.0230392,'서울특별시 성북구 길음로 20','이화약국'),
                           (47,'2022-10-17 23:46:35.106174','2022-10-17 23:46:35.106174',37.60992683,127.0329348,'서울특별시 성북구 오패산로3길 158 (하월곡동','영준약국'),
                           (48,'2022-10-17 23:46:35.107697','2022-10-17 23:46:35.107697',37.61089095,127.0565335,'서울특별시 성북구 화랑로 245 (장위동','장위햇살약국'),
                           (49,'2022-10-17 23:46:35.109565','2022-10-17 23:46:35.109565',37.60262667,127.0398576,'서울특별시 성북구 화랑로 67 (하월곡동)','새보건약국'),
                           (50,'2022-10-17 23:46:35.111469','2022-10-17 23:46:35.111469',37.58638632,127.0096735,'서울특별시 성북구 삼선교로10길 38 (삼선동1가)','조일약국'),
                           (51,'2022-10-17 23:46:35.112992','2022-10-17 23:46:35.112992',37.58611663,127.0283276,'서울특별시 성북구 고려대로 82 (안암동5가)','정문약국'),
                           (52,'2022-10-17 23:46:35.114455','2022-10-17 23:46:35.114455',37.61075149,127.0351641,'서울특별시 성북구 오패산로 99 동민약국','동민약국'),
                           (53,'2022-10-17 23:46:35.115934','2022-10-17 23:46:35.115934',37.6092031,127.0589831,'서울특별시 성북구 돌곶이로 60 (석관동)','팜케어건강약국'),
                           (54,'2022-10-17 23:46:35.117367','2022-10-17 23:46:35.117367',37.60298268,127.0421137,'서울특별시 성북구 화랑로 91 (하월곡동)','새국민약국'),
                           (55,'2022-10-17 23:46:35.118797','2022-10-17 23:46:35.118797',37.60891295,127.0625345,'서울특별시 성북구 돌곶이로14길 51 (석관동)','대원약국'),
                           (56,'2022-10-17 23:46:35.120267','2022-10-17 23:46:35.120267',37.60879578,127.00969,'서울특별시 성북구 보국문로 49','미소담약국'),
                           (57,'2022-10-17 23:46:35.121765','2022-10-17 23:46:35.121765',37.5942387,127.0159159,'서울특별시 성북구 아리랑로 15 우주온누리약국','우주온누리약국'),
                           (58,'2022-10-17 23:46:35.123552','2022-10-17 23:46:35.123552',37.61352819,127.0504692,'서울특별시 성북구 장위로 123','보람약국'),
                           (59,'2022-10-17 23:46:35.125220','2022-10-17 23:46:35.125220',37.6061251,127.0112888,'서울특별시 성북구 보국문로 16-1 (정릉동)','힘챤약국'),
                           (60,'2022-10-17 23:46:35.126640','2022-10-17 23:46:35.126640',37.61040424,127.0569046,'서울특별시 성북구 화랑로 248','뉴대원약국'),
                           (61,'2022-10-17 23:46:35.128166','2022-10-17 23:46:35.128166',37.61436788,127.0412638,'서울특별시 성북구 장위로15길 1','나약국'),
                           (62,'2022-10-17 23:46:35.129783','2022-10-17 23:46:35.129783',37.6111312,127.0089745,'서울특별시 성북구 보국문로 76 (정릉동)','신흥약국'),
                           (63,'2022-10-17 23:46:35.131474','2022-10-17 23:46:35.131474',37.60863032,127.0294596,'서울특별시 성북구 동소문로 321','365약국'),
                           (64,'2022-10-17 23:46:35.133306','2022-10-17 23:46:35.133306',37.60076937,127.0136162,'서울특별시 성북구 아리랑로 89 덕성온누리약국','덕성온누리약국'),
                           (65,'2022-10-17 23:46:35.135036','2022-10-17 23:46:35.135036',37.57954418,127.0227688,'서울특별시 성북구 보문로 44 (보문동7가)','가까운약국'),
                           (66,'2022-10-17 23:46:35.136814','2022-10-17 23:46:35.136814',37.60182639,127.0404642,'서울특별시 성북구 화랑로 76 바른온누리약국','바른온누리약국'),
                           (67,'2022-10-17 23:46:35.138644','2022-10-17 23:46:35.138644',37.60691142,127.0286752,'서울특별시 성북구 동소문로 304 (하월곡동)','동서옵티마약국'),
                           (68,'2022-10-17 23:46:35.140647','2022-10-17 23:46:35.140647',37.6094267,127.029845,'서울특별시 성북구 도봉로 3','한강약국'),
                           (69,'2022-10-17 23:46:35.142243','2022-10-17 23:46:35.142243',37.60817228,127.0098893,'서울특별시 성북구 보국문로 43 신정릉우리약국','신정릉우리약국'),
                           (70,'2022-10-17 23:46:35.143819','2022-10-17 23:46:35.143819',37.61402486,127.0430894,'서울특별시 성북구 장위로 57 (장위동)','희망약국'),
                           (71,'2022-10-17 23:46:35.145269','2022-10-17 23:46:35.145269',37.58842896,127.0169156,'서울특별시 성북구  보문로  157 (삼선동5가)','맑은샘온누리약국'),
                           (72,'2022-10-17 23:46:35.146663','2022-10-17 23:46:35.146663',37.59208386,127.0131844,'서울특별시 성북구 동소문로 71 (동소문동6가)','건강약국'),
                           (73,'2022-10-17 23:46:35.148144','2022-10-17 23:46:35.148144',37.60243445,127.0131364,'서울특별시 성북구  아리랑로  117-5 (정릉동)','백세약국'),
                           (74,'2022-10-17 23:46:35.149831','2022-10-17 23:46:35.149831',37.61346399,127.0488745,'서울특별시 성북구 장위로 112 (장위동)','봄온누리약국'),
                           (75,'2022-10-17 23:46:35.151435','2022-10-17 23:46:35.151435',37.60584389,127.0316691,'서울특별시 성북구 종암로 180 (하월곡동)','명신약국'),
                           (76,'2022-10-17 23:46:35.152981','2022-10-17 23:46:35.152981',37.58915068,127.008288,'서울특별시 성북구  동소문로  18-1 (동소문동2가)','올리브한성약국'),
                           (77,'2022-10-17 23:46:35.154400','2022-10-17 23:46:35.154400',37.60346697,127.0245563,'서울특별시 성북구 동소문로 248','밝은약국'),
                           (78,'2022-10-17 23:46:35.155952','2022-10-17 23:46:35.155952',37.59332657,127.0181758,'서울특별시 성북구 동소문로 118 (동선동1가','올리브약국'),
                           (79,'2022-10-17 23:46:35.157327','2022-10-17 23:46:35.157327',37.59507886,127.0122836,'서울특별시 성북구 성북로4길 52','길약국'),
                           (80,'2022-10-17 23:46:35.158909','2022-10-17 23:46:35.158909',37.58371438,127.0206053,'서울특별시 성북구 보문로 94 (보문동4가','새봄약국'),
                           (81,'2022-10-17 23:46:35.160649','2022-10-17 23:46:35.160649',37.6050584,127.0309893,'서울특별시 성북구 종암로 167','화인온누리약국'),
                           (82,'2022-10-17 23:46:35.162448','2022-10-17 23:46:35.162448',37.61611638,127.0571672,'서울특별시 성북구 한천로 649 (장위동)','지혜약국'),
                           (83,'2022-10-17 23:46:35.164265','2022-10-17 23:46:35.164265',37.60720133,127.0463517,'서울특별시 성북구 장월로1길 23','좋은약국'),
                           (84,'2022-10-17 23:46:35.166040','2022-10-17 23:46:35.166040',37.5985487,127.0344019,'서울특별시 성북구 종암로 93','은혜약국'),
                           (85,'2022-10-17 23:46:35.167617','2022-10-17 23:46:35.167617',37.60884999,127.0588152,'서울특별시 성북구 돌곶이로 57','새석관약국'),
                           (86,'2022-10-17 23:46:35.169123','2022-10-17 23:46:35.169123',37.60303991,127.0320167,'서울특별시 성북구 종암로 147 (종암동)','마음약국'),
                           (87,'2022-10-17 23:46:35.170883','2022-10-17 23:46:35.170883',37.59642195,127.0357824,'서울특별시 성북구 종암로 68','신중앙약국'),
                           (88,'2022-10-17 23:46:35.173242','2022-10-17 23:46:35.173242',37.60733462,127.0362089,'서울특별시 성북구 오패산로 57','메디팜백약국'),
                           (89,'2022-10-17 23:46:35.175599','2022-10-17 23:46:35.175599',37.59838959,127.0214428,'서울특별시 성북구 동소문로 181','서울약국'),
                           (90,'2022-10-17 23:46:35.177174','2022-10-17 23:46:35.177174',37.60859,127.0522327,'서울특별시 성북구 화랑로 201 (장위동','연세정약국'),
                           (91,'2022-10-17 23:46:35.178476','2022-10-17 23:46:35.178476',37.61004971,127.0519891,'서울특별시 성북구 돌곶이로27길 79 (장위동)','드림약국'),
                           (92,'2022-10-17 23:46:35.179815','2022-10-17 23:46:35.179815',37.60992747,127.051314,'서울특별시 성북구 화랑로19길 83','성북월드팜약국'),
                           (93,'2022-10-17 23:46:35.181287','2022-10-17 23:46:35.181287',37.59788551,127.0346281,'서울특별시 성북구 종암로 85','두리온누리약국'),
                           (94,'2022-10-17 23:46:35.182754','2022-10-17 23:46:35.182754',37.60886422,127.0100842,'서울특별시 성북구 보국문로 50','이화프라자약국'),
                           (95,'2022-10-17 23:46:35.184331','2022-10-17 23:46:35.184331',37.60264363,127.0314322,'서울특별시 성북구 종암로27길 13 민성약국','민성약국'),
                           (96,'2022-10-17 23:46:35.185797','2022-10-17 23:46:35.185797',37.60705765,127.0611286,'서울특별시 성북구 돌곶이로 28','명소약국'),
                           (97,'2022-10-17 23:46:35.187221','2022-10-17 23:46:35.187221',37.62294618,127.0483959,'서울특별시 성북구 월계로40길 7','프라임온누리약국'),
                           (98,'2022-10-17 23:46:35.188624','2022-10-17 23:46:35.188624',37.58975243,127.0097057,'서울특별시 성북구 동소문로 32 (동소문동3가)','성북녹십자약국'),
                           (99,'2022-10-17 23:46:35.189910','2022-10-17 23:46:35.189910',37.59507886,127.0122836,'서울특별시 성북구 성북로4길 52','파란하늘약국'),
                           (100,'2022-10-17 23:46:35.191274','2022-10-17 23:46:35.191274',37.60267647,127.0417738,'서울특별시 성북구 화랑로 87','조아약국'),
                           (101,'2022-10-17 23:46:35.192873','2022-10-17 23:46:35.192873',37.60272583,127.0173627,'서울특별시 성북구 정릉로 308','서현약국'),
                           (102,'2022-10-17 23:46:35.194588','2022-10-17 23:46:35.194588',37.58135963,127.0272797,'서울특별시 성북구 안암로 47-1','서수약국'),
                           (103,'2022-10-17 23:46:35.196033','2022-10-17 23:46:35.196033',37.61146855,127.0355676,'서울특별시 성북구 월계로 52 (하월곡동','월곡우리약국'),
                           (104,'2022-10-17 23:46:35.197452','2022-10-17 23:46:35.197452',37.60191866,127.0335201,'서울특별시 성북구 종암로 132 송원온누리약국','송원온누리약국'),
                           (105,'2022-10-17 23:46:35.199025','2022-10-17 23:46:35.199025',37.61072626,127.0196705,'서울특별시 성북구 삼양로13길 45 옵티마e편한약국','옵티마e-편한약국'),
                           (106,'2022-10-17 23:46:35.200527','2022-10-17 23:46:35.200527',37.59897041,127.0342435,'서울특별시 성북구 종암로 97 (종암동)','한미약국'),
                           (107,'2022-10-17 23:46:35.202176','2022-10-17 23:46:35.202176',37.61329059,127.0498484,'서울특별시 성북구 장위로 118 (장위동)','남산약국'),
                           (108,'2022-10-17 23:46:35.203735','2022-10-17 23:46:35.203735',37.59140273,127.0129804,'서울특별시 성북구 동소문로 66 (동소문동3가)','큰사랑약국'),
                           (109,'2022-10-17 23:46:35.205386','2022-10-17 23:46:35.205386',37.59882629,127.0341348,'서울특별시 성북구 종암로21길 3 (종암동','참약국'),
                           (110,'2022-10-17 23:46:35.207111','2022-10-17 23:46:35.207111',37.59726537,127.0354884,'서울특별시 성북구 종암로 78','성북성모약국'),
                           (111,'2022-10-17 23:46:35.208769','2022-10-17 23:46:35.208769',37.60305287,127.0227578,'서울특별시 성북구 동소문로 235 (길음동)','세기약국'),
                           (112,'2022-10-17 23:46:35.210448','2022-10-17 23:46:35.210448',37.59065259,127.0170248,'서울특별시 성북구 동소문로20길 43 (동선동1가)','계산온누리약국'),
                           (113,'2022-10-17 23:46:35.212394','2022-10-17 23:46:35.212394',37.59227456,127.0157162,'서울특별시 성북구 동소문로 94','중앙프라자약국'),
                           (114,'2022-10-17 23:46:35.214392','2022-10-17 23:46:35.214392',37.58900303,127.0063813,'서울특별시 성북구 성북로2길 8','옵티마대우미약국'),
                           (115,'2022-10-17 23:46:35.216466','2022-10-17 23:46:35.216466',37.60037976,127.0335602,'서울특별시 성북구 종암로 115 (종암동)','사랑의약국'),
                           (116,'2022-10-17 23:46:35.218493','2022-10-17 23:46:35.218493',37.6035116,127.0166245,'서울특별시 성북구 정릉로31길 6 (정릉동)','아이사랑약국'),
                           (117,'2022-10-17 23:46:35.220481','2022-10-17 23:46:35.220481',37.59318258,127.017048,'서울특별시 성북구 동소문로 107 (동선동4가)','동인약국'),
                           (118,'2022-10-17 23:46:35.222694','2022-10-17 23:46:35.222694',37.62245492,127.0510598,'서울특별시 성북구 한천로 743 (장위동)','청솔약국'),
                           (119,'2022-10-17 23:46:35.224553','2022-10-17 23:46:35.224553',37.58754697,127.007364,'서울특별시 성북구 삼선교로 14 (삼선동1가)','인정온누리약국'),
                           (120,'2022-10-17 23:46:35.226538','2022-10-17 23:46:35.226538',37.61846034,127.0456972,'서울특별시 성북구 돌곶이로41길 10 (장위동)','선약국'),
                           (121,'2022-10-17 23:46:35.228410','2022-10-17 23:46:35.228410',37.60926791,127.0095134,'서울특별시 성북구 보국문로 53 (정릉동)','멜론약국'),
                           (122,'2022-10-17 23:46:35.230454','2022-10-17 23:46:35.230454',37.60850382,127.0101113,'서울특별시 성북구 보국문로 46 (정릉동)','그약국'),
                           (123,'2022-10-17 23:46:35.232908','2022-10-17 23:46:35.232908',37.60083973,127.0379633,'서울특별시 성북구 종암로24가길 53 정약국','정약국'),
                           (124,'2022-10-17 23:46:35.235082','2022-10-17 23:46:35.235082',37.60639752,127.036435,'서울특별시 성북구 오패산로 49','메디칼팜약국'),
                           (125,'2022-10-17 23:46:35.237180','2022-10-17 23:46:35.237180',37.61694804,127.0081235,'서울특별시 성북구 솔샘로25길 20 해오름약국','해오름약국'),
                           (126,'2022-10-17 23:46:35.239280','2022-10-17 23:46:35.239280',37.58925899,127.0047826,'서울특별시 성북구 성북로5길 2 (성북동1가)','준약국'),
                           (127,'2022-10-17 23:46:35.241793','2022-10-17 23:46:35.241793',37.60434991,127.0246789,'서울특별시 성북구 길음로 2','길음메디칼약국'),
                           (128,'2022-10-17 23:46:35.243921','2022-10-17 23:46:35.243921',37.6089921,127.0232761,'서울특별시 성북구 삼양로 66','현대약국'),
                           (129,'2022-10-17 23:46:35.246484','2022-10-17 23:46:35.246484',37.59010566,127.0092166,'서울특별시 성북구 동소문로7길 2 (동소문동4가)','안세약국'),
                           (130,'2022-10-17 23:46:35.248296','2022-10-17 23:46:35.248296',37.60916369,127.0585119,'서울특별시 성북구  돌곶이로  61 (석관동)','백화점약국'),
                           (131,'2022-10-17 23:46:35.250284','2022-10-17 23:46:35.250284',37.5835595,127.0200573,'서울특별시 성북구 보문로 93','옵티마시민약국'),
                           (132,'2022-10-17 23:46:35.252019','2022-10-17 23:46:35.252019',37.58611667,127.02816,'서울특별시 성북구 고려대로 80 (안암동5가)','21세기고려약국'),
                           (133,'2022-10-17 23:46:35.253694','2022-10-17 23:46:35.253694',37.6020696,127.0193239,'서울특별시 성북구 정릉로 326 (정릉동)','정릉메디칼약국'),
                           (134,'2022-10-17 23:46:35.255542','2022-10-17 23:46:35.255542',37.61367218,127.0508635,'서울특별시 성북구 장위로 127-1','지선약국'),
                           (135,'2022-10-17 23:46:35.257164','2022-10-17 23:46:35.257164',37.61373433,127.0487659,'서울특별시 성북구 장위로 107 (장위동)','참사랑약국'),
                           (136,'2022-10-17 23:46:35.258828','2022-10-17 23:46:35.258828',37.59141366,127.0118934,'서울특별시 성북구 동소문로 57-1 (동소문동4가)','한솔약국'),
                           (137,'2022-10-17 23:46:35.260680','2022-10-17 23:46:35.260680',37.58610949,127.0280242,'서울특별시 성북구 고려대로 78 (안암동5가)','백두산약국'),
                           (138,'2022-10-17 23:46:35.262291','2022-10-17 23:46:35.262291',37.60356084,127.0237455,'서울특별시 성북구 동소문로 245-2 (길음동)','신세원약국'),
                           (139,'2022-10-17 23:46:35.263932','2022-10-17 23:46:35.263932',37.60102101,127.0344393,'서울특별시 성북구 종암로 120 (종암동','삼원약국'),
                           (140,'2022-10-17 23:46:35.265570','2022-10-17 23:46:35.265570',37.60414089,127.0246335,'서울특별시 성북구 동소문로 257 (길음동)','동해물약국'),
                           (141,'2022-10-17 23:46:35.267388','2022-10-17 23:46:35.267388',37.58883718,127.0075815,'서울특별시 성북구 동소문로 12','연약국'),
                           (142,'2022-10-17 23:46:35.269115','2022-10-17 23:46:35.269115',37.58649131,127.0288802,'서울특별시 성북구 고려대로 85 (안암동5가)','미래약국'),
                           (143,'2022-10-17 23:46:35.270761','2022-10-17 23:46:35.270761',37.60327448,127.042449,'서울특별시 성북구 화랑로 95 (하월곡동','하나온누리약국'),
                           (144,'2022-10-17 23:46:35.272157','2022-10-17 23:46:35.272157',37.58399202,127.0198265,'서울특별시 성북구 보문로 99','청십자약국'),
                           (145,'2022-10-17 23:46:35.273737','2022-10-17 23:46:35.273737',37.6089452,127.0235025,'서울특별시 성북구 삼양로8길 3-28 (길음동)','가람약국'),
                           (146,'2022-10-17 23:46:35.275359','2022-10-17 23:46:35.275359',37.59302413,127.0161738,'서울특별시 성북구  아리랑로  3 (동소문동6가)','메디칼약국'),
                           (147,'2022-10-17 23:46:35.277034','2022-10-17 23:46:35.277034',37.61377746,127.0490604,'서울특별시 성북구 장월로 88-1 (장위동)','광혜당약국'),
                           (148,'2022-10-17 23:46:35.278422','2022-10-17 23:46:35.278422',37.60772026,127.0361729,'서울특별시 성북구 오패산로 63 (하월곡동)','정주약국'),
                           (149,'2022-10-17 23:46:35.279683','2022-10-17 23:46:35.279683',37.61376388,127.0689945,'서울특별시 성북구 화랑로48길 16 온누리 두산약국','온누리두산약국'),
                           (150,'2022-10-17 23:46:35.281231','2022-10-17 23:46:35.281231',37.6038403,127.0424539,'서울특별시 성북구 화랑로13길 9','부민약국'),
                           (151,'2022-10-17 23:46:35.282735','2022-10-17 23:46:35.282735',37.61143392,127.009115,'서울특별시 성북구 보국문로16길 31 (정릉동)','태평양약국'),
                           (152,'2022-10-17 23:46:35.284278','2022-10-17 23:46:35.284278',37.5817249,127.0210848,'서울특별시 성북구 보문로 71-1 (보문동5가)','남정약국'),
                           (153,'2022-10-17 23:46:35.285910','2022-10-17 23:46:35.285910',37.60857809,127.0358833,'서울특별시 성북구 오패산로 73 (하월곡동)','화성약국'),
                           (154,'2022-10-17 23:46:35.287287','2022-10-17 23:46:35.287287',37.59507886,127.0122836,'서울특별시 성북구 성북로4길 52','온누리성모약국'),
                           (155,'2022-10-17 23:46:35.288625','2022-10-17 23:46:35.288625',37.60572594,127.0277824,'서울특별시 성북구 동소문로42길 14','건강한약국'),
                           (156,'2022-10-17 23:46:35.289953','2022-10-17 23:46:35.289953',37.60258644,127.0415699,'서울특별시 성북구 화랑로11길 6 (하월곡동)','월곡약국'),
                           (157,'2022-10-17 23:46:35.291345','2022-10-17 23:46:35.291345',37.59917885,127.0362185,'서울특별시 성북구 월곡로5길 66 (종암동)','대영약국'),
                           (158,'2022-10-17 23:46:35.292627','2022-10-17 23:46:35.292627',37.60350523,127.0304813,'서울특별시 성북구 종암로21길 128 (종암동)','혜조약국'),
                           (159,'2022-10-17 23:46:35.294073','2022-10-17 23:46:35.294073',37.58646961,127.0291837,'서울특별시 성북구 고려대로 89 (안암동5가)','대학약국'),
                           (160,'2022-10-17 23:46:35.295350','2022-10-17 23:46:35.295350',37.60759853,127.0605764,'서울특별시 성북구 돌곶이로 36-1 (석관동)','온누리진호약국'),
                           (161,'2022-10-17 23:46:35.296607','2022-10-17 23:46:35.296607',37.61350008,127.0487477,'서울특별시 성북구 장위로 110 (장위동)','우리약국'),
                           (162,'2022-10-17 23:46:35.297928','2022-10-17 23:46:35.297928',37.6050727,127.0117416,'서울특별시 성북구 보국문로 4 (정릉동)','상락약국'),
                           (163,'2022-10-17 23:46:35.299220','2022-10-17 23:46:35.299220',37.61071591,127.0606514,'서울특별시 성북구 돌곶이로22길 49 (석관동)','온누리민우약국'),
                           (164,'2022-10-17 23:46:35.300475','2022-10-17 23:46:35.300475',37.59377336,127.0188281,'서울특별시 성북구 동소문로20가길 51 (동선동1가','세원약국'),
                           (165,'2022-10-17 23:46:35.301850','2022-10-17 23:46:35.301850',37.59758374,127.0110248,'서울특별시 성북구 아리랑로5길 1 (동소문동7가)','모당약국'),
                           (166,'2022-10-17 23:46:35.303179','2022-10-17 23:46:35.303179',37.60803934,126.9995878,'서울특별시 성북구 정릉로10길 42-2 (정릉동)','국민약국'),
                           (167,'2022-10-17 23:46:35.304525','2022-10-17 23:46:35.304525',37.60935215,127.024975,'서울특별시 성북구  숭인로2길  61 (길음동)','동부약국'),
                           (168,'2022-10-17 23:46:35.305909','2022-10-17 23:46:35.305909',37.60217778,127.0189888,'서울특별시 성북구 정릉로 322 (정릉동)','소망약국'),
                           (169,'2022-10-17 23:46:35.307110','2022-10-17 23:46:35.307110',37.58241356,127.0193415,'서울특별시 성북구 지봉로20길 57 (보문동5가)','회생약국'),
                           (170,'2022-10-17 23:46:35.308494','2022-10-17 23:46:35.308494',37.58907861,127.0081069,'서울특별시 성북구 동소문로 16-1 (동소문동2가)','굿모닝약국'),
                           (171,'2022-10-17 23:46:35.309871','2022-10-17 23:46:35.309871',37.59930193,127.0182724,'서울특별시 성북구 북악산로 845','새민우약국'),
                           (172,'2022-10-17 23:46:35.311205','2022-10-17 23:46:35.311205',37.60970093,127.0580049,'서울특별시 성북구 돌곶이로 67 (석관동)','선화약국'),
                           (173,'2022-10-17 23:46:35.312669','2022-10-17 23:46:35.312669',37.6113781,127.0624505,'서울특별시 성북구 한천로 580 (석관동)','새비홍약국'),
                           (174,'2022-10-17 23:46:35.314129','2022-10-17 23:46:35.314129',37.60366176,127.037557,'서울특별시 성북구 오패산로 16 (하월곡동)','구원약국'),
                           (175,'2022-10-17 23:46:35.315591','2022-10-17 23:46:35.315591',37.60815045,127.0595712,'서울특별시 성북구 돌곶이로 45 (석관동)','메디팜믿음약국'),
                           (176,'2022-10-17 23:46:35.317124','2022-10-17 23:46:35.317124',37.61596953,127.0552371,'서울특별시 성북구 장위로 177 (장위동)','관문약국'),
                           (177,'2022-10-17 23:46:35.318629','2022-10-17 23:46:35.318629',37.60881032,127.0080592,'서울특별시 성북구 솔샘로6길 63 (정릉동)','수보약국'),
                           (178,'2022-10-17 23:46:35.320159','2022-10-17 23:46:35.320159',37.60738938,127.0608027,'서울특별시 성북구 돌곶이로 34 (석관동)','백경약국'),
                           (179,'2022-10-17 23:46:35.321653','2022-10-17 23:46:35.321653',37.61759873,127.0463717,'서울특별시 성북구 돌곶이로41길 33 (장위동)','인현약국'),
                           (180,'2022-10-17 23:46:35.322976','2022-10-17 23:46:35.322976',37.60346738,127.0368231,'서울특별시 성북구 오패산로1길 1 (하월곡동)','석산약국'),
                           (181,'2022-10-17 23:46:35.324382','2022-10-17 23:46:35.324382',37.59743116,127.0354477,'서울특별시 성북구 종암로 80','종암약국'),
                           (182,'2022-10-17 23:46:35.327531','2022-10-17 23:46:35.327531',37.61711767,127.002886,'서울특별시 성북구 보국문로 168 (정릉동)','세종약국'),
                           (183,'2022-10-17 23:46:35.329038','2022-10-17 23:46:35.329038',37.60475389,127.0230392,'서울특별시 성북구 길음로 20','남진약국'),
                           (184,'2022-10-17 23:46:35.330274','2022-10-17 23:46:35.330274',37.61330471,127.0505506,'서울특별시 성북구 장위로 124 (장위동)','부산약국'),
                           (185,'2022-10-17 23:46:35.331466','2022-10-17 23:46:35.331466',37.61680455,127.0496106,'서울특별시 성북구 장월로 128 (장위동)','개미약국'),
                           (186,'2022-10-17 23:46:35.332695','2022-10-17 23:46:35.332695',37.58996451,127.0150137,'서울특별시 성북구 삼선교로 87 (삼선동4가)','지민약국'),
                           (187,'2022-10-17 23:46:35.334181','2022-10-17 23:46:35.334181',37.61440985,127.0534464,'서울특별시 성북구 돌곶이로 134 (장위동)','수진약국'),
                           (188,'2022-10-17 23:46:35.335550','2022-10-17 23:46:35.335550',37.59410517,127.0338609,'서울특별시 성북구 종암로5길 36','영생약국'),
                           (189,'2022-10-17 23:46:35.336946','2022-10-17 23:46:35.336946',37.60286193,127.0223818,'서울특별시 성북구 동소문로 231','대림당약국'),
                           (190,'2022-10-17 23:46:35.338344','2022-10-17 23:46:35.338344',37.61700234,127.0032349,'서울특별시 성북구 보국문로 164 (정릉동)','온누리청수약국'),
                           (191,'2022-10-17 23:46:35.339819','2022-10-17 23:46:35.339819',37.61413001,127.0412909,'서울특별시 성북구  장위로  42-1 (장위동)','알파약국'),
                           (192,'2022-10-17 23:46:35.341252','2022-10-17 23:46:35.341252',37.59542691,127.0226287,'서울특별시 성북구 북악산로22길 2 (돈암동)','민정약국'),
                           (193,'2022-10-17 23:46:35.342986','2022-10-17 23:46:35.342986',37.59867806,127.0205868,'서울특별시 성북구 북악산로17길 2 (돈암동)','서울고명약국'),
                           (194,'2022-10-17 23:46:35.344702','2022-10-17 23:46:35.344702',37.59143708,127.0376777,'서울특별시 성북구 회기로 9 (종암동)','운용약국'),
                           (195,'2022-10-17 23:46:35.346488','2022-10-17 23:46:35.346488',37.58511033,127.0314339,'서울특별시 성북구 안암로 105','동성약국'),
                           (196,'2022-10-17 23:46:35.348259','2022-10-17 23:46:35.348259',37.6024197,127.0159131,'서울특별시 성북구 정릉로36길 50 (정릉동)','정인약국'),
                           (197,'2022-10-17 23:46:35.349964','2022-10-17 23:46:35.349964',37.59611651,127.0147749,'서울특별시 성북구 동소문로13나길 111 (동소문동7가)','용수약국'),
                           (198,'2022-10-17 23:46:35.351275','2022-10-17 23:46:35.351275',37.6079216,127.0238601,'서울특별시 성북구 삼양로8길 3-4 (길음동)','십자약국'),
                           (199,'2022-10-17 23:46:35.352539','2022-10-17 23:46:35.352539',37.60572843,127.0134857,'서울특별시 성북구 정릉로27길 41 (정릉동)','제창약국'),
                           (200,'2022-10-17 23:46:35.353752','2022-10-17 23:46:35.353752',37.60441797,127.0394781,'서울특별시 성북구 화랑로5길 42 (하월곡동)','자산약국'),
                           (201,'2022-10-17 23:46:35.355238','2022-10-17 23:46:35.355238',37.60247771,127.0130186,'서울특별시 성북구 아리랑로 117-7 (정릉동)','강원약국');
/*!40000 ALTER TABLE `pharmacy` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-17 23:49:14