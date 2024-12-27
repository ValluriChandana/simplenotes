-- MySQL dump 10.13  Distrib 8.0.37, for Win64 (x86_64)
--
-- Host: localhost    Database: snmproject
-- ------------------------------------------------------
-- Server version	8.0.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `filedata`
--

DROP TABLE IF EXISTS `filedata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filedata` (
  `fid` int unsigned NOT NULL AUTO_INCREMENT,
  `fdata` blob,
  `filename` varchar(20) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `added_by` int DEFAULT NULL,
  PRIMARY KEY (`fid`),
  KEY `added_by` (`added_by`),
  CONSTRAINT `filedata_ibfk_1` FOREIGN KEY (`added_by`) REFERENCES `users` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filedata`
--

LOCK TABLES `filedata` WRITE;
/*!40000 ALTER TABLE `filedata` DISABLE KEYS */;
INSERT INTO `filedata` VALUES (1,_binary 'a=5\r\nprint(a)','second_program.py','2024-12-19 11:33:00',4),(2,_binary '\'\'\' output-->Twinkle, twinkle, little star,\r\n	How I wonder what you are! \r\n		Up above the world so high,   		\r\n		Like a diamond in the sky. \r\nTwinkle, twinkle, little star, \r\n	How I wonder what you are!\r\n\r\nprint(\"Twinle, twinle, little star, \\n\\tHow I wonder what you are!\r\n\\n\\t\\tUp above the world so high, \\n\\t\\tLike a dimond in the sky\r\n\\nTwintle, twinkle, little star, \\n\\tHow I wonder what you are!\")\'\'\'\r\n\r\n\'\'\'a=\"vijayawada\"\r\nprint(a[0]+a[9]+a[8]+a[3])#positive indexing\r\nb=\"with god all things are possible\"\r\nprint(b[0]+b[1]+b[2]+b[3])\r\nprint(b[5]+b[6]+b[7])\r\nprint(b[9]+b[10]+b[11])\r\nprint(b[13]+b[14]+b[15]+b[16]+b[17]+b[18])\r\nprint(b[20]+b[21]+b[22])\r\nprint(b[24]+b[25]+b[26]+b[27]+b[28]+b[29]+b[30]+b[31])\r\nprint(b[0]+b[1]+b[2]+b[3],b[5]+b[6]+b[7],b[9]+b[10]+b[11],b[13]+b[14]+b[15]+b[16]+b[17]+b[18]\r\n      ,b[20]+b[21]+b[22],b[24]+b[25]+b[26]+b[27]+b[28]+b[29]+b[30]+b[31])\r\nprint(type(b))\'\'\'#positive indexing\r\n\r\n\'\'\'a=\"dont feel bad\"\r\nprint(a[-3]+a[-2]+a[-1])\r\nprint(a[-8]+a[-7]+a[-6]+a[-5])\r\nprint(a[-13]+a[-12]+a[-11]+a[-10])\r\nprint(a[-13]+a[-12]+a[-11]+a[-10],a[-8]+a[-7]+a[-6]+a[-5],a[-3]+a[-2]+a[-1])\r\nprint(type(a))\'\'\'#negative indexing\r\n\r\n\'\'\'b=\"the best institute is codegnan\"\r\nprint(b[0]+b[1]+b[2])\r\nprint(b[4]+b[5]+b[6]+b[7])\r\nprint(b[9]+b[10]+b[11]+b[12]+b[13]+b[14]+b[15]+b[16]+b[17])\r\nprint(b[19]+b[20])\r\nprint(b[22]+b[23]+b[24]+b[25]+b[26]+b[27]+b[28])\r\nprint(b[-1]+b[-2]+b[-3]+b[-4]+b[-5]+b[-6]+b[-7]+b[-8]\r\nprint(type(b))\'\'\'#both positive and negative\r\n\r\n#slicing->it stops before the specific number and you should give extra number\r\n\r\n\'\'\'a=\"chandana\"\r\nprint(a[0:3],a[3:8])\r\nprint(a[0:9])\r\nprint(type(a))\'\'\'\r\n\r\n\'\'\'b=\"trust the actions not words\"\r\nprint(b[0:5])\r\nprint(b[6:9])\r\nprint(b[10:17])\r\nprint(b[18:21])\r\nprint(b[22:27])\r\nprint(b[0:5],b[6:9],b[10:17],b[18:21],b[22:27])\r\nprint(type(b))\'\'\'\r\n\r\n\'\'\'c=\"jeevan jyothi nani chandana\"\r\nprint(c[0:6])\r\nprint(c[7:13])\r\nprint(c[14:18])\r\nprint(c[19:27])\r\nprint(c[0:6],c[7:13],c[14:18],c[19:27])\r\nprint(type(c))\'\'\'\r\n\r\n\'\'\'d=\"dont focus on others\"\r\nprint(d[0:4])\r\nprint(d[5:10])\r\nprint(d[11:13])\r\nprint(d[14:21])\r\nprint(d[0:4],d[5:10],d[11:13],d[14:21])\r\nprint(type(d))\'\'\'\r\n\r\n\'\'\'e=\"hardwork is the key for success\"\r\nprint(e[0:8])\r\nprint(e[9:11])\r\nprint(e[12:15])\r\nprint(e[16:19])\r\nprint(e[20:23])\r\nprint(e[24:31])\r\nprint(e[0:8],e[9:11],e[12:15],e[16:19],e[20:23],e[24:31])\r\nprint(type(e))\'\'\'\r\n\r\n\'\'\'f=\"codegnan it solutions\"\r\nprint(f[0:8])\r\nprint(f[9:11])\r\nprint(f[12:21])\r\nprint(f[0:8],f[9:11],f[12:21])\r\nprint(type(f))\'\'\'#positive slicing\r\n\r\n\r\n\'\'\'a=\"chandana is a good girl\"\r\nprint(a[-23:-15])\r\nprint(a[-14:-12])\r\nprint(a[-11:-10])\r\nprint(a[-9:-5])\r\nprint(a[-4:])\r\nprint(a[-23:-15],a[-14:-12],a[-11:-10],a[-9:-5],a[-4:])\r\nprint(type(a))\'\'\'\r\n\r\n\'\'\'b=\"chandana jeevan jyothi nani\"\r\nprint(b[-27:-19])\r\nprint(b[-18:-12])\r\nprint(b[-11:-5])\r\nprint(b[-4:])\r\nprint(b[-27:-19],b[-18:-12],b[-11:-5],b[-4:])\r\nprint(type(b))\'\'\'\r\n\r\n\'\'\'c=\"with god all things are possible\"\r\nprint(c[-8:])\r\nprint(c[-12:-9])\r\nprint(c[-19:-13])\r\nprint(c[-23:-20])\r\nprint(c[-27:-24])\r\nprint(c[-32:-28])\r\nprint(c[-8:],c[-12:-9],c[-19:-13],c[-23:-20],c[-27:-24],c[-32:-28])\r\nprint(c[-32:-28],c[-27:-24],c[-23:-20],c[-19:-13],c[-12:-9],c[-8:])\r\nprint(type(c))\'\'\'\r\n\r\n\'\'\'d=\"i love jesus\"\r\nprint(d[-5:])\r\nprint(d[-10:-6])\r\nprint(d[:-11])\r\nprint(d[-5:],d[-10:-6],d[:-11])\r\nprint(d[:-11],d[-10:-6],d[-5:])\r\nprint(type(d))\'\'\'\r\n\r\n\'\'\'e=\"jessy nissy\"\r\nprint(e[-5:])\r\nprint(e[-11:-6])\r\nprint(e[-5:],e[-11:-6],e[-11:-6],e[-5:])\r\nprint(type(e))\'\'\'\r\n\r\n\'\'\'f=\"jeevan charan babi santhosh prabhu\"\r\nprint(f[-6:])\r\nprint(f[-15:-7])\r\nprint(f[-20:-16])\r\nprint(f[-27:-21])\r\nprint(f[-34:-28])\r\nprint(f[-6:],f[-15:-7],f[-20:-16],f[-27:-21],f[-34:-28])\r\nprint(type(f))\'\'\'\r\n\r\nh=\"chandana spandana meghana srujana\"\r\nprint(h[0:9])\r\nprint(h[:-25])\r\nprint(h[9:18])\r\nprint(h[-24:-16])\r\nprint(h[18:26])\r\nprint(h[-15:-7])\r\nprint(h[26:33])\r\nprint(h[-7:])\r\nprint(h[0:9],h[:-25],h[9:18],h[-24:-16],h[18:26],h[-15:-7],h[26:33],h[-7:])\r\nprint(type(h))\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n','practice.py','2024-12-19 11:36:42',12),(3,_binary 'try:\r\n    n1=int(input(\"enter A value\"))\r\n    n2=int(input(\"enter B value\"))\r\n    c=n//n2\r\nexcept Exception as e:\r\n    print(e)\r\n    print(\"please give b value>0\")\r\nelse:\r\n    print(c)\r\nfinally:\r\n    print(\"code excuted\")\r\n    \r\n','first_program.py','2024-12-19 11:45:26',12),(4,_binary '\'\'\' output-->Twinkle, twinkle, little star,\r\n	How I wonder what you are! \r\n		Up above the world so high,   		\r\n		Like a diamond in the sky. \r\nTwinkle, twinkle, little star, \r\n	How I wonder what you are!\r\n\r\nprint(\"Twinle, twinle, little star, \\n\\tHow I wonder what you are!\r\n\\n\\t\\tUp above the world so high, \\n\\t\\tLike a dimond in the sky\r\n\\nTwintle, twinkle, little star, \\n\\tHow I wonder what you are!\")\'\'\'\r\n\r\n\'\'\'a=\"vijayawada\"\r\nprint(a[0]+a[9]+a[8]+a[3])#positive indexing\r\nb=\"with god all things are possible\"\r\nprint(b[0]+b[1]+b[2]+b[3])\r\nprint(b[5]+b[6]+b[7])\r\nprint(b[9]+b[10]+b[11])\r\nprint(b[13]+b[14]+b[15]+b[16]+b[17]+b[18])\r\nprint(b[20]+b[21]+b[22])\r\nprint(b[24]+b[25]+b[26]+b[27]+b[28]+b[29]+b[30]+b[31])\r\nprint(b[0]+b[1]+b[2]+b[3],b[5]+b[6]+b[7],b[9]+b[10]+b[11],b[13]+b[14]+b[15]+b[16]+b[17]+b[18]\r\n      ,b[20]+b[21]+b[22],b[24]+b[25]+b[26]+b[27]+b[28]+b[29]+b[30]+b[31])\r\nprint(type(b))\'\'\'#positive indexing\r\n\r\n\'\'\'a=\"dont feel bad\"\r\nprint(a[-3]+a[-2]+a[-1])\r\nprint(a[-8]+a[-7]+a[-6]+a[-5])\r\nprint(a[-13]+a[-12]+a[-11]+a[-10])\r\nprint(a[-13]+a[-12]+a[-11]+a[-10],a[-8]+a[-7]+a[-6]+a[-5],a[-3]+a[-2]+a[-1])\r\nprint(type(a))\'\'\'#negative indexing\r\n\r\n\'\'\'b=\"the best institute is codegnan\"\r\nprint(b[0]+b[1]+b[2])\r\nprint(b[4]+b[5]+b[6]+b[7])\r\nprint(b[9]+b[10]+b[11]+b[12]+b[13]+b[14]+b[15]+b[16]+b[17])\r\nprint(b[19]+b[20])\r\nprint(b[22]+b[23]+b[24]+b[25]+b[26]+b[27]+b[28])\r\nprint(b[-1]+b[-2]+b[-3]+b[-4]+b[-5]+b[-6]+b[-7]+b[-8]\r\nprint(type(b))\'\'\'#both positive and negative\r\n\r\n#slicing->it stops before the specific number and you should give extra number\r\n\r\n\'\'\'a=\"chandana\"\r\nprint(a[0:3],a[3:8])\r\nprint(a[0:9])\r\nprint(type(a))\'\'\'\r\n\r\n\'\'\'b=\"trust the actions not words\"\r\nprint(b[0:5])\r\nprint(b[6:9])\r\nprint(b[10:17])\r\nprint(b[18:21])\r\nprint(b[22:27])\r\nprint(b[0:5],b[6:9],b[10:17],b[18:21],b[22:27])\r\nprint(type(b))\'\'\'\r\n\r\n\'\'\'c=\"jeevan jyothi nani chandana\"\r\nprint(c[0:6])\r\nprint(c[7:13])\r\nprint(c[14:18])\r\nprint(c[19:27])\r\nprint(c[0:6],c[7:13],c[14:18],c[19:27])\r\nprint(type(c))\'\'\'\r\n\r\n\'\'\'d=\"dont focus on others\"\r\nprint(d[0:4])\r\nprint(d[5:10])\r\nprint(d[11:13])\r\nprint(d[14:21])\r\nprint(d[0:4],d[5:10],d[11:13],d[14:21])\r\nprint(type(d))\'\'\'\r\n\r\n\'\'\'e=\"hardwork is the key for success\"\r\nprint(e[0:8])\r\nprint(e[9:11])\r\nprint(e[12:15])\r\nprint(e[16:19])\r\nprint(e[20:23])\r\nprint(e[24:31])\r\nprint(e[0:8],e[9:11],e[12:15],e[16:19],e[20:23],e[24:31])\r\nprint(type(e))\'\'\'\r\n\r\n\'\'\'f=\"codegnan it solutions\"\r\nprint(f[0:8])\r\nprint(f[9:11])\r\nprint(f[12:21])\r\nprint(f[0:8],f[9:11],f[12:21])\r\nprint(type(f))\'\'\'#positive slicing\r\n\r\n\r\n\'\'\'a=\"chandana is a good girl\"\r\nprint(a[-23:-15])\r\nprint(a[-14:-12])\r\nprint(a[-11:-10])\r\nprint(a[-9:-5])\r\nprint(a[-4:])\r\nprint(a[-23:-15],a[-14:-12],a[-11:-10],a[-9:-5],a[-4:])\r\nprint(type(a))\'\'\'\r\n\r\n\'\'\'b=\"chandana jeevan jyothi nani\"\r\nprint(b[-27:-19])\r\nprint(b[-18:-12])\r\nprint(b[-11:-5])\r\nprint(b[-4:])\r\nprint(b[-27:-19],b[-18:-12],b[-11:-5],b[-4:])\r\nprint(type(b))\'\'\'\r\n\r\n\'\'\'c=\"with god all things are possible\"\r\nprint(c[-8:])\r\nprint(c[-12:-9])\r\nprint(c[-19:-13])\r\nprint(c[-23:-20])\r\nprint(c[-27:-24])\r\nprint(c[-32:-28])\r\nprint(c[-8:],c[-12:-9],c[-19:-13],c[-23:-20],c[-27:-24],c[-32:-28])\r\nprint(c[-32:-28],c[-27:-24],c[-23:-20],c[-19:-13],c[-12:-9],c[-8:])\r\nprint(type(c))\'\'\'\r\n\r\n\'\'\'d=\"i love jesus\"\r\nprint(d[-5:])\r\nprint(d[-10:-6])\r\nprint(d[:-11])\r\nprint(d[-5:],d[-10:-6],d[:-11])\r\nprint(d[:-11],d[-10:-6],d[-5:])\r\nprint(type(d))\'\'\'\r\n\r\n\'\'\'e=\"jessy nissy\"\r\nprint(e[-5:])\r\nprint(e[-11:-6])\r\nprint(e[-5:],e[-11:-6],e[-11:-6],e[-5:])\r\nprint(type(e))\'\'\'\r\n\r\n\'\'\'f=\"jeevan charan babi santhosh prabhu\"\r\nprint(f[-6:])\r\nprint(f[-15:-7])\r\nprint(f[-20:-16])\r\nprint(f[-27:-21])\r\nprint(f[-34:-28])\r\nprint(f[-6:],f[-15:-7],f[-20:-16],f[-27:-21],f[-34:-28])\r\nprint(type(f))\'\'\'\r\n\r\nh=\"chandana spandana meghana srujana\"\r\nprint(h[0:9])\r\nprint(h[:-25])\r\nprint(h[9:18])\r\nprint(h[-24:-16])\r\nprint(h[18:26])\r\nprint(h[-15:-7])\r\nprint(h[26:33])\r\nprint(h[-7:])\r\nprint(h[0:9],h[:-25],h[9:18],h[-24:-16],h[18:26],h[-15:-7],h[26:33],h[-7:])\r\nprint(type(h))\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n','practice.py','2024-12-19 12:01:41',12),(5,_binary 'a=5\r\nprint(a)','second_program.py','2024-12-19 12:01:53',12),(6,_binary 'try:\r\n    n1=int(input(\"enter A value\"))\r\n    n2=int(input(\"enter B value\"))\r\n    c=n//n2\r\nexcept Exception as e:\r\n    print(e)\r\n    print(\"please give b value>0\")\r\nelse:\r\n    print(c)\r\nfinally:\r\n    print(\"code excuted\")\r\n    \r\n','first_program.py','2024-12-19 12:14:17',12),(7,_binary 'try:\r\n    n1=int(input(\"enter A value\"))\r\n    n2=int(input(\"enter B value\"))\r\n    c=n//n2\r\nexcept Exception as e:\r\n    print(e)\r\n    print(\"please give b value>0\")\r\nelse:\r\n    print(c)\r\nfinally:\r\n    print(\"code excuted\")\r\n    \r\n','first_program.py','2024-12-19 12:18:22',12),(8,_binary 'try:\r\n    n1=int(input(\"enter A value\"))\r\n    n2=int(input(\"enter B value\"))\r\n    c=n//n2\r\nexcept Exception as e:\r\n    print(e)\r\n    print(\"please give b value>0\")\r\nelse:\r\n    print(c)\r\nfinally:\r\n    print(\"code excuted\")\r\n    \r\n','first_program.py','2024-12-19 12:23:16',12),(9,_binary 'try:\r\n    n1=int(input(\"enter A value\"))\r\n    n2=int(input(\"enter B value\"))\r\n    c=n//n2\r\nexcept Exception as e:\r\n    print(e)\r\n    print(\"please give b value>0\")\r\nelse:\r\n    print(c)\r\nfinally:\r\n    print(\"code excuted\")\r\n    \r\n','first_program.py','2024-12-19 12:24:37',12),(10,_binary 'try:\r\n    n1=int(input(\"enter A value\"))\r\n    n2=int(input(\"enter B value\"))\r\n    c=n//n2\r\nexcept Exception as e:\r\n    print(e)\r\n    print(\"please give b value>0\")\r\nelse:\r\n    print(c)\r\nfinally:\r\n    print(\"code excuted\")\r\n    \r\n','first_program.py','2024-12-19 12:36:36',12),(11,_binary 'try:\r\n    n1=int(input(\"enter A value\"))\r\n    n2=int(input(\"enter B value\"))\r\n    c=n//n2\r\nexcept Exception as e:\r\n    print(e)\r\n    print(\"please give b value>0\")\r\nelse:\r\n    print(c)\r\nfinally:\r\n    print(\"code excuted\")\r\n    \r\n','first_program.py','2024-12-19 12:37:45',12),(12,_binary 'try:\r\n    n1=int(input(\"enter A value\"))\r\n    n2=int(input(\"enter B value\"))\r\n    c=n//n2\r\nexcept Exception as e:\r\n    print(e)\r\n    print(\"please give b value>0\")\r\nelse:\r\n    print(c)\r\nfinally:\r\n    print(\"code excuted\")\r\n    \r\n','first_program.py','2024-12-21 12:10:53',12),(13,_binary '\'\'\' output-->Twinkle, twinkle, little star,\r\n	How I wonder what you are! \r\n		Up above the world so high,   		\r\n		Like a diamond in the sky. \r\nTwinkle, twinkle, little star, \r\n	How I wonder what you are!\r\n\r\nprint(\"Twinle, twinle, little star, \\n\\tHow I wonder what you are!\r\n\\n\\t\\tUp above the world so high, \\n\\t\\tLike a dimond in the sky\r\n\\nTwintle, twinkle, little star, \\n\\tHow I wonder what you are!\")\'\'\'\r\n\r\n\'\'\'a=\"vijayawada\"\r\nprint(a[0]+a[9]+a[8]+a[3])#positive indexing\r\nb=\"with god all things are possible\"\r\nprint(b[0]+b[1]+b[2]+b[3])\r\nprint(b[5]+b[6]+b[7])\r\nprint(b[9]+b[10]+b[11])\r\nprint(b[13]+b[14]+b[15]+b[16]+b[17]+b[18])\r\nprint(b[20]+b[21]+b[22])\r\nprint(b[24]+b[25]+b[26]+b[27]+b[28]+b[29]+b[30]+b[31])\r\nprint(b[0]+b[1]+b[2]+b[3],b[5]+b[6]+b[7],b[9]+b[10]+b[11],b[13]+b[14]+b[15]+b[16]+b[17]+b[18]\r\n      ,b[20]+b[21]+b[22],b[24]+b[25]+b[26]+b[27]+b[28]+b[29]+b[30]+b[31])\r\nprint(type(b))\'\'\'#positive indexing\r\n\r\n\'\'\'a=\"dont feel bad\"\r\nprint(a[-3]+a[-2]+a[-1])\r\nprint(a[-8]+a[-7]+a[-6]+a[-5])\r\nprint(a[-13]+a[-12]+a[-11]+a[-10])\r\nprint(a[-13]+a[-12]+a[-11]+a[-10],a[-8]+a[-7]+a[-6]+a[-5],a[-3]+a[-2]+a[-1])\r\nprint(type(a))\'\'\'#negative indexing\r\n\r\n\'\'\'b=\"the best institute is codegnan\"\r\nprint(b[0]+b[1]+b[2])\r\nprint(b[4]+b[5]+b[6]+b[7])\r\nprint(b[9]+b[10]+b[11]+b[12]+b[13]+b[14]+b[15]+b[16]+b[17])\r\nprint(b[19]+b[20])\r\nprint(b[22]+b[23]+b[24]+b[25]+b[26]+b[27]+b[28])\r\nprint(b[-1]+b[-2]+b[-3]+b[-4]+b[-5]+b[-6]+b[-7]+b[-8]\r\nprint(type(b))\'\'\'#both positive and negative\r\n\r\n#slicing->it stops before the specific number and you should give extra number\r\n\r\n\'\'\'a=\"chandana\"\r\nprint(a[0:3],a[3:8])\r\nprint(a[0:9])\r\nprint(type(a))\'\'\'\r\n\r\n\'\'\'b=\"trust the actions not words\"\r\nprint(b[0:5])\r\nprint(b[6:9])\r\nprint(b[10:17])\r\nprint(b[18:21])\r\nprint(b[22:27])\r\nprint(b[0:5],b[6:9],b[10:17],b[18:21],b[22:27])\r\nprint(type(b))\'\'\'\r\n\r\n\'\'\'c=\"jeevan jyothi nani chandana\"\r\nprint(c[0:6])\r\nprint(c[7:13])\r\nprint(c[14:18])\r\nprint(c[19:27])\r\nprint(c[0:6],c[7:13],c[14:18],c[19:27])\r\nprint(type(c))\'\'\'\r\n\r\n\'\'\'d=\"dont focus on others\"\r\nprint(d[0:4])\r\nprint(d[5:10])\r\nprint(d[11:13])\r\nprint(d[14:21])\r\nprint(d[0:4],d[5:10],d[11:13],d[14:21])\r\nprint(type(d))\'\'\'\r\n\r\n\'\'\'e=\"hardwork is the key for success\"\r\nprint(e[0:8])\r\nprint(e[9:11])\r\nprint(e[12:15])\r\nprint(e[16:19])\r\nprint(e[20:23])\r\nprint(e[24:31])\r\nprint(e[0:8],e[9:11],e[12:15],e[16:19],e[20:23],e[24:31])\r\nprint(type(e))\'\'\'\r\n\r\n\'\'\'f=\"codegnan it solutions\"\r\nprint(f[0:8])\r\nprint(f[9:11])\r\nprint(f[12:21])\r\nprint(f[0:8],f[9:11],f[12:21])\r\nprint(type(f))\'\'\'#positive slicing\r\n\r\n\r\n\'\'\'a=\"chandana is a good girl\"\r\nprint(a[-23:-15])\r\nprint(a[-14:-12])\r\nprint(a[-11:-10])\r\nprint(a[-9:-5])\r\nprint(a[-4:])\r\nprint(a[-23:-15],a[-14:-12],a[-11:-10],a[-9:-5],a[-4:])\r\nprint(type(a))\'\'\'\r\n\r\n\'\'\'b=\"chandana jeevan jyothi nani\"\r\nprint(b[-27:-19])\r\nprint(b[-18:-12])\r\nprint(b[-11:-5])\r\nprint(b[-4:])\r\nprint(b[-27:-19],b[-18:-12],b[-11:-5],b[-4:])\r\nprint(type(b))\'\'\'\r\n\r\n\'\'\'c=\"with god all things are possible\"\r\nprint(c[-8:])\r\nprint(c[-12:-9])\r\nprint(c[-19:-13])\r\nprint(c[-23:-20])\r\nprint(c[-27:-24])\r\nprint(c[-32:-28])\r\nprint(c[-8:],c[-12:-9],c[-19:-13],c[-23:-20],c[-27:-24],c[-32:-28])\r\nprint(c[-32:-28],c[-27:-24],c[-23:-20],c[-19:-13],c[-12:-9],c[-8:])\r\nprint(type(c))\'\'\'\r\n\r\n\'\'\'d=\"i love jesus\"\r\nprint(d[-5:])\r\nprint(d[-10:-6])\r\nprint(d[:-11])\r\nprint(d[-5:],d[-10:-6],d[:-11])\r\nprint(d[:-11],d[-10:-6],d[-5:])\r\nprint(type(d))\'\'\'\r\n\r\n\'\'\'e=\"jessy nissy\"\r\nprint(e[-5:])\r\nprint(e[-11:-6])\r\nprint(e[-5:],e[-11:-6],e[-11:-6],e[-5:])\r\nprint(type(e))\'\'\'\r\n\r\n\'\'\'f=\"jeevan charan babi santhosh prabhu\"\r\nprint(f[-6:])\r\nprint(f[-15:-7])\r\nprint(f[-20:-16])\r\nprint(f[-27:-21])\r\nprint(f[-34:-28])\r\nprint(f[-6:],f[-15:-7],f[-20:-16],f[-27:-21],f[-34:-28])\r\nprint(type(f))\'\'\'\r\n\r\nh=\"chandana spandana meghana srujana\"\r\nprint(h[0:9])\r\nprint(h[:-25])\r\nprint(h[9:18])\r\nprint(h[-24:-16])\r\nprint(h[18:26])\r\nprint(h[-15:-7])\r\nprint(h[26:33])\r\nprint(h[-7:])\r\nprint(h[0:9],h[:-25],h[9:18],h[-24:-16],h[18:26],h[-15:-7],h[26:33],h[-7:])\r\nprint(type(h))\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n','practice.py','2024-12-21 12:13:40',12);
/*!40000 ALTER TABLE `filedata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notes` (
  `nid` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `ndescription` text,
  `create_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `userid` int DEFAULT NULL,
  PRIMARY KEY (`nid`),
  UNIQUE KEY `title` (`title`),
  KEY `userid` (`userid`),
  CONSTRAINT `notes_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` VALUES (13,'asssssssssssssssssssss','ssssssssssssssssssssssssssssssssssssssssss','2024-12-18 11:46:22',4),(16,'HTML','SDXFCGVBHJNK','2024-12-18 11:49:43',12),(18,'CSS','Cascading Style Sheet','2024-12-21 11:50:15',12);
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `userid` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `useremail` varchar(50) NOT NULL,
  `password` varbinary(10) DEFAULT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `useremail` (`useremail`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (4,'sai','chandanavalluri25@gmail.com',_binary '1234'),(12,'Chandana Valluri','vallurichandna@gmail.com',_binary '1234');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-23 11:49:31
