-- MySQL dump 10.13  Distrib 5.5.48, for Win32 (x86)
--
-- Host: localhost    Database: shop_yii
-- ------------------------------------------------------
-- Server version	5.5.48

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,0,'Sportswear',NULL,NULL),(2,0,'Mens',NULL,NULL),(3,0,'Womens',NULL,NULL),(4,1,'Nike',NULL,NULL),(5,1,'Under Armour',NULL,NULL),(6,1,'Adidas',NULL,NULL),(7,1,'Puma',NULL,NULL),(8,1,'ASICS','кроссовки','кроссовки айсикс'),(9,2,'Fendi',NULL,NULL),(10,2,'Guess',NULL,NULL),(11,2,'Valentino',NULL,NULL),(12,2,'Dior',NULL,NULL),(13,2,'Versace',NULL,NULL),(14,2,'Armani',NULL,NULL),(15,2,'Prada',NULL,NULL),(16,2,'Dolce and Gabbana',NULL,NULL),(17,2,'Chanel',NULL,NULL),(18,2,'Gucci',NULL,NULL),(19,3,'Fendi',NULL,NULL),(20,3,'Guess',NULL,NULL),(21,3,'Valentino',NULL,NULL),(22,3,'Dior',NULL,NULL),(23,3,'Versace',NULL,NULL),(24,0,'Kids',NULL,NULL),(25,0,'Fashion',NULL,NULL),(26,0,'Households',NULL,NULL),(27,0,'Interiors',NULL,NULL),(28,0,'Clothing',NULL,NULL),(29,0,'Bags','сумки ключевики...','сумки описание...'),(30,0,'Shoes',NULL,NULL);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `qty` int(10) NOT NULL,
  `sum` float NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (2,'2016-10-09 19:37:55','2016-10-09 19:37:55',4,116,'0','Борис','xinu@ya.ru','123','Летниковская 11/10'),(3,'2016-10-09 19:45:38','2016-10-09 19:45:38',9,466,'0','Борис','asadasd@dd.ru','123','Летниковская 11/10'),(4,'2016-10-09 20:39:50','2016-10-09 20:39:50',3,146,'0','Борис','xinu@ya.ru','123','Летниковская 11/10'),(5,'2016-10-09 20:44:24','2016-10-09 20:44:24',4,188,'0','Борис','xinu@ya.ru','123','Летниковская 11/10'),(6,'2016-10-09 20:48:14','2016-10-09 20:48:14',1,56,'0','Борис','xinu@ya.ru','123','Летниковская 11/10'),(7,'2016-10-09 20:52:21','2016-10-09 20:52:21',1,100,'0','Борис','asadasd@dd.ru','123','Летниковская 11/10'),(8,'2016-10-09 20:59:25','2016-10-09 20:59:25',2,90,'0','Борис','xinu@ya.ru','123','Летниковская 11/10'),(9,'2016-10-09 21:07:43','2016-10-09 21:07:43',3,146,'0','Борис','xinu@ya.ru','123','Летниковская 11/10'),(10,'2016-10-09 21:11:23','2016-10-09 21:11:23',3,146,'0','Борис','xinu@ya.ru','123','Летниковская 11/10'),(11,'2016-10-09 21:18:26','2016-10-09 21:18:26',6,446,'0','Борис','xinu@ya.ru','123','Летниковская 11/10'),(12,'2016-10-09 21:26:17','2016-10-09 21:26:17',2,76,'0','Борис','boangri@mail.ru','1234','Летниковская 11/10'),(13,'2016-10-09 21:30:08','2016-10-09 21:30:08',6,346,'0','Борис','boangri@mail.ru','123','Летниковская 11/10'),(14,'2016-10-09 21:33:58','2016-10-09 21:33:58',3,146,'0','Борис','boangri@mail.ru','123','Летниковская 11/10');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `qty_item` int(11) NOT NULL,
  `sum_item` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (1,2,2,'Джинсы MR520 MR 227 20002 0115 29-34 р Синие',56,1,56),(2,2,3,'Блуза Mango 53005681-05 M Бежевая',20,3,60),(3,3,2,'Джинсы MR520 MR 227 20002 0115 29-34 р Синие',56,1,56),(4,3,3,'Блуза Mango 53005681-05 M Бежевая',20,3,60),(5,3,4,'Блуза Tom Tailor TT 20312490071 7610 M Зелёная',70,5,350),(6,4,2,'Джинсы MR520 MR 227 20002 0115 29-34 р Синие',56,1,56),(7,4,3,'Блуза Mango 53005681-05 M Бежевая',20,1,20),(8,4,4,'Блуза Tom Tailor TT 20312490071 7610 M Зелёная',70,1,70),(9,5,2,'Джинсы MR520 MR 227 20002 0115 29-34 р Синие',56,3,168),(10,5,3,'Блуза Mango 53005681-05 M Бежевая',20,1,20),(11,6,2,'Джинсы MR520 MR 227 20002 0115 29-34 р Синие',56,1,56),(12,7,6,'Кардиган Levi\'s Icy Grey Heather M',100,1,100),(13,8,3,'Блуза Mango 53005681-05 M Бежевая',20,1,20),(14,8,4,'Блуза Tom Tailor TT 20312490071 7610 M Зелёная',70,1,70),(15,9,2,'Джинсы MR520 MR 227 20002 0115 29-34 р Синие',56,1,56),(16,9,3,'Блуза Mango 53005681-05 M Бежевая',20,1,20),(17,9,4,'Блуза Tom Tailor TT 20312490071 7610 M Зелёная',70,1,70),(18,10,2,'Джинсы MR520 MR 227 20002 0115 29-34 р Синие',56,1,56),(19,10,3,'Блуза Mango 53005681-05 M Бежевая',20,1,20),(20,10,4,'Блуза Tom Tailor TT 20312490071 7610 M Зелёная',70,1,70),(21,11,2,'Джинсы MR520 MR 227 20002 0115 29-34 р Синие',56,1,56),(22,11,3,'Блуза Mango 53005681-05 M Бежевая',20,1,20),(23,11,4,'Блуза Tom Tailor TT 20312490071 7610 M Зелёная',70,1,70),(24,11,6,'Кардиган Levi\'s Icy Grey Heather M',100,3,300),(25,12,2,'Джинсы MR520 MR 227 20002 0115 29-34 р Синие',56,1,56),(26,12,3,'Блуза Mango 53005681-05 M Бежевая',20,1,20),(27,13,2,'Джинсы MR520 MR 227 20002 0115 29-34 р Синие',56,1,56),(28,13,3,'Блуза Mango 53005681-05 M Бежевая',20,1,20),(29,13,4,'Блуза Tom Tailor TT 20312490071 7610 M Зелёная',70,1,70),(30,13,5,'Блузка Kira Plastinina 17-16-17453-SM-29 S',0,1,0),(31,13,6,'Кардиган Levi\'s Icy Grey Heather M',100,2,200),(32,14,2,'Джинсы MR520 MR 227 20002 0115 29-34 р Синие',56,1,56),(33,14,3,'Блуза Mango 53005681-05 M Бежевая',20,1,20),(34,14,4,'Блуза Tom Tailor TT 20312490071 7610 M Зелёная',70,1,70);
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text,
  `price` float NOT NULL DEFAULT '0',
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT 'no-image.png',
  `hit` enum('0','1') NOT NULL DEFAULT '0',
  `new` enum('0','1') NOT NULL DEFAULT '0',
  `sale` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,4,'Джинсы Garcia 244/32/856 28-32 р Серо-синие','Великолепные джинсы винтажно-голубого цвета. Настоящая находка для любителей качественного денима.\n\nОсобенности:\n\n    Зауженные к низу\n    Пять карманов\n    Высококачественный деним\n    Высокая посадка (high fit)\n    Выгодно подчеркивают фигуру',10,NULL,NULL,'product1.jpg','0','0','0'),(2,4,'Джинсы MR520 MR 227 20002 0115 29-34 р Синие','\n\nMR520 – амбициозный восточноевропейский бренд, который предлагает качественную и стильную одежду, сделанную специально для молодых людей, следящих за своим внешним видом.\n\nЖенские джинсы фасона boyfriend fit (в переводе с англ. – \"джинсы моего парня\"). Модель с зауженными штанинами. Застегивается на пуговицы. Изделие с низкой посадкой. Джинсы дополнены прорезными карманами спереди и накладными карманами сзади.\n\nИзделие декорировано эффектом потертости, вареным эффектом и необычными швами.\n',56,NULL,NULL,'product2.jpg','1','0','0'),(3,9,'Блуза Mango 53005681-05 M Бежевая','Испанский бренд модной одежды \"Mango\" родился в 1984 году в Барселоне, где и по сей день находится штаб-квартира компании. В том же городе появился и первый магазин — на улице Пасео де Грасия (Paseo de Gracia). Компания, основанная братьями Исааком и Нахманом Андиком (Isaac & Nahman Andic), очень быстро набрала популярность — всего лишь годом позднее был открыт магазин в другом городе, на этот раз в Валенсии. Одежда \"Mango\" отличается высоким качеством, приемлемой ценой, современным дизайном и неповторимым стилем.',20,NULL,NULL,'product3.jpg','1','1','0'),(4,21,'Блуза Tom Tailor TT 20312490071 7610 M Зелёная','\r\n\r\nTom Tailor Group — один из ведущих и быстро развивающихся Fashion холдингов германии и европы, продукция которого ориентирована на целевую аудиторию в возрасте от 0 до 60 лет.\r\n\r\nTom Tailor известен на рынке текстиля с 1962 года и до сих пор сохраняет стандарты немецкого качества. Tom Tailor предлагает повседневную одежду и аксессуары высокого качества для женщин, мужчин и детей.\r\n\r\nОдежда от Tom Tailor поможет создать активный повседневный образ с нотками элегантности.',70,NULL,NULL,'product4.jpg','1','0','1'),(5,25,'Блузка Kira Plastinina 17-16-17453-SM-29 S',NULL,0,NULL,NULL,'product5.jpg','1','0','0'),(6,28,'Кардиган Levi\'s Icy Grey Heather M',NULL,100,NULL,NULL,'product6.jpg','1','0','0'),(7,28,'Кардиган ONLY ON 15102048 M Black Tan/Partridg','\r\n\r\nCasual марка молодежной женской одежды ONLY является частью датской компании Bestseller AS. Изначально Bestseller занимался производством детской одежды, а в 1995 году появилась на свет марка ONLY. Популярность этой марки возрастала быстрыми темпами и теперь ONLY владеет 770 магазинами в более чем 40 странах мира.\r\n\r\nONLY — бренд стильной молодежной одежды. Это бренд для тех, кто любит добиваться успеха и быть не таким, как все. Демократичные цены, модные модели, экологически чистые ткани делают одежду от ONLY сверхпопулярной.',0,NULL,NULL,'no-image.png','1','1','0'),(8,26,'Брюки SK House 2211-1972кор L Коричневые','\r\n\r\nКомпания SK House — это украинский производитель модной женской одежды с безупречной репутацией и тысячами поклонников по всему СНГ. SK House изготавливает качественный и долговечный товар, созданный из высококачественных тканей. Компания использует современные методы пошива и, изучая текущие мировые тенденции и локальные требования покупателей, создает модели, которые не задерживаются на полках длительное время и быстро раскупаются во всех странах.',99,NULL,NULL,'no-image.png','0','0','1'),(9,26,'Брюки Kira Plastinina 17-07-17418-FL-58 L',NULL,0,NULL,NULL,'product1.jpg','0','0','0'),(10,29,'Сумка GUSSACI TUGUS13A060-3-10','Простота, инновационный стиль бренда, высококачественные требования к продукции, благодаря этому GUSSACI Italy пользуется высокой репутацией во многих странах Европы. Превосходное качество, отличный дизайн, соответствующие цены делают \"Гуссачи\" модным и популярным!\r\n\r\nОсобенности:\r\n\r\nКоличество основных отделений: 1. Сумка имеет прорезной карман на молнии, а также два небольших накладных кармана для хранения мобильного телефона, разных портативных гаджетов и мелочей. На лицевой стороне модели есть узкий прорезной карман на \"молнии\". На тыльной стороне модели есть прорезной карман на \"молнии\". Особенностью данной модели является возможность изменения ее формы при помощи дополнительной внешней застежки-молнии. Сумка имеет 2 ручки для переноса на локте или в руке. Их длина не регулируется и составляет 45 см, а высота от крайней точки ручки до сумки — 16 см. В комплект к изделию прилагается съемный плечевой ремень. Его длина может регулироваться при помощи металлической пряжки от 78 до 137.5 см. Сумка закрывается при помощи застежки-молнии.\r\n\r\nМатериал подкладки: плотная ткань.\r\nМатериал сумки: кожезаменитель.\r\nЦвет фурнитуры: золото.\r\nРазмеры сумки: 26 х 25 х 10.5 см',15,NULL,NULL,'product3.jpg','0','1','0'),(11,29,'Cумка Michael Kors Jet Set Travel Нежно-розовая','\r\n\r\nОсобенность стиля Michael Kors заключается в том, что простота его коллекций гармонирует с роскошью. Этому дизайнеру под силу объединить американский утилитаризм в манере одеваться с европейской изысканностью и шармом. Все его работы отличает изящная утонченность, которая рождается из строгих, почти примитивных линий. Все аксессуары поддерживают общий стиль человека с безупречным вкусом.\r\n\r\nМодели Michael Kors могут оставаться оригинальными, стильными и неотразимыми в течение многих лет, что особо важно для покупательниц, не желающих постоянно обновлять свой гардероб.',200,NULL,NULL,'no-image.png','0','0','1'),(12,29,'Cумка Michael Kors Selma Золотистая','\r\n\r\nОсобенность стиля Michael Kors заключается в том, что простота его коллекций гармонирует с роскошью. Этому дизайнеру под силу объединить американский утилитаризм в манере одеваться с европейской изысканностью и шармом. Все его работы отличает изящная утонченность, которая рождается из строгих, почти примитивных линий. Все аксессуары поддерживают общий стиль человека с безупречным вкусом.\r\n\r\nМодели Michael Kors могут оставаться оригинальными, стильными и неотразимыми в течение многих лет, что особо важно для покупательниц, не желающих постоянно обновлять свой гардероб.',205,NULL,NULL,'product5.jpg','0','0','0'),(13,29,'Cумка Michael Kors Bedford Красная','\r\n\r\nОсобенность стиля Michael Kors заключается в том, что простота его коллекций гармонирует с роскошью. Этому дизайнеру под силу объединить американский утилитаризм в манере одеваться с европейской изысканностью и шармом. Все его работы отличает изящная утонченность, которая рождается из строгих, почти примитивных линий. Все аксессуары поддерживают общий стиль человека с безупречным вкусом.\r\n\r\nМодели Michael Kors могут оставаться оригинальными, стильными и неотразимыми в течение многих лет, что особо важно для покупательниц, не желающих постоянно обновлять свой гардероб.',0,NULL,NULL,'no-image.png','0','0','0'),(14,29,'Cумка Michael Kors JS Travel Светло-розовая','\r\n\r\nОсобенность стиля Michael Kors заключается в том, что простота его коллекций гармонирует с роскошью. Этому дизайнеру под силу объединить американский утилитаризм в манере одеваться с европейской изысканностью и шармом. Все его работы отличает изящная утонченность, которая рождается из строгих, почти примитивных линий. Все аксессуары поддерживают общий стиль человека с безупречным вкусом.\r\n\r\nМодели Michael Kors могут оставаться оригинальными, стильными и неотразимыми в течение многих лет, что особо важно для покупательниц, не желающих постоянно обновлять свой гардероб.',0,NULL,NULL,'no-image.png','0','0','0');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `auth_key` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','$2y$13$wOps2udguwR.AaSq5STZdOkJ96X/GsSZmQ18Rp6wmnDzbyogWGmS6','giXTcV1tSzNpWLwtito-Jmja9daHkaH7');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-10 22:29:40
