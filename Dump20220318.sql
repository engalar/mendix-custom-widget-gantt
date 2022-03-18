-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mendix
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `administration$account`
--

DROP TABLE IF EXISTS `administration$account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administration$account` (
  `id` bigint NOT NULL,
  `fullname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `islocaluser` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index2` (`fullname`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administration$account`
--

LOCK TABLES `administration$account` WRITE;
/*!40000 ALTER TABLE `administration$account` DISABLE KEYS */;
/*!40000 ALTER TABLE `administration$account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mendixsystem$association`
--

DROP TABLE IF EXISTS `mendixsystem$association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mendixsystem$association` (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `association_name` varchar(511) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `table_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `parent_entity_id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `child_entity_id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `parent_column_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `child_column_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pk_index_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `index_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mendixsystem$association`
--

LOCK TABLES `mendixsystem$association` WRITE;
/*!40000 ALTER TABLE `mendixsystem$association` DISABLE KEYS */;
INSERT INTO `mendixsystem$association` VALUES ('00640985-3c73-4b15-9705-d4ec3ff58e6b','System.User_Language','system$user_language','282e2e60-88a5-469d-84a5-ba8d9151644f','76805df3-dede-435f-92a6-d6525c68a693','system$userid','system$languageid',NULL,'idx_system$user_language_system$language_system$user'),('0169cc0e-491b-4ee3-812d-6bf3ba28e287','System.WorkflowUserTask_WorkflowUserTaskDefinition','system$workflowusertask_workflowusertaskdefinition','3729d27c-735b-457a-b210-9dffb125c3f3','e09e866f-288b-475c-9465-792cde8b878c','system$workflowusertaskid','system$workflowusertaskdefinitionid',NULL,'idx_system$workflowusertask_workflowusertaskdefinition'),('07738295-23fe-3fc1-832b-ed18b22727f0','System.owner','system$owner','282e2e60-88a5-469d-84a5-ba8d9151644f','282e2e60-88a5-469d-84a5-ba8d9151644f','id','system$owner',NULL,NULL),('0bbc01af-7337-438a-ba7d-663ce015a628','System.WorkflowSystemTask_Workflow','system$workflowsystemtask_workflow','87758885-664a-408c-91c4-36139c291545','2ae37bf5-ecb8-4c55-b967-d7383925b208','system$workflowsystemtaskid','system$workflowid',NULL,'idx_system$workflowsystemtask_workflow'),('1442c9da-d4ae-3cf5-b3c0-6c878743e4e5','System.owner','system$owner','170ce49d-f29c-4fac-99a6-b55e8a3aeb39','282e2e60-88a5-469d-84a5-ba8d9151644f','id','system$owner',NULL,NULL),('19892a2b-f17a-4c29-80c1-c81f8025b36c','System.BackgroundJob_Session','system$backgroundjob_session','660db38b-5ab4-4d15-b649-93a947ecea82','37f9fd49-5318-4c63-9a51-f761779b202f','system$backgroundjobid','system$sessionid',NULL,'idx_system$backgroundjob_session'),('1adca745-c7a9-44ff-92bb-5d41cb2a1743','System.grantableRoles','system$grantableroles','92ef30a6-de04-423c-84fd-a21e9b9eeae2','92ef30a6-de04-423c-84fd-a21e9b9eeae2','system$userroleid1','system$userroleid2',NULL,'idx_system$grantableroles_system$userrole_system$userrole'),('1c3ed941-33a5-4a5f-b758-f1102a775851','System.WorkflowActivity_WorkflowSystemTask','system$workflowactivity_workflowsystemtask','a5952592-bb2c-4798-9805-f9ff91ad97de','87758885-664a-408c-91c4-36139c291545','system$workflowactivityid','system$workflowsystemtaskid',NULL,'idx_system$workflowactivity_workflowsystemtask'),('1cbb5da6-dbb6-447a-8ea2-b193035320c7','System.UnreferencedFile_XASInstance','system$unreferencedfile_xasinstance','4e336d7d-71e8-41f4-9f07-8f0646543e81','d4154981-8dac-4150-aec5-efa3ef62a7a2','system$unreferencedfileid','system$xasinstanceid',NULL,'idx_system$unreferencedfile_xasinstance'),('20ca86b2-5a00-4131-aee1-427cb2e94425','System.TokenInformation_User','system$tokeninformation_user','09b2f0fe-4a11-4afc-a16e-94992a3ebc3d','282e2e60-88a5-469d-84a5-ba8d9151644f','system$tokeninformationid','system$userid',NULL,'idx_system$tokeninformation_user'),('20e176c7-9235-4caf-ab6f-f5a2c329c224','MyFirstModule.dependenTask','myfirstmodule$dependentask','2e899754-1e5f-4b0d-aff5-5530c07b860b','2e899754-1e5f-4b0d-aff5-5530c07b860b','myfirstmodule$tasknodeid1','myfirstmodule$tasknodeid2',NULL,'idx_myfirstmodule$dependentask'),('2a2739dd-9160-3616-8999-a7a147bf4cda','System.owner','system$owner','eb5c32a1-85ec-49d1-8bca-ecca779cd539','282e2e60-88a5-469d-84a5-ba8d9151644f','id','system$owner',NULL,NULL),('2b065cdd-3d2c-4517-9727-ced57d97fd03','System.WorkflowDefinition_CurrentWorkflowVersion','system$workflowdefinition_currentworkflowversion','5c570d3b-7b31-44fe-abd6-269a234584c5','30834a21-e81c-4cbf-a10b-5f60f5fddc82','system$workflowdefinitionid','system$workflowversionid',NULL,'idx_system$workflowdefinition_currentworkflowversion'),('2b9c1990-302f-474c-9341-9d5d23b27653','System.WorkflowUserTask_TargetUsers','system$workflowusertask_targetusers','3729d27c-735b-457a-b210-9dffb125c3f3','282e2e60-88a5-469d-84a5-ba8d9151644f','system$workflowusertaskid','system$userid',NULL,'idx_system$workflowusertask_targetusers'),('2cf6fdd7-e448-3a4d-b70e-6d875c2136d7','System.owner','system$owner','2ae37bf5-ecb8-4c55-b967-d7383925b208','282e2e60-88a5-469d-84a5-ba8d9151644f','id','system$owner',NULL,NULL),('2e5166f9-7430-4265-8465-f7405d6fe1e9','System.WorkflowActivity_WorkflowVersion','system$workflowactivity_workflowversion','a5952592-bb2c-4798-9805-f9ff91ad97de','30834a21-e81c-4cbf-a10b-5f60f5fddc82','system$workflowactivityid','system$workflowversionid',NULL,'idx_system$workflowactivity_workflowversion'),('3348e396-6643-4a5b-bcb1-a939cdcdf435','System.WorkflowVersion_WorkflowUserTaskDefinition','system$workflowversion_workflowusertaskdefinition','30834a21-e81c-4cbf-a10b-5f60f5fddc82','e09e866f-288b-475c-9465-792cde8b878c','system$workflowversionid','system$workflowusertaskdefinitionid',NULL,'idx_system$workflowversion_workflowusertaskdefinition'),('3b442dcb-c1e1-4973-952e-9b6e246480c8','MyFirstModule.project','myfirstmodule$project','c9ae2f46-badd-478f-b856-7fe597afdc4e','fd4ec8b5-f157-417b-9e06-6e8e03fceddf','myfirstmodule$basenodeid','myfirstmodule$projectnodeid',NULL,'idx_myfirstmodule$project'),('3dbea779-c8af-467e-a957-140c313ac1b7','System.Thumbnail_Image','system$thumbnail_image','4babd4c0-b903-4cb4-b1af-e59c4a5fcf3d','37827192-315d-4ab6-85b8-f626f866ea76','system$thumbnailid','system$imageid',NULL,'idx_system$thumbnail_image_system$image_system$thumbnail'),('53a1c6d7-5e4d-4a2d-81ec-58fde4bbba8a','System.WorkflowUserTask_Workflow','system$workflowusertask_workflow','3729d27c-735b-457a-b210-9dffb125c3f3','2ae37bf5-ecb8-4c55-b967-d7383925b208','system$workflowusertaskid','system$workflowid',NULL,'idx_system$workflowusertask_workflow'),('546aaff5-62e1-40ce-ab45-d40d0a0478f1','System.Session_User','system$session_user','37f9fd49-5318-4c63-9a51-f761779b202f','282e2e60-88a5-469d-84a5-ba8d9151644f','system$sessionid','system$userid',NULL,'idx_system$session_user_system$user_system$session'),('58aa640e-8db7-479b-9f91-2425b009ee06','System.Workflow_CurrentActivity','system$workflow_currentactivity','2ae37bf5-ecb8-4c55-b967-d7383925b208','a5952592-bb2c-4798-9805-f9ff91ad97de','system$workflowid','system$workflowactivityid',NULL,'idx_system$workflow_currentactivity'),('6013226d-aeae-3cd2-acec-d95d8bd5c3ad','System.changedBy','system$changedby','282e2e60-88a5-469d-84a5-ba8d9151644f','282e2e60-88a5-469d-84a5-ba8d9151644f','id','system$changedby',NULL,NULL),('61a2af90-0720-41a0-bea9-8a3d60de71d0','System.WorkflowVersion_PreviousVersion','system$workflowversion_previousversion','30834a21-e81c-4cbf-a10b-5f60f5fddc82','30834a21-e81c-4cbf-a10b-5f60f5fddc82','system$workflowversionid1','system$workflowversionid2',NULL,'idx_system$workflowversion_previousversion'),('6440aa38-83ff-4ba6-8c85-5ff785956b09','System.SynchronizationErrorFile_SynchronizationError','system$synchronizationerrorfile_synchronizationerror','9b26443c-f4bb-4252-aa62-9eaffb71c4db','f9818ad8-3214-4b1d-b837-3181863f5ed5','system$synchronizationerrorfileid','system$synchronizationerrorid',NULL,'idx_system$synchronizationerrorfile_synchronizationerror'),('685c576c-19af-4ea7-983d-ece147c1cebc','System.WorkflowUserTaskDefinition_WorkflowDefinition','system$workflowusertaskdefinition_workflowdefinition','e09e866f-288b-475c-9465-792cde8b878c','5c570d3b-7b31-44fe-abd6-269a234584c5','system$workflowusertaskdefinitionid','system$workflowdefinitionid',NULL,'idx_system$workflowusertaskdefinition_workflowdefinition'),('6adaf137-4299-435e-9475-a871a4f21471','System.UserRoles','system$userroles','282e2e60-88a5-469d-84a5-ba8d9151644f','92ef30a6-de04-423c-84fd-a21e9b9eeae2','system$userid','system$userroleid',NULL,'idx_system$userroles_system$userrole_system$user'),('77c87c19-f28d-4ca3-870c-351722cf5e9e','System.Workflow_WorkflowDefinition','system$workflow_workflowdefinition','2ae37bf5-ecb8-4c55-b967-d7383925b208','5c570d3b-7b31-44fe-abd6-269a234584c5','system$workflowid','system$workflowdefinitionid',NULL,'idx_system$workflow_workflowdefinition'),('7b8a18de-fe6d-4735-9841-0d9d4760697e','System.ScheduledEventInformation_XASInstance','system$scheduledeventinformation_xasinstance','685df5a6-1e02-49bb-a0b5-5a55c5e8313d','d4154981-8dac-4150-aec5-efa3ef62a7a2','system$scheduledeventinformationid','system$xasinstanceid',NULL,'idx_system$scheduledeventinformation_xasinstance'),('8d8c8ffc-08d6-4dc5-88f6-5b344763d948','System.WorkflowActivity_PreviousActivity','system$workflowactivity_previousactivity','a5952592-bb2c-4798-9805-f9ff91ad97de','a5952592-bb2c-4798-9805-f9ff91ad97de','system$workflowactivityid1','system$workflowactivityid2',NULL,'idx_system$workflowactivity_previousactivity'),('929fbbed-d3a8-4ea2-b6ad-b28de4f77776','System.WorkflowUserTask_Assignee','system$workflowusertask_assignee','3729d27c-735b-457a-b210-9dffb125c3f3','282e2e60-88a5-469d-84a5-ba8d9151644f','system$workflowusertaskid','system$userid',NULL,'idx_system$workflowusertask_assignee'),('956c1382-b9fc-3367-b0b2-cb67ee9ef13f','System.changedBy','system$changedby','170ce49d-f29c-4fac-99a6-b55e8a3aeb39','282e2e60-88a5-469d-84a5-ba8d9151644f','id','system$changedby',NULL,NULL),('aaebf783-447c-4386-ba25-969132aa6f7c','System.WorkflowActivity_WorkflowUserTask','system$workflowactivity_workflowusertask','a5952592-bb2c-4798-9805-f9ff91ad97de','3729d27c-735b-457a-b210-9dffb125c3f3','system$workflowactivityid','system$workflowusertaskid',NULL,'idx_system$workflowactivity_workflowusertask'),('b822057e-d9ee-3cd6-8535-6bc9268cb842','System.owner','system$owner','f9818ad8-3214-4b1d-b837-3181863f5ed5','282e2e60-88a5-469d-84a5-ba8d9151644f','id','system$owner',NULL,NULL),('bab4a1ab-7d40-47d5-8f21-fc99d089211d','System.User_TimeZone','system$user_timezone','282e2e60-88a5-469d-84a5-ba8d9151644f','7f7c72af-1ab7-4bf9-bed6-16db5c8fcf6f','system$userid','system$timezoneid',NULL,'idx_system$user_timezone_system$timezone_system$user'),('bb5f3672-b885-47a9-8967-c34b12375e50','MyFirstModule.assignee','myfirstmodule$assignee','c9ae2f46-badd-478f-b856-7fe597afdc4e','282e2e60-88a5-469d-84a5-ba8d9151644f','myfirstmodule$basenodeid','system$userid',NULL,'idx_myfirstmodule$assignee_system$user_myfirstmodule$basenode'),('c063e3e7-a440-47f0-8065-6fac7c723690','System.WorkflowVersion_WorkflowDefinition','system$workflowversion_workflowdefinition','30834a21-e81c-4cbf-a10b-5f60f5fddc82','5c570d3b-7b31-44fe-abd6-269a234584c5','system$workflowversionid','system$workflowdefinitionid',NULL,'idx_system$workflowversion_workflowdefinition'),('d88b344c-b1e5-4759-b60e-0348e63ac445','System.UserReportInfo_User','system$userreportinfo_user','1c90a770-98ef-45df-9267-b87973cc6581','282e2e60-88a5-469d-84a5-ba8d9151644f','system$userreportinfoid','system$userid',NULL,'idx_system$userreportinfo_user_system$user_system$userreportinfo'),('ef863cc9-2d20-4a74-af65-0320a76b6a10','System.WorkflowActivity_Workflow','system$workflowactivity_workflow','a5952592-bb2c-4798-9805-f9ff91ad97de','2ae37bf5-ecb8-4c55-b967-d7383925b208','system$workflowactivityid','system$workflowid',NULL,'idx_system$workflowactivity_workflow'),('f6de554a-f765-3d80-aa59-2b3da4167137','System.owner','system$owner','c6c131c8-8779-4213-9b26-a64e141f26a8','282e2e60-88a5-469d-84a5-ba8d9151644f','id','system$owner',NULL,NULL),('fc3944c4-7a19-4a4d-9b0d-4a0c9d7aeb23','System.BackgroundJob_XASInstance','system$backgroundjob_xasinstance','660db38b-5ab4-4d15-b649-93a947ecea82','d4154981-8dac-4150-aec5-efa3ef62a7a2','system$backgroundjobid','system$xasinstanceid',NULL,'idx_system$backgroundjob_xasinstance');
/*!40000 ALTER TABLE `mendixsystem$association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mendixsystem$attribute`
--

DROP TABLE IF EXISTS `mendixsystem$attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mendixsystem$attribute` (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `entity_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `attribute_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `column_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` int NOT NULL,
  `length` int DEFAULT NULL,
  `default_value` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `is_auto_number` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mendixsystem$attribute`
--

LOCK TABLES `mendixsystem$attribute` WRITE;
/*!40000 ALTER TABLE `mendixsystem$attribute` DISABLE KEYS */;
INSERT INTO `mendixsystem$attribute` VALUES ('015434e4-2727-4ee8-aef4-49d17b16afb1','e09e866f-288b-475c-9465-792cde8b878c','ModelGUID','modelguid',30,36,'',0),('040db5be-7810-48b3-a569-516191e8803d','282e2e60-88a5-469d-84a5-ba8d9151644f','LastLogin','lastlogin',20,0,'',0),('047e7010-cbc4-4bba-bf64-774fa656d010','3729d27c-735b-457a-b210-9dffb125c3f3','Outcome','outcome',30,200,'',0),('0918f273-80a5-42d6-ae35-a7a50ab61210','c6c131c8-8779-4213-9b26-a64e141f26a8','XASId','xasid',30,50,'',0),('09951e9a-b362-499d-bf7c-68300a314110','eb5c32a1-85ec-49d1-8bca-ecca779cd539','ThreadId','threadid',4,0,'',0),('09cc89ca-ea7f-430a-b407-370a29ab6344','41738f55-7a10-4b87-bda4-12c6b0e4ea0e','End','end',20,0,'',0),('0a53921a-933e-4272-99a3-d86715840c82','df86cd1e-f9ac-42d4-bcd0-a185540a247a','MemberDetails','memberdetails',30,0,'',0),('0a97e88b-880d-4153-b5f7-2e9ff5f9472d','2e899754-1e5f-4b0d-aff5-5530c07b860b','Detail','detail',30,200,'',0),('0b9398e4-9bb7-4ab8-958c-43526f2c83bf','09b2f0fe-4a11-4afc-a16e-94992a3ebc3d','UserAgent','useragent',30,0,'',0),('0c2b42ef-02bd-3783-bf55-02a92f4275c7','37f9fd49-5318-4c63-9a51-f761779b202f','createdDate','createddate',20,0,'',0),('0c4060ab-4901-419c-a184-81f20fa0460e','d4154981-8dac-4150-aec5-efa3ef62a7a2','LastUpdate','lastupdate',20,0,'',0),('0f81688b-e719-4204-8f86-8fcd664a0992','170ce49d-f29c-4fac-99a6-b55e8a3aeb39','FileID','fileid',0,0,'1',1),('1060f919-60c9-4f90-91ee-81b4bf584bcd','7f7c72af-1ab7-4bf9-bed6-16db5c8fcf6f','RawOffset','rawoffset',3,0,'',0),('11384083-d925-4b16-a625-60af27227bb4','a5952592-bb2c-4798-9805-f9ff91ad97de','ActivityGUID','activityguid',30,36,'',0),('122c4e1e-edda-4311-85b7-2a715626b869','3729d27c-735b-457a-b210-9dffb125c3f3','Name','name',30,0,'',0),('14018140-78df-4e36-9869-d0b53129d2c9','170ce49d-f29c-4fac-99a6-b55e8a3aeb39','Size','size',4,0,'-1',0),('15e3e13d-2df6-4d8a-a1cc-58eea4cec602','282e2e60-88a5-469d-84a5-ba8d9151644f','WebServiceUser','webserviceuser',10,0,'false',0),('17ae7bb0-2dea-4860-9c7b-f236aaf5a790','3729d27c-735b-457a-b210-9dffb125c3f3','DueDate','duedate',20,0,'',0),('1971b98a-c835-4f3c-83bc-b67fde862782','41738f55-7a10-4b87-bda4-12c6b0e4ea0e','Progress','progress',5,0,'0',0),('1c9a62fd-2e39-4fd3-92a4-748940ae67ba','a5952592-bb2c-4798-9805-f9ff91ad97de','StartTime','starttime',20,0,'',0),('1f680c7a-7bca-4188-9ecd-184da0768b82','3729d27c-735b-457a-b210-9dffb125c3f3','OutcomeModelGUID','outcomemodelguid',30,36,'',0),('1ffdcb00-e7a4-4303-8b40-2319d9ba01b7','37f9fd49-5318-4c63-9a51-f761779b202f','LastActive','lastactive',20,0,'',0),('2223cc2b-6f68-4964-90c4-46ceed8c2f62','c6c131c8-8779-4213-9b26-a64e141f26a8','Status','status',40,12,'Idle',0),('22289399-6f82-3eda-bbdf-15ddacf9f408','89cea6a8-a2df-4925-85e4-2b0c447e98c3','createdDate','createddate',20,0,'',0),('245def96-0172-3d83-96fe-0ee1ba825f26','170ce49d-f29c-4fac-99a6-b55e8a3aeb39','changedDate','changeddate',20,0,'',0),('26ccae8a-22b1-4899-87c9-c5b4915dbf28','685df5a6-1e02-49bb-a0b5-5a55c5e8313d','Description','description',30,0,'',0),('28d526e0-915b-466f-80c8-56af32ece225','282e2e60-88a5-469d-84a5-ba8d9151644f','IsAnonymous','isanonymous',10,0,'false',0),('29d27bde-bc08-4f80-9d6c-9f47a3209452','f9818ad8-3214-4b1d-b837-3181863f5ed5','ObjectContent','objectcontent',30,0,'',0),('2c5449d3-09f4-463f-8a99-439c6cb74fed','30834a21-e81c-4cbf-a10b-5f60f5fddc82','ModelJSON','modeljson',30,0,'',0),('2dbe88f5-2b15-4ec3-b295-2e2b496a1ebd','d4154981-8dac-4150-aec5-efa3ef62a7a2','AllowedNumberOfConcurrentUsers','allowednumberofconcurrentusers',3,0,'',0),('2f76e5ca-ccbe-4137-856b-1999a51431f2','f9818ad8-3214-4b1d-b837-3181863f5ed5','Reason','reason',30,0,'',0),('2fc91d80-70d3-4868-9332-142b1f447888','eb5c32a1-85ec-49d1-8bca-ecca779cd539','MicroflowName','microflowname',30,200,'',0),('3023edea-95d3-4a8b-84e3-32a749729400','eb5c32a1-85ec-49d1-8bca-ecca779cd539','Started','started',20,0,'',0),('3236d0ea-2456-447a-b2ff-fc3b10a6ddb2','a5952592-bb2c-4798-9805-f9ff91ad97de','Caption','caption',30,0,'',0),('33adad79-f658-4e69-8c58-e003fb3c78be','685df5a6-1e02-49bb-a0b5-5a55c5e8313d','EndTime','endtime',20,0,'',0),('3501ab9f-42c7-46e4-ac8f-c51e256c934e','170ce49d-f29c-4fac-99a6-b55e8a3aeb39','Name','name',30,400,'',0),('354f1eb1-13a0-4bc4-8fdf-0faad10e2b81','eb5c32a1-85ec-49d1-8bca-ecca779cd539','QueueName','queuename',30,200,'',0),('3898cc5e-0a5c-402a-8f4b-ffa2271fe5b5','c6c131c8-8779-4213-9b26-a64e141f26a8','QueueName','queuename',30,200,'',0),('3a3aca86-2f34-4038-a62f-7c0654ce21b7','92ef30a6-de04-423c-84fd-a21e9b9eeae2','Name','name',30,100,'',0),('3aadbd20-595c-4fdf-84e1-2b65639f8d4b','c6c131c8-8779-4213-9b26-a64e141f26a8','Started','started',20,0,'',0),('3b8d6bea-dfb5-497b-b2ad-c423efbd66eb','a5952592-bb2c-4798-9805-f9ff91ad97de','Error','error',30,0,'',0),('3cb7dc95-eac8-4999-8af4-492a4f2c0d73','92ef30a6-de04-423c-84fd-a21e9b9eeae2','ModelGUID','modelguid',30,36,'',0),('41c141fa-700b-44de-870d-1aa971e11689','37827192-315d-4ab6-85b8-f626f866ea76','PublicThumbnailPath','publicthumbnailpath',30,500,'',0),('42eb180e-36df-4325-8b97-dec1e16f0e99','3078a23e-13b2-4a9b-84e4-2881fdee53c6','FullName','fullname',30,200,'',0),('4359850e-675d-49db-a25c-d78ee530dc33','d4154981-8dac-4150-aec5-efa3ef62a7a2','PartnerName','partnername',30,200,'',0),('45d9481a-1e1d-4aaf-a6b4-16885fb18245','c9ae2f46-badd-478f-b856-7fe597afdc4e','StartTime','starttime',20,0,'',0),('49503f62-1887-4823-bf94-db88a332f316','3729d27c-735b-457a-b210-9dffb125c3f3','EndTime','endtime',20,0,'',0),('49d88092-1ce9-46e5-baad-b6c22831824d','2ae37bf5-ecb8-4c55-b967-d7383925b208','CanBeRestarted','canberestarted',10,0,'false',0),('4c70166c-8ebb-4105-a35a-d1e15a82d925','2ae37bf5-ecb8-4c55-b967-d7383925b208','PreviousState','previousstate',40,12,'',0),('4c9627fb-3b64-4239-95eb-f51fb8d3f2b3','170ce49d-f29c-4fac-99a6-b55e8a3aeb39','HasContents','hascontents',10,0,'false',0),('542b537f-c419-4e32-a1d3-aee662c3ba80','3078a23e-13b2-4a9b-84e4-2881fdee53c6','Email','email',30,200,'',0),('544b4b9a-c5ac-4785-8efb-647a51648024','3729d27c-735b-457a-b210-9dffb125c3f3','Description','description',30,0,'',0),('5504a52c-8796-4cec-ac56-4ac7b699939c','87758885-664a-408c-91c4-36139c291545','State','state',40,10,'InProgress',0),('59f6ed7a-8e1a-46c5-a288-c60cdd1baf50','2ae37bf5-ecb8-4c55-b967-d7383925b208','EndTime','endtime',20,0,'',0),('5fecca4d-0f28-484d-9fe7-1afde250b07d','170ce49d-f29c-4fac-99a6-b55e8a3aeb39','DeleteAfterDownload','deleteafterdownload',10,0,'false',0),('608eb1ee-715d-41e4-a565-4c95b98874c7','87758885-664a-408c-91c4-36139c291545','OutcomeModelGUID','outcomemodelguid',30,36,'',0),('651e7007-7fcd-43b3-a918-a0de81de34bf','685df5a6-1e02-49bb-a0b5-5a55c5e8313d','StartTime','starttime',20,0,'',0),('6534293a-7a10-451c-8b3d-a689d3a281f3','c6c131c8-8779-4213-9b26-a64e141f26a8','ContextData','contextdata',30,0,'',0),('653e72c3-2fa4-471c-b0c7-829c5a939e99','3729d27c-735b-457a-b210-9dffb125c3f3','Reason','reason',30,0,'',0),('65b02632-d981-3a1c-8ec5-2a36fe6fd7d8','d4154981-8dac-4150-aec5-efa3ef62a7a2','createdDate','createddate',20,0,'',0),('6609f51d-d19f-49df-92d8-582e78e55ba0','eb5c32a1-85ec-49d1-8bca-ecca779cd539','Status','status',40,12,'',0),('67c28961-7a7a-11e6-bdf4-0800200c9a66','67c28960-7a7a-11e6-bdf4-0800200c9a66','SessionId','sessionid',30,36,'',0),('67c28962-7a7a-11e6-bdf4-0800200c9a66','67c28960-7a7a-11e6-bdf4-0800200c9a66','ObjectId','objectid',4,0,'0',0),('69acb4a2-be26-4cc5-902a-a8591d357510','282e2e60-88a5-469d-84a5-ba8d9151644f','Name','name',30,100,'',0),('6abafab4-6a96-46c0-9475-b72cc4d3ffd6','7f7c72af-1ab7-4bf9-bed6-16db5c8fcf6f','Code','code',30,50,'',0),('6bd4228f-341d-45b4-a411-765b024ccdfa','c6c131c8-8779-4213-9b26-a64e141f26a8','Retried','retried',4,0,'0',0),('6c24f3a3-6473-4a2b-8a93-fca27764f394','eb5c32a1-85ec-49d1-8bca-ecca779cd539','Created','created',20,0,'',0),('6c8ea01f-faf8-40dd-8b81-297fbe14cda4','eb5c32a1-85ec-49d1-8bca-ecca779cd539','QueueId','queueid',30,36,'',0),('6d2a7545-4e52-4c5d-ac02-0b8211d0585f','685df5a6-1e02-49bb-a0b5-5a55c5e8313d','Status','status',40,9,'',0),('73d41075-6c63-4c64-92e3-ce264ddabe59','eb5c32a1-85ec-49d1-8bca-ecca779cd539','ErrorMessage','errormessage',30,0,'',0),('752e783a-9db4-4825-a87c-7e143366bd85','4e336d7d-71e8-41f4-9f07-8f0646543e81','TransactionId','transactionid',30,36,'',0),('7627493b-b7d4-4afa-99e7-5957889ed081','eb5c32a1-85ec-49d1-8bca-ecca779cd539','Retried','retried',4,0,'',0),('77cf3524-fcfe-40cf-8ac0-b073015550ef','2ae37bf5-ecb8-4c55-b967-d7383925b208','Name','name',30,200,'',0),('77f66f6e-3794-4338-8a7d-eb4538dcd6db','c6c131c8-8779-4213-9b26-a64e141f26a8','QueueId','queueid',30,36,'',0),('7919a281-0b72-4dc4-87e1-fffaced4c8d1','89cea6a8-a2df-4925-85e4-2b0c447e98c3','Guid','guid',30,200,'',0),('7c9d3184-5a85-4f88-bc26-87bba35c9606','41738f55-7a10-4b87-bda4-12c6b0e4ea0e','IsDisabled','isdisabled',10,0,'false',0),('7ca1bcd3-9355-472f-9e3f-4440366297d6','d4154981-8dac-4150-aec5-efa3ef62a7a2','CustomerName','customername',30,200,'',0),('7cbcf835-1193-4d91-84f5-40bde9ddb9e4','eb5c32a1-85ec-49d1-8bca-ecca779cd539','ContextData','contextdata',30,0,'',0),('7e215c6c-0cfd-4533-8529-23e4f5359b7a','f9818ad8-3214-4b1d-b837-3181863f5ed5','ObjectId','objectid',30,200,'',0),('7e8f11d6-a4e1-3e73-b956-27507b88761a','c9ae2f46-badd-478f-b856-7fe597afdc4e','submetaobjectname','submetaobjectname',30,255,'MyFirstModule.BaseNode',0),('80796d39-0dde-4af7-b619-53ec9950014b','2ae37bf5-ecb8-4c55-b967-d7383925b208','DueDate','duedate',20,0,'',0),('84845531-dbd9-4e00-8afb-c2adc08699bb','282e2e60-88a5-469d-84a5-ba8d9151644f','FailedLogins','failedlogins',3,0,'0',0),('84cfff18-42dc-4442-b783-3ca923fcde81','a5952592-bb2c-4798-9805-f9ff91ad97de','ActivityHash','activityhash',30,200,'',0),('8554021f-9842-4c51-b124-86a102d33da7','5c570d3b-7b31-44fe-abd6-269a234584c5','IsObsolete','isobsolete',10,0,'false',0),('8655b482-0ac3-31db-8289-b05f505b77cb','170ce49d-f29c-4fac-99a6-b55e8a3aeb39','createdDate','createddate',20,0,'',0),('875dc581-177c-457a-8406-814676ccdb05','37f9fd49-5318-4c63-9a51-f761779b202f','LongLived','longlived',10,0,'false',0),('88390044-5b74-4e71-8b88-a6e4e91f6f2e','76805df3-dede-435f-92a6-d6525c68a693','Code','code',30,20,'',0),('895f51f8-ff84-4694-aa65-1ba19eaeca5e','e09e866f-288b-475c-9465-792cde8b878c','Name','name',30,200,'',0),('89e83bbd-6379-4601-89b4-825c02c7de6b','2ae37bf5-ecb8-4c55-b967-d7383925b208','Reason','reason',30,0,'',0),('8a4f15ba-8845-4129-81b8-d538a0ce1b6d','41738f55-7a10-4b87-bda4-12c6b0e4ea0e','Start','start',20,0,'',0),('8a6b4eb4-9b10-4060-a823-79dd4c19c217','2ae37bf5-ecb8-4c55-b967-d7383925b208','Description','description',30,0,'',0),('8b42eee4-92e5-4472-9f12-3a4e73291f2b','37f9fd49-5318-4c63-9a51-f761779b202f','LastActionExecution','lastactionexecution',20,0,'',0),('8b7184a0-cd05-4c75-89f9-be6e9349783b','685df5a6-1e02-49bb-a0b5-5a55c5e8313d','Name','name',30,200,'',0),('8b835017-7d42-401f-8271-02c232066d49','c6c131c8-8779-4213-9b26-a64e141f26a8','MicroflowName','microflowname',30,200,'',0),('8bb77a0c-0461-43f9-bb27-e91fb9e3623f','09b2f0fe-4a11-4afc-a16e-94992a3ebc3d','ExpiryDate','expirydate',20,0,'',0),('8e8e6dfa-87a2-413a-89c1-a2b23037b792','eb5c32a1-85ec-49d1-8bca-ecca779cd539','ContextType','contexttype',40,9,'',0),('904b1b1e-d456-4769-862d-10c19a381aab','c9ae2f46-badd-478f-b856-7fe597afdc4e','IsDisabled','isdisabled',10,0,'false',0),('90c6d548-3906-4856-a626-5f89a0c44955','c9ae2f46-badd-478f-b856-7fe597afdc4e','EndTime','endtime',20,0,'',0),('91b58eb9-c16c-4e33-b66b-28489e7fb783','d4154981-8dac-4150-aec5-efa3ef62a7a2','XASId','xasid',30,50,'',0),('941e921b-8935-402e-9d93-7894c5cc9164','a5952592-bb2c-4798-9805-f9ff91ad97de','ModelGUID','modelguid',30,36,'',0),('94e618c6-5158-44c1-baf6-ef6af8a76b6d','c6c131c8-8779-4213-9b26-a64e141f26a8','Created','created',20,0,'',0),('954c43f0-3333-4264-813b-e8f1c8f2f0b6','7f7c72af-1ab7-4bf9-bed6-16db5c8fcf6f','Description','description',30,100,'',0),('9613ed96-e6bc-429f-9c19-5c1fbc4eea09','41738f55-7a10-4b87-bda4-12c6b0e4ea0e','Name','name',30,200,'',0),('96445370-6fed-11e4-9803-0800200c9a66','170ce49d-f29c-4fac-99a6-b55e8a3aeb39','__UUID__','__uuid__',30,36,'',0),('96d02e1a-1609-4fe3-b771-3dff10ed45b6','c9ae2f46-badd-478f-b856-7fe597afdc4e','Name','name',30,200,'',0),('97bcc327-4d2b-4a28-a57a-7e7437416bfe','660db38b-5ab4-4d15-b649-93a947ecea82','JobId','jobid',4,0,'0',0),('9898404a-0a0e-48c5-b223-49323db632b5','df86cd1e-f9ac-42d4-bcd0-a185540a247a','EntityId','entityid',30,36,'',0),('9c09d4eb-9c9c-303e-951e-8c3ea32db37a','282e2e60-88a5-469d-84a5-ba8d9151644f','createdDate','createddate',20,0,'',0),('9c471b02-f266-4e27-9e2f-907d0fad6552','660db38b-5ab4-4d15-b649-93a947ecea82','EndTime','endtime',20,0,'',0),('a02027b1-e24d-49fc-9b3f-ade644070879','170ce49d-f29c-4fac-99a6-b55e8a3aeb39','__FileName__','__filename__',4,0,'0',0),('a169a8d1-b10f-427b-b492-3aebeabb7cd6','09b2f0fe-4a11-4afc-a16e-94992a3ebc3d','Token','token',30,200,'',0),('a1c19d5b-0798-452a-b8d9-4f60e684cc1b','eb5c32a1-85ec-49d1-8bca-ecca779cd539','Sequence','sequence',4,0,'',0),('a2082982-0fc9-4c45-8047-5babaf76eed7','c9ae2f46-badd-478f-b856-7fe597afdc4e','Progress','progress',5,0,'0',0),('a33fbc53-ecf5-46c5-bad2-a364686e19dc','92ef30a6-de04-423c-84fd-a21e9b9eeae2','Description','description',30,1000,'',0),('a3e1c07d-2b2b-3e20-bbf0-de44e27d29f4','f9818ad8-3214-4b1d-b837-3181863f5ed5','createdDate','createddate',20,0,'',0),('a6f93dd6-2725-4746-8283-c5c1e1f16d3f','e09e866f-288b-475c-9465-792cde8b878c','IsObsolete','isobsolete',10,0,'false',0),('a7934e8b-3623-45c7-abf4-e8a1d93770a2','4e336d7d-71e8-41f4-9f07-8f0646543e81','FileKey','filekey',30,36,'',0),('a7bd62b4-180e-4f89-8767-4df1817e5419','4e336d7d-71e8-41f4-9f07-8f0646543e81','State','state',40,8,'New',0),('a91934fd-65f2-404e-bff8-7b370c20d687','137064d4-4cf1-4a0b-92a5-a11b66360ff9','SyncId','syncid',30,200,'',0),('b0f8b9bd-f006-43a3-9c9f-edb70cd1642c','a5952592-bb2c-4798-9805-f9ff91ad97de','State','state',40,9,'Started',0),('b1684d75-8427-4ed6-be7a-3f4d4e59d61e','f9818ad8-3214-4b1d-b837-3181863f5ed5','ObjectType','objecttype',30,1000,'',0),('b22d0982-fbee-43a7-8d20-c200d319a3e5','282e2e60-88a5-469d-84a5-ba8d9151644f','Active','active',10,0,'true',0),('b38b8b74-2e97-47aa-96c6-3a14ecef522c','c6c131c8-8779-4213-9b26-a64e141f26a8','UserActionName','useractionname',30,200,'',0),('b47c6adc-1d13-4f3b-8172-0ace129df25f','c6c131c8-8779-4213-9b26-a64e141f26a8','Arguments','arguments',30,0,'',0),('b51ea62a-1838-3f74-9c5f-07b5b5a92a45','170ce49d-f29c-4fac-99a6-b55e8a3aeb39','submetaobjectname','submetaobjectname',30,255,'System.FileDocument',0),('bbe9c632-f0be-31a1-a709-ab0d57c79c84','67c28960-7a7a-11e6-bdf4-0800200c9a66','createdDate','createddate',20,0,'',0),('beeda34a-8cd1-4bbe-abd3-b18a3a0ea0ef','3729d27c-735b-457a-b210-9dffb125c3f3','StartTime','starttime',20,0,'',0),('c2dd7e10-28b4-304c-9ddf-104be6be9cde','282e2e60-88a5-469d-84a5-ba8d9151644f','submetaobjectname','submetaobjectname',30,255,'System.User',0),('c33867e7-7263-4ce6-826a-714e7493f07a','660db38b-5ab4-4d15-b649-93a947ecea82','Result','result',30,0,'',0),('c56553ba-a3d4-4d9e-bc81-e61ee64da79b','660db38b-5ab4-4d15-b649-93a947ecea82','Successful','successful',10,0,'false',0),('c627be00-3ea1-4890-9621-d3dad9f11c21','2ae37bf5-ecb8-4c55-b967-d7383925b208','StartTime','starttime',20,0,'',0),('c891eb17-76d6-4600-a96f-b02ef10aa921','eb5c32a1-85ec-49d1-8bca-ecca779cd539','UserActionName','useractionname',30,200,'',0),('cace349b-8e30-437e-95df-c4fd4225490d','a5952592-bb2c-4798-9805-f9ff91ad97de','IsDerivedActivity','isderivedactivity',10,0,'false',0),('cbd2b083-ad9a-3c24-8d5e-01e8c3994cad','4e336d7d-71e8-41f4-9f07-8f0646543e81','createdDate','createddate',20,0,'',0),('d0f11319-2905-4e6a-bf21-4029990c9d86','fd4ec8b5-f157-417b-9e06-6e8e03fceddf','Description','description',30,200,'',0),('d149bcc3-5e80-46da-ac3f-ee734a64cce1','282e2e60-88a5-469d-84a5-ba8d9151644f','Blocked','blocked',10,0,'false',0),('d16c4272-c9d3-4371-86f6-69eb263033e1','5c570d3b-7b31-44fe-abd6-269a234584c5','Name','name',30,200,'',0),('d26c3f20-7dc5-4a65-bbf6-c84ec5b5fe9f','c6c131c8-8779-4213-9b26-a64e141f26a8','Sequence','sequence',0,0,'1',1),('d348e310-a647-494b-85b1-1a53d5777bcc','87758885-664a-408c-91c4-36139c291545','Reason','reason',30,0,'',0),('d50c78a5-d740-4a76-a356-47659cfd515e','37f9fd49-5318-4c63-9a51-f761779b202f','SessionId','sessionid',30,50,'',0),('d5aa1ceb-6dfe-457b-afb7-e969a814eafd','660db38b-5ab4-4d15-b649-93a947ecea82','StartTime','starttime',20,0,'',0),('d61ef304-2773-4336-a146-8997dfccae8a','5c570d3b-7b31-44fe-abd6-269a234584c5','ModelGUID','modelguid',30,36,'',0),('d6288735-aea7-416a-91d2-1735aa7c0ea3','c6c131c8-8779-4213-9b26-a64e141f26a8','ContextType','contexttype',40,9,'',0),('d6f4a7fc-3c2d-4793-bfc0-8dde42937863','1c90a770-98ef-45df-9267-b87973cc6581','UserType','usertype',40,8,'Internal',0),('d78085f1-fdf5-40c1-93ae-30de543e4b81','a5952592-bb2c-4798-9805-f9ff91ad97de','IsMigrationActivity','ismigrationactivity',10,0,'false',0),('d879cb38-5630-4fdf-9e39-f03da0aa8ede','76805df3-dede-435f-92a6-d6525c68a693','Description','description',30,200,'',0),('dc169e92-887a-4fc5-a21e-51d99b41314b','a5952592-bb2c-4798-9805-f9ff91ad97de','EndTime','endtime',20,0,'',0),('dec2408c-8fea-4232-8208-cad1117ca406','2ae37bf5-ecb8-4c55-b967-d7383925b208','CanBeContinued','canbecontinued',10,0,'false',0),('df70e053-7126-4c45-a76b-22c2814babf8','c6c131c8-8779-4213-9b26-a64e141f26a8','ThreadId','threadid',4,0,'',0),('e023e8ca-3319-4698-a841-30430fdca099','5c570d3b-7b31-44fe-abd6-269a234584c5','Title','title',30,200,'',0),('e6dab9db-56fc-499d-9de9-37207c8aa8e3','41738f55-7a10-4b87-bda4-12c6b0e4ea0e','IsProject','isproject',10,0,'false',0),('e6dfb82a-54fe-4fcd-a513-a086f508c2db','170ce49d-f29c-4fac-99a6-b55e8a3aeb39','Contents','contents',50,0,'',0),('e6f7a526-84ed-4f4e-8d32-d49d79dd5174','eb5c32a1-85ec-49d1-8bca-ecca779cd539','Arguments','arguments',30,0,'',0),('e7792091-da19-4946-a07d-b11f857c4d1d','eb5c32a1-85ec-49d1-8bca-ecca779cd539','XASId','xasid',30,50,'',0),('e9446b4c-b0f6-3f04-8b0a-264d2384b449','282e2e60-88a5-469d-84a5-ba8d9151644f','changedDate','changeddate',20,0,'',0),('e959c75a-c655-45d8-8b7d-a4335dcbf581','1c90a770-98ef-45df-9267-b87973cc6581','Hash','hash',30,64,'',0),('ec48ea64-d4ae-42dd-8fbe-6c3716181dc7','2ae37bf5-ecb8-4c55-b967-d7383925b208','State','state',40,12,'Paused',0),('ee842048-ff1d-4ea4-80b3-2d1123437d5f','30834a21-e81c-4cbf-a10b-5f60f5fddc82','VersionHash','versionhash',30,200,'',0),('ef366bc1-ac94-4fd6-bafd-7cee2be459e6','282e2e60-88a5-469d-84a5-ba8d9151644f','Password','password',30,200,'',0),('f1949c9c-7b28-11e6-8b77-86f30ca893d3','37f9fd49-5318-4c63-9a51-f761779b202f','ReadOnlyHashKey','readonlyhashkey',30,36,'',0),('f4d19200-071c-45e5-af25-321354f0702b','37f9fd49-5318-4c63-9a51-f761779b202f','CSRFToken','csrftoken',30,36,'',0),('f87a5a98-730e-4c57-b6c4-ae09cd057e65','3729d27c-735b-457a-b210-9dffb125c3f3','State','state',40,11,'Initialized',0),('f9827427-a5ab-4508-9173-80f3c221f73d','41738f55-7a10-4b87-bda4-12c6b0e4ea0e','TimeScale','timescale',30,200,'',0),('fa5f48d5-d89f-3022-bdab-059cfc5b12ec','137064d4-4cf1-4a0b-92a5-a11b66360ff9','createdDate','createddate',20,0,'',0),('fbe83167-74ba-425b-a405-c99de7fd0a4b','3078a23e-13b2-4a9b-84e4-2881fdee53c6','IsLocalUser','islocaluser',10,0,'true',0);
/*!40000 ALTER TABLE `mendixsystem$attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mendixsystem$entity`
--

DROP TABLE IF EXISTS `mendixsystem$entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mendixsystem$entity` (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `entity_name` varchar(511) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `table_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `superentity_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `remote` tinyint(1) DEFAULT NULL,
  `remote_primary_key` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_mendixsystem$entity_entity_name` (`entity_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mendixsystem$entity`
--

LOCK TABLES `mendixsystem$entity` WRITE;
/*!40000 ALTER TABLE `mendixsystem$entity` DISABLE KEYS */;
INSERT INTO `mendixsystem$entity` VALUES ('09b2f0fe-4a11-4afc-a16e-94992a3ebc3d','System.TokenInformation','system$tokeninformation',NULL,0,0),('137064d4-4cf1-4a0b-92a5-a11b66360ff9','System.OfflineSynchronizationHistory','system$offlinesynchronizationhistory',NULL,0,0),('170ce49d-f29c-4fac-99a6-b55e8a3aeb39','System.FileDocument','system$filedocument',NULL,0,0),('1c90a770-98ef-45df-9267-b87973cc6581','System.UserReportInfo','system$userreportinfo',NULL,0,0),('282e2e60-88a5-469d-84a5-ba8d9151644f','System.User','system$user',NULL,0,0),('2ae37bf5-ecb8-4c55-b967-d7383925b208','System.Workflow','system$workflow',NULL,0,0),('2e899754-1e5f-4b0d-aff5-5530c07b860b','MyFirstModule.TaskNode','myfirstmodule$tasknode','c9ae2f46-badd-478f-b856-7fe597afdc4e',0,0),('3078a23e-13b2-4a9b-84e4-2881fdee53c6','Administration.Account','administration$account','282e2e60-88a5-469d-84a5-ba8d9151644f',0,0),('30834a21-e81c-4cbf-a10b-5f60f5fddc82','System.WorkflowVersion','system$workflowversion',NULL,0,0),('3729d27c-735b-457a-b210-9dffb125c3f3','System.WorkflowUserTask','system$workflowusertask',NULL,0,0),('37827192-315d-4ab6-85b8-f626f866ea76','System.Image','system$image','170ce49d-f29c-4fac-99a6-b55e8a3aeb39',0,0),('37f9fd49-5318-4c63-9a51-f761779b202f','System.Session','system$session',NULL,0,0),('3b6f5ca3-28d6-4581-b26e-7ce5bd0e6eeb','System.PrivateFileDocument','system$privatefiledocument','170ce49d-f29c-4fac-99a6-b55e8a3aeb39',0,0),('41738f55-7a10-4b87-bda4-12c6b0e4ea0e','MyFirstModule.Task','myfirstmodule$task',NULL,0,0),('4babd4c0-b903-4cb4-b1af-e59c4a5fcf3d','System.Thumbnail','system$thumbnail','170ce49d-f29c-4fac-99a6-b55e8a3aeb39',0,0),('4e336d7d-71e8-41f4-9f07-8f0646543e81','System.UnreferencedFile','system$unreferencedfile',NULL,0,0),('5c570d3b-7b31-44fe-abd6-269a234584c5','System.WorkflowDefinition','system$workflowdefinition',NULL,0,0),('660db38b-5ab4-4d15-b649-93a947ecea82','System.BackgroundJob','system$backgroundjob',NULL,0,0),('67c28960-7a7a-11e6-bdf4-0800200c9a66','System.AutoCommitEntry','system$autocommitentry',NULL,0,0),('685df5a6-1e02-49bb-a0b5-5a55c5e8313d','System.ScheduledEventInformation','system$scheduledeventinformation',NULL,0,0),('76805df3-dede-435f-92a6-d6525c68a693','System.Language','system$language',NULL,0,0),('7f7c72af-1ab7-4bf9-bed6-16db5c8fcf6f','System.TimeZone','system$timezone',NULL,0,0),('87758885-664a-408c-91c4-36139c291545','System.WorkflowSystemTask','system$workflowsystemtask',NULL,0,0),('89cea6a8-a2df-4925-85e4-2b0c447e98c3','System.OfflineCreatedGuids','system$offlinecreatedguids',NULL,0,0),('92ef30a6-de04-423c-84fd-a21e9b9eeae2','System.UserRole','system$userrole',NULL,0,0),('9b26443c-f4bb-4252-aa62-9eaffb71c4db','System.SynchronizationErrorFile','system$synchronizationerrorfile','170ce49d-f29c-4fac-99a6-b55e8a3aeb39',0,0),('a5952592-bb2c-4798-9805-f9ff91ad97de','System.WorkflowActivity','system$workflowactivity',NULL,0,0),('c6c131c8-8779-4213-9b26-a64e141f26a8','System.QueuedTask','system$queuedtask',NULL,0,0),('c9ae2f46-badd-478f-b856-7fe597afdc4e','MyFirstModule.BaseNode','myfirstmodule$basenode',NULL,0,0),('d4154981-8dac-4150-aec5-efa3ef62a7a2','System.XASInstance','system$xasinstance',NULL,0,0),('df86cd1e-f9ac-42d4-bcd0-a185540a247a','System.DataBrokerEntityMetadata','system$databrokerentitymetadata',NULL,0,0),('e09e866f-288b-475c-9465-792cde8b878c','System.WorkflowUserTaskDefinition','system$workflowusertaskdefinition',NULL,0,0),('eb5c32a1-85ec-49d1-8bca-ecca779cd539','System.ProcessedQueueTask','system$processedqueuetask',NULL,0,0),('f9818ad8-3214-4b1d-b837-3181863f5ed5','System.SynchronizationError','system$synchronizationerror',NULL,0,0),('fd4ec8b5-f157-417b-9e06-6e8e03fceddf','MyFirstModule.ProjectNode','myfirstmodule$projectnode','c9ae2f46-badd-478f-b856-7fe597afdc4e',0,0);
/*!40000 ALTER TABLE `mendixsystem$entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mendixsystem$entityidentifier`
--

DROP TABLE IF EXISTS `mendixsystem$entityidentifier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mendixsystem$entityidentifier` (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `short_id` smallint DEFAULT NULL,
  `object_sequence` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_mendixsystem$entityidentifier_short_id` (`short_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mendixsystem$entityidentifier`
--

LOCK TABLES `mendixsystem$entityidentifier` WRITE;
/*!40000 ALTER TABLE `mendixsystem$entityidentifier` DISABLE KEYS */;
INSERT INTO `mendixsystem$entityidentifier` VALUES ('09b2f0fe-4a11-4afc-a16e-94992a3ebc3d',38,1),('137064d4-4cf1-4a0b-92a5-a11b66360ff9',17,1),('170ce49d-f29c-4fac-99a6-b55e8a3aeb39',25,1),('1c90a770-98ef-45df-9267-b87973cc6581',32,1),('282e2e60-88a5-469d-84a5-ba8d9151644f',2,1901),('2ae37bf5-ecb8-4c55-b967-d7383925b208',8,1),('2d6e1228-0ec2-493a-975a-c8f52e4b0371',10,1),('2e899754-1e5f-4b0d-aff5-5530c07b860b',43,201),('3078a23e-13b2-4a9b-84e4-2881fdee53c6',18,1),('30834a21-e81c-4cbf-a10b-5f60f5fddc82',1,1),('3729d27c-735b-457a-b210-9dffb125c3f3',42,1),('37827192-315d-4ab6-85b8-f626f866ea76',16,1),('37f9fd49-5318-4c63-9a51-f761779b202f',37,1801),('3b6f5ca3-28d6-4581-b26e-7ce5bd0e6eeb',30,1),('3d460fe3-2308-474b-8d3a-931ac838776f',9,1),('41738f55-7a10-4b87-bda4-12c6b0e4ea0e',44,1),('4ba19860-2ded-45b3-855a-dea36b83bf8f',23,1),('4babd4c0-b903-4cb4-b1af-e59c4a5fcf3d',5,1),('4beaee07-595a-4371-bbe4-7d86875f0ebb',6,1),('4e336d7d-71e8-41f4-9f07-8f0646543e81',14,1),('5c570d3b-7b31-44fe-abd6-269a234584c5',11,1),('660db38b-5ab4-4d15-b649-93a947ecea82',28,1),('67c28960-7a7a-11e6-bdf4-0800200c9a66',40,1),('685df5a6-1e02-49bb-a0b5-5a55c5e8313d',29,1),('761a7054-7794-4799-8986-2e6cd68a53fd',22,1),('76805df3-dede-435f-92a6-d6525c68a693',41,101),('7f7c72af-1ab7-4bf9-bed6-16db5c8fcf6f',12,701),('87758885-664a-408c-91c4-36139c291545',39,1),('89cea6a8-a2df-4925-85e4-2b0c447e98c3',34,1),('8eae269c-cd9b-465c-b947-7d36086ec3c1',20,1),('92ef30a6-de04-423c-84fd-a21e9b9eeae2',15,101),('9b26443c-f4bb-4252-aa62-9eaffb71c4db',3,1),('9f2c1aca-9a03-46f8-97ab-d4e43141a396',13,1),('a11d9b16-c2f9-4ebd-affa-45f3cd8ff090',26,1),('a5952592-bb2c-4798-9805-f9ff91ad97de',35,1),('c476ca23-4423-432c-959a-7e7a07556390',47,1801),('c6c131c8-8779-4213-9b26-a64e141f26a8',24,1),('c9ae2f46-badd-478f-b856-7fe597afdc4e',46,1),('ce3860ff-2093-42cd-b462-8da7485fc01e',7,1),('d4154981-8dac-4150-aec5-efa3ef62a7a2',4,2101),('df86cd1e-f9ac-42d4-bcd0-a185540a247a',21,1),('e09e866f-288b-475c-9465-792cde8b878c',19,1),('eb5c32a1-85ec-49d1-8bca-ecca779cd539',36,1),('ed8ea4b2-be38-4ca1-b9e2-568ff2ad6be2',31,1),('f9818ad8-3214-4b1d-b837-3181863f5ed5',33,1),('fd4ec8b5-f157-417b-9e06-6e8e03fceddf',45,101);
/*!40000 ALTER TABLE `mendixsystem$entityidentifier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mendixsystem$index`
--

DROP TABLE IF EXISTS `mendixsystem$index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mendixsystem$index` (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `table_id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `index_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mendixsystem$index`
--

LOCK TABLES `mendixsystem$index` WRITE;
/*!40000 ALTER TABLE `mendixsystem$index` DISABLE KEYS */;
INSERT INTO `mendixsystem$index` VALUES ('02390f36-727f-3e8e-8698-51de6cbd7dd0','f9818ad8-3214-4b1d-b837-3181863f5ed5','idx_system$synchronizationerror_system$owner'),('17f7461b-5b7c-494d-8fde-b531299c42b0','170ce49d-f29c-4fac-99a6-b55e8a3aeb39','idx_system$filedocument___uuid___asc'),('291e0cde-0e23-351e-8001-6240437d1e0e','282e2e60-88a5-469d-84a5-ba8d9151644f','idx_system$user_system$changedby'),('3515901d-e8f5-3173-87bb-11ae532c243e','282e2e60-88a5-469d-84a5-ba8d9151644f','idx_system$user_system$owner'),('5401e110-fde5-3181-9c3f-b9f6d031403b','c9ae2f46-badd-478f-b856-7fe597afdc4e','idx_myfirstmodule$basenode_submetaobjectname_asc'),('5711e9d5-7b67-4579-b730-2ed0b852b799','282e2e60-88a5-469d-84a5-ba8d9151644f','idx_system$user_name_asc'),('59de2f9e-3e30-4dd7-a5de-58594a63ea2b','170ce49d-f29c-4fac-99a6-b55e8a3aeb39','idx_system$filedocument_size_asc'),('6127a5ae-0a96-4df5-9856-17baf94b2351','37f9fd49-5318-4c63-9a51-f761779b202f','idx_system$session_sessionid_asc'),('67c28963-7a7a-11e6-bdf4-0800200c9a66','67c28960-7a7a-11e6-bdf4-0800200c9a66','idx_system$autocommitentry_sessionid_asc_objectid_asc'),('6ceea2cb-6acf-457a-852f-eb7deab79430','170ce49d-f29c-4fac-99a6-b55e8a3aeb39','idx_system$filedocument_fileid_asc'),('7a35f5fa-69a5-42e6-842d-c5bf65735a0f','137064d4-4cf1-4a0b-92a5-a11b66360ff9','idx_system$offlinesynchronizationhistory_syncid_asc'),('8de203bb-c0c1-349b-8aef-037cdb0cd348','c6c131c8-8779-4213-9b26-a64e141f26a8','idx_system$queuedtask_system$owner'),('a1966801-fcea-3251-82e4-bf4178bdc504','170ce49d-f29c-4fac-99a6-b55e8a3aeb39','idx_system$filedocument_system$changedby'),('a28ff41f-1610-3353-9957-9e8d776b805e','eb5c32a1-85ec-49d1-8bca-ecca779cd539','idx_system$processedqueuetask_system$owner'),('a46808f5-f89a-41eb-81e2-217968eac118','92ef30a6-de04-423c-84fd-a21e9b9eeae2','idx_system$userrole_name_asc'),('a5c117d9-85fc-365e-9a66-909509269987','170ce49d-f29c-4fac-99a6-b55e8a3aeb39','idx_system$filedocument_system$owner'),('a5ff48ca-56d6-4f43-8e3a-7743fd025974','660db38b-5ab4-4d15-b649-93a947ecea82','idx_system$backgroundjob_jobid_asc'),('ac892dd9-fb9e-3590-aaf5-e3e2c7fbc021','2ae37bf5-ecb8-4c55-b967-d7383925b208','idx_system$workflow_system$owner'),('d45d41fb-40ec-3b91-becf-455eb7f35bff','282e2e60-88a5-469d-84a5-ba8d9151644f','idx_system$user_submetaobjectname_asc'),('dfd88a6e-a3b6-3080-b6cc-d5c61334281d','170ce49d-f29c-4fac-99a6-b55e8a3aeb39','idx_system$filedocument_submetaobjectname_asc');
/*!40000 ALTER TABLE `mendixsystem$index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mendixsystem$index_column`
--

DROP TABLE IF EXISTS `mendixsystem$index_column`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mendixsystem$index_column` (
  `index_id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `column_id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sort_order` tinyint(1) NOT NULL,
  `ordinal` int NOT NULL,
  PRIMARY KEY (`index_id`,`column_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mendixsystem$index_column`
--

LOCK TABLES `mendixsystem$index_column` WRITE;
/*!40000 ALTER TABLE `mendixsystem$index_column` DISABLE KEYS */;
INSERT INTO `mendixsystem$index_column` VALUES ('02390f36-727f-3e8e-8698-51de6cbd7dd0','b822057e-d9ee-3cd6-8535-6bc9268cb842',0,0),('17f7461b-5b7c-494d-8fde-b531299c42b0','96445370-6fed-11e4-9803-0800200c9a66',0,0),('291e0cde-0e23-351e-8001-6240437d1e0e','6013226d-aeae-3cd2-acec-d95d8bd5c3ad',0,0),('3515901d-e8f5-3173-87bb-11ae532c243e','07738295-23fe-3fc1-832b-ed18b22727f0',0,0),('5401e110-fde5-3181-9c3f-b9f6d031403b','7e8f11d6-a4e1-3e73-b956-27507b88761a',0,0),('5711e9d5-7b67-4579-b730-2ed0b852b799','69acb4a2-be26-4cc5-902a-a8591d357510',0,0),('59de2f9e-3e30-4dd7-a5de-58594a63ea2b','14018140-78df-4e36-9869-d0b53129d2c9',0,0),('6127a5ae-0a96-4df5-9856-17baf94b2351','d50c78a5-d740-4a76-a356-47659cfd515e',0,0),('67c28963-7a7a-11e6-bdf4-0800200c9a66','67c28961-7a7a-11e6-bdf4-0800200c9a66',0,0),('67c28963-7a7a-11e6-bdf4-0800200c9a66','67c28962-7a7a-11e6-bdf4-0800200c9a66',0,1),('6ceea2cb-6acf-457a-852f-eb7deab79430','0f81688b-e719-4204-8f86-8fcd664a0992',0,0),('7a35f5fa-69a5-42e6-842d-c5bf65735a0f','a91934fd-65f2-404e-bff8-7b370c20d687',0,0),('8de203bb-c0c1-349b-8aef-037cdb0cd348','f6de554a-f765-3d80-aa59-2b3da4167137',0,0),('a1966801-fcea-3251-82e4-bf4178bdc504','956c1382-b9fc-3367-b0b2-cb67ee9ef13f',0,0),('a28ff41f-1610-3353-9957-9e8d776b805e','2a2739dd-9160-3616-8999-a7a147bf4cda',0,0),('a46808f5-f89a-41eb-81e2-217968eac118','3a3aca86-2f34-4038-a62f-7c0654ce21b7',0,0),('a5c117d9-85fc-365e-9a66-909509269987','1442c9da-d4ae-3cf5-b3c0-6c878743e4e5',0,0),('a5ff48ca-56d6-4f43-8e3a-7743fd025974','97bcc327-4d2b-4a28-a57a-7e7437416bfe',0,0),('ac892dd9-fb9e-3590-aaf5-e3e2c7fbc021','2cf6fdd7-e448-3a4d-b70e-6d875c2136d7',0,0),('d45d41fb-40ec-3b91-becf-455eb7f35bff','c2dd7e10-28b4-304c-9ddf-104be6be9cde',0,0),('dfd88a6e-a3b6-3080-b6cc-d5c61334281d','b51ea62a-1838-3f74-9c5f-07b5b5a92a45',0,0);
/*!40000 ALTER TABLE `mendixsystem$index_column` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mendixsystem$properties`
--

DROP TABLE IF EXISTS `mendixsystem$properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mendixsystem$properties` (
  `key` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mendixsystem$properties`
--

LOCK TABLES `mendixsystem$properties` WRITE;
/*!40000 ALTER TABLE `mendixsystem$properties` DISABLE KEYS */;
INSERT INTO `mendixsystem$properties` VALUES ('Mendix.Runtime.DeploymentID','637832232995996506'),('oldFileMigrationCompleted','true');
/*!40000 ALTER TABLE `mendixsystem$properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mendixsystem$remote_primary_key`
--

DROP TABLE IF EXISTS `mendixsystem$remote_primary_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mendixsystem$remote_primary_key` (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `entity_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `attribute_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `column_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` int NOT NULL,
  `length` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mendixsystem$remote_primary_key`
--

LOCK TABLES `mendixsystem$remote_primary_key` WRITE;
/*!40000 ALTER TABLE `mendixsystem$remote_primary_key` DISABLE KEYS */;
/*!40000 ALTER TABLE `mendixsystem$remote_primary_key` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mendixsystem$sequence`
--

DROP TABLE IF EXISTS `mendixsystem$sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mendixsystem$sequence` (
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `attribute_id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `start_value` bigint NOT NULL,
  `current_value` bigint DEFAULT NULL,
  PRIMARY KEY (`attribute_id`),
  KEY `idx_mendixsystem$sequence_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mendixsystem$sequence`
--

LOCK TABLES `mendixsystem$sequence` WRITE;
/*!40000 ALTER TABLE `mendixsystem$sequence` DISABLE KEYS */;
INSERT INTO `mendixsystem$sequence` VALUES ('system$filedocument_fileid_mxseq','0f81688b-e719-4204-8f86-8fcd664a0992',1,0),('system$queuedtask_sequence_mxseq','d26c3f20-7dc5-4a65-bbf6-c84ec5b5fe9f',1,0);
/*!40000 ALTER TABLE `mendixsystem$sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mendixsystem$unique_constraint`
--

DROP TABLE IF EXISTS `mendixsystem$unique_constraint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mendixsystem$unique_constraint` (
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `table_id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `column_id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`name`,`column_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mendixsystem$unique_constraint`
--

LOCK TABLES `mendixsystem$unique_constraint` WRITE;
/*!40000 ALTER TABLE `mendixsystem$unique_constraint` DISABLE KEYS */;
INSERT INTO `mendixsystem$unique_constraint` VALUES ('uniq_myfirstmodule$assignee_myfirstmodule$basenodeid','bb5f3672-b885-47a9-8967-c34b12375e50','37621fd7-aa17-31a9-a049-b0108dbe3368'),('uniq_myfirstmodule$project_myfirstmodule$basenodeid','3b442dcb-c1e1-4973-952e-9b6e246480c8','2a5e72b9-ca5a-39ae-8473-9da4d56e1cac'),('uniq_syst$synchronizatione_synchronizati_syste$synchronizationer','6440aa38-83ff-4ba6-8c85-5ff785956b09','1e2455b8-3c89-380e-983f-14ead6e94b4c'),('uniq_syst$workflowusertaskd_workflowdefi_syst$workflowusertaskde','685c576c-19af-4ea7-983d-ece147c1cebc','ce3750f0-8db1-37ca-95b5-892696a3d9e2'),('uniq_syste$scheduledeventinfo_xasinsta_syste$scheduledeventinfor','7b8a18de-fe6d-4735-9841-0d9d4760697e','b1eb1dd4-9f4c-3dae-9cde-9a7df66af36c'),('uniq_syste$workflowdefini_currentworkflowv_syste$workflowdefinit','2b065cdd-3d2c-4517-9727-ced57d97fd03','eb384fa0-c9cd-3568-bdd6-1501cb6e352e'),('uniq_syste$workflowusert_workflowusertaskdef_syste$workflowusert','0169cc0e-491b-4ee3-812d-6bf3ba28e287','0643c851-59f7-3428-92a1-a970ad21ad18'),('uniq_system$backgroundjob_session_system$backgroundjobid','19892a2b-f17a-4c29-80c1-c81f8025b36c','60770e0f-201c-3f24-8a1e-d8b42a715ddb'),('uniq_system$backgroundjob_xasinstance_system$backgroundjobid','fc3944c4-7a19-4a4d-9b0d-4a0c9d7aeb23','4fcadd5b-cfd5-3991-bdb8-19c4d63b1aa5'),('uniq_system$offlinecreatedguids_guid','89cea6a8-a2df-4925-85e4-2b0c447e98c3','7919a281-0b72-4dc4-87e1-fffaced4c8d1'),('uniq_system$offlinesynchronizationhistory_syncid','137064d4-4cf1-4a0b-92a5-a11b66360ff9','a91934fd-65f2-404e-bff8-7b370c20d687'),('uniq_system$session_user_system$sessionid','546aaff5-62e1-40ce-ab45-d40d0a0478f1','142c3a11-004d-3f79-916b-d0347144970b'),('uniq_system$thumbnail_image_system$imageid','3dbea779-c8af-467e-a957-140c313ac1b7','580b34f8-f2b7-3c00-a872-d0e0b53778ef'),('uniq_system$thumbnail_image_system$thumbnailid','3dbea779-c8af-467e-a957-140c313ac1b7','9c4f4f6d-6094-3a1b-a97c-09277561b351'),('uniq_system$tokeninformation_user_system$tokeninformationid','20ca86b2-5a00-4131-aee1-427cb2e94425','4abdbc47-924f-3c57-9257-190d5521d13e'),('uniq_system$unreferencedfil_xasinstance_system$unreferencedfilei','1cbb5da6-dbb6-447a-8ea2-b193035320c7','dd0763aa-e3a9-35bd-98ce-4d39d939ad40'),('uniq_system$userreportinfo_user_system$userreportinfoid','d88b344c-b1e5-4759-b60e-0348e63ac445','677bda5e-706d-3d41-b007-247640ca3be1'),('uniq_system$user_language_system$userid','00640985-3c73-4b15-9705-d4ec3ff58e6b','37d87db4-942f-301e-b1d7-ca1c940655fa'),('uniq_system$user_name','282e2e60-88a5-469d-84a5-ba8d9151644f','69acb4a2-be26-4cc5-902a-a8591d357510'),('uniq_system$user_timezone_system$userid','bab4a1ab-7d40-47d5-8f21-fc99d089211d','61482ff9-64e6-366d-9055-524387b93b37'),('uniq_system$workflowactivity_workflow_system$workflowactivityid','ef863cc9-2d20-4a74-af65-0320a76b6a10','56628087-ac77-34ca-bd95-b86020fc4ffa'),('uniq_system$workflowactivi_workflowuserta_system$workflowactivit','aaebf783-447c-4386-ba25-969132aa6f7c','096b955d-f88f-303f-b43e-deef60b57065'),('uniq_system$workflowactivi_workflowversi_system$workflowactivity','2e5166f9-7430-4265-8465-f7405d6fe1e9','f25c7cf4-22a7-30e7-a3b6-1cda08ccc618'),('uniq_system$workflowactiv_workflowsystemt_system$workflowactivit','1c3ed941-33a5-4a5f-b758-f1102a775851','d650d326-7825-30cd-a9a3-04296af6e810'),('uniq_system$workflowdefinition_modelguid','5c570d3b-7b31-44fe-abd6-269a234584c5','d61ef304-2773-4336-a146-8997dfccae8a'),('uniq_system$workflowsystemtas_workflow_system$workflowsystemtask','0bbc01af-7337-438a-ba7d-663ce015a628','99ba8e62-bf5c-306b-b025-2228f5af23e4'),('uniq_system$workflowusertask_assignee_system$workflowusertaskid','929fbbed-d3a8-4ea2-b6ad-b28de4f77776','ed895e88-8fb4-3df0-b86f-faab883d19ec'),('uniq_system$workflowusertask_workflow_system$workflowusertaskid','53a1c6d7-5e4d-4a2d-81ec-58fde4bbba8a','bb1eaa2c-e600-3a88-85d0-08d5f5ca94da'),('uniq_system$workflowversi_previousversio_system$workflowversioni','61a2af90-0720-41a0-bea9-8a3d60de71d0','a0f7479f-37c0-39ac-9fb9-5589bd8627c5'),('uniq_system$workflowversi_workflowdefinit_system$workflowversion','c063e3e7-a440-47f0-8065-6fac7c723690','47c7ac0f-8b15-3178-ae6c-8b0cb0debb61'),('uniq_system$workflow_workflowdefinition_system$workflowid','77c87c19-f28d-4ca3-870c-351722cf5e9e','593e832a-6cbc-3208-b1a1-06b8b873428f');
/*!40000 ALTER TABLE `mendixsystem$unique_constraint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mendixsystem$version`
--

DROP TABLE IF EXISTS `mendixsystem$version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mendixsystem$version` (
  `versionnumber` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lastsyncdate` datetime NOT NULL,
  `preanalysismigrationversionnumber` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `modelversionnumber` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sprintrprojectname` varchar(511) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `mendixversion` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`versionnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mendixsystem$version`
--

LOCK TABLES `mendixsystem$version` WRITE;
/*!40000 ALTER TABLE `mendixsystem$version` DISABLE KEYS */;
INSERT INTO `mendixsystem$version` VALUES ('4.2','2022-03-16 06:38:47','4.1.0','unversioned','testProject','9.6.0.27784');
/*!40000 ALTER TABLE `mendixsystem$version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myfirstmodule$assignee`
--

DROP TABLE IF EXISTS `myfirstmodule$assignee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myfirstmodule$assignee` (
  `myfirstmodule$basenodeid` bigint NOT NULL,
  `system$userid` bigint NOT NULL,
  PRIMARY KEY (`myfirstmodule$basenodeid`,`system$userid`),
  UNIQUE KEY `uniq_myfirstmodule$assignee_myfirstmodule$basenodeid` (`myfirstmodule$basenodeid`),
  KEY `idx_myfirstmodule$assignee_system$user_myfirstmodule$basenode` (`system$userid`,`myfirstmodule$basenodeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myfirstmodule$assignee`
--

LOCK TABLES `myfirstmodule$assignee` WRITE;
/*!40000 ALTER TABLE `myfirstmodule$assignee` DISABLE KEYS */;
/*!40000 ALTER TABLE `myfirstmodule$assignee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myfirstmodule$basenode`
--

DROP TABLE IF EXISTS `myfirstmodule$basenode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myfirstmodule$basenode` (
  `id` bigint NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `starttime` datetime DEFAULT NULL,
  `endtime` datetime DEFAULT NULL,
  `progress` decimal(28,8) DEFAULT NULL,
  `submetaobjectname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `isdisabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_myfirstmodule$basenode_submetaobjectname_asc` (`submetaobjectname`,`id`),
  KEY `idx_name` (`name`,`id`) /*!80000 INVISIBLE */
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myfirstmodule$basenode`
--

LOCK TABLES `myfirstmodule$basenode` WRITE;
/*!40000 ALTER TABLE `myfirstmodule$basenode` DISABLE KEYS */;
INSERT INTO `myfirstmodule$basenode` VALUES (12103423998558209,'P1/P2/P3/T1','2022-02-28 16:00:00','2022-03-09 16:00:00',0.00000000,'MyFirstModule.TaskNode',0),(12103423998558210,'P4/T2','2022-03-08 16:00:00','2022-03-17 16:00:00',0.00000000,'MyFirstModule.TaskNode',0),(12103423998558211,'P4/P5/T3','2022-03-06 16:00:00','2022-03-23 16:00:00',0.00000000,'MyFirstModule.TaskNode',0),(12103423998558311,'P4/P5/T4','2022-03-07 16:00:00','2022-03-17 16:00:00',0.60000000,'MyFirstModule.TaskNode',0),(12666373951979521,'P1','2022-02-28 16:00:00','2022-03-01 16:00:00',0.60000000,'MyFirstModule.ProjectNode',0),(12666373951979522,'P1/P2','2022-03-02 16:00:00','2022-03-03 16:00:00',0.00000000,'MyFirstModule.ProjectNode',0),(12666373951979523,'P1/P2/P3','2022-03-04 16:00:00','2022-03-05 16:00:00',0.00000000,'MyFirstModule.ProjectNode',0),(12666373951979524,'P4','2022-03-06 16:00:00','2022-03-07 16:00:00',0.00000000,'MyFirstModule.ProjectNode',0),(12666373951979525,'P4/P5','2022-03-08 16:00:00','2022-03-09 16:00:00',0.00000000,'MyFirstModule.ProjectNode',0);
/*!40000 ALTER TABLE `myfirstmodule$basenode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myfirstmodule$dependentask`
--

DROP TABLE IF EXISTS `myfirstmodule$dependentask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myfirstmodule$dependentask` (
  `myfirstmodule$tasknodeid1` bigint NOT NULL,
  `myfirstmodule$tasknodeid2` bigint NOT NULL,
  PRIMARY KEY (`myfirstmodule$tasknodeid1`,`myfirstmodule$tasknodeid2`),
  KEY `idx_myfirstmodule$dependentask` (`myfirstmodule$tasknodeid2`,`myfirstmodule$tasknodeid1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myfirstmodule$dependentask`
--

LOCK TABLES `myfirstmodule$dependentask` WRITE;
/*!40000 ALTER TABLE `myfirstmodule$dependentask` DISABLE KEYS */;
INSERT INTO `myfirstmodule$dependentask` VALUES (12103423998558311,12103423998558210),(12103423998558311,12103423998558211);
/*!40000 ALTER TABLE `myfirstmodule$dependentask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myfirstmodule$project`
--

DROP TABLE IF EXISTS `myfirstmodule$project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myfirstmodule$project` (
  `myfirstmodule$basenodeid` bigint NOT NULL,
  `myfirstmodule$projectnodeid` bigint NOT NULL,
  PRIMARY KEY (`myfirstmodule$basenodeid`,`myfirstmodule$projectnodeid`),
  UNIQUE KEY `uniq_myfirstmodule$project_myfirstmodule$basenodeid` (`myfirstmodule$basenodeid`),
  KEY `idx_myfirstmodule$project` (`myfirstmodule$projectnodeid`,`myfirstmodule$basenodeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myfirstmodule$project`
--

LOCK TABLES `myfirstmodule$project` WRITE;
/*!40000 ALTER TABLE `myfirstmodule$project` DISABLE KEYS */;
INSERT INTO `myfirstmodule$project` VALUES (12103423998558209,12666373951979523),(12103423998558210,12666373951979524),(12103423998558211,12666373951979525),(12103423998558311,12666373951979525),(12666373951979522,12666373951979521),(12666373951979523,12666373951979522),(12666373951979525,12666373951979524);
/*!40000 ALTER TABLE `myfirstmodule$project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myfirstmodule$projectnode`
--

DROP TABLE IF EXISTS `myfirstmodule$projectnode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myfirstmodule$projectnode` (
  `id` bigint NOT NULL,
  `description` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myfirstmodule$projectnode`
--

LOCK TABLES `myfirstmodule$projectnode` WRITE;
/*!40000 ALTER TABLE `myfirstmodule$projectnode` DISABLE KEYS */;
INSERT INTO `myfirstmodule$projectnode` VALUES (12666373951979521,NULL),(12666373951979522,NULL),(12666373951979523,NULL),(12666373951979524,NULL),(12666373951979525,NULL);
/*!40000 ALTER TABLE `myfirstmodule$projectnode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myfirstmodule$task`
--

DROP TABLE IF EXISTS `myfirstmodule$task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myfirstmodule$task` (
  `id` bigint NOT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `timescale` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `progress` decimal(28,8) DEFAULT NULL,
  `isdisabled` tinyint(1) DEFAULT NULL,
  `isproject` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myfirstmodule$task`
--

LOCK TABLES `myfirstmodule$task` WRITE;
/*!40000 ALTER TABLE `myfirstmodule$task` DISABLE KEYS */;
/*!40000 ALTER TABLE `myfirstmodule$task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myfirstmodule$tasknode`
--

DROP TABLE IF EXISTS `myfirstmodule$tasknode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myfirstmodule$tasknode` (
  `id` bigint NOT NULL,
  `detail` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myfirstmodule$tasknode`
--

LOCK TABLES `myfirstmodule$tasknode` WRITE;
/*!40000 ALTER TABLE `myfirstmodule$tasknode` DISABLE KEYS */;
INSERT INTO `myfirstmodule$tasknode` VALUES (12103423998558209,NULL),(12103423998558210,NULL),(12103423998558211,NULL),(12103423998558311,NULL);
/*!40000 ALTER TABLE `myfirstmodule$tasknode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system$autocommitentry`
--

DROP TABLE IF EXISTS `system$autocommitentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system$autocommitentry` (
  `id` bigint NOT NULL,
  `sessionid` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `objectid` bigint DEFAULT NULL,
  `createddate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_system$autocommitentry_sessionid_asc_objectid_asc` (`sessionid`,`objectid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system$autocommitentry`
--

LOCK TABLES `system$autocommitentry` WRITE;
/*!40000 ALTER TABLE `system$autocommitentry` DISABLE KEYS */;
/*!40000 ALTER TABLE `system$autocommitentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system$backgroundjob`
--

DROP TABLE IF EXISTS `system$backgroundjob`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system$backgroundjob` (
  `id` bigint NOT NULL,
  `jobid` bigint DEFAULT NULL,
  `starttime` datetime DEFAULT NULL,
  `endtime` datetime DEFAULT NULL,
  `result` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `successful` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_system$backgroundjob_jobid_asc` (`jobid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system$backgroundjob`
--

LOCK TABLES `system$backgroundjob` WRITE;
/*!40000 ALTER TABLE `system$backgroundjob` DISABLE KEYS */;
/*!40000 ALTER TABLE `system$backgroundjob` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system$backgroundjob_session`
--

DROP TABLE IF EXISTS `system$backgroundjob_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system$backgroundjob_session` (
  `system$backgroundjobid` bigint NOT NULL,
  `system$sessionid` bigint NOT NULL,
  PRIMARY KEY (`system$backgroundjobid`,`system$sessionid`),
  UNIQUE KEY `uniq_system$backgroundjob_session_system$backgroundjobid` (`system$backgroundjobid`),
  KEY `idx_system$backgroundjob_session` (`system$sessionid`,`system$backgroundjobid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system$backgroundjob_session`
--

LOCK TABLES `system$backgroundjob_session` WRITE;
/*!40000 ALTER TABLE `system$backgroundjob_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `system$backgroundjob_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system$backgroundjob_xasinstance`
--

DROP TABLE IF EXISTS `system$backgroundjob_xasinstance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system$backgroundjob_xasinstance` (
  `system$backgroundjobid` bigint NOT NULL,
  `system$xasinstanceid` bigint NOT NULL,
  PRIMARY KEY (`system$backgroundjobid`,`system$xasinstanceid`),
  UNIQUE KEY `uniq_system$backgroundjob_xasinstance_system$backgroundjobid` (`system$backgroundjobid`),
  KEY `idx_system$backgroundjob_xasinstance` (`system$xasinstanceid`,`system$backgroundjobid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system$backgroundjob_xasinstance`
--

LOCK TABLES `system$backgroundjob_xasinstance` WRITE;
/*!40000 ALTER TABLE `system$backgroundjob_xasinstance` DISABLE KEYS */;
/*!40000 ALTER TABLE `system$backgroundjob_xasinstance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system$databrokerentitymetadata`
--

DROP TABLE IF EXISTS `system$databrokerentitymetadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system$databrokerentitymetadata` (
  `id` bigint NOT NULL,
  `entityid` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `memberdetails` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system$databrokerentitymetadata`
--

LOCK TABLES `system$databrokerentitymetadata` WRITE;
/*!40000 ALTER TABLE `system$databrokerentitymetadata` DISABLE KEYS */;
/*!40000 ALTER TABLE `system$databrokerentitymetadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system$filedocument`
--

DROP TABLE IF EXISTS `system$filedocument`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system$filedocument` (
  `id` bigint NOT NULL,
  `fileid` bigint DEFAULT NULL,
  `name` varchar(400) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `deleteafterdownload` tinyint(1) DEFAULT NULL,
  `contents` longblob,
  `hascontents` tinyint(1) DEFAULT NULL,
  `size` bigint DEFAULT NULL,
  `__filename__` bigint DEFAULT NULL,
  `__uuid__` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `createddate` datetime DEFAULT NULL,
  `changeddate` datetime DEFAULT NULL,
  `submetaobjectname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `system$owner` bigint DEFAULT NULL,
  `system$changedby` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_system$filedocument_fileid_asc` (`fileid`,`id`),
  KEY `idx_system$filedocument_size_asc` (`size`,`id`),
  KEY `idx_system$filedocument___uuid___asc` (`__uuid__`,`id`),
  KEY `idx_system$filedocument_submetaobjectname_asc` (`submetaobjectname`,`id`),
  KEY `idx_system$filedocument_system$owner` (`system$owner`,`id`),
  KEY `idx_system$filedocument_system$changedby` (`system$changedby`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system$filedocument`
--

LOCK TABLES `system$filedocument` WRITE;
/*!40000 ALTER TABLE `system$filedocument` DISABLE KEYS */;
/*!40000 ALTER TABLE `system$filedocument` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system$grantableroles`
--

DROP TABLE IF EXISTS `system$grantableroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system$grantableroles` (
  `system$userroleid1` bigint NOT NULL,
  `system$userroleid2` bigint NOT NULL,
  PRIMARY KEY (`system$userroleid1`,`system$userroleid2`),
  KEY `idx_system$grantableroles_system$userrole_system$userrole` (`system$userroleid2`,`system$userroleid1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system$grantableroles`
--

LOCK TABLES `system$grantableroles` WRITE;
/*!40000 ALTER TABLE `system$grantableroles` DISABLE KEYS */;
INSERT INTO `system$grantableroles` VALUES (4222124650659841,4222124650659841),(4222124650659841,4222124650659842);
/*!40000 ALTER TABLE `system$grantableroles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system$image`
--

DROP TABLE IF EXISTS `system$image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system$image` (
  `id` bigint NOT NULL,
  `publicthumbnailpath` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system$image`
--

LOCK TABLES `system$image` WRITE;
/*!40000 ALTER TABLE `system$image` DISABLE KEYS */;
/*!40000 ALTER TABLE `system$image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system$language`
--

DROP TABLE IF EXISTS `system$language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system$language` (
  `id` bigint NOT NULL,
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `description` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system$language`
--

LOCK TABLES `system$language` WRITE;
/*!40000 ALTER TABLE `system$language` DISABLE KEYS */;
INSERT INTO `system$language` VALUES (11540474045136897,'en_US','English, United States');
/*!40000 ALTER TABLE `system$language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system$offlinecreatedguids`
--

DROP TABLE IF EXISTS `system$offlinecreatedguids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system$offlinecreatedguids` (
  `id` bigint NOT NULL,
  `guid` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `createddate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_system$offlinecreatedguids_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system$offlinecreatedguids`
--

LOCK TABLES `system$offlinecreatedguids` WRITE;
/*!40000 ALTER TABLE `system$offlinecreatedguids` DISABLE KEYS */;
/*!40000 ALTER TABLE `system$offlinecreatedguids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system$offlinesynchronizationhistory`
--

DROP TABLE IF EXISTS `system$offlinesynchronizationhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system$offlinesynchronizationhistory` (
  `id` bigint NOT NULL,
  `syncid` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `createddate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_system$offlinesynchronizationhistory_syncid` (`syncid`),
  KEY `idx_system$offlinesynchronizationhistory_syncid_asc` (`syncid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system$offlinesynchronizationhistory`
--

LOCK TABLES `system$offlinesynchronizationhistory` WRITE;
/*!40000 ALTER TABLE `system$offlinesynchronizationhistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `system$offlinesynchronizationhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system$privatefiledocument`
--

DROP TABLE IF EXISTS `system$privatefiledocument`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system$privatefiledocument` (
  `id` bigint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system$privatefiledocument`
--

LOCK TABLES `system$privatefiledocument` WRITE;
/*!40000 ALTER TABLE `system$privatefiledocument` DISABLE KEYS */;
/*!40000 ALTER TABLE `system$privatefiledocument` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system$processedqueuetask`
--

DROP TABLE IF EXISTS `system$processedqueuetask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system$processedqueuetask` (
  `id` bigint NOT NULL,
  `sequence` bigint DEFAULT NULL,
  `status` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `queueid` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `queuename` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `contexttype` varchar(9) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `contextdata` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `microflowname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `useractionname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `arguments` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `xasid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `threadid` bigint DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `started` datetime DEFAULT NULL,
  `retried` bigint DEFAULT NULL,
  `errormessage` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `system$owner` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_system$processedqueuetask_system$owner` (`system$owner`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system$processedqueuetask`
--

LOCK TABLES `system$processedqueuetask` WRITE;
/*!40000 ALTER TABLE `system$processedqueuetask` DISABLE KEYS */;
/*!40000 ALTER TABLE `system$processedqueuetask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system$queuedtask`
--

DROP TABLE IF EXISTS `system$queuedtask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system$queuedtask` (
  `id` bigint NOT NULL,
  `sequence` bigint DEFAULT NULL,
  `status` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `queueid` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `queuename` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `contexttype` varchar(9) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `contextdata` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `microflowname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `useractionname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `arguments` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `xasid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `threadid` bigint DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `started` datetime DEFAULT NULL,
  `retried` bigint DEFAULT NULL,
  `system$owner` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_system$queuedtask_system$owner` (`system$owner`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system$queuedtask`
--

LOCK TABLES `system$queuedtask` WRITE;
/*!40000 ALTER TABLE `system$queuedtask` DISABLE KEYS */;
/*!40000 ALTER TABLE `system$queuedtask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system$scheduledeventinformation`
--

DROP TABLE IF EXISTS `system$scheduledeventinformation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system$scheduledeventinformation` (
  `id` bigint NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `starttime` datetime DEFAULT NULL,
  `endtime` datetime DEFAULT NULL,
  `status` varchar(9) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system$scheduledeventinformation`
--

LOCK TABLES `system$scheduledeventinformation` WRITE;
/*!40000 ALTER TABLE `system$scheduledeventinformation` DISABLE KEYS */;
/*!40000 ALTER TABLE `system$scheduledeventinformation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system$scheduledeventinformation_xasinstance`
--

DROP TABLE IF EXISTS `system$scheduledeventinformation_xasinstance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system$scheduledeventinformation_xasinstance` (
  `system$scheduledeventinformationid` bigint NOT NULL,
  `system$xasinstanceid` bigint NOT NULL,
  PRIMARY KEY (`system$scheduledeventinformationid`,`system$xasinstanceid`),
  UNIQUE KEY `uniq_syste$scheduledeventinfo_xasinsta_syste$scheduledeventinfor` (`system$scheduledeventinformationid`),
  KEY `idx_system$scheduledeventinformation_xasinstance` (`system$xasinstanceid`,`system$scheduledeventinformationid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system$scheduledeventinformation_xasinstance`
--

LOCK TABLES `system$scheduledeventinformation_xasinstance` WRITE;
/*!40000 ALTER TABLE `system$scheduledeventinformation_xasinstance` DISABLE KEYS */;
/*!40000 ALTER TABLE `system$scheduledeventinformation_xasinstance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system$session`
--

DROP TABLE IF EXISTS `system$session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system$session` (
  `id` bigint NOT NULL,
  `sessionid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `csrftoken` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `lastactive` datetime DEFAULT NULL,
  `longlived` tinyint(1) DEFAULT NULL,
  `readonlyhashkey` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `lastactionexecution` datetime DEFAULT NULL,
  `createddate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_system$session_sessionid_asc` (`sessionid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system$session`
--

LOCK TABLES `system$session` WRITE;
/*!40000 ALTER TABLE `system$session` DISABLE KEYS */;
INSERT INTO `system$session` VALUES (10414574138295973,'09616844-7516-45f9-8921-35ab93195b85','0594872a-395a-4de4-9c92-4db194c821c0','2022-03-18 10:03:49',0,'e586a66c-9568-49a4-9f58-c33782d8e456',NULL,'2022-03-18 10:02:34');
/*!40000 ALTER TABLE `system$session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system$session_user`
--

DROP TABLE IF EXISTS `system$session_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system$session_user` (
  `system$sessionid` bigint NOT NULL,
  `system$userid` bigint NOT NULL,
  PRIMARY KEY (`system$sessionid`,`system$userid`),
  UNIQUE KEY `uniq_system$session_user_system$sessionid` (`system$sessionid`),
  KEY `idx_system$session_user_system$user_system$session` (`system$userid`,`system$sessionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system$session_user`
--

LOCK TABLES `system$session_user` WRITE;
/*!40000 ALTER TABLE `system$session_user` DISABLE KEYS */;
INSERT INTO `system$session_user` VALUES (10414574138295973,562949953423113);
/*!40000 ALTER TABLE `system$session_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system$synchronizationerror`
--

DROP TABLE IF EXISTS `system$synchronizationerror`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system$synchronizationerror` (
  `id` bigint NOT NULL,
  `reason` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `objectid` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `objecttype` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `objectcontent` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `createddate` datetime DEFAULT NULL,
  `system$owner` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_system$synchronizationerror_system$owner` (`system$owner`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system$synchronizationerror`
--

LOCK TABLES `system$synchronizationerror` WRITE;
/*!40000 ALTER TABLE `system$synchronizationerror` DISABLE KEYS */;
/*!40000 ALTER TABLE `system$synchronizationerror` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system$synchronizationerrorfile`
--

DROP TABLE IF EXISTS `system$synchronizationerrorfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system$synchronizationerrorfile` (
  `id` bigint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system$synchronizationerrorfile`
--

LOCK TABLES `system$synchronizationerrorfile` WRITE;
/*!40000 ALTER TABLE `system$synchronizationerrorfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `system$synchronizationerrorfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system$synchronizationerrorfile_synchronizationerror`
--

DROP TABLE IF EXISTS `system$synchronizationerrorfile_synchronizationerror`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system$synchronizationerrorfile_synchronizationerror` (
  `system$synchronizationerrorfileid` bigint NOT NULL,
  `system$synchronizationerrorid` bigint NOT NULL,
  PRIMARY KEY (`system$synchronizationerrorfileid`,`system$synchronizationerrorid`),
  UNIQUE KEY `uniq_syst$synchronizatione_synchronizati_syste$synchronizationer` (`system$synchronizationerrorfileid`),
  KEY `idx_system$synchronizationerrorfile_synchronizationerror` (`system$synchronizationerrorid`,`system$synchronizationerrorfileid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system$synchronizationerrorfile_synchronizationerror`
--

LOCK TABLES `system$synchronizationerrorfile_synchronizationerror` WRITE;
/*!40000 ALTER TABLE `system$synchronizationerrorfile_synchronizationerror` DISABLE KEYS */;
/*!40000 ALTER TABLE `system$synchronizationerrorfile_synchronizationerror` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system$thumbnail`
--

DROP TABLE IF EXISTS `system$thumbnail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system$thumbnail` (
  `id` bigint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system$thumbnail`
--

LOCK TABLES `system$thumbnail` WRITE;
/*!40000 ALTER TABLE `system$thumbnail` DISABLE KEYS */;
/*!40000 ALTER TABLE `system$thumbnail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system$thumbnail_image`
--

DROP TABLE IF EXISTS `system$thumbnail_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system$thumbnail_image` (
  `system$thumbnailid` bigint NOT NULL,
  `system$imageid` bigint NOT NULL,
  PRIMARY KEY (`system$thumbnailid`,`system$imageid`),
  UNIQUE KEY `uniq_system$thumbnail_image_system$imageid` (`system$imageid`),
  UNIQUE KEY `uniq_system$thumbnail_image_system$thumbnailid` (`system$thumbnailid`),
  KEY `idx_system$thumbnail_image_system$image_system$thumbnail` (`system$imageid`,`system$thumbnailid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system$thumbnail_image`
--

LOCK TABLES `system$thumbnail_image` WRITE;
/*!40000 ALTER TABLE `system$thumbnail_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `system$thumbnail_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system$timezone`
--

DROP TABLE IF EXISTS `system$timezone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system$timezone` (
  `id` bigint NOT NULL,
  `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `rawoffset` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system$timezone`
--

LOCK TABLES `system$timezone` WRITE;
/*!40000 ALTER TABLE `system$timezone` DISABLE KEYS */;
INSERT INTO `system$timezone` VALUES (3377699720527873,'Africa/Abidjan','(GMT+00:00) Abidjan/Africa',0),(3377699720527874,'Africa/Accra','(GMT+00:00) Accra/Africa',0),(3377699720527875,'Africa/Addis_Ababa','(GMT+03:00) Addis Ababa/Africa',10800000),(3377699720527876,'Africa/Algiers','(GMT+01:00) Algiers/Africa',3600000),(3377699720527877,'Africa/Asmara','(GMT+03:00) Asmara/Africa',10800000),(3377699720527878,'Africa/Asmera','(GMT+03:00) Asmera/Africa',10800000),(3377699720527879,'Africa/Bamako','(GMT+00:00) Bamako/Africa',0),(3377699720527880,'Africa/Bangui','(GMT+01:00) Bangui/Africa',3600000),(3377699720527881,'Africa/Banjul','(GMT+00:00) Banjul/Africa',0),(3377699720527882,'Africa/Bissau','(GMT+00:00) Bissau/Africa',0),(3377699720527883,'Africa/Blantyre','(GMT+02:00) Blantyre/Africa',7200000),(3377699720527884,'Africa/Brazzaville','(GMT+01:00) Brazzaville/Africa',3600000),(3377699720527885,'Africa/Bujumbura','(GMT+02:00) Bujumbura/Africa',7200000),(3377699720527886,'Africa/Cairo','(GMT+02:00) Cairo/Africa',7200000),(3377699720527887,'Africa/Casablanca','(GMT+01:00) Casablanca/Africa',3600000),(3377699720527888,'Africa/Ceuta','(GMT+01:00) Ceuta/Africa',3600000),(3377699720527889,'Africa/Conakry','(GMT+00:00) Conakry/Africa',0),(3377699720527890,'Africa/Dakar','(GMT+00:00) Dakar/Africa',0),(3377699720527891,'Africa/Dar_es_Salaam','(GMT+03:00) Dar es Salaam/Africa',10800000),(3377699720527892,'Africa/Djibouti','(GMT+03:00) Djibouti/Africa',10800000),(3377699720527893,'Africa/Douala','(GMT+01:00) Douala/Africa',3600000),(3377699720527894,'Africa/El_Aaiun','(GMT+01:00) El Aaiun/Africa',3600000),(3377699720527895,'Africa/Freetown','(GMT+00:00) Freetown/Africa',0),(3377699720527896,'Africa/Gaborone','(GMT+02:00) Gaborone/Africa',7200000),(3377699720527897,'Africa/Harare','(GMT+02:00) Harare/Africa',7200000),(3377699720527898,'Africa/Johannesburg','(GMT+02:00) Johannesburg/Africa',7200000),(3377699720527899,'Africa/Juba','(GMT+03:00) Juba/Africa',10800000),(3377699720527900,'Africa/Kampala','(GMT+03:00) Kampala/Africa',10800000),(3377699720527901,'Africa/Khartoum','(GMT+02:00) Khartoum/Africa',7200000),(3377699720527902,'Africa/Kigali','(GMT+02:00) Kigali/Africa',7200000),(3377699720527903,'Africa/Kinshasa','(GMT+01:00) Kinshasa/Africa',3600000),(3377699720527904,'Africa/Lagos','(GMT+01:00) Lagos/Africa',3600000),(3377699720527905,'Africa/Libreville','(GMT+01:00) Libreville/Africa',3600000),(3377699720527906,'Africa/Lome','(GMT+00:00) Lome/Africa',0),(3377699720527907,'Africa/Luanda','(GMT+01:00) Luanda/Africa',3600000),(3377699720527908,'Africa/Lubumbashi','(GMT+02:00) Lubumbashi/Africa',7200000),(3377699720527909,'Africa/Lusaka','(GMT+02:00) Lusaka/Africa',7200000),(3377699720527910,'Africa/Malabo','(GMT+01:00) Malabo/Africa',3600000),(3377699720527911,'Africa/Maputo','(GMT+02:00) Maputo/Africa',7200000),(3377699720527912,'Africa/Maseru','(GMT+02:00) Maseru/Africa',7200000),(3377699720527913,'Africa/Mbabane','(GMT+02:00) Mbabane/Africa',7200000),(3377699720527914,'Africa/Mogadishu','(GMT+03:00) Mogadishu/Africa',10800000),(3377699720527915,'Africa/Monrovia','(GMT+00:00) Monrovia/Africa',0),(3377699720527916,'Africa/Nairobi','(GMT+03:00) Nairobi/Africa',10800000),(3377699720527917,'Africa/Ndjamena','(GMT+01:00) Ndjamena/Africa',3600000),(3377699720527918,'Africa/Niamey','(GMT+01:00) Niamey/Africa',3600000),(3377699720527919,'Africa/Nouakchott','(GMT+00:00) Nouakchott/Africa',0),(3377699720527920,'Africa/Ouagadougou','(GMT+00:00) Ouagadougou/Africa',0),(3377699720527921,'Africa/Porto-Novo','(GMT+01:00) Porto-Novo/Africa',3600000),(3377699720527922,'Africa/Sao_Tome','(GMT+01:00) Sao Tome/Africa',3600000),(3377699720527923,'Africa/Timbuktu','(GMT+00:00) Timbuktu/Africa',0),(3377699720527924,'Africa/Tripoli','(GMT+02:00) Tripoli/Africa',7200000),(3377699720527925,'Africa/Tunis','(GMT+01:00) Tunis/Africa',3600000),(3377699720527926,'Africa/Windhoek','(GMT+02:00) Windhoek/Africa',7200000),(3377699720527927,'America/Adak','(GMT-10:00) Adak/America',-36000000),(3377699720527928,'America/Anchorage','(GMT-09:00) Anchorage/America',-32400000),(3377699720527929,'America/Anguilla','(GMT-04:00) Anguilla/America',-14400000),(3377699720527930,'America/Antigua','(GMT-04:00) Antigua/America',-14400000),(3377699720527931,'America/Araguaina','(GMT-03:00) Araguaina/America',-10800000),(3377699720527932,'America/Argentina/Buenos_Aires','(GMT-03:00) Argentina/Buenos Aires/America',-10800000),(3377699720527933,'America/Argentina/Catamarca','(GMT-03:00) Argentina/Catamarca/America',-10800000),(3377699720527934,'America/Argentina/ComodRivadavia','(GMT-03:00) Argentina/ComodRivadavia/America',-10800000),(3377699720527935,'America/Argentina/Cordoba','(GMT-03:00) Argentina/Cordoba/America',-10800000),(3377699720527936,'America/Argentina/Jujuy','(GMT-03:00) Argentina/Jujuy/America',-10800000),(3377699720527937,'America/Argentina/La_Rioja','(GMT-03:00) Argentina/La Rioja/America',-10800000),(3377699720527938,'America/Argentina/Mendoza','(GMT-03:00) Argentina/Mendoza/America',-10800000),(3377699720527939,'America/Argentina/Rio_Gallegos','(GMT-03:00) Argentina/Rio Gallegos/America',-10800000),(3377699720527940,'America/Argentina/Salta','(GMT-03:00) Argentina/Salta/America',-10800000),(3377699720527941,'America/Argentina/San_Juan','(GMT-03:00) Argentina/San Juan/America',-10800000),(3377699720527942,'America/Argentina/San_Luis','(GMT-03:00) Argentina/San Luis/America',-10800000),(3377699720527943,'America/Argentina/Tucuman','(GMT-03:00) Argentina/Tucuman/America',-10800000),(3377699720527944,'America/Argentina/Ushuaia','(GMT-03:00) Argentina/Ushuaia/America',-10800000),(3377699720527945,'America/Aruba','(GMT-04:00) Aruba/America',-14400000),(3377699720527946,'America/Asuncion','(GMT-04:00) Asuncion/America',-14400000),(3377699720527947,'America/Atikokan','(GMT-05:00) Atikokan/America',-18000000),(3377699720527948,'America/Atka','(GMT-10:00) Atka/America',-36000000),(3377699720527949,'America/Bahia','(GMT-03:00) Bahia/America',-10800000),(3377699720527950,'America/Bahia_Banderas','(GMT-06:00) Bahia Banderas/America',-21600000),(3377699720527951,'America/Barbados','(GMT-04:00) Barbados/America',-14400000),(3377699720527952,'America/Belem','(GMT-03:00) Belem/America',-10800000),(3377699720527953,'America/Belize','(GMT-06:00) Belize/America',-21600000),(3377699720527954,'America/Blanc-Sablon','(GMT-04:00) Blanc-Sablon/America',-14400000),(3377699720527955,'America/Boa_Vista','(GMT-04:00) Boa Vista/America',-14400000),(3377699720527956,'America/Bogota','(GMT-05:00) Bogota/America',-18000000),(3377699720527957,'America/Boise','(GMT-07:00) Boise/America',-25200000),(3377699720527958,'America/Buenos_Aires','(GMT-03:00) Buenos Aires/America',-10800000),(3377699720527959,'America/Cambridge_Bay','(GMT-07:00) Cambridge Bay/America',-25200000),(3377699720527960,'America/Campo_Grande','(GMT-04:00) Campo Grande/America',-14400000),(3377699720527961,'America/Cancun','(GMT-05:00) Cancun/America',-18000000),(3377699720527962,'America/Caracas','(GMT-04:00) Caracas/America',-14400000),(3377699720527963,'America/Catamarca','(GMT-03:00) Catamarca/America',-10800000),(3377699720527964,'America/Cayenne','(GMT-03:00) Cayenne/America',-10800000),(3377699720527965,'America/Cayman','(GMT-05:00) Cayman/America',-18000000),(3377699720527966,'America/Chicago','(GMT-06:00) Chicago/America',-21600000),(3377699720527967,'America/Chihuahua','(GMT-07:00) Chihuahua/America',-25200000),(3377699720527968,'America/Coral_Harbour','(GMT-05:00) Coral Harbour/America',-18000000),(3377699720527969,'America/Cordoba','(GMT-03:00) Cordoba/America',-10800000),(3377699720527970,'America/Costa_Rica','(GMT-06:00) Costa Rica/America',-21600000),(3377699720527971,'America/Creston','(GMT-07:00) Creston/America',-25200000),(3377699720527972,'America/Cuiaba','(GMT-04:00) Cuiaba/America',-14400000),(3377699720527973,'America/Curacao','(GMT-04:00) Curacao/America',-14400000),(3377699720527974,'America/Danmarkshavn','(GMT+00:00) Danmarkshavn/America',0),(3377699720527975,'America/Dawson','(GMT-08:00) Dawson/America',-28800000),(3377699720527976,'America/Dawson_Creek','(GMT-07:00) Dawson Creek/America',-25200000),(3377699720527977,'America/Denver','(GMT-07:00) Denver/America',-25200000),(3377699720527978,'America/Detroit','(GMT-05:00) Detroit/America',-18000000),(3377699720527979,'America/Dominica','(GMT-04:00) Dominica/America',-14400000),(3377699720527980,'America/Edmonton','(GMT-07:00) Edmonton/America',-25200000),(3377699720527981,'America/Eirunepe','(GMT-05:00) Eirunepe/America',-18000000),(3377699720527982,'America/El_Salvador','(GMT-06:00) El Salvador/America',-21600000),(3377699720527983,'America/Ensenada','(GMT-08:00) Ensenada/America',-28800000),(3377699720527984,'America/Fort_Nelson','(GMT-07:00) Fort Nelson/America',-25200000),(3377699720527985,'America/Fort_Wayne','(GMT-05:00) Fort Wayne/America',-18000000),(3377699720527986,'America/Fortaleza','(GMT-03:00) Fortaleza/America',-10800000),(3377699720527987,'America/Glace_Bay','(GMT-04:00) Glace Bay/America',-14400000),(3377699720527988,'America/Godthab','(GMT-03:00) Godthab/America',-10800000),(3377699720527989,'America/Goose_Bay','(GMT-04:00) Goose Bay/America',-14400000),(3377699720527990,'America/Grand_Turk','(GMT-05:00) Grand Turk/America',-18000000),(3377699720527991,'America/Grenada','(GMT-04:00) Grenada/America',-14400000),(3377699720527992,'America/Guadeloupe','(GMT-04:00) Guadeloupe/America',-14400000),(3377699720527993,'America/Guatemala','(GMT-06:00) Guatemala/America',-21600000),(3377699720527994,'America/Guayaquil','(GMT-05:00) Guayaquil/America',-18000000),(3377699720527995,'America/Guyana','(GMT-04:00) Guyana/America',-14400000),(3377699720527996,'America/Halifax','(GMT-04:00) Halifax/America',-14400000),(3377699720527997,'America/Havana','(GMT-05:00) Havana/America',-18000000),(3377699720527998,'America/Hermosillo','(GMT-07:00) Hermosillo/America',-25200000),(3377699720527999,'America/Indiana/Indianapolis','(GMT-05:00) Indiana/Indianapolis/America',-18000000),(3377699720528000,'America/Indiana/Knox','(GMT-06:00) Indiana/Knox/America',-21600000),(3377699720528001,'America/Indiana/Marengo','(GMT-05:00) Indiana/Marengo/America',-18000000),(3377699720528002,'America/Indiana/Petersburg','(GMT-05:00) Indiana/Petersburg/America',-18000000),(3377699720528003,'America/Indiana/Tell_City','(GMT-06:00) Indiana/Tell City/America',-21600000),(3377699720528004,'America/Indiana/Vevay','(GMT-05:00) Indiana/Vevay/America',-18000000),(3377699720528005,'America/Indiana/Vincennes','(GMT-05:00) Indiana/Vincennes/America',-18000000),(3377699720528006,'America/Indiana/Winamac','(GMT-05:00) Indiana/Winamac/America',-18000000),(3377699720528007,'America/Indianapolis','(GMT-05:00) Indianapolis/America',-18000000),(3377699720528008,'America/Inuvik','(GMT-07:00) Inuvik/America',-25200000),(3377699720528009,'America/Iqaluit','(GMT-05:00) Iqaluit/America',-18000000),(3377699720528010,'America/Jamaica','(GMT-05:00) Jamaica/America',-18000000),(3377699720528011,'America/Jujuy','(GMT-03:00) Jujuy/America',-10800000),(3377699720528012,'America/Juneau','(GMT-09:00) Juneau/America',-32400000),(3377699720528013,'America/Kentucky/Louisville','(GMT-05:00) Kentucky/Louisville/America',-18000000),(3377699720528014,'America/Kentucky/Monticello','(GMT-05:00) Kentucky/Monticello/America',-18000000),(3377699720528015,'America/Knox_IN','(GMT-06:00) Knox IN/America',-21600000),(3377699720528016,'America/Kralendijk','(GMT-04:00) Kralendijk/America',-14400000),(3377699720528017,'America/La_Paz','(GMT-04:00) La Paz/America',-14400000),(3377699720528018,'America/Lima','(GMT-05:00) Lima/America',-18000000),(3377699720528019,'America/Los_Angeles','(GMT-08:00) Los Angeles/America',-28800000),(3377699720528020,'America/Louisville','(GMT-05:00) Louisville/America',-18000000),(3377699720528021,'America/Lower_Princes','(GMT-04:00) Lower Princes/America',-14400000),(3377699720528022,'America/Maceio','(GMT-03:00) Maceio/America',-10800000),(3377699720528023,'America/Managua','(GMT-06:00) Managua/America',-21600000),(3377699720528024,'America/Manaus','(GMT-04:00) Manaus/America',-14400000),(3377699720528025,'America/Marigot','(GMT-04:00) Marigot/America',-14400000),(3377699720528026,'America/Martinique','(GMT-04:00) Martinique/America',-14400000),(3377699720528027,'America/Matamoros','(GMT-06:00) Matamoros/America',-21600000),(3377699720528028,'America/Mazatlan','(GMT-07:00) Mazatlan/America',-25200000),(3377699720528029,'America/Mendoza','(GMT-03:00) Mendoza/America',-10800000),(3377699720528030,'America/Menominee','(GMT-06:00) Menominee/America',-21600000),(3377699720528031,'America/Merida','(GMT-06:00) Merida/America',-21600000),(3377699720528032,'America/Metlakatla','(GMT-09:00) Metlakatla/America',-32400000),(3377699720528033,'America/Mexico_City','(GMT-06:00) Mexico City/America',-21600000),(3377699720528034,'America/Miquelon','(GMT-03:00) Miquelon/America',-10800000),(3377699720528035,'America/Moncton','(GMT-04:00) Moncton/America',-14400000),(3377699720528036,'America/Monterrey','(GMT-06:00) Monterrey/America',-21600000),(3377699720528037,'America/Montevideo','(GMT-03:00) Montevideo/America',-10800000),(3377699720528038,'America/Montreal','(GMT-05:00) Montreal/America',-18000000),(3377699720528039,'America/Montserrat','(GMT-04:00) Montserrat/America',-14400000),(3377699720528040,'America/Nassau','(GMT-05:00) Nassau/America',-18000000),(3377699720528041,'America/New_York','(GMT-05:00) New York/America',-18000000),(3377699720528042,'America/Nipigon','(GMT-05:00) Nipigon/America',-18000000),(3377699720528043,'America/Nome','(GMT-09:00) Nome/America',-32400000),(3377699720528044,'America/Noronha','(GMT-02:00) Noronha/America',-7200000),(3377699720528045,'America/North_Dakota/Beulah','(GMT-06:00) North Dakota/Beulah/America',-21600000),(3377699720528046,'America/North_Dakota/Center','(GMT-06:00) North Dakota/Center/America',-21600000),(3377699720528047,'America/North_Dakota/New_Salem','(GMT-06:00) North Dakota/New Salem/America',-21600000),(3377699720528048,'America/Nuuk','(GMT-03:00) Nuuk/America',-10800000),(3377699720528049,'America/Ojinaga','(GMT-07:00) Ojinaga/America',-25200000),(3377699720528050,'America/Panama','(GMT-05:00) Panama/America',-18000000),(3377699720528051,'America/Pangnirtung','(GMT-05:00) Pangnirtung/America',-18000000),(3377699720528052,'America/Paramaribo','(GMT-03:00) Paramaribo/America',-10800000),(3377699720528053,'America/Phoenix','(GMT-07:00) Phoenix/America',-25200000),(3377699720528054,'America/Port-au-Prince','(GMT-05:00) Port-au-Prince/America',-18000000),(3377699720528055,'America/Port_of_Spain','(GMT-04:00) Port of Spain/America',-14400000),(3377699720528056,'America/Porto_Acre','(GMT-05:00) Porto Acre/America',-18000000),(3377699720528057,'America/Porto_Velho','(GMT-04:00) Porto Velho/America',-14400000),(3377699720528058,'America/Puerto_Rico','(GMT-04:00) Puerto Rico/America',-14400000),(3377699720528059,'America/Punta_Arenas','(GMT-03:00) Punta Arenas/America',-10800000),(3377699720528060,'America/Rainy_River','(GMT-06:00) Rainy River/America',-21600000),(3377699720528061,'America/Rankin_Inlet','(GMT-06:00) Rankin Inlet/America',-21600000),(3377699720528062,'America/Recife','(GMT-03:00) Recife/America',-10800000),(3377699720528063,'America/Regina','(GMT-06:00) Regina/America',-21600000),(3377699720528064,'America/Resolute','(GMT-06:00) Resolute/America',-21600000),(3377699720528065,'America/Rio_Branco','(GMT-05:00) Rio Branco/America',-18000000),(3377699720528066,'America/Rosario','(GMT-03:00) Rosario/America',-10800000),(3377699720528067,'America/Santa_Isabel','(GMT-08:00) Santa Isabel/America',-28800000),(3377699720528068,'America/Santarem','(GMT-03:00) Santarem/America',-10800000),(3377699720528069,'America/Santiago','(GMT-04:00) Santiago/America',-14400000),(3377699720528070,'America/Santo_Domingo','(GMT-04:00) Santo Domingo/America',-14400000),(3377699720528071,'America/Sao_Paulo','(GMT-03:00) Sao Paulo/America',-10800000),(3377699720528072,'America/Scoresbysund','(GMT-01:00) Scoresbysund/America',-3600000),(3377699720528073,'America/Shiprock','(GMT-07:00) Shiprock/America',-25200000),(3377699720528074,'America/Sitka','(GMT-09:00) Sitka/America',-32400000),(3377699720528075,'America/St_Barthelemy','(GMT-04:00) St Barthelemy/America',-14400000),(3377699720528076,'America/St_Johns','(GMT-03:30) St Johns/America',-12600000),(3377699720528077,'America/St_Kitts','(GMT-04:00) St Kitts/America',-14400000),(3377699720528078,'America/St_Lucia','(GMT-04:00) St Lucia/America',-14400000),(3377699720528079,'America/St_Thomas','(GMT-04:00) St Thomas/America',-14400000),(3377699720528080,'America/St_Vincent','(GMT-04:00) St Vincent/America',-14400000),(3377699720528081,'America/Swift_Current','(GMT-06:00) Swift Current/America',-21600000),(3377699720528082,'America/Tegucigalpa','(GMT-06:00) Tegucigalpa/America',-21600000),(3377699720528083,'America/Thule','(GMT-04:00) Thule/America',-14400000),(3377699720528084,'America/Thunder_Bay','(GMT-05:00) Thunder Bay/America',-18000000),(3377699720528085,'America/Tijuana','(GMT-08:00) Tijuana/America',-28800000),(3377699720528086,'America/Toronto','(GMT-05:00) Toronto/America',-18000000),(3377699720528087,'America/Tortola','(GMT-04:00) Tortola/America',-14400000),(3377699720528088,'America/Vancouver','(GMT-08:00) Vancouver/America',-28800000),(3377699720528089,'America/Virgin','(GMT-04:00) Virgin/America',-14400000),(3377699720528090,'America/Whitehorse','(GMT-08:00) Whitehorse/America',-28800000),(3377699720528091,'America/Winnipeg','(GMT-06:00) Winnipeg/America',-21600000),(3377699720528092,'America/Yakutat','(GMT-09:00) Yakutat/America',-32400000),(3377699720528093,'America/Yellowknife','(GMT-07:00) Yellowknife/America',-25200000),(3377699720528094,'Antarctica/Casey','(GMT+08:00) Casey/Antarctica',28800000),(3377699720528095,'Antarctica/Davis','(GMT+07:00) Davis/Antarctica',25200000),(3377699720528096,'Antarctica/DumontDUrville','(GMT+10:00) DumontDUrville/Antarctica',36000000),(3377699720528097,'Antarctica/Macquarie','(GMT+11:00) Macquarie/Antarctica',39600000),(3377699720528098,'Antarctica/Mawson','(GMT+05:00) Mawson/Antarctica',18000000),(3377699720528099,'Antarctica/McMurdo','(GMT+12:00) McMurdo/Antarctica',43200000),(3377699720528100,'Antarctica/Palmer','(GMT-03:00) Palmer/Antarctica',-10800000),(3377699720528101,'Antarctica/Rothera','(GMT-03:00) Rothera/Antarctica',-10800000),(3377699720528102,'Antarctica/South_Pole','(GMT+12:00) South Pole/Antarctica',43200000),(3377699720528103,'Antarctica/Syowa','(GMT+03:00) Syowa/Antarctica',10800000),(3377699720528104,'Antarctica/Troll','(GMT+00:00) Troll/Antarctica',0),(3377699720528105,'Antarctica/Vostok','(GMT+06:00) Vostok/Antarctica',21600000),(3377699720528106,'Arctic/Longyearbyen','(GMT+01:00) Longyearbyen/Arctic',3600000),(3377699720528107,'Asia/Aden','(GMT+03:00) Aden/Asia',10800000),(3377699720528108,'Asia/Almaty','(GMT+06:00) Almaty/Asia',21600000),(3377699720528109,'Asia/Amman','(GMT+02:00) Amman/Asia',7200000),(3377699720528110,'Asia/Anadyr','(GMT+12:00) Anadyr/Asia',43200000),(3377699720528111,'Asia/Aqtau','(GMT+05:00) Aqtau/Asia',18000000),(3377699720528112,'Asia/Aqtobe','(GMT+05:00) Aqtobe/Asia',18000000),(3377699720528113,'Asia/Ashgabat','(GMT+05:00) Ashgabat/Asia',18000000),(3377699720528114,'Asia/Ashkhabad','(GMT+05:00) Ashkhabad/Asia',18000000),(3377699720528115,'Asia/Atyrau','(GMT+05:00) Atyrau/Asia',18000000),(3377699720528116,'Asia/Baghdad','(GMT+03:00) Baghdad/Asia',10800000),(3377699720528117,'Asia/Bahrain','(GMT+03:00) Bahrain/Asia',10800000),(3377699720528118,'Asia/Baku','(GMT+04:00) Baku/Asia',14400000),(3377699720528119,'Asia/Bangkok','(GMT+07:00) Bangkok/Asia',25200000),(3377699720528120,'Asia/Barnaul','(GMT+07:00) Barnaul/Asia',25200000),(3377699720528121,'Asia/Beirut','(GMT+02:00) Beirut/Asia',7200000),(3377699720528122,'Asia/Bishkek','(GMT+06:00) Bishkek/Asia',21600000),(3377699720528123,'Asia/Brunei','(GMT+08:00) Brunei/Asia',28800000),(3377699720528124,'Asia/Calcutta','(GMT+05:30) Calcutta/Asia',19800000),(3377699720528125,'Asia/Chita','(GMT+09:00) Chita/Asia',32400000),(3377699720528126,'Asia/Choibalsan','(GMT+08:00) Choibalsan/Asia',28800000),(3377699720528127,'Asia/Chongqing','(GMT+08:00) Chongqing/Asia',28800000),(3377699720528128,'Asia/Chungking','(GMT+08:00) Chungking/Asia',28800000),(3377699720528129,'Asia/Colombo','(GMT+05:30) Colombo/Asia',19800000),(3377699720528130,'Asia/Dacca','(GMT+06:00) Dacca/Asia',21600000),(3377699720528131,'Asia/Damascus','(GMT+02:00) Damascus/Asia',7200000),(3377699720528132,'Asia/Dhaka','(GMT+06:00) Dhaka/Asia',21600000),(3377699720528133,'Asia/Dili','(GMT+09:00) Dili/Asia',32400000),(3377699720528134,'Asia/Dubai','(GMT+04:00) Dubai/Asia',14400000),(3377699720528135,'Asia/Dushanbe','(GMT+05:00) Dushanbe/Asia',18000000),(3377699720528136,'Asia/Famagusta','(GMT+02:00) Famagusta/Asia',7200000),(3377699720528137,'Asia/Gaza','(GMT+02:00) Gaza/Asia',7200000),(3377699720528138,'Asia/Harbin','(GMT+08:00) Harbin/Asia',28800000),(3377699720528139,'Asia/Hebron','(GMT+02:00) Hebron/Asia',7200000),(3377699720528140,'Asia/Ho_Chi_Minh','(GMT+07:00) Ho Chi Minh/Asia',25200000),(3377699720528141,'Asia/Hong_Kong','(GMT+08:00) Hong Kong/Asia',28800000),(3377699720528142,'Asia/Hovd','(GMT+07:00) Hovd/Asia',25200000),(3377699720528143,'Asia/Irkutsk','(GMT+08:00) Irkutsk/Asia',28800000),(3377699720528144,'Asia/Istanbul','(GMT+03:00) Istanbul/Asia',10800000),(3377699720528145,'Asia/Jakarta','(GMT+07:00) Jakarta/Asia',25200000),(3377699720528146,'Asia/Jayapura','(GMT+09:00) Jayapura/Asia',32400000),(3377699720528147,'Asia/Jerusalem','(GMT+02:00) Jerusalem/Asia',7200000),(3377699720528148,'Asia/Kabul','(GMT+04:30) Kabul/Asia',16200000),(3377699720528149,'Asia/Kamchatka','(GMT+12:00) Kamchatka/Asia',43200000),(3377699720528150,'Asia/Karachi','(GMT+05:00) Karachi/Asia',18000000),(3377699720528151,'Asia/Kashgar','(GMT+06:00) Kashgar/Asia',21600000),(3377699720528152,'Asia/Kathmandu','(GMT+05:45) Kathmandu/Asia',20700000),(3377699720528153,'Asia/Katmandu','(GMT+05:45) Katmandu/Asia',20700000),(3377699720528154,'Asia/Khandyga','(GMT+09:00) Khandyga/Asia',32400000),(3377699720528155,'Asia/Kolkata','(GMT+05:30) Kolkata/Asia',19800000),(3377699720528156,'Asia/Krasnoyarsk','(GMT+07:00) Krasnoyarsk/Asia',25200000),(3377699720528157,'Asia/Kuala_Lumpur','(GMT+08:00) Kuala Lumpur/Asia',28800000),(3377699720528158,'Asia/Kuching','(GMT+08:00) Kuching/Asia',28800000),(3377699720528159,'Asia/Kuwait','(GMT+03:00) Kuwait/Asia',10800000),(3377699720528160,'Asia/Macao','(GMT+08:00) Macao/Asia',28800000),(3377699720528161,'Asia/Macau','(GMT+08:00) Macau/Asia',28800000),(3377699720528162,'Asia/Magadan','(GMT+11:00) Magadan/Asia',39600000),(3377699720528163,'Asia/Makassar','(GMT+08:00) Makassar/Asia',28800000),(3377699720528164,'Asia/Manila','(GMT+08:00) Manila/Asia',28800000),(3377699720528165,'Asia/Muscat','(GMT+04:00) Muscat/Asia',14400000),(3377699720528166,'Asia/Nicosia','(GMT+02:00) Nicosia/Asia',7200000),(3377699720528167,'Asia/Novokuznetsk','(GMT+07:00) Novokuznetsk/Asia',25200000),(3377699720528168,'Asia/Novosibirsk','(GMT+07:00) Novosibirsk/Asia',25200000),(3377699720528169,'Asia/Omsk','(GMT+06:00) Omsk/Asia',21600000),(3377699720528170,'Asia/Oral','(GMT+05:00) Oral/Asia',18000000),(3377699720528171,'Asia/Phnom_Penh','(GMT+07:00) Phnom Penh/Asia',25200000),(3377699720528172,'Asia/Pontianak','(GMT+07:00) Pontianak/Asia',25200000),(3377699720528173,'Asia/Pyongyang','(GMT+09:00) Pyongyang/Asia',32400000),(3377699720528174,'Asia/Qatar','(GMT+03:00) Qatar/Asia',10800000),(3377699720528175,'Asia/Qostanay','(GMT+06:00) Qostanay/Asia',21600000),(3377699720528176,'Asia/Qyzylorda','(GMT+06:00) Qyzylorda/Asia',21600000),(3377699720528177,'Asia/Rangoon','(GMT+06:30) Rangoon/Asia',23400000),(3377699720528178,'Asia/Riyadh','(GMT+03:00) Riyadh/Asia',10800000),(3377699720528179,'Asia/Saigon','(GMT+07:00) Saigon/Asia',25200000),(3377699720528180,'Asia/Sakhalin','(GMT+11:00) Sakhalin/Asia',39600000),(3377699720528181,'Asia/Samarkand','(GMT+05:00) Samarkand/Asia',18000000),(3377699720528182,'Asia/Seoul','(GMT+09:00) Seoul/Asia',32400000),(3377699720528183,'Asia/Shanghai','(GMT+08:00) Shanghai/Asia',28800000),(3377699720528184,'Asia/Singapore','(GMT+08:00) Singapore/Asia',28800000),(3377699720528185,'Asia/Srednekolymsk','(GMT+11:00) Srednekolymsk/Asia',39600000),(3377699720528186,'Asia/Taipei','(GMT+08:00) Taipei/Asia',28800000),(3377699720528187,'Asia/Tashkent','(GMT+05:00) Tashkent/Asia',18000000),(3377699720528188,'Asia/Tbilisi','(GMT+04:00) Tbilisi/Asia',14400000),(3377699720528189,'Asia/Tehran','(GMT+03:30) Tehran/Asia',12600000),(3377699720528190,'Asia/Tel_Aviv','(GMT+02:00) Tel Aviv/Asia',7200000),(3377699720528191,'Asia/Thimbu','(GMT+06:00) Thimbu/Asia',21600000),(3377699720528192,'Asia/Thimphu','(GMT+06:00) Thimphu/Asia',21600000),(3377699720528193,'Asia/Tokyo','(GMT+09:00) Tokyo/Asia',32400000),(3377699720528194,'Asia/Tomsk','(GMT+07:00) Tomsk/Asia',25200000),(3377699720528195,'Asia/Ujung_Pandang','(GMT+08:00) Ujung Pandang/Asia',28800000),(3377699720528196,'Asia/Ulaanbaatar','(GMT+08:00) Ulaanbaatar/Asia',28800000),(3377699720528197,'Asia/Ulan_Bator','(GMT+08:00) Ulan Bator/Asia',28800000),(3377699720528198,'Asia/Urumqi','(GMT+06:00) Urumqi/Asia',21600000),(3377699720528199,'Asia/Ust-Nera','(GMT+10:00) Ust-Nera/Asia',36000000),(3377699720528200,'Asia/Vientiane','(GMT+07:00) Vientiane/Asia',25200000),(3377699720528201,'Asia/Vladivostok','(GMT+10:00) Vladivostok/Asia',36000000),(3377699720528202,'Asia/Yakutsk','(GMT+09:00) Yakutsk/Asia',32400000),(3377699720528203,'Asia/Yangon','(GMT+06:30) Yangon/Asia',23400000),(3377699720528204,'Asia/Yekaterinburg','(GMT+05:00) Yekaterinburg/Asia',18000000),(3377699720528205,'Asia/Yerevan','(GMT+04:00) Yerevan/Asia',14400000),(3377699720528206,'Atlantic/Azores','(GMT-01:00) Azores/Atlantic',-3600000),(3377699720528207,'Atlantic/Bermuda','(GMT-04:00) Bermuda/Atlantic',-14400000),(3377699720528208,'Atlantic/Canary','(GMT+00:00) Canary/Atlantic',0),(3377699720528209,'Atlantic/Cape_Verde','(GMT-01:00) Cape Verde/Atlantic',-3600000),(3377699720528210,'Atlantic/Faeroe','(GMT+00:00) Faeroe/Atlantic',0),(3377699720528211,'Atlantic/Faroe','(GMT+00:00) Faroe/Atlantic',0),(3377699720528212,'Atlantic/Jan_Mayen','(GMT+01:00) Jan Mayen/Atlantic',3600000),(3377699720528213,'Atlantic/Madeira','(GMT+00:00) Madeira/Atlantic',0),(3377699720528214,'Atlantic/Reykjavik','(GMT+00:00) Reykjavik/Atlantic',0),(3377699720528215,'Atlantic/South_Georgia','(GMT-02:00) South Georgia/Atlantic',-7200000),(3377699720528216,'Atlantic/St_Helena','(GMT+00:00) St Helena/Atlantic',0),(3377699720528217,'Atlantic/Stanley','(GMT-03:00) Stanley/Atlantic',-10800000),(3377699720528218,'Australia/ACT','(GMT+10:00) ACT/Australia',36000000),(3377699720528219,'Australia/Adelaide','(GMT+09:30) Adelaide/Australia',34200000),(3377699720528220,'Australia/Brisbane','(GMT+10:00) Brisbane/Australia',36000000),(3377699720528221,'Australia/Broken_Hill','(GMT+09:30) Broken Hill/Australia',34200000),(3377699720528222,'Australia/Canberra','(GMT+10:00) Canberra/Australia',36000000),(3377699720528223,'Australia/Currie','(GMT+10:00) Currie/Australia',36000000),(3377699720528224,'Australia/Darwin','(GMT+09:30) Darwin/Australia',34200000),(3377699720528225,'Australia/Eucla','(GMT+08:45) Eucla/Australia',31500000),(3377699720528226,'Australia/Hobart','(GMT+10:00) Hobart/Australia',36000000),(3377699720528227,'Australia/LHI','(GMT+10:30) LHI/Australia',37800000),(3377699720528228,'Australia/Lindeman','(GMT+10:00) Lindeman/Australia',36000000),(3377699720528229,'Australia/Lord_Howe','(GMT+10:30) Lord Howe/Australia',37800000),(3377699720528230,'Australia/Melbourne','(GMT+10:00) Melbourne/Australia',36000000),(3377699720528231,'Australia/NSW','(GMT+10:00) NSW/Australia',36000000),(3377699720528232,'Australia/North','(GMT+09:30) North/Australia',34200000),(3377699720528233,'Australia/Perth','(GMT+08:00) Perth/Australia',28800000),(3377699720528234,'Australia/Queensland','(GMT+10:00) Queensland/Australia',36000000),(3377699720528235,'Australia/South','(GMT+09:30) South/Australia',34200000),(3377699720528236,'Australia/Sydney','(GMT+10:00) Sydney/Australia',36000000),(3377699720528237,'Australia/Tasmania','(GMT+10:00) Tasmania/Australia',36000000),(3377699720528238,'Australia/Victoria','(GMT+10:00) Victoria/Australia',36000000),(3377699720528239,'Australia/West','(GMT+08:00) West/Australia',28800000),(3377699720528240,'Australia/Yancowinna','(GMT+09:30) Yancowinna/Australia',34200000),(3377699720528241,'Brazil/Acre','(GMT-05:00) Acre/Brazil',-18000000),(3377699720528242,'Brazil/DeNoronha','(GMT-02:00) DeNoronha/Brazil',-7200000),(3377699720528243,'Brazil/East','(GMT-03:00) East/Brazil',-10800000),(3377699720528244,'Brazil/West','(GMT-04:00) West/Brazil',-14400000),(3377699720528245,'Canada/Atlantic','(GMT-04:00) Atlantic/Canada',-14400000),(3377699720528246,'Canada/Central','(GMT-06:00) Central/Canada',-21600000),(3377699720528247,'Canada/Eastern','(GMT-05:00) Eastern/Canada',-18000000),(3377699720528248,'Canada/Mountain','(GMT-07:00) Mountain/Canada',-25200000),(3377699720528249,'Canada/Newfoundland','(GMT-03:30) Newfoundland/Canada',-12600000),(3377699720528250,'Canada/Pacific','(GMT-08:00) Pacific/Canada',-28800000),(3377699720528251,'Canada/Saskatchewan','(GMT-06:00) Saskatchewan/Canada',-21600000),(3377699720528252,'Canada/Yukon','(GMT-08:00) Yukon/Canada',-28800000),(3377699720528253,'Chile/Continental','(GMT-04:00) Continental/Chile',-14400000),(3377699720528254,'Chile/EasterIsland','(GMT-06:00) EasterIsland/Chile',-21600000),(3377699720528255,'Etc/UTC','(GMT+00:00) UTC/Etc',0),(3377699720528256,'Europe/Amsterdam','(GMT+01:00) Amsterdam/Europe',3600000),(3377699720528257,'Europe/Andorra','(GMT+01:00) Andorra/Europe',3600000),(3377699720528258,'Europe/Astrakhan','(GMT+04:00) Astrakhan/Europe',14400000),(3377699720528259,'Europe/Athens','(GMT+02:00) Athens/Europe',7200000),(3377699720528260,'Europe/Belfast','(GMT+00:00) Belfast/Europe',0),(3377699720528261,'Europe/Belgrade','(GMT+01:00) Belgrade/Europe',3600000),(3377699720528262,'Europe/Berlin','(GMT+01:00) Berlin/Europe',3600000),(3377699720528263,'Europe/Bratislava','(GMT+01:00) Bratislava/Europe',3600000),(3377699720528264,'Europe/Brussels','(GMT+01:00) Brussels/Europe',3600000),(3377699720528265,'Europe/Bucharest','(GMT+02:00) Bucharest/Europe',7200000),(3377699720528266,'Europe/Budapest','(GMT+01:00) Budapest/Europe',3600000),(3377699720528267,'Europe/Busingen','(GMT+01:00) Busingen/Europe',3600000),(3377699720528268,'Europe/Chisinau','(GMT+02:00) Chisinau/Europe',7200000),(3377699720528269,'Europe/Copenhagen','(GMT+01:00) Copenhagen/Europe',3600000),(3377699720528270,'Europe/Dublin','(GMT+00:00) Dublin/Europe',0),(3377699720528271,'Europe/Gibraltar','(GMT+01:00) Gibraltar/Europe',3600000),(3377699720528272,'Europe/Guernsey','(GMT+00:00) Guernsey/Europe',0),(3377699720528273,'Europe/Helsinki','(GMT+02:00) Helsinki/Europe',7200000),(3377699720528274,'Europe/Isle_of_Man','(GMT+00:00) Isle of Man/Europe',0),(3377699720528275,'Europe/Istanbul','(GMT+03:00) Istanbul/Europe',10800000),(3377699720528276,'Europe/Jersey','(GMT+00:00) Jersey/Europe',0),(3377699720528277,'Europe/Kaliningrad','(GMT+02:00) Kaliningrad/Europe',7200000),(3377699720528278,'Europe/Kiev','(GMT+02:00) Kiev/Europe',7200000),(3377699720528279,'Europe/Kirov','(GMT+03:00) Kirov/Europe',10800000),(3377699720528280,'Europe/Lisbon','(GMT+00:00) Lisbon/Europe',0),(3377699720528281,'Europe/Ljubljana','(GMT+01:00) Ljubljana/Europe',3600000),(3377699720528282,'Europe/London','(GMT+00:00) London/Europe',0),(3377699720528283,'Europe/Luxembourg','(GMT+01:00) Luxembourg/Europe',3600000),(3377699720528284,'Europe/Madrid','(GMT+01:00) Madrid/Europe',3600000),(3377699720528285,'Europe/Malta','(GMT+01:00) Malta/Europe',3600000),(3377699720528286,'Europe/Mariehamn','(GMT+02:00) Mariehamn/Europe',7200000),(3377699720528287,'Europe/Minsk','(GMT+03:00) Minsk/Europe',10800000),(3377699720528288,'Europe/Monaco','(GMT+01:00) Monaco/Europe',3600000),(3377699720528289,'Europe/Moscow','(GMT+03:00) Moscow/Europe',10800000),(3377699720528290,'Europe/Nicosia','(GMT+02:00) Nicosia/Europe',7200000),(3377699720528291,'Europe/Oslo','(GMT+01:00) Oslo/Europe',3600000),(3377699720528292,'Europe/Paris','(GMT+01:00) Paris/Europe',3600000),(3377699720528293,'Europe/Podgorica','(GMT+01:00) Podgorica/Europe',3600000),(3377699720528294,'Europe/Prague','(GMT+01:00) Prague/Europe',3600000),(3377699720528295,'Europe/Riga','(GMT+02:00) Riga/Europe',7200000),(3377699720528296,'Europe/Rome','(GMT+01:00) Rome/Europe',3600000),(3377699720528297,'Europe/Samara','(GMT+04:00) Samara/Europe',14400000),(3377699720528298,'Europe/San_Marino','(GMT+01:00) San Marino/Europe',3600000),(3377699720528299,'Europe/Sarajevo','(GMT+01:00) Sarajevo/Europe',3600000),(3377699720528300,'Europe/Saratov','(GMT+04:00) Saratov/Europe',14400000),(3377699720528301,'Europe/Simferopol','(GMT+03:00) Simferopol/Europe',10800000),(3377699720528302,'Europe/Skopje','(GMT+01:00) Skopje/Europe',3600000),(3377699720528303,'Europe/Sofia','(GMT+02:00) Sofia/Europe',7200000),(3377699720528304,'Europe/Stockholm','(GMT+01:00) Stockholm/Europe',3600000),(3377699720528305,'Europe/Tallinn','(GMT+02:00) Tallinn/Europe',7200000),(3377699720528306,'Europe/Tirane','(GMT+01:00) Tirane/Europe',3600000),(3377699720528307,'Europe/Tiraspol','(GMT+02:00) Tiraspol/Europe',7200000),(3377699720528308,'Europe/Ulyanovsk','(GMT+04:00) Ulyanovsk/Europe',14400000),(3377699720528309,'Europe/Uzhgorod','(GMT+02:00) Uzhgorod/Europe',7200000),(3377699720528310,'Europe/Vaduz','(GMT+01:00) Vaduz/Europe',3600000),(3377699720528311,'Europe/Vatican','(GMT+01:00) Vatican/Europe',3600000),(3377699720528312,'Europe/Vienna','(GMT+01:00) Vienna/Europe',3600000),(3377699720528313,'Europe/Vilnius','(GMT+02:00) Vilnius/Europe',7200000),(3377699720528314,'Europe/Volgograd','(GMT+04:00) Volgograd/Europe',14400000),(3377699720528315,'Europe/Warsaw','(GMT+01:00) Warsaw/Europe',3600000),(3377699720528316,'Europe/Zagreb','(GMT+01:00) Zagreb/Europe',3600000),(3377699720528317,'Europe/Zaporozhye','(GMT+02:00) Zaporozhye/Europe',7200000),(3377699720528318,'Europe/Zurich','(GMT+01:00) Zurich/Europe',3600000),(3377699720528319,'Indian/Antananarivo','(GMT+03:00) Antananarivo/Indian',10800000),(3377699720528320,'Indian/Chagos','(GMT+06:00) Chagos/Indian',21600000),(3377699720528321,'Indian/Christmas','(GMT+07:00) Christmas/Indian',25200000),(3377699720528322,'Indian/Cocos','(GMT+06:30) Cocos/Indian',23400000),(3377699720528323,'Indian/Comoro','(GMT+03:00) Comoro/Indian',10800000),(3377699720528324,'Indian/Kerguelen','(GMT+05:00) Kerguelen/Indian',18000000),(3377699720528325,'Indian/Mahe','(GMT+04:00) Mahe/Indian',14400000),(3377699720528326,'Indian/Maldives','(GMT+05:00) Maldives/Indian',18000000),(3377699720528327,'Indian/Mauritius','(GMT+04:00) Mauritius/Indian',14400000),(3377699720528328,'Indian/Mayotte','(GMT+03:00) Mayotte/Indian',10800000),(3377699720528329,'Indian/Reunion','(GMT+04:00) Reunion/Indian',14400000),(3377699720528330,'Mexico/BajaNorte','(GMT-08:00) BajaNorte/Mexico',-28800000),(3377699720528331,'Mexico/BajaSur','(GMT-07:00) BajaSur/Mexico',-25200000),(3377699720528332,'Mexico/General','(GMT-06:00) General/Mexico',-21600000),(3377699720528333,'Pacific/Apia','(GMT+13:00) Apia/Pacific',46800000),(3377699720528334,'Pacific/Auckland','(GMT+12:00) Auckland/Pacific',43200000),(3377699720528335,'Pacific/Bougainville','(GMT+11:00) Bougainville/Pacific',39600000),(3377699720528336,'Pacific/Chatham','(GMT+12:45) Chatham/Pacific',45900000),(3377699720528337,'Pacific/Chuuk','(GMT+10:00) Chuuk/Pacific',36000000),(3377699720528338,'Pacific/Easter','(GMT-06:00) Easter/Pacific',-21600000),(3377699720528339,'Pacific/Efate','(GMT+11:00) Efate/Pacific',39600000),(3377699720528340,'Pacific/Enderbury','(GMT+13:00) Enderbury/Pacific',46800000),(3377699720528341,'Pacific/Fakaofo','(GMT+13:00) Fakaofo/Pacific',46800000),(3377699720528342,'Pacific/Fiji','(GMT+12:00) Fiji/Pacific',43200000),(3377699720528343,'Pacific/Funafuti','(GMT+12:00) Funafuti/Pacific',43200000),(3377699720528344,'Pacific/Galapagos','(GMT-06:00) Galapagos/Pacific',-21600000),(3377699720528345,'Pacific/Gambier','(GMT-09:00) Gambier/Pacific',-32400000),(3377699720528346,'Pacific/Guadalcanal','(GMT+11:00) Guadalcanal/Pacific',39600000),(3377699720528347,'Pacific/Guam','(GMT+10:00) Guam/Pacific',36000000),(3377699720528348,'Pacific/Honolulu','(GMT-10:00) Honolulu/Pacific',-36000000),(3377699720528349,'Pacific/Johnston','(GMT-10:00) Johnston/Pacific',-36000000),(3377699720528350,'Pacific/Kiritimati','(GMT+14:00) Kiritimati/Pacific',50400000),(3377699720528351,'Pacific/Kosrae','(GMT+11:00) Kosrae/Pacific',39600000),(3377699720528352,'Pacific/Kwajalein','(GMT+12:00) Kwajalein/Pacific',43200000),(3377699720528353,'Pacific/Majuro','(GMT+12:00) Majuro/Pacific',43200000),(3377699720528354,'Pacific/Marquesas','(GMT-09:30) Marquesas/Pacific',-34200000),(3377699720528355,'Pacific/Midway','(GMT-11:00) Midway/Pacific',-39600000),(3377699720528356,'Pacific/Nauru','(GMT+12:00) Nauru/Pacific',43200000),(3377699720528357,'Pacific/Niue','(GMT-11:00) Niue/Pacific',-39600000),(3377699720528358,'Pacific/Norfolk','(GMT+11:00) Norfolk/Pacific',39600000),(3377699720528359,'Pacific/Noumea','(GMT+11:00) Noumea/Pacific',39600000),(3377699720528360,'Pacific/Pago_Pago','(GMT-11:00) Pago Pago/Pacific',-39600000),(3377699720528361,'Pacific/Palau','(GMT+09:00) Palau/Pacific',32400000),(3377699720528362,'Pacific/Pitcairn','(GMT-08:00) Pitcairn/Pacific',-28800000),(3377699720528363,'Pacific/Pohnpei','(GMT+11:00) Pohnpei/Pacific',39600000),(3377699720528364,'Pacific/Ponape','(GMT+11:00) Ponape/Pacific',39600000),(3377699720528365,'Pacific/Port_Moresby','(GMT+10:00) Port Moresby/Pacific',36000000),(3377699720528366,'Pacific/Rarotonga','(GMT-10:00) Rarotonga/Pacific',-36000000),(3377699720528367,'Pacific/Saipan','(GMT+10:00) Saipan/Pacific',36000000),(3377699720528368,'Pacific/Samoa','(GMT-11:00) Samoa/Pacific',-39600000),(3377699720528369,'Pacific/Tahiti','(GMT-10:00) Tahiti/Pacific',-36000000),(3377699720528370,'Pacific/Tarawa','(GMT+12:00) Tarawa/Pacific',43200000),(3377699720528371,'Pacific/Tongatapu','(GMT+13:00) Tongatapu/Pacific',46800000),(3377699720528372,'Pacific/Truk','(GMT+10:00) Truk/Pacific',36000000),(3377699720528373,'Pacific/Wake','(GMT+12:00) Wake/Pacific',43200000),(3377699720528374,'Pacific/Wallis','(GMT+12:00) Wallis/Pacific',43200000),(3377699720528375,'Pacific/Yap','(GMT+10:00) Yap/Pacific',36000000),(3377699720528376,'US/Alaska','(GMT-09:00) Alaska/US',-32400000),(3377699720528377,'US/Aleutian','(GMT-10:00) Aleutian/US',-36000000),(3377699720528378,'US/Arizona','(GMT-07:00) Arizona/US',-25200000),(3377699720528379,'US/Central','(GMT-06:00) Central/US',-21600000),(3377699720528380,'US/East-Indiana','(GMT-05:00) East-Indiana/US',-18000000),(3377699720528381,'US/Eastern','(GMT-05:00) Eastern/US',-18000000),(3377699720528382,'US/Hawaii','(GMT-10:00) Hawaii/US',-36000000),(3377699720528383,'US/Indiana-Starke','(GMT-06:00) Indiana-Starke/US',-21600000),(3377699720528384,'US/Michigan','(GMT-05:00) Michigan/US',-18000000),(3377699720528385,'US/Mountain','(GMT-07:00) Mountain/US',-25200000),(3377699720528386,'US/Pacific','(GMT-08:00) Pacific/US',-28800000),(3377699720528387,'US/Samoa','(GMT-11:00) Samoa/US',-39600000),(3377699720528473,'US/Pacific-New','(GMT-08:00) Pacific-New/US',-28800000);
/*!40000 ALTER TABLE `system$timezone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system$tokeninformation`
--

DROP TABLE IF EXISTS `system$tokeninformation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system$tokeninformation` (
  `id` bigint NOT NULL,
  `token` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `expirydate` datetime DEFAULT NULL,
  `useragent` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system$tokeninformation`
--

LOCK TABLES `system$tokeninformation` WRITE;
/*!40000 ALTER TABLE `system$tokeninformation` DISABLE KEYS */;
/*!40000 ALTER TABLE `system$tokeninformation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system$tokeninformation_user`
--

DROP TABLE IF EXISTS `system$tokeninformation_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system$tokeninformation_user` (
  `system$tokeninformationid` bigint NOT NULL,
  `system$userid` bigint NOT NULL,
  PRIMARY KEY (`system$tokeninformationid`,`system$userid`),
  UNIQUE KEY `uniq_system$tokeninformation_user_system$tokeninformationid` (`system$tokeninformationid`),
  KEY `idx_system$tokeninformation_user` (`system$userid`,`system$tokeninformationid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system$tokeninformation_user`
--

LOCK TABLES `system$tokeninformation_user` WRITE;
/*!40000 ALTER TABLE `system$tokeninformation_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `system$tokeninformation_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system$unreferencedfile`
--

DROP TABLE IF EXISTS `system$unreferencedfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system$unreferencedfile` (
  `id` bigint NOT NULL,
  `filekey` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `state` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `transactionid` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `createddate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system$unreferencedfile`
--

LOCK TABLES `system$unreferencedfile` WRITE;
/*!40000 ALTER TABLE `system$unreferencedfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `system$unreferencedfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system$unreferencedfile_xasinstance`
--

DROP TABLE IF EXISTS `system$unreferencedfile_xasinstance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system$unreferencedfile_xasinstance` (
  `system$unreferencedfileid` bigint NOT NULL,
  `system$xasinstanceid` bigint NOT NULL,
  PRIMARY KEY (`system$unreferencedfileid`,`system$xasinstanceid`),
  UNIQUE KEY `uniq_system$unreferencedfil_xasinstance_system$unreferencedfilei` (`system$unreferencedfileid`),
  KEY `idx_system$unreferencedfile_xasinstance` (`system$xasinstanceid`,`system$unreferencedfileid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system$unreferencedfile_xasinstance`
--

LOCK TABLES `system$unreferencedfile_xasinstance` WRITE;
/*!40000 ALTER TABLE `system$unreferencedfile_xasinstance` DISABLE KEYS */;
/*!40000 ALTER TABLE `system$unreferencedfile_xasinstance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system$user`
--

DROP TABLE IF EXISTS `system$user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system$user` (
  `id` bigint NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `lastlogin` datetime DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `failedlogins` int DEFAULT NULL,
  `webserviceuser` tinyint(1) DEFAULT NULL,
  `isanonymous` tinyint(1) DEFAULT NULL,
  `createddate` datetime DEFAULT NULL,
  `changeddate` datetime DEFAULT NULL,
  `submetaobjectname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `system$changedby` bigint DEFAULT NULL,
  `system$owner` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_system$user_name` (`name`),
  KEY `idx_system$user_name_asc` (`name`,`id`),
  KEY `idx_system$user_submetaobjectname_asc` (`submetaobjectname`,`id`),
  KEY `idx_system$user_system$changedby` (`system$changedby`,`id`),
  KEY `idx_system$user_system$owner` (`system$owner`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system$user`
--

LOCK TABLES `system$user` WRITE;
/*!40000 ALTER TABLE `system$user` DISABLE KEYS */;
INSERT INTO `system$user` VALUES (562949953421313,'MxAdmin','{BCrypt}$2a$10$8UJuCpZnGhSYcptEheUtmu.vMwzGsDswJGSsdUGLxrPtVrwJHnun6',NULL,0,1,0,0,0,'2022-03-03 12:44:52','2022-03-03 12:44:52','System.User',NULL,562949953421313),(562949953421413,'Anonymous_ddd5a573-c5f0-414a-a71e-f68e59f791f0','{BCrypt}$2a$10$tDvgJKyH4U1KJhyr7aLtMeYq6Rec8gIy1jwhY7DwYFuG3VeXS/22S','2022-03-12 10:49:57',0,1,0,0,1,'2022-03-12 10:49:57','2022-03-12 10:49:57','System.User',NULL,562949953421413),(562949953421513,'Anonymous_292b734c-6b95-4564-ac34-639e38b15839','{BCrypt}$2a$10$nKK31igKGqBi5Z0mQ1r4LuWAo5OIoa0n8O/IxGmpVINUF./GMsegy','2022-03-14 02:38:24',0,1,0,0,1,'2022-03-14 02:38:24','2022-03-14 02:38:24','System.User',NULL,562949953421513),(562949953421613,'Anonymous_e5ba51d6-cf5f-43a8-9067-f730ddaa6b28','{BCrypt}$2a$10$XwDybT/Sq46hpmzqDnQuN.KVmRKq488sUNjNDH2NYaaw8nvnyRuRW','2022-03-14 11:55:47',0,1,0,0,1,'2022-03-14 11:55:47','2022-03-14 11:55:47','System.User',NULL,562949953421613),(562949953421813,'Anonymous_fe64203d-ca3a-493b-bd17-a49a16ba6110','{BCrypt}$2a$10$e.BgTNXOZaDcJ80BgHPS1.DBTexvWr5STNV4KkQsSYu59zYM0pc7W','2022-03-15 07:50:18',0,1,0,0,1,'2022-03-15 07:50:18','2022-03-15 07:50:18','System.User',NULL,562949953421813),(562949953421913,'Anonymous_f2fd44f9-c28a-47d0-b279-14f25097240b','{BCrypt}$2a$10$eih.hhPBMldsYIqy3YNZR.IyORLLQBcfOVhlap1cTUzgEOsUJKfdq','2022-03-15 10:42:13',0,1,0,0,1,'2022-03-15 10:42:13','2022-03-15 10:42:13','System.User',NULL,562949953421913),(562949953422013,'Anonymous_5a831981-b42f-4003-a864-6f44e8f93320','{BCrypt}$2a$10$vvE.K/FxTKHfML.uP0iz7u8JkubUPTrREsetDcHRsxJSuus2TCr..','2022-03-16 02:14:08',0,1,0,0,1,'2022-03-16 02:14:08','2022-03-16 02:14:08','System.User',NULL,562949953422013),(562949953422113,'Anonymous_c0d5bee0-6472-41b1-85d8-c5cfacb17431','{BCrypt}$2a$10$BmA259gNNNXFCDb2mNdcfesqh.R6Xv.eJkW7u3CAdb8byTX3JNkDa','2022-03-16 03:06:07',0,1,0,0,1,'2022-03-16 03:06:07','2022-03-16 03:06:07','System.User',NULL,562949953422113),(562949953422213,'Anonymous_b592f90f-bc5d-4483-b744-bcdb8f777f78','{BCrypt}$2a$10$3buuNySA6.UiNuEEWm6D9OeZAQ2GjXffaBsNiDZgOrBqir9/F/T3y','2022-03-16 04:18:33',0,1,0,0,1,'2022-03-16 04:18:33','2022-03-16 04:18:33','System.User',NULL,562949953422213),(562949953422313,'Anonymous_c4f01cdc-b4be-44f4-a5a4-725fafd544b8','{BCrypt}$2a$10$WRiZRw4IfExLhFBjmsd1K.p9liYNqdDXEw8Wq6H/xvbl.aJF4o9Dy','2022-03-16 06:39:58',0,1,0,0,1,'2022-03-16 06:39:58','2022-03-16 06:39:58','System.User',NULL,562949953422313),(562949953422413,'Anonymous_ed20055f-e313-4541-8531-06e28b97da1b','{BCrypt}$2a$10$3YqAhc7/hOU93.xi/ngxzeruK7.Bb6h9V8o/IB6m/BVcCa54.81LO','2022-03-16 09:38:40',0,1,0,0,1,'2022-03-16 09:38:40','2022-03-16 09:38:40','System.User',NULL,562949953422413),(562949953422514,'Anonymous_f5f0f48b-ce6b-41ca-bcf9-145ee802350a','{BCrypt}$2a$10$64YyFW047bDXRcZLnwUF6eMGIQzebmerZnCaKmxH0O.Dc6CjXy8hu','2022-03-17 07:11:08',0,1,0,0,1,'2022-03-17 07:11:08','2022-03-17 07:11:08','System.User',NULL,562949953422514),(562949953422613,'Anonymous_d61730ca-a0f1-4d45-9c68-166da8fc357c','{BCrypt}$2a$10$BMssp1hk4J.w7H7HcAJTS.5cuD5UuKFM5maGE21auJ7pAqoKqa9w6','2022-03-18 01:01:47',0,1,0,0,1,'2022-03-18 01:01:46','2022-03-18 01:01:46','System.User',NULL,562949953422613),(562949953422713,'Anonymous_82223a6d-7a53-491a-930d-9cd168659f06','{BCrypt}$2a$10$9z2OC7BYtsaPMz1n9MJaWuUCyH5NUWxq2YT0M3oV.emDsXFCcMeo6','2022-03-18 02:08:46',0,1,0,0,1,'2022-03-18 02:08:46','2022-03-18 02:08:46','System.User',NULL,562949953422713),(562949953422914,'Anonymous_c75aad75-450e-4023-9ef4-296949d0e44c','{BCrypt}$2a$10$mH1BB/j24YEF7HjLuAUvs.43xE/kjV5o3RwmAqgvf0i.Udy2RyjAa','2022-03-18 08:28:01',0,1,0,0,1,'2022-03-18 08:28:01','2022-03-18 08:28:01','System.User',NULL,562949953422914),(562949953423014,'Anonymous_221cfe9f-b954-45d5-8ab0-87c7bb5f608c','{BCrypt}$2a$10$Q5hWNjQ0wp4DdWPOmSfiFueE/nL84Bo//AHiwyBlXz7uLxYc0KDVO','2022-03-18 09:54:24',0,1,0,0,1,'2022-03-18 09:54:24','2022-03-18 09:54:24','System.User',NULL,562949953423014),(562949953423113,'Anonymous_3149df99-77d4-4029-ac3c-5d300e395f8f','{BCrypt}$2a$10$won3xJT.7rETNyd/9Uh6UOWW6oQ5KLpA0OQSI.o3JhtdIaqqtss2K','2022-03-18 10:02:34',0,1,0,0,1,'2022-03-18 10:02:34','2022-03-18 10:02:34','System.User',NULL,562949953423113);
/*!40000 ALTER TABLE `system$user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system$user_language`
--

DROP TABLE IF EXISTS `system$user_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system$user_language` (
  `system$userid` bigint NOT NULL,
  `system$languageid` bigint NOT NULL,
  PRIMARY KEY (`system$userid`,`system$languageid`),
  UNIQUE KEY `uniq_system$user_language_system$userid` (`system$userid`),
  KEY `idx_system$user_language_system$language_system$user` (`system$languageid`,`system$userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system$user_language`
--

LOCK TABLES `system$user_language` WRITE;
/*!40000 ALTER TABLE `system$user_language` DISABLE KEYS */;
INSERT INTO `system$user_language` VALUES (562949953421413,11540474045136897),(562949953421513,11540474045136897),(562949953421613,11540474045136897),(562949953421813,11540474045136897),(562949953421913,11540474045136897),(562949953422013,11540474045136897),(562949953422113,11540474045136897),(562949953422213,11540474045136897),(562949953422313,11540474045136897),(562949953422413,11540474045136897),(562949953422514,11540474045136897),(562949953422613,11540474045136897),(562949953422713,11540474045136897),(562949953422914,11540474045136897),(562949953423014,11540474045136897),(562949953423113,11540474045136897);
/*!40000 ALTER TABLE `system$user_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system$user_timezone`
--

DROP TABLE IF EXISTS `system$user_timezone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system$user_timezone` (
  `system$userid` bigint NOT NULL,
  `system$timezoneid` bigint NOT NULL,
  PRIMARY KEY (`system$userid`,`system$timezoneid`),
  UNIQUE KEY `uniq_system$user_timezone_system$userid` (`system$userid`),
  KEY `idx_system$user_timezone_system$timezone_system$user` (`system$timezoneid`,`system$userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system$user_timezone`
--

LOCK TABLES `system$user_timezone` WRITE;
/*!40000 ALTER TABLE `system$user_timezone` DISABLE KEYS */;
/*!40000 ALTER TABLE `system$user_timezone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system$userreportinfo`
--

DROP TABLE IF EXISTS `system$userreportinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system$userreportinfo` (
  `id` bigint NOT NULL,
  `usertype` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `hash` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system$userreportinfo`
--

LOCK TABLES `system$userreportinfo` WRITE;
/*!40000 ALTER TABLE `system$userreportinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `system$userreportinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system$userreportinfo_user`
--

DROP TABLE IF EXISTS `system$userreportinfo_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system$userreportinfo_user` (
  `system$userreportinfoid` bigint NOT NULL,
  `system$userid` bigint NOT NULL,
  PRIMARY KEY (`system$userreportinfoid`,`system$userid`),
  UNIQUE KEY `uniq_system$userreportinfo_user_system$userreportinfoid` (`system$userreportinfoid`),
  KEY `idx_system$userreportinfo_user_system$user_system$userreportinfo` (`system$userid`,`system$userreportinfoid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system$userreportinfo_user`
--

LOCK TABLES `system$userreportinfo_user` WRITE;
/*!40000 ALTER TABLE `system$userreportinfo_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `system$userreportinfo_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system$userrole`
--

DROP TABLE IF EXISTS `system$userrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system$userrole` (
  `id` bigint NOT NULL,
  `modelguid` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `description` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_system$userrole_name_asc` (`name`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system$userrole`
--

LOCK TABLES `system$userrole` WRITE;
/*!40000 ALTER TABLE `system$userrole` DISABLE KEYS */;
INSERT INTO `system$userrole` VALUES (4222124650659841,'8dd52bfa-6d7e-453b-b506-303c0a3d9567','Administrator',''),(4222124650659842,'53f5d6fa-6da9-4a71-b011-454ec052cce8','User','');
/*!40000 ALTER TABLE `system$userrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system$userroles`
--

DROP TABLE IF EXISTS `system$userroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system$userroles` (
  `system$userid` bigint NOT NULL,
  `system$userroleid` bigint NOT NULL,
  PRIMARY KEY (`system$userid`,`system$userroleid`),
  KEY `idx_system$userroles_system$userrole_system$user` (`system$userroleid`,`system$userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system$userroles`
--

LOCK TABLES `system$userroles` WRITE;
/*!40000 ALTER TABLE `system$userroles` DISABLE KEYS */;
INSERT INTO `system$userroles` VALUES (562949953421313,4222124650659841),(562949953421413,4222124650659841),(562949953421513,4222124650659841),(562949953421613,4222124650659841),(562949953421813,4222124650659841),(562949953421913,4222124650659841),(562949953422013,4222124650659841),(562949953422113,4222124650659841),(562949953422213,4222124650659841),(562949953422313,4222124650659841),(562949953422413,4222124650659841),(562949953422514,4222124650659841),(562949953422613,4222124650659841),(562949953422713,4222124650659841),(562949953422914,4222124650659841),(562949953423014,4222124650659841),(562949953423113,4222124650659841);
/*!40000 ALTER TABLE `system$userroles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system$workflow`
--

DROP TABLE IF EXISTS `system$workflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system$workflow` (
  `id` bigint NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `starttime` datetime DEFAULT NULL,
  `endtime` datetime DEFAULT NULL,
  `duedate` datetime DEFAULT NULL,
  `canberestarted` tinyint(1) DEFAULT NULL,
  `canbecontinued` tinyint(1) DEFAULT NULL,
  `state` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `reason` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `previousstate` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `system$owner` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_system$workflow_system$owner` (`system$owner`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system$workflow`
--

LOCK TABLES `system$workflow` WRITE;
/*!40000 ALTER TABLE `system$workflow` DISABLE KEYS */;
/*!40000 ALTER TABLE `system$workflow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system$workflow_currentactivity`
--

DROP TABLE IF EXISTS `system$workflow_currentactivity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system$workflow_currentactivity` (
  `system$workflowid` bigint NOT NULL,
  `system$workflowactivityid` bigint NOT NULL,
  PRIMARY KEY (`system$workflowid`,`system$workflowactivityid`),
  KEY `idx_system$workflow_currentactivity` (`system$workflowactivityid`,`system$workflowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system$workflow_currentactivity`
--

LOCK TABLES `system$workflow_currentactivity` WRITE;
/*!40000 ALTER TABLE `system$workflow_currentactivity` DISABLE KEYS */;
/*!40000 ALTER TABLE `system$workflow_currentactivity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system$workflow_workflowdefinition`
--

DROP TABLE IF EXISTS `system$workflow_workflowdefinition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system$workflow_workflowdefinition` (
  `system$workflowid` bigint NOT NULL,
  `system$workflowdefinitionid` bigint NOT NULL,
  PRIMARY KEY (`system$workflowid`,`system$workflowdefinitionid`),
  UNIQUE KEY `uniq_system$workflow_workflowdefinition_system$workflowid` (`system$workflowid`),
  KEY `idx_system$workflow_workflowdefinition` (`system$workflowdefinitionid`,`system$workflowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system$workflow_workflowdefinition`
--

LOCK TABLES `system$workflow_workflowdefinition` WRITE;
/*!40000 ALTER TABLE `system$workflow_workflowdefinition` DISABLE KEYS */;
/*!40000 ALTER TABLE `system$workflow_workflowdefinition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system$workflowactivity`
--

DROP TABLE IF EXISTS `system$workflowactivity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system$workflowactivity` (
  `id` bigint NOT NULL,
  `modelguid` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `activityguid` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `caption` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `state` varchar(9) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `starttime` datetime DEFAULT NULL,
  `endtime` datetime DEFAULT NULL,
  `error` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `activityhash` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ismigrationactivity` tinyint(1) DEFAULT NULL,
  `isderivedactivity` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system$workflowactivity`
--

LOCK TABLES `system$workflowactivity` WRITE;
/*!40000 ALTER TABLE `system$workflowactivity` DISABLE KEYS */;
/*!40000 ALTER TABLE `system$workflowactivity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system$workflowactivity_previousactivity`
--

DROP TABLE IF EXISTS `system$workflowactivity_previousactivity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system$workflowactivity_previousactivity` (
  `system$workflowactivityid1` bigint NOT NULL,
  `system$workflowactivityid2` bigint NOT NULL,
  PRIMARY KEY (`system$workflowactivityid1`,`system$workflowactivityid2`),
  KEY `idx_system$workflowactivity_previousactivity` (`system$workflowactivityid2`,`system$workflowactivityid1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system$workflowactivity_previousactivity`
--

LOCK TABLES `system$workflowactivity_previousactivity` WRITE;
/*!40000 ALTER TABLE `system$workflowactivity_previousactivity` DISABLE KEYS */;
/*!40000 ALTER TABLE `system$workflowactivity_previousactivity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system$workflowactivity_workflow`
--

DROP TABLE IF EXISTS `system$workflowactivity_workflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system$workflowactivity_workflow` (
  `system$workflowactivityid` bigint NOT NULL,
  `system$workflowid` bigint NOT NULL,
  PRIMARY KEY (`system$workflowactivityid`,`system$workflowid`),
  UNIQUE KEY `uniq_system$workflowactivity_workflow_system$workflowactivityid` (`system$workflowactivityid`),
  KEY `idx_system$workflowactivity_workflow` (`system$workflowid`,`system$workflowactivityid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system$workflowactivity_workflow`
--

LOCK TABLES `system$workflowactivity_workflow` WRITE;
/*!40000 ALTER TABLE `system$workflowactivity_workflow` DISABLE KEYS */;
/*!40000 ALTER TABLE `system$workflowactivity_workflow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system$workflowactivity_workflowsystemtask`
--

DROP TABLE IF EXISTS `system$workflowactivity_workflowsystemtask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system$workflowactivity_workflowsystemtask` (
  `system$workflowactivityid` bigint NOT NULL,
  `system$workflowsystemtaskid` bigint NOT NULL,
  PRIMARY KEY (`system$workflowactivityid`,`system$workflowsystemtaskid`),
  UNIQUE KEY `uniq_system$workflowactiv_workflowsystemt_system$workflowactivit` (`system$workflowactivityid`),
  KEY `idx_system$workflowactivity_workflowsystemtask` (`system$workflowsystemtaskid`,`system$workflowactivityid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system$workflowactivity_workflowsystemtask`
--

LOCK TABLES `system$workflowactivity_workflowsystemtask` WRITE;
/*!40000 ALTER TABLE `system$workflowactivity_workflowsystemtask` DISABLE KEYS */;
/*!40000 ALTER TABLE `system$workflowactivity_workflowsystemtask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system$workflowactivity_workflowusertask`
--

DROP TABLE IF EXISTS `system$workflowactivity_workflowusertask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system$workflowactivity_workflowusertask` (
  `system$workflowactivityid` bigint NOT NULL,
  `system$workflowusertaskid` bigint NOT NULL,
  PRIMARY KEY (`system$workflowactivityid`,`system$workflowusertaskid`),
  UNIQUE KEY `uniq_system$workflowactivi_workflowuserta_system$workflowactivit` (`system$workflowactivityid`),
  KEY `idx_system$workflowactivity_workflowusertask` (`system$workflowusertaskid`,`system$workflowactivityid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system$workflowactivity_workflowusertask`
--

LOCK TABLES `system$workflowactivity_workflowusertask` WRITE;
/*!40000 ALTER TABLE `system$workflowactivity_workflowusertask` DISABLE KEYS */;
/*!40000 ALTER TABLE `system$workflowactivity_workflowusertask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system$workflowactivity_workflowversion`
--

DROP TABLE IF EXISTS `system$workflowactivity_workflowversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system$workflowactivity_workflowversion` (
  `system$workflowactivityid` bigint NOT NULL,
  `system$workflowversionid` bigint NOT NULL,
  PRIMARY KEY (`system$workflowactivityid`,`system$workflowversionid`),
  UNIQUE KEY `uniq_system$workflowactivi_workflowversi_system$workflowactivity` (`system$workflowactivityid`),
  KEY `idx_system$workflowactivity_workflowversion` (`system$workflowversionid`,`system$workflowactivityid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system$workflowactivity_workflowversion`
--

LOCK TABLES `system$workflowactivity_workflowversion` WRITE;
/*!40000 ALTER TABLE `system$workflowactivity_workflowversion` DISABLE KEYS */;
/*!40000 ALTER TABLE `system$workflowactivity_workflowversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system$workflowdefinition`
--

DROP TABLE IF EXISTS `system$workflowdefinition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system$workflowdefinition` (
  `id` bigint NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `isobsolete` tinyint(1) DEFAULT NULL,
  `modelguid` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_system$workflowdefinition_modelguid` (`modelguid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system$workflowdefinition`
--

LOCK TABLES `system$workflowdefinition` WRITE;
/*!40000 ALTER TABLE `system$workflowdefinition` DISABLE KEYS */;
/*!40000 ALTER TABLE `system$workflowdefinition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system$workflowdefinition_currentworkflowversion`
--

DROP TABLE IF EXISTS `system$workflowdefinition_currentworkflowversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system$workflowdefinition_currentworkflowversion` (
  `system$workflowdefinitionid` bigint NOT NULL,
  `system$workflowversionid` bigint NOT NULL,
  PRIMARY KEY (`system$workflowdefinitionid`,`system$workflowversionid`),
  UNIQUE KEY `uniq_syste$workflowdefini_currentworkflowv_syste$workflowdefinit` (`system$workflowdefinitionid`),
  KEY `idx_system$workflowdefinition_currentworkflowversion` (`system$workflowversionid`,`system$workflowdefinitionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system$workflowdefinition_currentworkflowversion`
--

LOCK TABLES `system$workflowdefinition_currentworkflowversion` WRITE;
/*!40000 ALTER TABLE `system$workflowdefinition_currentworkflowversion` DISABLE KEYS */;
/*!40000 ALTER TABLE `system$workflowdefinition_currentworkflowversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system$workflowsystemtask`
--

DROP TABLE IF EXISTS `system$workflowsystemtask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system$workflowsystemtask` (
  `id` bigint NOT NULL,
  `outcomemodelguid` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `state` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `reason` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system$workflowsystemtask`
--

LOCK TABLES `system$workflowsystemtask` WRITE;
/*!40000 ALTER TABLE `system$workflowsystemtask` DISABLE KEYS */;
/*!40000 ALTER TABLE `system$workflowsystemtask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system$workflowsystemtask_workflow`
--

DROP TABLE IF EXISTS `system$workflowsystemtask_workflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system$workflowsystemtask_workflow` (
  `system$workflowsystemtaskid` bigint NOT NULL,
  `system$workflowid` bigint NOT NULL,
  PRIMARY KEY (`system$workflowsystemtaskid`,`system$workflowid`),
  UNIQUE KEY `uniq_system$workflowsystemtas_workflow_system$workflowsystemtask` (`system$workflowsystemtaskid`),
  KEY `idx_system$workflowsystemtask_workflow` (`system$workflowid`,`system$workflowsystemtaskid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system$workflowsystemtask_workflow`
--

LOCK TABLES `system$workflowsystemtask_workflow` WRITE;
/*!40000 ALTER TABLE `system$workflowsystemtask_workflow` DISABLE KEYS */;
/*!40000 ALTER TABLE `system$workflowsystemtask_workflow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system$workflowusertask`
--

DROP TABLE IF EXISTS `system$workflowusertask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system$workflowusertask` (
  `id` bigint NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `starttime` datetime DEFAULT NULL,
  `duedate` datetime DEFAULT NULL,
  `endtime` datetime DEFAULT NULL,
  `outcome` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `state` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `reason` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `outcomemodelguid` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system$workflowusertask`
--

LOCK TABLES `system$workflowusertask` WRITE;
/*!40000 ALTER TABLE `system$workflowusertask` DISABLE KEYS */;
/*!40000 ALTER TABLE `system$workflowusertask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system$workflowusertask_assignee`
--

DROP TABLE IF EXISTS `system$workflowusertask_assignee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system$workflowusertask_assignee` (
  `system$workflowusertaskid` bigint NOT NULL,
  `system$userid` bigint NOT NULL,
  PRIMARY KEY (`system$workflowusertaskid`,`system$userid`),
  UNIQUE KEY `uniq_system$workflowusertask_assignee_system$workflowusertaskid` (`system$workflowusertaskid`),
  KEY `idx_system$workflowusertask_assignee` (`system$userid`,`system$workflowusertaskid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system$workflowusertask_assignee`
--

LOCK TABLES `system$workflowusertask_assignee` WRITE;
/*!40000 ALTER TABLE `system$workflowusertask_assignee` DISABLE KEYS */;
/*!40000 ALTER TABLE `system$workflowusertask_assignee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system$workflowusertask_targetusers`
--

DROP TABLE IF EXISTS `system$workflowusertask_targetusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system$workflowusertask_targetusers` (
  `system$workflowusertaskid` bigint NOT NULL,
  `system$userid` bigint NOT NULL,
  PRIMARY KEY (`system$workflowusertaskid`,`system$userid`),
  KEY `idx_system$workflowusertask_targetusers` (`system$userid`,`system$workflowusertaskid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system$workflowusertask_targetusers`
--

LOCK TABLES `system$workflowusertask_targetusers` WRITE;
/*!40000 ALTER TABLE `system$workflowusertask_targetusers` DISABLE KEYS */;
/*!40000 ALTER TABLE `system$workflowusertask_targetusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system$workflowusertask_workflow`
--

DROP TABLE IF EXISTS `system$workflowusertask_workflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system$workflowusertask_workflow` (
  `system$workflowusertaskid` bigint NOT NULL,
  `system$workflowid` bigint NOT NULL,
  PRIMARY KEY (`system$workflowusertaskid`,`system$workflowid`),
  UNIQUE KEY `uniq_system$workflowusertask_workflow_system$workflowusertaskid` (`system$workflowusertaskid`),
  KEY `idx_system$workflowusertask_workflow` (`system$workflowid`,`system$workflowusertaskid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system$workflowusertask_workflow`
--

LOCK TABLES `system$workflowusertask_workflow` WRITE;
/*!40000 ALTER TABLE `system$workflowusertask_workflow` DISABLE KEYS */;
/*!40000 ALTER TABLE `system$workflowusertask_workflow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system$workflowusertask_workflowusertaskdefinition`
--

DROP TABLE IF EXISTS `system$workflowusertask_workflowusertaskdefinition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system$workflowusertask_workflowusertaskdefinition` (
  `system$workflowusertaskid` bigint NOT NULL,
  `system$workflowusertaskdefinitionid` bigint NOT NULL,
  PRIMARY KEY (`system$workflowusertaskid`,`system$workflowusertaskdefinitionid`),
  UNIQUE KEY `uniq_syste$workflowusert_workflowusertaskdef_syste$workflowusert` (`system$workflowusertaskid`),
  KEY `idx_system$workflowusertask_workflowusertaskdefinition` (`system$workflowusertaskdefinitionid`,`system$workflowusertaskid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system$workflowusertask_workflowusertaskdefinition`
--

LOCK TABLES `system$workflowusertask_workflowusertaskdefinition` WRITE;
/*!40000 ALTER TABLE `system$workflowusertask_workflowusertaskdefinition` DISABLE KEYS */;
/*!40000 ALTER TABLE `system$workflowusertask_workflowusertaskdefinition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system$workflowusertaskdefinition`
--

DROP TABLE IF EXISTS `system$workflowusertaskdefinition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system$workflowusertaskdefinition` (
  `id` bigint NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `isobsolete` tinyint(1) DEFAULT NULL,
  `modelguid` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system$workflowusertaskdefinition`
--

LOCK TABLES `system$workflowusertaskdefinition` WRITE;
/*!40000 ALTER TABLE `system$workflowusertaskdefinition` DISABLE KEYS */;
/*!40000 ALTER TABLE `system$workflowusertaskdefinition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system$workflowusertaskdefinition_workflowdefinition`
--

DROP TABLE IF EXISTS `system$workflowusertaskdefinition_workflowdefinition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system$workflowusertaskdefinition_workflowdefinition` (
  `system$workflowusertaskdefinitionid` bigint NOT NULL,
  `system$workflowdefinitionid` bigint NOT NULL,
  PRIMARY KEY (`system$workflowusertaskdefinitionid`,`system$workflowdefinitionid`),
  UNIQUE KEY `uniq_syst$workflowusertaskd_workflowdefi_syst$workflowusertaskde` (`system$workflowusertaskdefinitionid`),
  KEY `idx_system$workflowusertaskdefinition_workflowdefinition` (`system$workflowdefinitionid`,`system$workflowusertaskdefinitionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system$workflowusertaskdefinition_workflowdefinition`
--

LOCK TABLES `system$workflowusertaskdefinition_workflowdefinition` WRITE;
/*!40000 ALTER TABLE `system$workflowusertaskdefinition_workflowdefinition` DISABLE KEYS */;
/*!40000 ALTER TABLE `system$workflowusertaskdefinition_workflowdefinition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system$workflowversion`
--

DROP TABLE IF EXISTS `system$workflowversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system$workflowversion` (
  `id` bigint NOT NULL,
  `versionhash` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `modeljson` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system$workflowversion`
--

LOCK TABLES `system$workflowversion` WRITE;
/*!40000 ALTER TABLE `system$workflowversion` DISABLE KEYS */;
/*!40000 ALTER TABLE `system$workflowversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system$workflowversion_previousversion`
--

DROP TABLE IF EXISTS `system$workflowversion_previousversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system$workflowversion_previousversion` (
  `system$workflowversionid1` bigint NOT NULL,
  `system$workflowversionid2` bigint NOT NULL,
  PRIMARY KEY (`system$workflowversionid1`,`system$workflowversionid2`),
  UNIQUE KEY `uniq_system$workflowversi_previousversio_system$workflowversioni` (`system$workflowversionid1`),
  KEY `idx_system$workflowversion_previousversion` (`system$workflowversionid2`,`system$workflowversionid1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system$workflowversion_previousversion`
--

LOCK TABLES `system$workflowversion_previousversion` WRITE;
/*!40000 ALTER TABLE `system$workflowversion_previousversion` DISABLE KEYS */;
/*!40000 ALTER TABLE `system$workflowversion_previousversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system$workflowversion_workflowdefinition`
--

DROP TABLE IF EXISTS `system$workflowversion_workflowdefinition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system$workflowversion_workflowdefinition` (
  `system$workflowversionid` bigint NOT NULL,
  `system$workflowdefinitionid` bigint NOT NULL,
  PRIMARY KEY (`system$workflowversionid`,`system$workflowdefinitionid`),
  UNIQUE KEY `uniq_system$workflowversi_workflowdefinit_system$workflowversion` (`system$workflowversionid`),
  KEY `idx_system$workflowversion_workflowdefinition` (`system$workflowdefinitionid`,`system$workflowversionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system$workflowversion_workflowdefinition`
--

LOCK TABLES `system$workflowversion_workflowdefinition` WRITE;
/*!40000 ALTER TABLE `system$workflowversion_workflowdefinition` DISABLE KEYS */;
/*!40000 ALTER TABLE `system$workflowversion_workflowdefinition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system$workflowversion_workflowusertaskdefinition`
--

DROP TABLE IF EXISTS `system$workflowversion_workflowusertaskdefinition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system$workflowversion_workflowusertaskdefinition` (
  `system$workflowversionid` bigint NOT NULL,
  `system$workflowusertaskdefinitionid` bigint NOT NULL,
  PRIMARY KEY (`system$workflowversionid`,`system$workflowusertaskdefinitionid`),
  KEY `idx_system$workflowversion_workflowusertaskdefinition` (`system$workflowusertaskdefinitionid`,`system$workflowversionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system$workflowversion_workflowusertaskdefinition`
--

LOCK TABLES `system$workflowversion_workflowusertaskdefinition` WRITE;
/*!40000 ALTER TABLE `system$workflowversion_workflowusertaskdefinition` DISABLE KEYS */;
/*!40000 ALTER TABLE `system$workflowversion_workflowusertaskdefinition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system$xasinstance`
--

DROP TABLE IF EXISTS `system$xasinstance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system$xasinstance` (
  `id` bigint NOT NULL,
  `xasid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `lastupdate` datetime DEFAULT NULL,
  `allowednumberofconcurrentusers` int DEFAULT NULL,
  `partnername` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `customername` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `createddate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system$xasinstance`
--

LOCK TABLES `system$xasinstance` WRITE;
/*!40000 ALTER TABLE `system$xasinstance` DISABLE KEYS */;
/*!40000 ALTER TABLE `system$xasinstance` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-18 18:10:48
