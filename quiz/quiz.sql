-- MySQL dump 10.11
--
-- Host: localhost    Database: quiz
-- ------------------------------------------------------
-- Server version	5.0.77-community-nt

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
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `message` (
  `tomsg` varchar(30) NOT NULL,
  `id` int(11) NOT NULL auto_increment,
  `frommsg` varchar(30) NOT NULL,
  `msg` varchar(200) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES ('reetugupta11@gmail.com',2,'ritikxman@gmail.com','maam i want java quiz'),('reetugupta11@gmail.com',3,'ritikxman@gmail.com','hello :d');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `question` (
  `quiztype` varchar(30) NOT NULL,
  `qid` int(11) NOT NULL auto_increment,
  `email` varchar(30) NOT NULL,
  `ques` varchar(150) NOT NULL,
  `opt1` varchar(70) NOT NULL,
  `opt2` varchar(70) NOT NULL,
  `opt3` varchar(70) NOT NULL,
  `opt4` varchar(70) NOT NULL,
  `rightans` varchar(200) default NULL,
  PRIMARY KEY  (`qid`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES ('datastructure',16,'reetugupta11@gmail.com','Which of the following DS are linear?','Linked List','Tree','HashMAp','Array','opt4'),('datastructure',17,'reetugupta11@gmail.com','Which DS has a key-value pair?','TreeSet','HashMap','HashSet','AbstractList','opt2'),('datastructure',18,'reetugupta11@gmail.com','Which of the Following follows LIFO order?','Queue','ArrayList','Stack','DequEq','opt1'),('datastructure',19,'reetugupta11@gmail.com','Which DS allows fastest Insertion','HashSet','LinkedList','Queue','Stack','opt2'),('datastructure',20,'reetugupta11@gmail.com','in which DS redundancy is not allowed?','TreeSet','HashMap','HashSet','LinkedLIst','opt3'),('c',21,'reetugupta11@gmail.com','C is which type of lanugage','structured','functional','scripting','oops','opt1'),('c',22,'reetugupta11@gmail.com','pointer is referred by which symbol?','*','-->','&','#','opt1'),('c',23,'reetugupta11@gmail.com','keyword to fetch libraried into C program','import','using','include','fetch','opt1'),('c',24,'reetugupta11@gmail.com','which is the operator for power fucntio?','**','^','exp','none','opt1'),('c',25,'reetugupta11@gmail.com','in which call .. values of atcual argument does not change?','call by operator','call by value','call by refernce','call by constant','opt2'),('java',27,'teacher1@gmail.com','keyword for dynamic allocation of memory','bool','key','new','create','opt3'),('java',28,'teacher1@gmail.com','Scanner class is present in which package?','java.io','java.lang','java.awt','java.util','opt4'),('java',29,'teacher1@gmail.com','which keyword is used to avoid deadlock in multithreading?','synchronized','volatile','dead','transient','opt1'),('java',30,'teacher1@gmail.com','methods of interface are by default declared as?','final volatile','static public','final static','public void','opt3'),('sql',32,'reetugupta11@gmail.com','3 type of sql statements?','ddd ,ddl ,dll','dml,ddl,dal','dcl,dml,ddl','dsl,drl,dtl','opt3'),('sql',34,'reetugupta11@gmail.com','query for printing in sql','show','select','print','define','opt2'),('sql',35,'reetugupta11@gmail.com','which one of the following is a database?','Net Beans','MyOracle','MyData','MySql','opt4'),('sql',36,'reetugupta11@gmail.com','You can add a row using SQL in a database with which of the following?','add','insert','create','make','opt2'),('sql',37,'reetugupta11@gmail.com','The SQL WHERE clause?','limits the column data that are returned.','limits the row data are returned.','Both opt1 and opt2 are correct.','Neither opt1 nor opt2 are correct.','opt2'),('sql',38,'reetugupta11@gmail.com','Which of the following is the original purpose of SQL?','To specify the syntax and semantics of SQL data definition language','To specify the syntax and semantics of SQL manipulation language','To define the data structures','All of the above.','opt4'),('sql',39,'reetugupta11@gmail.com','The wildcard in a WHERE clause is useful when?','An exact match is necessary in a SELECT statement.','An exact match is not possible in a SELECT statement.','An exact match is necessary in a CREATE statement.','An exact match is not possible in a CREATE statement.','opt2'),('sql',40,'reetugupta11@gmail.com','The command to eliminate a table from a database is?','REMOVE TABLE CUSTOMER','DROP TABLE CUSTOMER','DELETE TABLE CUSTOMER;','UPDATE TABLE CUSTOMER;','opt2'),('java',42,'reetugupta11@gmail.com','What is the range of data type short in Java?','-128 to 127','-32768 to 32767','-2147483648 to 2147483647','none of these','opt2'),('java',43,'reetugupta11@gmail.com','An expression involving byte, int, and literal numbers is promoted to which of these?','int','long','byte','float','opt1'),('java',44,'reetugupta11@gmail.com','Which of these literals can be contained in a data type float variable?','1.7e-308','3.4e-038','1.7e+308','3.4e-050','opt2'),('java',45,'reetugupta11@gmail.com','Which data type value is returned by all transcendental math functions?','int','char','float','double','opt4'),('java',46,'reetugupta11@gmail.com','Which of these class is superclass of String and StringBuffer class?','java.util','java.lang','ArrayList','None of the mentioned','opt2'),('java',47,'reetugupta11@gmail.com','Which of these keyword can be used in subclass to call the constructor of superclass?','super','this','extends','new','opt1'),('java',48,'reetugupta11@gmail.com','What is the process of defining a method in subclass having same name & type signature as a method in its superclass?','Method Overloading','Method Overriding','Method Hiding','Method Abstraction','opt2'),('java',49,'reetugupta11@gmail.com','Which of these keywords can be used to prevent Method overriding?','static','final','asset','private','opt2'),('java',50,'reetugupta11@gmail.com','Which of these is correct way of calling a constructor having no parameters, of superclass A by subclass B?','super.A();','super(void);','superclass()','super()','opt4'),('java',51,'reetugupta11@gmail.com','Which of these is supported by method overriding in Java?','Encapsulation','Abstraction','Polymorphism','Inheritance','opt3'),('datastructure',57,'reetugupta11@gmail.com','Which of the following data structures are indexed structures?','linear arrays','linked list','Both opt1 and opt2 are correct.','none of these','opt1'),('datastructure',58,'reetugupta11@gmail.com','Which of the following is not the required condition for binary search algorithm?','The list must be sorted','there should be the direct access to the middle element in any sublist','There must be mechanism to delete and/or insert elements in list','none of above','opt3'),('datastructure',59,'reetugupta11@gmail.com','A variable P is called pointer if?','P contains the address of an element in DATA.','P points to the address of first element in DATA','P can store only memory addresses','P contain the DATA and the address of DATA','opt2'),('datastructure',60,'reetugupta11@gmail.com','The term \"push\" and \"pop\" is related to the?','stack','queue','dequeu','lists','opt1'),('datastructure',61,'reetugupta11@gmail.com','When inorder traversing a tree resulted E A C K F H D B G; the preorder traversal would return','FAEKCDBHG','FAEKCDHGB','EAFKHDCBG','FEAKDCHBG','opt2');
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `student` (
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `number` varchar(30) NOT NULL,
  PRIMARY KEY  (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('manvi','manvi@gmail.com','manvi','9999999999'),('ritik','ritikxman@gmail.com','ritik','9407510883'),('student1','student1@gmail.com','student1','9235911720');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `teacher` (
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `number` varchar(30) NOT NULL,
  `subject` varchar(30) NOT NULL,
  PRIMARY KEY  (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES ('reetu','reetugupta11@gmail.com','reetuu','8765788798','datastructure'),('teacher1','teacher1@gmail.com','teacher1','9999999999','java');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-07-06  9:23:32
