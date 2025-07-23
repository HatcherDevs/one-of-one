-- MySQL dump 10.13  Distrib 8.4.4, for macos15 (arm64)
--
-- Host: 127.0.0.1    Database: homzen
-- ------------------------------------------------------
-- Server version	8.4.4

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'pRnR7EdGmuqbUEj7QQTMIYaIjUxX9ewt',1,'2025-06-21 01:06:04','2025-06-21 01:06:04','2025-06-21 01:06:04');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT '1',
  `tablet_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_adsense_slot_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tablet_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements`
--

DROP TABLE IF EXISTS `announcements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcements` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `has_action` tinyint(1) NOT NULL DEFAULT '0',
  `action_label` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_open_new_tab` tinyint(1) NOT NULL DEFAULT '0',
  `dismissible` tinyint(1) NOT NULL DEFAULT '0',
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements`
--

LOCK TABLES `announcements` WRITE;
/*!40000 ALTER TABLE `announcements` DISABLE KEYS */;
INSERT INTO `announcements` VALUES (1,'Announcement 1','Explore Our Exciting New Property Listings Now Available in Prime Locations!',0,NULL,NULL,0,1,'2025-06-21 08:06:26',NULL,1,'2025-06-21 01:06:26','2025-06-21 01:06:26'),(2,'Announcement 2','Join Us for Exclusive Open House Events This Weekend and Find Your Perfect Home!',0,NULL,NULL,0,1,'2025-06-21 08:06:26',NULL,1,'2025-06-21 01:06:26','2025-06-21 01:06:26'),(3,'Announcement 3','Take Advantage of Limited-Time Offers on Luxury Homes with Stunning Features!',0,NULL,NULL,0,1,'2025-06-21 08:06:26',NULL,1,'2025-06-21 01:06:26','2025-06-21 01:06:26'),(4,'Announcement 4','Discover Your Dream Home with Our Latest Listings and Personalized Services!',0,NULL,NULL,0,1,'2025-06-21 08:06:26',NULL,1,'2025-06-21 01:06:26','2025-06-21 01:06:26');
/*!40000 ALTER TABLE `announcements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements_translations`
--

DROP TABLE IF EXISTS `announcements_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcements_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `announcements_id` bigint unsigned NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `action_label` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`announcements_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements_translations`
--

LOCK TABLES `announcements_translations` WRITE;
/*!40000 ALTER TABLE `announcements_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcements_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'Botble\\ACL\\Models\\User',
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `actor_id` bigint unsigned NOT NULL,
  `actor_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'Botble\\ACL\\Models\\User',
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `careers`
--

DROP TABLE IF EXISTS `careers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `careers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `careers`
--

LOCK TABLES `careers` WRITE;
/*!40000 ALTER TABLE `careers` DISABLE KEYS */;
INSERT INTO `careers` VALUES (1,'Senior Full Stack Engineer, Creator Success Full Time','Waylonside, Haiti','$9,480','Constantly changing work patterns and norms, and the need for organizational resiliency','<h4 class=\"color-brand-1\">Responsibilities</h4>\n<p>Product knowledge: Deeply understand the technology and features of the product area to which you are assigned.</p>\n<p>Research: Provide human and business impact and insights for products.</p>\n<p>Deliverables: Create deliverables for your product area (for example competitive analyses, user flows, low fidelity wireframes, high fidelity mockups, prototypes, etc.) that solve real user problems through the user experience.</p>\n<p>Communication: Communicate the results of UX activities within your product area to the design team department, cross-functional partners within your product area, and other interested Superformula team members using clear language that simplifies complexity.</p>\n<h4 class=\"color-brand-1\">Requirements</h4>\n<ul>\n    <li>A portfolio demonstrating well thought through and polished end to end customer journeys</li>\n    <li>5+ years of industry experience in interactive design and / or visual design</li>\n    <li>Excellent interpersonal skills </li>\n    <li>Aware of trends in mobile, communications, and collaboration</li>\n    <li>Ability to create highly polished design prototypes, mockups, and other communication artifacts</li>\n    <li>The ability to scope and estimate efforts accurately and prioritize tasks and goals independently</li>\n    <li>History of impacting shipping products with your work</li>\n    <li>A Bachelor’s Degree in Design (or related field) or equivalent professional experience</li>\n    <li>Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch</li>\n</ul>\n<h4 class=\"color-brand-1\">What\'s on Offer </h4>\n<ul>\n    <li>Annual bonus and holidays, social welfare, and health checks.</li>\n    <li>Training and attachment in Taiwan and other Greater China branches.</li>\n</ul>\n','published','2025-06-21 01:06:26','2025-06-21 01:06:26'),(2,'Data Science Specialist, Analytics Division','Beerfurt, Andorra','$3,524','Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit laborum — semper quis lectus nulla','<h4 class=\"color-brand-1\">Responsibilities</h4>\n<p>Product knowledge: Deeply understand the technology and features of the product area to which you are assigned.</p>\n<p>Research: Provide human and business impact and insights for products.</p>\n<p>Deliverables: Create deliverables for your product area (for example competitive analyses, user flows, low fidelity wireframes, high fidelity mockups, prototypes, etc.) that solve real user problems through the user experience.</p>\n<p>Communication: Communicate the results of UX activities within your product area to the design team department, cross-functional partners within your product area, and other interested Superformula team members using clear language that simplifies complexity.</p>\n<h4 class=\"color-brand-1\">Requirements</h4>\n<ul>\n    <li>A portfolio demonstrating well thought through and polished end to end customer journeys</li>\n    <li>5+ years of industry experience in interactive design and / or visual design</li>\n    <li>Excellent interpersonal skills </li>\n    <li>Aware of trends in mobile, communications, and collaboration</li>\n    <li>Ability to create highly polished design prototypes, mockups, and other communication artifacts</li>\n    <li>The ability to scope and estimate efforts accurately and prioritize tasks and goals independently</li>\n    <li>History of impacting shipping products with your work</li>\n    <li>A Bachelor’s Degree in Design (or related field) or equivalent professional experience</li>\n    <li>Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch</li>\n</ul>\n<h4 class=\"color-brand-1\">What\'s on Offer </h4>\n<ul>\n    <li>Annual bonus and holidays, social welfare, and health checks.</li>\n    <li>Training and attachment in Taiwan and other Greater China branches.</li>\n</ul>\n','published','2025-06-21 01:06:26','2025-06-21 01:06:26'),(3,'Product Marketing Manager, Growth Team','Brannonberg, Switzerland','$7,643','Crafting compelling marketing strategies to drive user acquisition and retention','<h4 class=\"color-brand-1\">Responsibilities</h4>\n<p>Product knowledge: Deeply understand the technology and features of the product area to which you are assigned.</p>\n<p>Research: Provide human and business impact and insights for products.</p>\n<p>Deliverables: Create deliverables for your product area (for example competitive analyses, user flows, low fidelity wireframes, high fidelity mockups, prototypes, etc.) that solve real user problems through the user experience.</p>\n<p>Communication: Communicate the results of UX activities within your product area to the design team department, cross-functional partners within your product area, and other interested Superformula team members using clear language that simplifies complexity.</p>\n<h4 class=\"color-brand-1\">Requirements</h4>\n<ul>\n    <li>A portfolio demonstrating well thought through and polished end to end customer journeys</li>\n    <li>5+ years of industry experience in interactive design and / or visual design</li>\n    <li>Excellent interpersonal skills </li>\n    <li>Aware of trends in mobile, communications, and collaboration</li>\n    <li>Ability to create highly polished design prototypes, mockups, and other communication artifacts</li>\n    <li>The ability to scope and estimate efforts accurately and prioritize tasks and goals independently</li>\n    <li>History of impacting shipping products with your work</li>\n    <li>A Bachelor’s Degree in Design (or related field) or equivalent professional experience</li>\n    <li>Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch</li>\n</ul>\n<h4 class=\"color-brand-1\">What\'s on Offer </h4>\n<ul>\n    <li>Annual bonus and holidays, social welfare, and health checks.</li>\n    <li>Training and attachment in Taiwan and other Greater China branches.</li>\n</ul>\n','published','2025-06-21 01:06:26','2025-06-21 01:06:26'),(4,'UX/UI Designer, User Experience Team','Asaton, Belarus','$9,627','Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','<h4 class=\"color-brand-1\">Responsibilities</h4>\n<p>Product knowledge: Deeply understand the technology and features of the product area to which you are assigned.</p>\n<p>Research: Provide human and business impact and insights for products.</p>\n<p>Deliverables: Create deliverables for your product area (for example competitive analyses, user flows, low fidelity wireframes, high fidelity mockups, prototypes, etc.) that solve real user problems through the user experience.</p>\n<p>Communication: Communicate the results of UX activities within your product area to the design team department, cross-functional partners within your product area, and other interested Superformula team members using clear language that simplifies complexity.</p>\n<h4 class=\"color-brand-1\">Requirements</h4>\n<ul>\n    <li>A portfolio demonstrating well thought through and polished end to end customer journeys</li>\n    <li>5+ years of industry experience in interactive design and / or visual design</li>\n    <li>Excellent interpersonal skills </li>\n    <li>Aware of trends in mobile, communications, and collaboration</li>\n    <li>Ability to create highly polished design prototypes, mockups, and other communication artifacts</li>\n    <li>The ability to scope and estimate efforts accurately and prioritize tasks and goals independently</li>\n    <li>History of impacting shipping products with your work</li>\n    <li>A Bachelor’s Degree in Design (or related field) or equivalent professional experience</li>\n    <li>Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch</li>\n</ul>\n<h4 class=\"color-brand-1\">What\'s on Offer </h4>\n<ul>\n    <li>Annual bonus and holidays, social welfare, and health checks.</li>\n    <li>Training and attachment in Taiwan and other Greater China branches.</li>\n</ul>\n','published','2025-06-21 01:06:26','2025-06-21 01:06:26'),(5,'Operations Manager, Supply Chain Division','New Simonechester, Saint Lucia','$7,338','Ensuring smooth and efficient supply chain operations for timely product delivery','<h4 class=\"color-brand-1\">Responsibilities</h4>\n<p>Product knowledge: Deeply understand the technology and features of the product area to which you are assigned.</p>\n<p>Research: Provide human and business impact and insights for products.</p>\n<p>Deliverables: Create deliverables for your product area (for example competitive analyses, user flows, low fidelity wireframes, high fidelity mockups, prototypes, etc.) that solve real user problems through the user experience.</p>\n<p>Communication: Communicate the results of UX activities within your product area to the design team department, cross-functional partners within your product area, and other interested Superformula team members using clear language that simplifies complexity.</p>\n<h4 class=\"color-brand-1\">Requirements</h4>\n<ul>\n    <li>A portfolio demonstrating well thought through and polished end to end customer journeys</li>\n    <li>5+ years of industry experience in interactive design and / or visual design</li>\n    <li>Excellent interpersonal skills </li>\n    <li>Aware of trends in mobile, communications, and collaboration</li>\n    <li>Ability to create highly polished design prototypes, mockups, and other communication artifacts</li>\n    <li>The ability to scope and estimate efforts accurately and prioritize tasks and goals independently</li>\n    <li>History of impacting shipping products with your work</li>\n    <li>A Bachelor’s Degree in Design (or related field) or equivalent professional experience</li>\n    <li>Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch</li>\n</ul>\n<h4 class=\"color-brand-1\">What\'s on Offer </h4>\n<ul>\n    <li>Annual bonus and holidays, social welfare, and health checks.</li>\n    <li>Training and attachment in Taiwan and other Greater China branches.</li>\n</ul>\n','published','2025-06-21 01:06:26','2025-06-21 01:06:26'),(6,'Financial Analyst, Investment Group','South Karellefurt, Angola','$7,973','Analyzing market trends and investment opportunities for optimal financial outcomes','<h4 class=\"color-brand-1\">Responsibilities</h4>\n<p>Product knowledge: Deeply understand the technology and features of the product area to which you are assigned.</p>\n<p>Research: Provide human and business impact and insights for products.</p>\n<p>Deliverables: Create deliverables for your product area (for example competitive analyses, user flows, low fidelity wireframes, high fidelity mockups, prototypes, etc.) that solve real user problems through the user experience.</p>\n<p>Communication: Communicate the results of UX activities within your product area to the design team department, cross-functional partners within your product area, and other interested Superformula team members using clear language that simplifies complexity.</p>\n<h4 class=\"color-brand-1\">Requirements</h4>\n<ul>\n    <li>A portfolio demonstrating well thought through and polished end to end customer journeys</li>\n    <li>5+ years of industry experience in interactive design and / or visual design</li>\n    <li>Excellent interpersonal skills </li>\n    <li>Aware of trends in mobile, communications, and collaboration</li>\n    <li>Ability to create highly polished design prototypes, mockups, and other communication artifacts</li>\n    <li>The ability to scope and estimate efforts accurately and prioritize tasks and goals independently</li>\n    <li>History of impacting shipping products with your work</li>\n    <li>A Bachelor’s Degree in Design (or related field) or equivalent professional experience</li>\n    <li>Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch</li>\n</ul>\n<h4 class=\"color-brand-1\">What\'s on Offer </h4>\n<ul>\n    <li>Annual bonus and holidays, social welfare, and health checks.</li>\n    <li>Training and attachment in Taiwan and other Greater China branches.</li>\n</ul>\n','published','2025-06-21 01:06:26','2025-06-21 01:06:26');
/*!40000 ALTER TABLE `careers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `careers_translations`
--

DROP TABLE IF EXISTS `careers_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `careers_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `careers_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`careers_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `careers_translations`
--

LOCK TABLES `careers_translations` WRITE;
/*!40000 ALTER TABLE `careers_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `careers_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_status_index` (`status`),
  KEY `categories_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Buying a Home',0,'Molestias et aut natus atque. Optio adipisci libero saepe consequuntur. In voluptas deleniti dolor alias. Incidunt ipsam qui sed maxime.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2025-06-21 01:06:17','2025-06-21 01:06:17'),(2,'Selling a Home',0,'Sunt excepturi quas sunt. Hic sint voluptatem rerum tenetur. Dolorem eligendi iusto iure totam cum et ut est. Et ullam error cumque tempore et provident totam.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-06-21 01:06:17','2025-06-21 01:06:17'),(3,'Market Trends',0,'Quidem vero perferendis enim ea. Ut facere sapiente est quis. Accusamus asperiores sunt voluptatibus perspiciatis natus dolore.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-06-21 01:06:17','2025-06-21 01:06:17'),(4,'Home Improvement',0,'Quis porro non quam aut. Unde minima omnis dolorum ullam consectetur voluptas impedit. Tempore vel aut et. Minima culpa quis aut quas et voluptas laudantium neque.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-06-21 01:06:17','2025-06-21 01:06:17'),(5,'Real Estate Investing',0,'A ullam qui autem consequatur et labore neque. Distinctio quasi neque officiis commodi veniam. Ea eaque aut deserunt. Corrupti et possimus adipisci minus et illum.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-06-21 01:06:17','2025-06-21 01:06:17'),(6,'Neighborhood Guides',0,'Error est et necessitatibus et distinctio totam illo. Aut perferendis est eum aliquam quaerat perspiciatis. Qui soluta iste aut.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-06-21 01:06:17','2025-06-21 01:06:17');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` bigint unsigned DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cities_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'Paris','paris',1,1,NULL,0,'locations/4.jpg',0,'published','2025-06-21 01:06:02','2025-06-21 01:06:02',NULL),(2,'London','london',2,2,NULL,0,'locations/2.jpg',0,'published','2025-06-21 01:06:02','2025-06-21 01:06:02',NULL),(3,'New York City','new-york-city',3,3,NULL,0,'locations/1.jpg',0,'published','2025-06-21 01:06:02','2025-06-21 01:06:02',NULL),(4,'Amsterdam','amsterdam',4,4,NULL,0,'locations/2.jpg',0,'published','2025-06-21 01:06:02','2025-06-21 01:06:02',NULL),(5,'Copenhagen','copenhagen',5,5,NULL,0,'locations/1.jpg',0,'published','2025-06-21 01:06:02','2025-06-21 01:06:02',NULL),(6,'Munich','munich',6,6,NULL,0,'locations/1.jpg',0,'published','2025-06-21 01:06:02','2025-06-21 01:06:02',NULL),(7,'Tokyo','tokyo',7,7,NULL,0,'locations/3.jpg',0,'published','2025-06-21 01:06:02','2025-06-21 01:06:02',NULL),(8,'Toronto','toronto',8,8,NULL,0,'locations/2.jpg',0,'published','2025-06-21 01:06:02','2025-06-21 01:06:02',NULL),(9,'Sydney','sydney',9,9,NULL,0,'locations/1.jpg',0,'published','2025-06-21 01:06:02','2025-06-21 01:06:02',NULL),(10,'Milan','milan',10,10,NULL,0,'locations/3.jpg',0,'published','2025-06-21 01:06:02','2025-06-21 01:06:02',NULL),(11,'Los Angeles','los-angeles',11,3,NULL,0,'locations/1.jpg',0,'published','2025-06-21 01:06:02','2025-06-21 01:06:02',NULL),(12,'Berlin','berlin',12,6,NULL,0,'locations/4.jpg',0,'published','2025-06-21 01:06:02','2025-06-21 01:06:02',NULL),(13,'Osaka','osaka',13,7,NULL,0,'locations/2.jpg',0,'published','2025-06-21 01:06:02','2025-06-21 01:06:02',NULL),(14,'Vancouver','vancouver',14,8,NULL,0,'locations/4.jpg',0,'published','2025-06-21 01:06:02','2025-06-21 01:06:02',NULL),(15,'Melbourne','melbourne',15,9,NULL,0,'locations/3.jpg',0,'published','2025-06-21 01:06:02','2025-06-21 01:06:02',NULL),(16,'Rome','rome',16,10,NULL,0,'locations/1.jpg',0,'published','2025-06-21 01:06:02','2025-06-21 01:06:02',NULL),(17,'Marseille','marseille',17,1,NULL,0,'locations/5.jpg',0,'published','2025-06-21 01:06:02','2025-06-21 01:06:02',NULL),(18,'Liverpool','liverpool',18,2,NULL,0,'locations/4.jpg',0,'published','2025-06-21 01:06:02','2025-06-21 01:06:02',NULL),(19,'Chicago','chicago',19,3,NULL,0,'locations/3.jpg',0,'published','2025-06-21 01:06:02','2025-06-21 01:06:02',NULL),(20,'Rotterdam','rotterdam',20,4,NULL,0,'locations/5.jpg',0,'published','2025-06-21 01:06:02','2025-06-21 01:06:02',NULL),(21,'Aarhus','aarhus',21,5,NULL,0,'locations/3.jpg',0,'published','2025-06-21 01:06:02','2025-06-21 01:06:02',NULL),(22,'Frankfurt','frankfurt',22,6,NULL,0,'locations/2.jpg',0,'published','2025-06-21 01:06:02','2025-06-21 01:06:02',NULL),(23,'Kyoto','kyoto',23,7,NULL,0,'locations/1.jpg',0,'published','2025-06-21 01:06:02','2025-06-21 01:06:02',NULL),(24,'Montreal','montreal',24,8,NULL,0,'locations/2.jpg',0,'published','2025-06-21 01:06:02','2025-06-21 01:06:02',NULL),(25,'Brisbane','brisbane',25,9,NULL,0,'locations/4.jpg',0,'published','2025-06-21 01:06:02','2025-06-21 01:06:02',NULL),(26,'Naples','naples',26,10,NULL,0,'locations/1.jpg',0,'published','2025-06-21 01:06:02','2025-06-21 01:06:02',NULL);
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options`
--

DROP TABLE IF EXISTS `contact_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` bigint unsigned NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options`
--

LOCK TABLES `contact_custom_field_options` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options_translations`
--

DROP TABLE IF EXISTS `contact_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options_translations` (
  `contact_custom_field_options_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_field_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options_translations`
--

LOCK TABLES `contact_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields`
--

DROP TABLE IF EXISTS `contact_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '999',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields`
--

LOCK TABLES `contact_custom_fields` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields_translations`
--

DROP TABLE IF EXISTS `contact_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields_translations` (
  `contact_custom_fields_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields_translations`
--

LOCK TABLES `contact_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_fields` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'France','French',0,NULL,0,'published',NULL,NULL,'FRA'),(2,'England','English',0,NULL,0,'published',NULL,NULL,'UK'),(3,'USA','Americans',0,NULL,0,'published',NULL,NULL,'US'),(4,'Holland','Dutch',0,NULL,0,'published',NULL,NULL,'HL'),(5,'Denmark','Danish',0,NULL,0,'published',NULL,NULL,'DN'),(6,'Germany','German',0,NULL,0,'published',NULL,NULL,'DE'),(7,'Japan','Japanese',0,NULL,0,'published',NULL,NULL,'JP'),(8,'Canada','Canadian',0,NULL,0,'published',NULL,NULL,'CA'),(9,'Australia','Australian',0,NULL,0,'published',NULL,NULL,'AU'),(10,'Italy','Italian',0,NULL,0,'published',NULL,NULL,'IT');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_tokens`
--

DROP TABLE IF EXISTS `device_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `device_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `platform` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_version` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `device_tokens_token_unique` (`token`),
  KEY `device_tokens_user_type_user_id_index` (`user_type`,`user_id`),
  KEY `device_tokens_platform_is_active_index` (`platform`,`is_active`),
  KEY `device_tokens_is_active_index` (`is_active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_tokens`
--

LOCK TABLES `device_tokens` WRITE;
/*!40000 ALTER TABLE `device_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `device_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'Buying',0,'published','2025-06-21 01:06:01','2025-06-21 01:06:01',NULL),(2,'Selling',1,'published','2025-06-21 01:06:01','2025-06-21 01:06:01',NULL),(3,'Renting',2,'published','2025-06-21 01:06:01','2025-06-21 01:06:01',NULL),(4,'Financing',3,'published','2025-06-21 01:06:01','2025-06-21 01:06:01',NULL);
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What is the process of selling a home?','Selling a home involves preparing your home for sale, setting a competitive price, marketing the property, showing the home to potential buyers, negotiating offers, and closing the sale.',1,'published','2025-06-21 01:06:01','2025-06-21 01:06:01'),(2,'How can I increase the value of my home before selling?','You can increase your home\'s value by making necessary repairs, updating outdated features, improving curb appeal, and ensuring the home is clean and well-maintained.',1,'published','2025-06-21 01:06:01','2025-06-21 01:06:01'),(3,'What are the benefits of renting versus buying?','Renting offers flexibility and fewer maintenance responsibilities, while buying can provide long-term financial benefits and the freedom to customize your home. The decision depends on your financial situation, lifestyle, and future plans.',1,'published','2025-06-21 01:06:01','2025-06-21 01:06:01'),(4,'What types of financing options are available for homebuyers?','Common financing options include fixed-rate mortgages, adjustable-rate mortgages, FHA loans, VA loans, and USDA loans. Each has its own requirements and benefits.',1,'published','2025-06-21 01:06:01','2025-06-21 01:06:01'),(5,'How do I improve my credit score for a mortgage?','To improve your credit score, pay your bills on time, reduce your debt, avoid opening new credit accounts, and check your credit report for errors.',1,'published','2025-06-21 01:06:01','2025-06-21 01:06:01'),(6,'What steps are involved in buying a home?','The home buying process involves several steps including getting pre-approved for a mortgage, finding a real estate agent, searching for homes, making an offer, getting a home inspection, and closing the deal.',2,'published','2025-06-21 01:06:01','2025-06-21 01:06:01'),(7,'How do I determine my budget for buying a home?','To determine your budget, consider your income, debts, and savings. It is also important to get pre-approved for a mortgage to understand how much you can borrow.',2,'published','2025-06-21 01:06:01','2025-06-21 01:06:01'),(8,'What is the process of selling a home?','Selling a home involves preparing your home for sale, setting a competitive price, marketing the property, showing the home to potential buyers, negotiating offers, and closing the sale.',2,'published','2025-06-21 01:06:01','2025-06-21 01:06:01'),(9,'How can I increase the value of my home before selling?','You can increase your home\'s value by making necessary repairs, updating outdated features, improving curb appeal, and ensuring the home is clean and well-maintained.',2,'published','2025-06-21 01:06:01','2025-06-21 01:06:01'),(10,'What should I look for in a rental property?','When looking for a rental property, consider factors such as location, rent price, amenities, lease terms, and the condition of the property. It\'s also important to understand your rights as a tenant.',2,'published','2025-06-21 01:06:01','2025-06-21 01:06:01'),(11,'What are the benefits of renting versus buying?','Renting offers flexibility and fewer maintenance responsibilities, while buying can provide long-term financial benefits and the freedom to customize your home. The decision depends on your financial situation, lifestyle, and future plans.',2,'published','2025-06-21 01:06:01','2025-06-21 01:06:01'),(12,'How do I improve my credit score for a mortgage?','To improve your credit score, pay your bills on time, reduce your debt, avoid opening new credit accounts, and check your credit report for errors.',2,'published','2025-06-21 01:06:01','2025-06-21 01:06:01'),(13,'What steps are involved in buying a home?','The home buying process involves several steps including getting pre-approved for a mortgage, finding a real estate agent, searching for homes, making an offer, getting a home inspection, and closing the deal.',3,'published','2025-06-21 01:06:01','2025-06-21 01:06:01'),(14,'How do I determine my budget for buying a home?','To determine your budget, consider your income, debts, and savings. It is also important to get pre-approved for a mortgage to understand how much you can borrow.',3,'published','2025-06-21 01:06:01','2025-06-21 01:06:01'),(15,'What is the process of selling a home?','Selling a home involves preparing your home for sale, setting a competitive price, marketing the property, showing the home to potential buyers, negotiating offers, and closing the sale.',3,'published','2025-06-21 01:06:01','2025-06-21 01:06:01'),(16,'What are the benefits of renting versus buying?','Renting offers flexibility and fewer maintenance responsibilities, while buying can provide long-term financial benefits and the freedom to customize your home. The decision depends on your financial situation, lifestyle, and future plans.',3,'published','2025-06-21 01:06:01','2025-06-21 01:06:01'),(17,'What types of financing options are available for homebuyers?','Common financing options include fixed-rate mortgages, adjustable-rate mortgages, FHA loans, VA loans, and USDA loans. Each has its own requirements and benefits.',3,'published','2025-06-21 01:06:01','2025-06-21 01:06:01'),(18,'How do I improve my credit score for a mortgage?','To improve your credit score, pay your bills on time, reduce your debt, avoid opening new credit accounts, and check your credit report for errors.',3,'published','2025-06-21 01:06:01','2025-06-21 01:06:01'),(19,'How do I determine my budget for buying a home?','To determine your budget, consider your income, debts, and savings. It is also important to get pre-approved for a mortgage to understand how much you can borrow.',4,'published','2025-06-21 01:06:01','2025-06-21 01:06:01'),(20,'What is the process of selling a home?','Selling a home involves preparing your home for sale, setting a competitive price, marketing the property, showing the home to potential buyers, negotiating offers, and closing the sale.',4,'published','2025-06-21 01:06:01','2025-06-21 01:06:01'),(21,'How can I increase the value of my home before selling?','You can increase your home\'s value by making necessary repairs, updating outdated features, improving curb appeal, and ensuring the home is clean and well-maintained.',4,'published','2025-06-21 01:06:01','2025-06-21 01:06:01'),(22,'What are the benefits of renting versus buying?','Renting offers flexibility and fewer maintenance responsibilities, while buying can provide long-term financial benefits and the freedom to customize your home. The decision depends on your financial situation, lifestyle, and future plans.',4,'published','2025-06-21 01:06:01','2025-06-21 01:06:01'),(23,'What types of financing options are available for homebuyers?','Common financing options include fixed-rate mortgages, adjustable-rate mortgages, FHA loans, VA loans, and USDA loans. Each has its own requirements and benefits.',4,'published','2025-06-21 01:06:01','2025-06-21 01:06:01'),(24,'How do I improve my credit score for a mortgage?','To improve your credit score, pay your bills on time, reduce your debt, avoid opening new credit accounts, and check your credit report for errors.',4,'published','2025-06-21 01:06:01','2025-06-21 01:06:01');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` bigint unsigned NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','45f6c8e4f6fc2f7d30699f3ee8d26341',1,'Botble\\Menu\\Models\\MenuLocation'),(2,'en_US','ef699a50124384f540f9a93f217266a2',1,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  KEY `lang_locale_index` (`lang_locale`),
  KEY `lang_code_index` (`lang_code`),
  KEY `lang_is_default_index` (`lang_is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `visibility` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'1','1',1,'image/jpeg',6977,'locations/1.jpg','[]','2025-06-21 01:06:01','2025-06-21 01:06:01',NULL,'public'),(2,0,'10','10',1,'image/jpeg',6977,'locations/10.jpg','[]','2025-06-21 01:06:01','2025-06-21 01:06:01',NULL,'public'),(3,0,'11','11',1,'image/jpeg',6977,'locations/11.jpg','[]','2025-06-21 01:06:01','2025-06-21 01:06:01',NULL,'public'),(4,0,'2','2',1,'image/jpeg',6977,'locations/2.jpg','[]','2025-06-21 01:06:01','2025-06-21 01:06:01',NULL,'public'),(5,0,'3','3',1,'image/jpeg',6977,'locations/3.jpg','[]','2025-06-21 01:06:01','2025-06-21 01:06:01',NULL,'public'),(6,0,'4','4',1,'image/jpeg',6977,'locations/4.jpg','[]','2025-06-21 01:06:01','2025-06-21 01:06:01',NULL,'public'),(7,0,'5','5',1,'image/jpeg',6977,'locations/5.jpg','[]','2025-06-21 01:06:01','2025-06-21 01:06:01',NULL,'public'),(8,0,'6','6',1,'image/jpeg',6977,'locations/6.jpg','[]','2025-06-21 01:06:02','2025-06-21 01:06:02',NULL,'public'),(9,0,'7','7',1,'image/jpeg',6977,'locations/7.jpg','[]','2025-06-21 01:06:02','2025-06-21 01:06:02',NULL,'public'),(10,0,'8','8',1,'image/jpeg',6977,'locations/8.jpg','[]','2025-06-21 01:06:02','2025-06-21 01:06:02',NULL,'public'),(11,0,'9','9',1,'image/jpeg',6977,'locations/9.jpg','[]','2025-06-21 01:06:02','2025-06-21 01:06:02',NULL,'public'),(12,0,'1','1',2,'image/jpeg',3916,'avatars/1.jpg','[]','2025-06-21 01:06:04','2025-06-21 01:06:04',NULL,'public'),(13,0,'10','10',2,'image/jpeg',3916,'avatars/10.jpg','[]','2025-06-21 01:06:04','2025-06-21 01:06:04',NULL,'public'),(14,0,'11','11',2,'image/jpeg',3916,'avatars/11.jpg','[]','2025-06-21 01:06:04','2025-06-21 01:06:04',NULL,'public'),(15,0,'2','2',2,'image/jpeg',3916,'avatars/2.jpg','[]','2025-06-21 01:06:04','2025-06-21 01:06:04',NULL,'public'),(16,0,'3','3',2,'image/jpeg',3916,'avatars/3.jpg','[]','2025-06-21 01:06:04','2025-06-21 01:06:04',NULL,'public'),(17,0,'4','4',2,'image/jpeg',3916,'avatars/4.jpg','[]','2025-06-21 01:06:04','2025-06-21 01:06:04',NULL,'public'),(18,0,'5','5',2,'image/jpeg',3916,'avatars/5.jpg','[]','2025-06-21 01:06:04','2025-06-21 01:06:04',NULL,'public'),(19,0,'6','6',2,'image/jpeg',3916,'avatars/6.jpg','[]','2025-06-21 01:06:04','2025-06-21 01:06:04',NULL,'public'),(20,0,'7','7',2,'image/jpeg',3916,'avatars/7.jpg','[]','2025-06-21 01:06:04','2025-06-21 01:06:04',NULL,'public'),(21,0,'8','8',2,'image/jpeg',3916,'avatars/8.jpg','[]','2025-06-21 01:06:04','2025-06-21 01:06:04',NULL,'public'),(22,0,'9','9',2,'image/jpeg',3916,'avatars/9.jpg','[]','2025-06-21 01:06:05','2025-06-21 01:06:05',NULL,'public'),(23,0,'1','1',3,'image/jpeg',9803,'properties/1.jpg','[]','2025-06-21 01:06:10','2025-06-21 01:06:10',NULL,'public'),(24,0,'10','10',3,'image/jpeg',9803,'properties/10.jpg','[]','2025-06-21 01:06:10','2025-06-21 01:06:10',NULL,'public'),(25,0,'11','11',3,'image/jpeg',9803,'properties/11.jpg','[]','2025-06-21 01:06:10','2025-06-21 01:06:10',NULL,'public'),(26,0,'12','12',3,'image/jpeg',9803,'properties/12.jpg','[]','2025-06-21 01:06:10','2025-06-21 01:06:10',NULL,'public'),(27,0,'13','13',3,'image/jpeg',9803,'properties/13.jpg','[]','2025-06-21 01:06:10','2025-06-21 01:06:10',NULL,'public'),(28,0,'2','2',3,'image/jpeg',9803,'properties/2.jpg','[]','2025-06-21 01:06:11','2025-06-21 01:06:11',NULL,'public'),(29,0,'3','3',3,'image/jpeg',9803,'properties/3.jpg','[]','2025-06-21 01:06:11','2025-06-21 01:06:11',NULL,'public'),(30,0,'4','4',3,'image/jpeg',9803,'properties/4.jpg','[]','2025-06-21 01:06:11','2025-06-21 01:06:11',NULL,'public'),(31,0,'5','5',3,'image/jpeg',9803,'properties/5.jpg','[]','2025-06-21 01:06:11','2025-06-21 01:06:11',NULL,'public'),(32,0,'6','6',3,'image/jpeg',9803,'properties/6.jpg','[]','2025-06-21 01:06:11','2025-06-21 01:06:11',NULL,'public'),(33,0,'7','7',3,'image/jpeg',9803,'properties/7.jpg','[]','2025-06-21 01:06:11','2025-06-21 01:06:11',NULL,'public'),(34,0,'8','8',3,'image/jpeg',9803,'properties/8.jpg','[]','2025-06-21 01:06:11','2025-06-21 01:06:11',NULL,'public'),(35,0,'9','9',3,'image/jpeg',9803,'properties/9.jpg','[]','2025-06-21 01:06:12','2025-06-21 01:06:12',NULL,'public'),(36,0,'floor','floor',3,'image/png',9803,'properties/floor.png','[]','2025-06-21 01:06:12','2025-06-21 01:06:12',NULL,'public'),(37,0,'1','1',4,'image/jpeg',9803,'posts/1.jpg','[]','2025-06-21 01:06:16','2025-06-21 01:06:16',NULL,'public'),(38,0,'10','10',4,'image/jpeg',9803,'posts/10.jpg','[]','2025-06-21 01:06:16','2025-06-21 01:06:16',NULL,'public'),(39,0,'2','2',4,'image/jpeg',9803,'posts/2.jpg','[]','2025-06-21 01:06:16','2025-06-21 01:06:16',NULL,'public'),(40,0,'3','3',4,'image/jpeg',9803,'posts/3.jpg','[]','2025-06-21 01:06:16','2025-06-21 01:06:16',NULL,'public'),(41,0,'4','4',4,'image/jpeg',9803,'posts/4.jpg','[]','2025-06-21 01:06:16','2025-06-21 01:06:16',NULL,'public'),(42,0,'5','5',4,'image/jpeg',9803,'posts/5.jpg','[]','2025-06-21 01:06:16','2025-06-21 01:06:16',NULL,'public'),(43,0,'6','6',4,'image/jpeg',9803,'posts/6.jpg','[]','2025-06-21 01:06:16','2025-06-21 01:06:16',NULL,'public'),(44,0,'7','7',4,'image/jpeg',9803,'posts/7.jpg','[]','2025-06-21 01:06:16','2025-06-21 01:06:16',NULL,'public'),(45,0,'8','8',4,'image/jpeg',9803,'posts/8.jpg','[]','2025-06-21 01:06:17','2025-06-21 01:06:17',NULL,'public'),(46,0,'9','9',4,'image/jpeg',9803,'posts/9.jpg','[]','2025-06-21 01:06:17','2025-06-21 01:06:17',NULL,'public'),(47,0,'md-1','md-1',4,'image/jpeg',9803,'posts/md-1.jpg','[]','2025-06-21 01:06:17','2025-06-21 01:06:17',NULL,'public'),(48,0,'md-2','md-2',4,'image/jpeg',9803,'posts/md-2.jpg','[]','2025-06-21 01:06:17','2025-06-21 01:06:17',NULL,'public'),(49,0,'about-us-contact','about-us-contact',5,'image/jpeg',19409,'pages/about-us-contact.jpg','[]','2025-06-21 01:06:18','2025-06-21 01:06:18',NULL,'public'),(50,0,'about-us-video','about-us-video',5,'image/jpeg',16191,'pages/about-us-video.jpg','[]','2025-06-21 01:06:18','2025-06-21 01:06:18',NULL,'public'),(51,0,'call-to-action','call-to-action',5,'image/png',9051,'pages/call-to-action.png','[]','2025-06-21 01:06:18','2025-06-21 01:06:18',NULL,'public'),(52,0,'house-service','house-service',5,'image/png',10923,'pages/house-service.png','[]','2025-06-21 01:06:19','2025-06-21 01:06:19',NULL,'public'),(53,0,'properties','properties',5,'image/png',16974,'pages/properties.png','[]','2025-06-21 01:06:19','2025-06-21 01:06:19',NULL,'public'),(54,0,'service-1','service-1',5,'image/png',21898,'pages/service-1.png','[]','2025-06-21 01:06:19','2025-06-21 01:06:19',NULL,'public'),(55,0,'service-2','service-2',5,'image/png',21279,'pages/service-2.png','[]','2025-06-21 01:06:19','2025-06-21 01:06:19',NULL,'public'),(56,0,'service-3','service-3',5,'image/png',23965,'pages/service-3.png','[]','2025-06-21 01:06:20','2025-06-21 01:06:20',NULL,'public'),(57,0,'service-4','service-4',5,'image/png',32050,'pages/service-4.png','[]','2025-06-21 01:06:20','2025-06-21 01:06:20',NULL,'public'),(58,0,'service-5','service-5',5,'image/png',25146,'pages/service-5.png','[]','2025-06-21 01:06:20','2025-06-21 01:06:20',NULL,'public'),(59,0,'service-6','service-6',5,'image/png',31763,'pages/service-6.png','[]','2025-06-21 01:06:20','2025-06-21 01:06:20',NULL,'public'),(60,0,'slider-1','slider-1',5,'image/jpeg',27445,'pages/slider-1.jpg','[]','2025-06-21 01:06:21','2025-06-21 01:06:21',NULL,'public'),(61,0,'slider-2','slider-2',5,'image/jpeg',23889,'pages/slider-2.jpg','[]','2025-06-21 01:06:21','2025-06-21 01:06:21',NULL,'public'),(62,0,'slider-3','slider-3',5,'image/jpeg',23889,'pages/slider-3.jpg','[]','2025-06-21 01:06:21','2025-06-21 01:06:21',NULL,'public'),(63,0,'slider-4','slider-4',5,'image/jpeg',23889,'pages/slider-4.jpg','[]','2025-06-21 01:06:21','2025-06-21 01:06:21',NULL,'public'),(64,0,'slider-5','slider-5',5,'image/jpeg',23889,'pages/slider-5.jpg','[]','2025-06-21 01:06:22','2025-06-21 01:06:22',NULL,'public'),(65,0,'slider-6','slider-6',5,'image/png',33637,'pages/slider-6.png','[]','2025-06-21 01:06:22','2025-06-21 01:06:22',NULL,'public'),(66,0,'slider-left','slider-left',5,'image/jpeg',11483,'pages/slider-left.jpg','[]','2025-06-21 01:06:22','2025-06-21 01:06:22',NULL,'public'),(67,0,'testimonial-banner','testimonial-banner',5,'image/png',13232,'pages/testimonial-banner.png','[]','2025-06-21 01:06:22','2025-06-21 01:06:22',NULL,'public'),(68,0,'asana','asana',6,'image/png',3510,'partners/asana.png','[]','2025-06-21 01:06:23','2025-06-21 01:06:23',NULL,'public'),(69,0,'github','github',6,'image/png',3510,'partners/github.png','[]','2025-06-21 01:06:23','2025-06-21 01:06:23',NULL,'public'),(70,0,'lhtech','lhtech',6,'image/png',3510,'partners/lhtech.png','[]','2025-06-21 01:06:23','2025-06-21 01:06:23',NULL,'public'),(71,0,'panadoxn','panadoxn',6,'image/png',3510,'partners/panadoxn.png','[]','2025-06-21 01:06:23','2025-06-21 01:06:23',NULL,'public'),(72,0,'shangxi','shangxi',6,'image/png',3510,'partners/shangxi.png','[]','2025-06-21 01:06:23','2025-06-21 01:06:23',NULL,'public'),(73,0,'tyaalpha','tyaalpha',6,'image/png',3510,'partners/tyaalpha.png','[]','2025-06-21 01:06:23','2025-06-21 01:06:23',NULL,'public'),(74,0,'vanfaba','vanfaba',6,'image/png',3510,'partners/vanfaba.png','[]','2025-06-21 01:06:23','2025-06-21 01:06:23',NULL,'public'),(75,0,'banner-footer','banner-footer',7,'image/png',92460,'general/banner-footer.png','[]','2025-06-21 01:06:24','2025-06-21 01:06:24',NULL,'public'),(76,0,'favicon','favicon',7,'image/png',1899,'general/favicon.png','[]','2025-06-21 01:06:24','2025-06-21 01:06:24',NULL,'public'),(77,0,'logo-light','logo-light',7,'image/png',4519,'general/logo-light.png','[]','2025-06-21 01:06:24','2025-06-21 01:06:24',NULL,'public'),(78,0,'logo','logo',7,'image/png',5451,'general/logo.png','[]','2025-06-21 01:06:24','2025-06-21 01:06:24',NULL,'public'),(79,0,'newsletter-image','newsletter-image',7,'image/jpeg',100774,'general/newsletter-image.jpg','[]','2025-06-21 01:06:24','2025-06-21 01:06:24',NULL,'public'),(80,0,'placeholder','placeholder',7,'image/png',12344,'general/placeholder.png','[]','2025-06-21 01:06:24','2025-06-21 01:06:24',NULL,'public');
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'locations',NULL,'locations',0,'2025-06-21 01:06:01','2025-06-21 01:06:01',NULL),(2,0,'avatars',NULL,'avatars',0,'2025-06-21 01:06:04','2025-06-21 01:06:04',NULL),(3,0,'properties',NULL,'properties',0,'2025-06-21 01:06:10','2025-06-21 01:06:10',NULL),(4,0,'posts',NULL,'posts',0,'2025-06-21 01:06:16','2025-06-21 01:06:16',NULL),(5,0,'pages',NULL,'pages',0,'2025-06-21 01:06:18','2025-06-21 01:06:18',NULL),(6,0,'partners',NULL,'partners',0,'2025-06-21 01:06:23','2025-06-21 01:06:23',NULL),(7,0,'general',NULL,'general',0,'2025-06-21 01:06:23','2025-06-21 01:06:23',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2025-06-21 01:06:23','2025-06-21 01:06:23');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,NULL,NULL,0,'Home',NULL,'_self',1,'2025-06-21 01:06:23','2025-06-21 01:06:23'),(2,1,1,1,'Botble\\Page\\Models\\Page','/homepage-1',NULL,0,'Homepage 1',NULL,'_self',0,'2025-06-21 01:06:23','2025-06-21 01:06:23'),(3,1,1,2,'Botble\\Page\\Models\\Page','/homepage-2',NULL,1,'Homepage 2',NULL,'_self',0,'2025-06-21 01:06:23','2025-06-21 01:06:23'),(4,1,1,3,'Botble\\Page\\Models\\Page','/homepage-3',NULL,2,'Homepage 3',NULL,'_self',0,'2025-06-21 01:06:23','2025-06-21 01:06:23'),(5,1,1,4,'Botble\\Page\\Models\\Page','/homepage-4',NULL,3,'Homepage 4',NULL,'_self',0,'2025-06-21 01:06:23','2025-06-21 01:06:23'),(6,1,1,5,'Botble\\Page\\Models\\Page','/homepage-5',NULL,4,'Homepage 5',NULL,'_self',0,'2025-06-21 01:06:23','2025-06-21 01:06:23'),(7,1,0,NULL,NULL,'/projects',NULL,1,'Projects',NULL,'_self',0,'2025-06-21 01:06:23','2025-06-21 01:06:23'),(8,1,0,NULL,NULL,'/properties',NULL,2,'Properties',NULL,'_self',0,'2025-06-21 01:06:23','2025-06-21 01:06:23'),(9,1,0,NULL,NULL,'#',NULL,3,'Pages',NULL,'_self',1,'2025-06-21 01:06:23','2025-06-21 01:06:23'),(10,1,9,NULL,NULL,'/agents',NULL,0,'Agents',NULL,'_self',0,'2025-06-21 01:06:23','2025-06-21 01:06:23'),(11,1,9,NULL,NULL,'/careers',NULL,1,'Careers',NULL,'_self',0,'2025-06-21 01:06:23','2025-06-21 01:06:23'),(12,1,9,NULL,NULL,'/wishlist',NULL,2,'Wishlist',NULL,'_self',0,'2025-06-21 01:06:23','2025-06-21 01:06:23'),(13,1,9,10,'Botble\\Page\\Models\\Page','/about-us',NULL,3,'About Us',NULL,'_self',0,'2025-06-21 01:06:23','2025-06-21 01:06:23'),(14,1,9,8,'Botble\\Page\\Models\\Page','/our-services',NULL,4,'Our Services',NULL,'_self',0,'2025-06-21 01:06:23','2025-06-21 01:06:23'),(15,1,9,11,'Botble\\Page\\Models\\Page','/pricing-plans',NULL,5,'Pricing',NULL,'_self',0,'2025-06-21 01:06:23','2025-06-21 01:06:23'),(16,1,9,7,'Botble\\Page\\Models\\Page','/contact-us',NULL,6,'Contact Us',NULL,'_self',0,'2025-06-21 01:06:23','2025-06-21 01:06:23'),(17,1,9,9,'Botble\\Page\\Models\\Page','/faqs',NULL,7,'FAQs',NULL,'_self',0,'2025-06-21 01:06:23','2025-06-21 01:06:23'),(18,1,9,12,'Botble\\Page\\Models\\Page','/privacy-policy',NULL,8,'Privacy Policy',NULL,'_self',0,'2025-06-21 01:06:23','2025-06-21 01:06:23'),(19,1,9,13,'Botble\\Page\\Models\\Page','/coming-soon',NULL,9,'Coming Soon',NULL,'_self',0,'2025-06-21 01:06:23','2025-06-21 01:06:23'),(20,1,0,NULL,NULL,'#',NULL,4,'Blog',NULL,'_self',1,'2025-06-21 01:06:23','2025-06-21 01:06:23'),(21,1,20,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog List',NULL,'_self',0,'2025-06-21 01:06:23','2025-06-21 01:06:23'),(22,1,20,NULL,NULL,'/news/the-benefits-of-smart-home-technology',NULL,1,'Blog Detail',NULL,'_self',0,'2025-06-21 01:06:23','2025-06-21 01:06:23');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2025-06-21 01:06:23','2025-06-21 01:06:23');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'icon','[\"ti ti-chart-bar\"]',1,'Botble\\RealEstate\\Models\\Category','2025-06-21 01:06:03','2025-06-21 01:06:03'),(2,'icon','[\"ti ti-mail\"]',2,'Botble\\RealEstate\\Models\\Category','2025-06-21 01:06:03','2025-06-21 01:06:03'),(3,'icon','[\"ti ti-home\"]',3,'Botble\\RealEstate\\Models\\Category','2025-06-21 01:06:03','2025-06-21 01:06:03'),(4,'icon','[\"ti ti-shopping-cart\"]',4,'Botble\\RealEstate\\Models\\Category','2025-06-21 01:06:03','2025-06-21 01:06:03'),(5,'icon','[\"ti ti-calendar\"]',5,'Botble\\RealEstate\\Models\\Category','2025-06-21 01:06:03','2025-06-21 01:06:03'),(6,'icon','[\"ti ti-bell\"]',6,'Botble\\RealEstate\\Models\\Category','2025-06-21 01:06:03','2025-06-21 01:06:03'),(7,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]]',1,'Botble\\RealEstate\\Models\\Account','2025-06-21 01:06:05','2025-06-21 01:06:05'),(8,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]]',2,'Botble\\RealEstate\\Models\\Account','2025-06-21 01:06:05','2025-06-21 01:06:05'),(9,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]]',3,'Botble\\RealEstate\\Models\\Account','2025-06-21 01:06:06','2025-06-21 01:06:06'),(10,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]]',4,'Botble\\RealEstate\\Models\\Account','2025-06-21 01:06:06','2025-06-21 01:06:06'),(11,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]]',5,'Botble\\RealEstate\\Models\\Account','2025-06-21 01:06:07','2025-06-21 01:06:07'),(12,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]]',6,'Botble\\RealEstate\\Models\\Account','2025-06-21 01:06:07','2025-06-21 01:06:07'),(13,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]]',7,'Botble\\RealEstate\\Models\\Account','2025-06-21 01:06:07','2025-06-21 01:06:07'),(14,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]]',8,'Botble\\RealEstate\\Models\\Account','2025-06-21 01:06:08','2025-06-21 01:06:08'),(15,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]]',9,'Botble\\RealEstate\\Models\\Account','2025-06-21 01:06:08','2025-06-21 01:06:08'),(16,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]]',10,'Botble\\RealEstate\\Models\\Account','2025-06-21 01:06:09','2025-06-21 01:06:09'),(17,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]]',11,'Botble\\RealEstate\\Models\\Account','2025-06-21 01:06:10','2025-06-21 01:06:10'),(18,'social_links','[[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]]',12,'Botble\\RealEstate\\Models\\Account','2025-06-21 01:06:10','2025-06-21 01:06:10'),(19,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',1,'Botble\\RealEstate\\Models\\Property','2025-06-21 01:06:12','2025-06-21 01:06:12'),(20,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',2,'Botble\\RealEstate\\Models\\Property','2025-06-21 01:06:13','2025-06-21 01:06:13'),(21,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',3,'Botble\\RealEstate\\Models\\Property','2025-06-21 01:06:13','2025-06-21 01:06:13'),(22,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',4,'Botble\\RealEstate\\Models\\Property','2025-06-21 01:06:13','2025-06-21 01:06:13'),(23,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',5,'Botble\\RealEstate\\Models\\Property','2025-06-21 01:06:13','2025-06-21 01:06:13'),(24,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',6,'Botble\\RealEstate\\Models\\Property','2025-06-21 01:06:13','2025-06-21 01:06:13'),(25,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',7,'Botble\\RealEstate\\Models\\Property','2025-06-21 01:06:13','2025-06-21 01:06:13'),(26,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',8,'Botble\\RealEstate\\Models\\Property','2025-06-21 01:06:13','2025-06-21 01:06:13'),(27,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',9,'Botble\\RealEstate\\Models\\Property','2025-06-21 01:06:13','2025-06-21 01:06:13'),(28,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',10,'Botble\\RealEstate\\Models\\Property','2025-06-21 01:06:13','2025-06-21 01:06:13'),(29,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',11,'Botble\\RealEstate\\Models\\Property','2025-06-21 01:06:13','2025-06-21 01:06:13'),(30,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',12,'Botble\\RealEstate\\Models\\Property','2025-06-21 01:06:13','2025-06-21 01:06:13'),(31,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',13,'Botble\\RealEstate\\Models\\Property','2025-06-21 01:06:13','2025-06-21 01:06:13'),(32,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',14,'Botble\\RealEstate\\Models\\Property','2025-06-21 01:06:13','2025-06-21 01:06:13'),(33,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',15,'Botble\\RealEstate\\Models\\Property','2025-06-21 01:06:13','2025-06-21 01:06:13'),(34,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',16,'Botble\\RealEstate\\Models\\Property','2025-06-21 01:06:13','2025-06-21 01:06:13'),(35,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',17,'Botble\\RealEstate\\Models\\Property','2025-06-21 01:06:13','2025-06-21 01:06:13'),(36,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',18,'Botble\\RealEstate\\Models\\Property','2025-06-21 01:06:13','2025-06-21 01:06:13'),(37,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',19,'Botble\\RealEstate\\Models\\Property','2025-06-21 01:06:13','2025-06-21 01:06:13'),(38,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',20,'Botble\\RealEstate\\Models\\Property','2025-06-21 01:06:13','2025-06-21 01:06:13'),(39,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',21,'Botble\\RealEstate\\Models\\Property','2025-06-21 01:06:13','2025-06-21 01:06:13'),(40,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',22,'Botble\\RealEstate\\Models\\Property','2025-06-21 01:06:13','2025-06-21 01:06:13'),(41,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',23,'Botble\\RealEstate\\Models\\Property','2025-06-21 01:06:13','2025-06-21 01:06:13'),(42,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',24,'Botble\\RealEstate\\Models\\Property','2025-06-21 01:06:14','2025-06-21 01:06:14'),(43,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',25,'Botble\\RealEstate\\Models\\Property','2025-06-21 01:06:14','2025-06-21 01:06:14'),(44,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',26,'Botble\\RealEstate\\Models\\Property','2025-06-21 01:06:14','2025-06-21 01:06:14'),(45,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',27,'Botble\\RealEstate\\Models\\Property','2025-06-21 01:06:14','2025-06-21 01:06:14'),(46,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',28,'Botble\\RealEstate\\Models\\Property','2025-06-21 01:06:14','2025-06-21 01:06:14'),(47,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',29,'Botble\\RealEstate\\Models\\Property','2025-06-21 01:06:14','2025-06-21 01:06:14'),(48,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',30,'Botble\\RealEstate\\Models\\Property','2025-06-21 01:06:14','2025-06-21 01:06:14'),(49,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',31,'Botble\\RealEstate\\Models\\Property','2025-06-21 01:06:14','2025-06-21 01:06:14'),(50,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',32,'Botble\\RealEstate\\Models\\Property','2025-06-21 01:06:14','2025-06-21 01:06:14'),(51,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',33,'Botble\\RealEstate\\Models\\Property','2025-06-21 01:06:14','2025-06-21 01:06:14'),(52,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',34,'Botble\\RealEstate\\Models\\Property','2025-06-21 01:06:14','2025-06-21 01:06:14'),(53,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',35,'Botble\\RealEstate\\Models\\Property','2025-06-21 01:06:14','2025-06-21 01:06:14'),(54,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',36,'Botble\\RealEstate\\Models\\Property','2025-06-21 01:06:15','2025-06-21 01:06:15'),(55,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',37,'Botble\\RealEstate\\Models\\Property','2025-06-21 01:06:15','2025-06-21 01:06:15'),(56,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',38,'Botble\\RealEstate\\Models\\Property','2025-06-21 01:06:15','2025-06-21 01:06:15'),(57,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',39,'Botble\\RealEstate\\Models\\Property','2025-06-21 01:06:15','2025-06-21 01:06:15'),(58,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',40,'Botble\\RealEstate\\Models\\Property','2025-06-21 01:06:15','2025-06-21 01:06:15'),(59,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',41,'Botble\\RealEstate\\Models\\Property','2025-06-21 01:06:15','2025-06-21 01:06:15'),(60,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',42,'Botble\\RealEstate\\Models\\Property','2025-06-21 01:06:15','2025-06-21 01:06:15'),(61,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',43,'Botble\\RealEstate\\Models\\Property','2025-06-21 01:06:15','2025-06-21 01:06:15'),(62,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',44,'Botble\\RealEstate\\Models\\Property','2025-06-21 01:06:15','2025-06-21 01:06:15'),(63,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',45,'Botble\\RealEstate\\Models\\Property','2025-06-21 01:06:15','2025-06-21 01:06:15'),(64,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',46,'Botble\\RealEstate\\Models\\Property','2025-06-21 01:06:15','2025-06-21 01:06:15'),(65,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',47,'Botble\\RealEstate\\Models\\Property','2025-06-21 01:06:15','2025-06-21 01:06:15'),(66,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',48,'Botble\\RealEstate\\Models\\Property','2025-06-21 01:06:15','2025-06-21 01:06:15'),(67,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',49,'Botble\\RealEstate\\Models\\Property','2025-06-21 01:06:15','2025-06-21 01:06:15'),(68,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',50,'Botble\\RealEstate\\Models\\Property','2025-06-21 01:06:15','2025-06-21 01:06:15'),(69,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',51,'Botble\\RealEstate\\Models\\Property','2025-06-21 01:06:15','2025-06-21 01:06:15'),(70,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',52,'Botble\\RealEstate\\Models\\Property','2025-06-21 01:06:15','2025-06-21 01:06:15'),(71,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',53,'Botble\\RealEstate\\Models\\Property','2025-06-21 01:06:15','2025-06-21 01:06:15'),(72,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',54,'Botble\\RealEstate\\Models\\Property','2025-06-21 01:06:15','2025-06-21 01:06:15'),(73,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',55,'Botble\\RealEstate\\Models\\Property','2025-06-21 01:06:15','2025-06-21 01:06:15'),(74,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',56,'Botble\\RealEstate\\Models\\Property','2025-06-21 01:06:15','2025-06-21 01:06:15'),(75,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',57,'Botble\\RealEstate\\Models\\Property','2025-06-21 01:06:15','2025-06-21 01:06:15'),(76,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',58,'Botble\\RealEstate\\Models\\Property','2025-06-21 01:06:15','2025-06-21 01:06:15'),(77,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',59,'Botble\\RealEstate\\Models\\Property','2025-06-21 01:06:15','2025-06-21 01:06:15'),(78,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',60,'Botble\\RealEstate\\Models\\Property','2025-06-21 01:06:15','2025-06-21 01:06:15'),(79,'video_url','[\"https:\\/\\/youtu.be\\/tRxGSHL8bI0?si=kbumCspOMG-kJvTT\"]',61,'Botble\\RealEstate\\Models\\Property','2025-06-21 01:06:16','2025-06-21 01:06:16'),(80,'breadcrumb','[\"no\"]',1,'Botble\\Page\\Models\\Page','2025-06-21 01:06:23','2025-06-21 01:06:23'),(81,'breadcrumb','[\"no\"]',2,'Botble\\Page\\Models\\Page','2025-06-21 01:06:23','2025-06-21 01:06:23'),(82,'breadcrumb','[\"no\"]',3,'Botble\\Page\\Models\\Page','2025-06-21 01:06:23','2025-06-21 01:06:23'),(83,'breadcrumb','[\"no\"]',5,'Botble\\Page\\Models\\Page','2025-06-21 01:06:23','2025-06-21 01:06:23'),(84,'breadcrumb','[\"yes\"]',6,'Botble\\Page\\Models\\Page','2025-06-21 01:06:23','2025-06-21 01:06:23'),(85,'breadcrumb','[\"yes\"]',7,'Botble\\Page\\Models\\Page','2025-06-21 01:06:23','2025-06-21 01:06:23'),(86,'breadcrumb','[\"yes\"]',8,'Botble\\Page\\Models\\Page','2025-06-21 01:06:23','2025-06-21 01:06:23'),(87,'breadcrumb','[\"yes\"]',9,'Botble\\Page\\Models\\Page','2025-06-21 01:06:23','2025-06-21 01:06:23'),(88,'breadcrumb','[\"yes\"]',10,'Botble\\Page\\Models\\Page','2025-06-21 01:06:23','2025-06-21 01:06:23'),(89,'breadcrumb','[\"yes\"]',11,'Botble\\Page\\Models\\Page','2025-06-21 01:06:23','2025-06-21 01:06:23'),(90,'breadcrumb','[\"yes\"]',12,'Botble\\Page\\Models\\Page','2025-06-21 01:06:23','2025-06-21 01:06:23'),(91,'breadcrumb','[\"no\"]',13,'Botble\\Page\\Models\\Page','2025-06-21 01:06:23','2025-06-21 01:06:23'),(92,'breadcrumb','[\"yes\"]',16,'Botble\\Page\\Models\\Page','2025-06-21 01:06:23','2025-06-21 01:06:23'),(93,'image','[\"general\\/job-details-thumb.png\"]',1,'ArchiElite\\Career\\Models\\Career','2025-06-21 01:06:26','2025-06-21 01:06:26'),(94,'icon','[\"icons\\/icon1.png\"]',1,'ArchiElite\\Career\\Models\\Career','2025-06-21 01:06:26','2025-06-21 01:06:26'),(95,'apply_url','[\"\\/contact\"]',1,'ArchiElite\\Career\\Models\\Career','2025-06-21 01:06:26','2025-06-21 01:06:26'),(96,'image','[\"general\\/job-details-thumb.png\"]',2,'ArchiElite\\Career\\Models\\Career','2025-06-21 01:06:26','2025-06-21 01:06:26'),(97,'icon','[\"icons\\/icon2.png\"]',2,'ArchiElite\\Career\\Models\\Career','2025-06-21 01:06:26','2025-06-21 01:06:26'),(98,'apply_url','[\"\\/contact\"]',2,'ArchiElite\\Career\\Models\\Career','2025-06-21 01:06:26','2025-06-21 01:06:26'),(99,'image','[\"general\\/job-details-thumb.png\"]',3,'ArchiElite\\Career\\Models\\Career','2025-06-21 01:06:26','2025-06-21 01:06:26'),(100,'icon','[\"icons\\/icon3.png\"]',3,'ArchiElite\\Career\\Models\\Career','2025-06-21 01:06:26','2025-06-21 01:06:26'),(101,'apply_url','[\"\\/contact\"]',3,'ArchiElite\\Career\\Models\\Career','2025-06-21 01:06:26','2025-06-21 01:06:26'),(102,'image','[\"general\\/job-details-thumb.png\"]',4,'ArchiElite\\Career\\Models\\Career','2025-06-21 01:06:26','2025-06-21 01:06:26'),(103,'icon','[\"icons\\/icon4.png\"]',4,'ArchiElite\\Career\\Models\\Career','2025-06-21 01:06:26','2025-06-21 01:06:26'),(104,'apply_url','[\"\\/contact\"]',4,'ArchiElite\\Career\\Models\\Career','2025-06-21 01:06:26','2025-06-21 01:06:26'),(105,'image','[\"general\\/job-details-thumb.png\"]',5,'ArchiElite\\Career\\Models\\Career','2025-06-21 01:06:26','2025-06-21 01:06:26'),(106,'icon','[\"icons\\/icon5.png\"]',5,'ArchiElite\\Career\\Models\\Career','2025-06-21 01:06:26','2025-06-21 01:06:26'),(107,'apply_url','[\"\\/contact\"]',5,'ArchiElite\\Career\\Models\\Career','2025-06-21 01:06:26','2025-06-21 01:06:26'),(108,'image','[\"general\\/job-details-thumb.png\"]',6,'ArchiElite\\Career\\Models\\Career','2025-06-21 01:06:26','2025-06-21 01:06:26'),(109,'icon','[\"icons\\/icon6.png\"]',6,'ArchiElite\\Career\\Models\\Career','2025-06-21 01:06:26','2025-06-21 01:06:26'),(110,'apply_url','[\"\\/contact\"]',6,'ArchiElite\\Career\\Models\\Career','2025-06-21 01:06:26','2025-06-21 01:06:26');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000001_create_cache_table',1),(2,'2013_04_09_032329_create_base_tables',1),(3,'2013_04_09_062329_create_revisions_table',1),(4,'2014_10_12_000000_create_users_table',1),(5,'2014_10_12_100000_create_password_reset_tokens_table',1),(6,'2016_06_10_230148_create_acl_tables',1),(7,'2016_06_14_230857_create_menus_table',1),(8,'2016_06_28_221418_create_pages_table',1),(9,'2016_10_05_074239_create_setting_table',1),(10,'2016_11_28_032840_create_dashboard_widget_tables',1),(11,'2016_12_16_084601_create_widgets_table',1),(12,'2017_05_09_070343_create_media_tables',1),(13,'2017_11_03_070450_create_slug_table',1),(14,'2019_01_05_053554_create_jobs_table',1),(15,'2019_08_19_000000_create_failed_jobs_table',1),(16,'2019_12_14_000001_create_personal_access_tokens_table',1),(17,'2022_04_20_100851_add_index_to_media_table',1),(18,'2022_04_20_101046_add_index_to_menu_table',1),(19,'2022_07_10_034813_move_lang_folder_to_root',1),(20,'2022_08_04_051940_add_missing_column_expires_at',1),(21,'2022_09_01_000001_create_admin_notifications_tables',1),(22,'2022_10_14_024629_drop_column_is_featured',1),(23,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(24,'2022_12_02_093615_update_slug_index_columns',1),(25,'2023_01_30_024431_add_alt_to_media_table',1),(26,'2023_02_16_042611_drop_table_password_resets',1),(27,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(28,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(29,'2023_08_21_090810_make_page_content_nullable',1),(30,'2023_09_14_021936_update_index_for_slugs_table',1),(31,'2023_12_07_095130_add_color_column_to_media_folders_table',1),(32,'2023_12_17_162208_make_sure_column_color_in_media_folders_nullable',1),(33,'2024_04_04_110758_update_value_column_in_user_meta_table',1),(34,'2024_05_12_091229_add_column_visibility_to_table_media_files',1),(35,'2024_07_03_162029_remove_plugin_team',1),(36,'2024_07_07_091316_fix_column_url_in_menu_nodes_table',1),(37,'2024_07_12_100000_change_random_hash_for_media',1),(38,'2024_09_30_024515_create_sessions_table',1),(39,'2024_12_19_000001_create_device_tokens_table',1),(40,'2024_12_19_000002_create_push_notifications_table',1),(41,'2024_12_19_000003_create_push_notification_recipients_table',1),(42,'2020_11_18_150916_ads_create_ads_table',2),(43,'2021_12_02_035301_add_ads_translations_table',2),(44,'2023_04_17_062645_add_open_in_new_tab',2),(45,'2023_11_07_023805_add_tablet_mobile_image',2),(46,'2024_04_01_043317_add_google_adsense_slot_id_to_ads_table',2),(47,'2025_04_21_000000_add_tablet_mobile_image_to_ads_translations_table',2),(48,'2024_04_27_100730_improve_analytics_setting',3),(49,'2023_08_11_060908_create_announcements_table',4),(50,'2025_02_11_153025_add_action_label_to_announcement_translations',4),(51,'2015_06_29_025744_create_audit_history',5),(52,'2023_11_14_033417_change_request_column_in_table_audit_histories',5),(53,'2025_05_05_000001_add_user_type_to_audit_histories_table',5),(54,'2015_06_18_033822_create_blog_table',6),(55,'2021_02_16_092633_remove_default_value_for_author_type',6),(56,'2021_12_03_030600_create_blog_translations',6),(57,'2022_04_19_113923_add_index_to_table_posts',6),(58,'2023_08_29_074620_make_column_author_id_nullable',6),(59,'2024_07_30_091615_fix_order_column_in_categories_table',6),(60,'2025_01_06_033807_add_default_value_for_categories_author_type',6),(61,'2019_06_24_211801_create_career_table',7),(62,'2021_12_04_095357_create_careers_translations_table',7),(63,'2023_09_20_050420_add_missing_translation_column',7),(64,'2016_06_17_091537_create_contacts_table',8),(65,'2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core',8),(66,'2024_03_20_080001_migrate_change_attribute_email_to_nullable_form_contacts_table',8),(67,'2024_03_25_000001_update_captcha_settings_for_contact',8),(68,'2024_04_19_063914_create_custom_fields_table',8),(69,'2018_07_09_221238_create_faq_table',9),(70,'2021_12_03_082134_create_faq_translations',9),(71,'2023_11_17_063408_add_description_column_to_faq_categories_table',9),(72,'2016_10_03_032336_create_languages_table',10),(73,'2023_09_14_022423_add_index_for_language_table',10),(74,'2021_10_25_021023_fix-priority-load-for-language-advanced',11),(75,'2021_12_03_075608_create_page_translations',11),(76,'2023_07_06_011444_create_slug_translations_table',11),(77,'2019_11_18_061011_create_country_table',12),(78,'2021_12_03_084118_create_location_translations',12),(79,'2021_12_03_094518_migrate_old_location_data',12),(80,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',12),(81,'2022_01_16_085908_improve_plugin_location',12),(82,'2022_08_04_052122_delete_location_backup_tables',12),(83,'2023_04_23_061847_increase_state_translations_abbreviation_column',12),(84,'2023_07_26_041451_add_more_columns_to_location_table',12),(85,'2023_07_27_041451_add_more_columns_to_location_translation_table',12),(86,'2023_08_15_073307_drop_unique_in_states_cities_translations',12),(87,'2023_10_21_065016_make_state_id_in_table_cities_nullable',12),(88,'2024_08_17_094600_add_image_into_countries',12),(89,'2025_01_08_093652_add_zip_code_to_cities',12),(90,'2017_10_24_154832_create_newsletter_table',13),(91,'2024_03_25_000001_update_captcha_settings_for_newsletter',13),(92,'2017_05_18_080441_create_payment_tables',14),(93,'2021_03_27_144913_add_customer_type_into_table_payments',14),(94,'2021_05_24_034720_make_column_currency_nullable',14),(95,'2021_08_09_161302_add_metadata_column_to_payments_table',14),(96,'2021_10_19_020859_update_metadata_field',14),(97,'2022_06_28_151901_activate_paypal_stripe_plugin',14),(98,'2022_07_07_153354_update_charge_id_in_table_payments',14),(99,'2024_07_04_083133_create_payment_logs_table',14),(100,'2025_04_12_000003_add_payment_fee_to_payments_table',14),(101,'2025_05_22_000001_add_payment_fee_type_to_settings_table',14),(102,'2018_06_22_032304_create_real_estate_table',15),(103,'2021_02_11_031126_update_price_column_in_projects_and_properties',15),(104,'2021_03_08_024049_add_lat_long_into_real_estate_tables',15),(105,'2021_06_10_091950_add_column_is_featured_to_table_re_accounts',15),(106,'2021_07_07_021757_update_table_account_activity_logs',15),(107,'2021_09_29_042758_create_re_categories_multilevel_table',15),(108,'2021_10_31_031254_add_company_to_accounts_table',15),(109,'2021_12_10_034807_create_real_estate_translation_tables',15),(110,'2021_12_18_081636_add_property_project_views_count',15),(111,'2022_05_04_033044_update_column_images_in_real_estate_tables',15),(112,'2022_07_02_081723_fix_expired_date_column',15),(113,'2022_08_01_090213_update_table_properties_and_projects',15),(114,'2023_01_31_023233_create_re_custom_fields_table',15),(115,'2023_02_06_000000_add_location_to_re_accounts_table',15),(116,'2023_02_06_024257_add_package_translations',15),(117,'2023_02_08_062457_add_custom_fields_translation_table',15),(118,'2023_02_15_024644_create_re_reviews_table',15),(119,'2023_02_20_072604_create_re_invoices_table',15),(120,'2023_02_20_081251_create_re_account_packages_table',15),(121,'2023_04_04_030709_add_unique_id_to_properties_and_projects_table',15),(122,'2023_04_14_164811_make_phone_and_email_in_table_re_consults_nullable',15),(123,'2023_05_09_062031_unique_reviews_table',15),(124,'2023_05_26_034353_fix_properties_projects_image',15),(125,'2023_05_27_004215_add_column_ip_into_table_re_consults',15),(126,'2023_07_25_034513_create_re_coupons_table',15),(127,'2023_07_25_034672_add_coupon_code_column_to_jb_invoices_table',15),(128,'2023_08_02_074208_change_square_column_to_float',15),(129,'2023_08_07_000001_add_is_public_profile_column_to_re_accounts_table',15),(130,'2023_08_09_004607_make_column_project_id_nullable',15),(131,'2023_09_11_084630_update_mandatory_fields_in_consult_form_table',15),(132,'2023_11_21_071820_add_missing_slug_for_agents',15),(133,'2024_01_11_084816_add_investor_translations_table',15),(134,'2024_01_31_022842_add_description_to_re_packages_table',15),(135,'2024_03_13_000001_drop_type_column_from_custom_field_translations_table',15),(136,'2024_04_23_124505_add_features_column_to_re_packages',15),(137,'2024_04_23_135106_add_columns_to_re_investors',15),(138,'2024_05_25_000001_update_captcha_settings_for_real_estate',15),(139,'2024_06_16_163428_make_investor_id_nullable',15),(140,'2024_06_20_103539_create_consult_custom_fields_table',15),(141,'2024_07_08_235824_fix_facilities_primary_key',15),(142,'2024_07_26_090340_add_private_notes_column_to_re_properties_projects_table',15),(143,'2024_08_09_075542_add_accounts_translations',15),(144,'2024_08_12_124528_add_approved_at_column_to_re_accounts_table',15),(145,'2024_08_31_074158_add_floor_plans_columns_to_re_properties_table',15),(146,'2024_09_04_130921_add_reject_reason_column_to_re_properties_table',15),(147,'2024_09_19_021436_make_email_in_accounts_table_nullable',15),(148,'2024_11_18_023706_add_floor_plan_to_table_re_properties_translations',15),(149,'2024_12_18_000000_add_blocked_at_column_to_re_accounts_table',15),(150,'2024_12_18_000001_add_blocked_reason_column_to_re_accounts_table',15),(151,'2025_04_12_161730_add_featured_priority_to_re_properties_table',15),(152,'2025_04_12_165120_add_featured_priority_to_re_projects_table',15),(153,'2025_04_23_034738_make_featured_priority_nullable',15),(154,'2025_05_19_000001_add_zip_code_to_properties_and_projects_tables',15),(155,'2025_04_08_040931_create_social_logins_table',16),(156,'2018_07_09_214610_create_testimonial_table',17),(157,'2021_12_03_083642_create_testimonials_translations',17),(158,'2016_10_07_193005_create_translations_table',18),(159,'2023_12_12_105220_drop_translations_table',18);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Homepage 1','[hero-banner style=\"1\" title=\"Find Your\" animation_text=\"Dream Home,Perfect Home,Real Estate\" description=\"We are a real estate agency that will help you find the best residence you dream of, let’s discuss for your dream house?\" background_image=\"pages/slider-1.jpg\" search_box_enabled=\"1\" projects_search_enabled=\"1\" default_search_type=\"project\"][/hero-banner]\n[properties style=\"2\" title=\"Recommended For You\" subtitle=\"Features Properties\" category_ids=\"1,2,3,4,5,6\" type=\"rent\" is_featured=\"\" limit=\"6\" button_label=\"View All Properties\" button_url=\"/properties\" enable_lazy_loading=\"yes\"][/properties]\n[location title=\"Our Location For You\" subtitle=\"Explore Cities\" type=\"city\" city_ids=\"1,2,3,4,5,6,7\" destination=\"property\" background_color=\"#f7f7f7\" enable_lazy_loading=\"yes\"][/location]\n[services style=\"1\" title=\"What We Do?\" subtitle=\"Our Services\" background_color=\"transparent\" services_quantity=\"3\" services_title_1=\"Buy A New Home\" services_description_1=\"Discover your dream home effortlessly. Explore diverse properties and expert guidance for a seamless buying experience.\" services_button_label_1=\"Learn More\" services_button_url_1=\"/\" services_icon_image_1=\"pages/service-1.png\" services_title_2=\"Rent A Home\" services_description_2=\"Discover your perfect rental effortlessly. Explore a diverse variety of listings tailored precisely to suit your unique lifestyle needs.\" services_button_label_2=\"Learn More\" services_button_url_2=\"/\" services_icon_image_2=\"pages/service-2.png\" services_title_3=\"Sell A Home\" services_description_3=\"Sell confidently with expert guidance and effective strategies, showcasing your property\'s best features for a successful sale.\" services_button_label_3=\"Learn More\" services_button_url_3=\"/\" services_icon_image_3=\"pages/service-3.png\" counters_quantity=\"4\" counters_label_1=\"SATISFIED CLIENTS\" counters_number_1=\"85\" counters_label_2=\"AWARDS RECEIVED\" counters_number_2=\"112\" counters_label_3=\"SUCCESSFUL TRANSACTIONS\" counters_number_3=\"32\" counters_label_4=\"MONTHLY TRAFFIC\" counters_number_4=\"66\" button_label=\"View All Services\" button_url=\"/\" enable_lazy_loading=\"yes\"][/services]\n[services style=\"1\" title=\"Why Choose Homzen\" subtitle=\"Our Benefit\" background_color=\"#f7f7f7\" services_quantity=\"3\" services_title_1=\"Proven Expertise\" services_description_1=\"Our seasoned team excels in real estate with years of successful market navigation, offering informed decisions and optimal results.\" services_icon_image_1=\"pages/service-1.png\" services_title_2=\"Customized Solutions\" services_description_2=\"We pride ourselves on crafting personalized strategies to match your unique goals, ensuring a seamless real estate journey.\" services_icon_image_2=\"pages/service-2.png\" services_title_3=\"Transparent Partnerships\" services_description_3=\"Transparency is key in our client relationships. We prioritize clear communication and ethical practices, fostering trust and reliability throughout.\" services_icon_image_3=\"pages/service-3.png\" counters_quantity=\"1\" centered_content=\"1\" enable_lazy_loading=\"yes\"][/services]\n[properties style=\"1\" title=\"Best Property Value\" subtitle=\"Top Properties\" is_featured=\"1\" limit=\"4\" button_label=\"View All\" button_url=\"/properties\" enable_lazy_loading=\"yes\"][/properties]\n[testimonials style=\"1\" title=\"What’s People Say’s\" subtitle=\"Top Properties\" description=\"Our seasoned team excels in real estate with years of successful market navigation, offering informed decisions and optimal results.\" testimonial_ids=\"1,2,3,4\" background_color=\"#f7f7f7\" enable_lazy_loading=\"yes\"][/testimonials]\n[agents style=\"1\" title=\"Meet Our Agents\" subtitle=\"Our Teams\" account_ids=\"1,2,3,4\" enable_lazy_loading=\"yes\"][/agents]\n[blog-posts style=\"1\" title=\"Helpful Homzen Guides\" subtitle=\"Latest News\" type=\"recent\" limit=\"3\" background_color=\"#f7f7f7\" enable_lazy_loading=\"yes\"][/blog-posts]\n[image-slider background_color=\"transparent\" quantity=\"7\" name_1=\"GitHub\" image_1=\"partners/github.png\" url_1=\"https://github.com\" open_in_new_tab_1=\"\" name_2=\"LH.Tech\" image_2=\"partners/lhtech.png\" url_2=\"https://lhtech.com.my\" open_in_new_tab_2=\"\" name_3=\"Panadoxn\" image_3=\"partners/panadoxn.png\" url_3=\"/\" open_in_new_tab_3=\"\" name_4=\"Shangxi\" image_4=\"partners/shangxi.png\" url_4=\"/\" open_in_new_tab_4=\"\" name_5=\"Tyaalpha\" image_5=\"partners/tyaalpha.png\" url_5=\"/\" open_in_new_tab_5=\"\" name_6=\"Vanfaba\" image_6=\"partners/vanfaba.png\" url_6=\"/\" open_in_new_tab_6=\"\" name_7=\"Asana\" image_7=\"partners/asana.png\" url_7=\"https://asana.com\" open_in_new_tab_7=\"\" enable_lazy_loading=\"yes\"][/image-slider]',1,NULL,'full-width',NULL,'published','2025-06-21 01:06:23','2025-06-21 01:06:23'),(2,'Homepage 2','[hero-banner style=\"2\" title=\"Find A Home That\" animation_text=\"Perfectly,Dream Home\" description=\"We are a real estate agency that will help you find the best residence you dream of.\" background_image=\"pages/slider-left.jpg\" slider_image_1=\"pages/slider-2.jpg\" slider_image_2=\"pages/slider-3.jpg\" slider_image_3=\"pages/slider-4.jpg\" slider_image_4=\"pages/slider-5.jpg\" search_box_enabled=\"1\" projects_search_enabled=\"1\" default_search_type=\"project\"][/hero-banner]\n[property-categories style=\"1\" title=\"Try Searching For\" subtitle=\"PROPERTY TYPE\" category_ids=\"1,2,3,4,5,6\" background_color=\"transparent\" button_label=\"View All\" button_url=\"/categories\" enable_lazy_loading=\"yes\"][/property-categories]\n[properties style=\"4\" title=\"Discover Homzen\'s Finest Properties For Your Dream Home\" subtitle=\"Featured Properties\" limit=\"8\" button_label=\"View All Properties\" button_url=\"/properties\" enable_lazy_loading=\"yes\"][/properties]\n[services style=\"3\" title=\"Discover What Sets Our Real Estate Expertise Apart\" subtitle=\"Why Choose Us\" description=\"At Homzen, our unwavering commitment lies in crafting unparalleled real estate journeys. Our seasoned professionals, armed with extensive market knowledge, walk alongside you through every phase of your property endeavor. We prioritize understanding your unique aspirations, tailoring our expertise to match your vision.\" checklist=\"Transparent Partnerships,Proven Expertise,Customized Solutions,Local Area Knowledge\" background_color=\"#f7f7f7\" services_quantity=\"3\" services_title_1=\"Buy A New Home\" services_description_1=\"Discover your dream home effortlessly. Explore diverse properties and expert guidance for a seamless buying experience.\" services_button_label_1=\"Learn More\" services_button_url_1=\"/\" services_icon_image_1=\"pages/service-1.png\" services_title_2=\"Rent A Home\" services_description_2=\"Discover your perfect rental effortlessly. Explore a diverse variety of listings tailored precisely to suit your unique lifestyle needs.\" services_button_label_2=\"Learn More\" services_button_url_2=\"/\" services_icon_image_2=\"pages/service-2.png\" services_title_3=\"Sell A Home\" services_description_3=\"Sell confidently with expert guidance and effective strategies, showcasing your property\'s best features for a successful sale.\" services_button_label_3=\"Learn More\" services_button_url_3=\"/\" services_icon_image_3=\"pages/service-3.png\" counters_quantity=\"1\" button_label=\"Contact Us\" button_url=\"/contact-us\" centered_content=\"\" enable_lazy_loading=\"yes\"][/services]\n[location style=\"2\" title=\"Our Location For You\" subtitle=\"Explore States\" type=\"state\" state_ids=\"1,2,3,4,5,6\" destination=\"property\" background_color=\"transparent\" enable_lazy_loading=\"yes\"][/location]\n[properties style=\"3\" title=\"Best Property Value\" subtitle=\"Top Properties\" is_featured=\"1\" limit=\"4\" button_label=\"View All\" button_url=\"/properties\" enable_lazy_loading=\"yes\" background_color=\"#f7f7f7\"][/properties]\n[agents style=\"1\" title=\"Meet Our Agents\" subtitle=\"Our Teams\" account_ids=\"1,2,3,4\" enable_lazy_loading=\"yes\"][/agents]\n[testimonials style=\"3\" title=\"What’s People Say’s\" subtitle=\"Our Testimonials\" description=\"Our seasoned team excels in real estate with years of successful market navigation, offering informed decisions and optimal results.\" testimonial_ids=\"1,2,3,4\" enable_lazy_loading=\"yes\"][/testimonials]\n[blog-posts style=\"1\" title=\"Helpful Homzen Guides\" subtitle=\"Latest News\" type=\"recent\" limit=\"3\" enable_lazy_loading=\"yes\"][/blog-posts]',1,NULL,'full-width',NULL,'published','2025-06-21 01:06:23','2025-06-21 01:06:23'),(3,'Homepage 3','[hero-banner style=\"3\" title=\"Indulge in Your\" animation_text=\"Sanctuary,Safe House\" description=\"Discover your private oasis at Homzen, where every corner, from the spacious garden to the relaxing pool, is crafted for your comfort and enjoyment.\" background_image=\"pages/slider-6.png\" search_box_enabled=\"1\" projects_search_enabled=\"1\" default_search_type=\"project\" button_label=\"Contact Us\" button_url=\"/contact\"][/hero-banner]\n[location style=\"3\" title=\"Properties By Cities\" subtitle=\"EXPLORE CITIES\" type=\"city\" city_ids=\"1,2,3,4,5,6,7,21,24\" destination=\"property\" background_color=\"#f7f7f7\" button_label=\"View All Properties\" button_url=\"/properties\" enable_lazy_loading=\"yes\"][/location]\n[properties style=\"2\" title=\"Recommended For You\" subtitle=\"Features Properties\" category_ids=\"1,2,3,4,5,6\" type=\"rent\" is_featured=\"\" limit=\"6\" button_label=\"View All Properties\" button_url=\"/properties\" enable_lazy_loading=\"yes\"][/properties]\n[property-categories style=\"2\" title=\"Try Searching For\" subtitle=\"PROPERTY TYPE\" category_ids=\"1,2,3,4,5,6\" background_color=\"#161e2d\" enable_lazy_loading=\"yes\"][/property-categories]\n[services style=\"2\" title=\"What We Do?\" subtitle=\"Our Services\" background_color=\"transparent\" services_quantity=\"3\" services_title_1=\"Buy A New Home\" services_description_1=\"Discover your dream home effortlessly. Explore diverse properties and expert guidance for a seamless buying experience.\" services_button_label_1=\"Learn More\" services_button_url_1=\"/\" services_icon_image_1=\"pages/service-1.png\" services_title_2=\"Rent A Home\" services_description_2=\"Discover your perfect rental effortlessly. Explore a diverse variety of listings tailored precisely to suit your unique lifestyle needs.\" services_button_label_2=\"Learn More\" services_button_url_2=\"/\" services_icon_image_2=\"pages/service-2.png\" services_title_3=\"Sell A Home\" services_description_3=\"Sell confidently with expert guidance and effective strategies, showcasing your property\'s best features for a successful sale.\" services_button_label_3=\"Learn More\" services_button_url_3=\"/\" services_icon_image_3=\"pages/service-3.png\" enable_lazy_loading=\"yes\"][/services]\n[testimonials style=\"4\" title=\"What’s People Say’s\" subtitle=\"Our Testimonials\" description=\"Our seasoned team excels in real estate with years of successful market navigation, offering informed decisions and optimal results.\" testimonial_ids=\"1,2,3,4\" background_color=\"#f7f7f7\" background_image=\"pages/testimonial-banner.png\" enable_lazy_loading=\"yes\"][/testimonials]\n[agents style=\"2\" title=\"Meet Our Agents\" subtitle=\"Our Teams\" account_ids=\"1,2,3,4\" background_color=\"#f7f7f7\" enable_lazy_loading=\"yes\"][/agents]\n[blog-posts style=\"2\" title=\"Helpful Homzen Guides\" subtitle=\"Latest News\" type=\"recent\" limit=\"4\" background_color=\"#f7f7f7\" enable_lazy_loading=\"yes\"][/blog-posts]',1,NULL,'full-width',NULL,'published','2025-06-21 01:06:23','2025-06-21 01:06:23'),(4,'Homepage 4','[hero-banner style=\"4\" search_box_enabled=\"1\" projects_search_enabled=\"1\" default_search_type=\"project\"][/hero-banner]\n[properties style=\"5\" title=\"Discover Homzen\'s Finest Properties For Your Dream Home\" subtitle=\"FEATURED PROPERTIES\" is_featured=\"1\" limit=\"6\" button_label=\"View All Properties\" button_url=\"/properties\" background_color=\"transparent\" enable_lazy_loading=\"yes\"][/properties]\n[services style=\"4\" title=\"Discover What Sets Our\" subtitle=\"WHAT WE DO\" description=\"At Homzen, our unwavering commitment lies in crafting unparalleled real estate journeys.\" background_color=\"transparent\" services_quantity=\"3\" services_title_1=\"Buy A New Home\" services_description_1=\"Explore diverse properties and expert guidance for a seamless buying experience.\" services_icon_1=\"ti ti-12-hours\" services_icon_image_1=\"pages/service-1.png\" services_button_label_1=\"Learn More\" services_button_url_1=\"/contact\" services_title_2=\"Rent A Home\" services_description_2=\"Explore a diverse variety of listings tailored precisely to suit your unique lifestyle needs.\" services_icon_image_2=\"pages/service-2.png\" services_button_label_2=\"Learn More\" services_button_url_2=\"/contact\" services_title_3=\"Buy A New Home\" services_description_3=\"Showcasing your property\'s best features for a successful sale.\" services_icon_image_3=\"pages/service-3.png\" services_button_label_3=\"Learn More\" services_button_url_3=\"/contact\" counters_quantity=\"1\" background_image=\"pages/house-service.png\" centered_content=\"\" enable_lazy_loading=\"yes\"][/services]\n[location title=\"Our Location For You\" subtitle=\"Explore Cities\" type=\"city\" city_ids=\"1,2,3,4,5,6\" destination=\"property\" background_color=\"#f7f7f7\" enable_lazy_loading=\"yes\"][/location]\n[agents style=\"1\" title=\"Meet Our Agents\" subtitle=\"OUR TEAMS\" account_ids=\"1,2,3\" background_color=\"transparent\" items_per_row=\"3\" enable_lazy_loading=\"yes\"][/agents]\n[properties style=\"6\" title=\"Recommended for you\" subtitle=\"TOP PROPERTIES\" is_featured=\"1\" limit=\"4\" background_image=\"pages/properties.png\" background_color=\"transparent\" enable_lazy_loading=\"yes\"][/properties]\n[testimonials style=\"2\" title=\"What’s People Say’s\" subtitle=\"OUR TESTIMONIALS\" testimonial_ids=\"1,2,3,4\" enable_lazy_loading=\"yes\"][/testimonials]\n[services style=\"5\" title=\"Why Choose Homzen\" subtitle=\"OUR BENIFIT\" description=\"Our seasoned team excels in real estate with years of successful market navigation, offering informed decisions and optimal results.\" background_color=\"transparent\" services_quantity=\"8\" services_title_1=\"Buy A New Home\" services_description_1=\"Explore diverse properties and expert guidance for a seamless buying experience.\" services_icon_1=\"ti ti-home\" services_title_2=\"Sell Your Property\" services_description_2=\"Get the best value with our professional selling strategies and market insights.\" services_icon_2=\"ti ti-currency-dollar\" services_title_3=\"Rent A Property\" services_description_3=\"Find the perfect rental property with our extensive listings and support.\" services_icon_3=\"ti ti-building\" services_title_4=\"Property Management\" services_description_4=\"Professional management services to keep your property in top condition.\" services_icon_4=\"ti ti-settings\" services_title_5=\"Real Estate Consulting\" services_description_5=\"Expert advice and insights to help you make informed real estate decisions.\" services_icon_5=\"ti ti-chart-bar\" services_title_6=\"Mortgage Services\" services_description_6=\"Find the best mortgage rates and options with our comprehensive services.\" services_icon_6=\"ti ti-credit-card\" services_title_7=\"Investment Properties\" services_description_7=\"Discover lucrative investment opportunities and maximize your returns.\" services_icon_7=\"ti ti-briefcase\" services_title_8=\"Relocation Services\" services_description_8=\"Smooth and hassle-free relocation services to help you move with ease.\" services_icon_8=\"ti ti-truck\" counters_quantity=\"1\" centered_content=\"\" enable_lazy_loading=\"yes\"][/services]\n[blog-posts style=\"1\" title=\"Helpful Homzen Guides\" subtitle=\"LATEST NEWS\" type=\"recent\" limit=\"3\" enable_lazy_loading=\"yes\"][/blog-posts]\n[call-to-action title=\"List Your Properties On Homzen, Join Us Now!\" subtitle=\"BECOME PARTNERS\" button_label=\"Become A Hosting\" button_url=\"/contact\" image=\"pages/call-to-action.png\" enable_lazy_loading=\"yes\"][/call-to-action]',1,NULL,'full-width',NULL,'published','2025-06-21 01:06:23','2025-06-21 01:06:23'),(5,'Homepage 5','[hero-banner style=\"5\" property_id=\"4\" search_box_enabled=\"1\" projects_search_enabled=\"1\" default_search_type=\"project\"][/hero-banner]\n[services style=\"2\" title=\"Why Choose Homzen\" subtitle=\"Our Benefit\" background_color=\"#f7f7f7\" services_quantity=\"3\" services_title_1=\"Buy A New Home\" services_description_1=\"Discover your dream home effortlessly. Explore diverse properties and expert guidance for a seamless buying experience.\" services_button_label_1=\"Learn More\" services_button_url_1=\"/\" services_icon_image_1=\"pages/service-1.png\" services_title_2=\"Rent A Home\" services_description_2=\"Discover your perfect rental effortlessly. Explore a diverse variety of listings tailored precisely to suit your unique lifestyle needs.\" services_button_label_2=\"Learn More\" services_button_url_2=\"/\" services_icon_image_2=\"pages/service-2.png\" services_title_3=\"Sell A Home\" services_description_3=\"Sell confidently with expert guidance and effective strategies, showcasing your property\'s best features for a successful sale.\" services_button_label_3=\"Learn More\" services_button_url_3=\"/\" services_icon_image_3=\"pages/service-3.png\" counters_quantity=\"1\" centered_content=\"1\" enable_lazy_loading=\"yes\"][/services]\n[properties style=\"4\" title=\"Discover Homzen\'s Finest Properties For Your Dream Home\" subtitle=\"FEATURED PROPERTIES\" is_featured=\"1\" limit=\"8\" button_label=\"View All Properties\" button_url=\"/properties\" background_color=\"transparent\" enable_lazy_loading=\"yes\"][/properties]\n[location style=\"4\" title=\"Our Location For You\" subtitle=\"EXPLORE CITIES\" type=\"city\" city_ids=\"1,3,5,6,11,23\" destination=\"property\" background_color=\"#f7f7f7\" enable_lazy_loading=\"yes\"][/location]\n[properties style=\"7\" title=\"Recommended For You\" subtitle=\"TOP PROPERTIES\" is_featured=\"1\" limit=\"4\" background_color=\"transparent\" enable_lazy_loading=\"yes\"][/properties]\n[services style=\"5\" title=\"Why Choose Homzen\" subtitle=\"OUR BENIFIT\" description=\"Our seasoned team excels in real estate with years of successful market navigation, offering informed decisions and optimal results.\" background_color=\"transparent\" services_quantity=\"8\" services_title_1=\"Buy A New Home\" services_description_1=\"Explore diverse properties and expert guidance for a seamless buying experience.\" services_icon_1=\"ti ti-home\" services_title_2=\"Sell Your Property\" services_description_2=\"Get the best value with our professional selling strategies and market insights.\" services_icon_2=\"ti ti-currency-dollar\" services_title_3=\"Rent A Property\" services_description_3=\"Find the perfect rental property with our extensive listings and support.\" services_icon_3=\"ti ti-building\" services_title_4=\"Property Management\" services_description_4=\"Professional management services to keep your property in top condition.\" services_icon_4=\"ti ti-settings\" services_title_5=\"Real Estate Consulting\" services_description_5=\"Expert advice and insights to help you make informed real estate decisions.\" services_icon_5=\"ti ti-chart-bar\" services_title_6=\"Mortgage Services\" services_description_6=\"Find the best mortgage rates and options with our comprehensive services.\" services_icon_6=\"ti ti-credit-card\" services_title_7=\"Investment Properties\" services_description_7=\"Discover lucrative investment opportunities and maximize your returns.\" services_icon_7=\"ti ti-briefcase\" services_title_8=\"Relocation Services\" services_description_8=\"Smooth and hassle-free relocation services to help you move with ease.\" services_icon_8=\"ti ti-truck\" counters_quantity=\"1\" centered_content=\"\" enable_lazy_loading=\"yes\"][/services]\n[agents style=\"2\" title=\"Meet Our Agents\" subtitle=\"OUR TEAMS\" account_ids=\"1,2,3,4\" background_color=\"transparent\" items_per_row=\"2\" enable_lazy_loading=\"yes\"][/agents]\n[testimonials style=\"1\" title=\"What’s People Say’s\" subtitle=\"TOP PROPERTIES\" description=\"Our seasoned team excels in real estate with years of successful market navigation, offering informed decisions and optimal results.\" testimonial_ids=\"1,2,3,4\" background_color=\"#f7f7f7\" enable_lazy_loading=\"yes\"][/testimonials]\n[blog-posts style=\"2\" title=\"The Most Recent Estate\" subtitle=\"LATEST NEWS\" type=\"recent\" limit=\"4\" enable_lazy_loading=\"yes\"][/blog-posts]',1,NULL,'full-width',NULL,'published','2025-06-21 01:06:23','2025-06-21 01:06:23'),(6,'Blog',NULL,1,NULL,NULL,NULL,'published','2025-06-21 01:06:23','2025-06-21 01:06:23'),(7,'Contact Us','[contact-form display_fields=\"phone,email,subject,address\" mandatory_fields=\"email\" style=\"1\" title=\"Drop Us A Line\" description=\"Feel free to connect with us through our online channels for updates, news, and more.\" show_information_box=\"1\" contact_title=\"Contact Us\" quantity=\"3\" label_1=\"Address:\" content_1=\"101 E 129th St, East Chicago, IN 46312 United States\" label_2=\"Information:\" content_2=\"1-333-345-6868 hi.themesflat@gmail.com\" label_3=\"Open time:\" content_3=\"Monday - Friday: 08:00 - 20:00 Saturday - Sunday: 10:00 - 18:00\" show_social_links=\"1\"][/contact-form]\n[google-map]101 E 129th St, East Chicago, IN 46312 United States[/google-map]',1,NULL,NULL,NULL,'published','2025-06-21 01:06:23','2025-06-21 01:06:23'),(8,'Our Services','[services style=\"2\" title=\"Why Choose Homzen\" subtitle=\"Our Benefit\" background_color=\"#ffffff\" services_quantity=\"3\" services_title_1=\"Buy A New Home\" services_description_1=\"Discover your dream home effortlessly. Explore diverse properties and expert guidance for a seamless buying experience.\" services_button_label_1=\"Learn More\" services_button_url_1=\"/\" services_icon_image_1=\"pages/service-1.png\" services_title_2=\"Rent A Home\" services_description_2=\"Discover your perfect rental effortlessly. Explore a diverse variety of listings tailored precisely to suit your unique lifestyle needs.\" services_button_label_2=\"Learn More\" services_button_url_2=\"/\" services_icon_image_2=\"pages/service-2.png\" services_title_3=\"Sell A Home\" services_description_3=\"Sell confidently with expert guidance and effective strategies, showcasing your property\'s best features for a successful sale.\" services_button_label_3=\"Learn More\" services_button_url_3=\"/\" services_icon_image_3=\"pages/service-3.png\" counters_quantity=\"1\" centered_content=\"1\" enable_lazy_loading=\"yes\"][/services]\n[testimonials style=\"1\" title=\"What’s People Say’s\" subtitle=\"Top Properties\" description=\"Our seasoned team excels in real estate with years of successful market navigation, offering informed decisions and optimal results.\" testimonial_ids=\"1,2,3,4\" background_color=\"#f7f7f7\" enable_lazy_loading=\"yes\"][/testimonials]\n[faqs title=\"Quick Answers To Questions\" subtitle=\"FAQs\" category_ids=\"1,2,3,4\" display_type=\"list\" limit=\"5\" expand_first_time=\"1\" enable_lazy_loading=\"yes\"][/faqs]\n[call-to-action title=\"List your Properties on Homzen, join Us Now!\" subtitle=\"Become Partners\" button_label=\"Become A Hosting\" button_url=\"/\" image=\"pages/call-to-action.png\" enable_lazy_loading=\"yes\"][/call-to-action]',1,NULL,'full-width',NULL,'published','2025-06-21 01:06:23','2025-06-21 01:06:23'),(9,'FAQs','[faqs category_ids=\"1,2,3\" display_type=\"group\" expand_first_time=\"1\" enable_lazy_loading=\"yes\"][/faqs]',1,NULL,NULL,NULL,'published','2025-06-21 01:06:23','2025-06-21 01:06:23'),(10,'About Us','[about-us title=\"Welcome To The &lt;br&gt; Homzen\" description=\"Welcome to Homzen, where we turn houses into homes and dreams into reality. At Homzen, we understand that a home is more than just a physical space; it\'s a place where memories are created, families grow, and life unfolds.\" button_label=\"Learn More\" button_url=\"/\" image=\"pages/about-us-video.jpg\" video_url=\"https://youtu.be/tRxGSHL8bI0\"][/about-us]\n[services style=\"3\" title=\"Discover What Sets Our Real Estate Expertise Apart\" subtitle=\"Why Choose Us\" description=\"At Homzen, our unwavering commitment lies in crafting unparalleled real estate journeys. Our seasoned professionals, armed with extensive market knowledge, walk alongside you through every phase of your property endeavor. We prioritize understanding your unique aspirations, tailoring our expertise to match your vision.\" checklist=\"Transparent Partnerships,Proven Expertise,Customized Solutions,Local Area Knowledge\" background_color=\"#f7f7f7\" services_quantity=\"3\" services_title_1=\"Buy A New Home\" services_description_1=\"Discover your dream home effortlessly. Explore diverse properties and expert guidance for a seamless buying experience.\" services_button_label_1=\"Learn More\" services_button_url_1=\"/\" services_icon_image_1=\"pages/service-1.png\" services_title_2=\"Rent A Home\" services_description_2=\"Discover your perfect rental effortlessly. Explore a diverse variety of listings tailored precisely to suit your unique lifestyle needs.\" services_button_label_2=\"Learn More\" services_button_url_2=\"/\" services_icon_image_2=\"pages/service-2.png\" services_title_3=\"Sell A Home\" services_description_3=\"Sell confidently with expert guidance and effective strategies, showcasing your property\'s best features for a successful sale.\" services_button_label_3=\"Learn More\" services_button_url_3=\"/\" services_icon_image_3=\"pages/service-3.png\" counters_quantity=\"1\" button_label=\"Contact Us\" button_url=\"/contact-us\" centered_content=\"\" enable_lazy_loading=\"yes\"][/services]\n[testimonials style=\"2\" title=\"What’s People Say’s\" subtitle=\"Top Properties\" testimonial_ids=\"1,2,3,4\" background_color=\"#f7f7f7\" enable_lazy_loading=\"yes\"][/testimonials]\n[image-slider background_color=\"transparent\" quantity=\"7\" name_1=\"GitHub\" image_1=\"partners/github.png\" url_1=\"https://github.com\" open_in_new_tab_1=\"\" name_2=\"LH.Tech\" image_2=\"partners/lhtech.png\" url_2=\"https://lhtech.com.my\" open_in_new_tab_2=\"\" name_3=\"Panadoxn\" image_3=\"partners/panadoxn.png\" url_3=\"/\" open_in_new_tab_3=\"\" name_4=\"Shangxi\" image_4=\"partners/shangxi.png\" url_4=\"/\" open_in_new_tab_4=\"\" name_5=\"Tyaalpha\" image_5=\"partners/tyaalpha.png\" url_5=\"/\" open_in_new_tab_5=\"\" name_6=\"Vanfaba\" image_6=\"partners/vanfaba.png\" url_6=\"/\" open_in_new_tab_6=\"\" name_7=\"Asana\" image_7=\"partners/asana.png\" url_7=\"https://asana.com\" open_in_new_tab_7=\"\" enable_lazy_loading=\"yes\"][/image-slider]\n[contact-form display_fields=\"phone,email,subject,address\" mandatory_fields=\"email\" style=\"2\" title=\"We\'re Always Eager To Hear From You!\" subtitle=\"Contact Us\" description=\"Sed ullamcorper nulla egestas at. Aenean eget tortor nec elit sagittis molestie. Pellentesque tempus massa in.r nulla egestas at. Aenean eget tortor nec elit sagittis mole\" background_image=\"pages/about-us-contact.jpg\"][/contact-form]\n[agents style=\"1\" title=\"Meet Our Agents\" subtitle=\"Our Teams\" account_ids=\"1,2,3,4\" items_per_row=\"4\" enable_lazy_loading=\"yes\"][/agents]\n[call-to-action title=\"List your Properties on Homzen, join Us Now!\" subtitle=\"Become Partners\" button_label=\"Become A Hosting\" button_url=\"/\" image=\"pages/call-to-action.png\" enable_lazy_loading=\"yes\"][/call-to-action]',1,NULL,'full-width',NULL,'published','2025-06-21 01:06:23','2025-06-21 01:06:23'),(11,'Pricing Plans','[pricing-plan title=\"Our Subscription\" subtitle=\"Pricing\" package_ids=\"1,2,3,4\" enable_lazy_loading=\"yes\"][/pricing-plan]\n[faqs title=\"Quick Answers To Questions\" subtitle=\"FAQs\" category_ids=\"1\" display_type=\"list\" limit=\"5\" expand_first_time=\"1\" enable_lazy_loading=\"yes\"][/faqs]',1,NULL,NULL,NULL,'published','2025-06-21 01:06:23','2025-06-21 01:06:23'),(12,'Privacy Policy','[content-tab title=\"Terms Of Use\" quantity=\"5\" title_1=\"Terms\" content_1=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sed euismod justo, sit amet efficitur dui. Aliquam sodales vestibulum velit, eget sollicitudin quam. Donec non aliquam eros. Etiam sit amet lectus vel justo dignissim condimentum. In malesuada neque quis libero laoreet posuere. In consequat vitae ligula quis rutrum. Morbi dolor orci, maximus a pulvinar sed, bibendum ac lacus. Suspendisse in consectetur lorem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam elementum, est sed interdum cursus, felis ex pharetra nisi, ut elementum tortor urna eu nulla. Donec rhoncus in purus quis blandit. Etiam eleifend metus at nunc ultricies facilisis. Morbi finibus tristique interdum. Nullam vel eleifend est, eu posuere risus. Vestibulum ligula ex, ullamcorper sit amet molestie\" title_2=\"Limitations\" content_2=\"Etiam eleifend metus at nunc ultricies facilisis. Morbi finibus tristique interdum. Nullam vel eleifend est, eu posuere risus. Vestibulum ligula ex, ullamcorper sit amet molestie a, finibus nec ex. Aliquam elementum, est sed interdum cursus, felis ex pharetra nisi, ut elementum tortor urna eu nulla. Donec rhoncus in purus quis blandit. Etiam eleifend metus at nunc ultricies facilisis. Nullam vel eleifend est, eu posuere risus. Vestibulum ligula ex, ullamcorper sit amet molestie a, finibus nec ex. Etiam eleifend metus at nunc ultricies facilisis. Morbi finibus tristique interdum. Nullam vel eleifend est, eu posuere risus. Vestibulum ligula ex, ullamcorper sit amet molestie\" title_3=\"Revisions and errata\" content_3=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sed euismod justo, sit amet efficitur dui. Aliquam sodales vestibulum velit, eget sollicitudin quam. Donec non aliquam eros. Etiam sit amet lectus vel justo dignissim condimentum. In malesuada neque quis libero laoreet posuere. In consequat vitae ligula quis rutrum. Morbi dolor orci, maximus a pulvinar sed, bibendum ac lacus. Suspendisse in consectetur lorem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam elementum, est sed interdum cursus, felis ex pharetra nisi, ut elementum tortor urna eu nulla. Donec rhoncus in purus quis Etiam eleifend metus at nunc ultricies facilisis. Morbi finibus tristique interdum. Nullam vel eleifend est, eu posuere risus. Vestibulum ligula ex, ullamcorper sit amet molestie a, finibus nec ex.\" title_4=\"Site terms of use modifications\" content_4=\"Etiam eleifend metus at nunc ultricies facilisis. Morbi finibus tristique interdum. Nullam vel eleifend est, eu posuere risus. Vestibulum ligula ex, ullamcorper sit amet molestie Aliquam elementum, est sed interdum cursus, felis ex pharetra nisi, ut elementum tortor urna eu nulla. Donec rhoncus in purus quis blandit. Etiam eleifend metus at nunc ultricies facilisis. Nullam vel eleifend est, eu posuere risus. Vestibulum ligula ex, ullamcorper sit amet molestie a, finibus nec ex. Etiam eleifend metus at nunc ultricies facilisis. Morbi finibus tristique interdum. Nullam vel eleifend est, eu posuere risus. Vestibulum ligula ex, ullamcorper sit amet molestie\" title_5=\"Risks\" content_5=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sed euismod justo, sit amet efficitur dui. Aliquam sodales vestibulum velit, eget sollicitudin quam. Donec non aliquam eros. Etiam sit amet lectus vel justo dignissim condimentum. In malesuada neque quis libero laoreet posuere. In consequat vitae ligula quis rutrum. Morbi dolor orci, maximus a pulvinar sed, bibendum ac lacus. Suspendisse in consectetur lorem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam elementum, est sed interdum cursus, felis ex pharetra nisi, ut elementum tortor urna eu nulla. Donec rhoncus in purus quis blandit. Etiam eleifend metus at nunc ultricies facilisis. Morbi finibus tristique interdum. Nullam vel eleifend est, eu posuere risus. Vestibulum ligula ex, ullamcorper sit amet molestie\" enable_lazy_loading=\"yes\"][/content-tab]',1,NULL,NULL,NULL,'published','2025-06-21 01:06:23','2025-06-21 01:06:23'),(13,'Coming Soon','[coming-soon title=\"Get Notified When We Launch\" countdown_time=\"2025-07-21 08:06:23\" address=\"58 Street Commercial Road Fratton, Australia\" hotline=\"+123456789\" business_hours=\"Mon – Sat: 8 am – 5 pm, Sunday: CLOSED\" show_social_links=\"1\" image=\"pages/properties.png\"][/coming-soon]',1,NULL,'no-layout',NULL,'published','2025-06-21 01:06:23','2025-06-21 01:06:23'),(14,'Properties','',1,NULL,'no-layout',NULL,'published','2025-06-21 01:06:23','2025-06-21 01:06:23'),(15,'Projects','',1,NULL,'no-layout',NULL,'published','2025-06-21 01:06:23','2025-06-21 01:06:23'),(16,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,NULL,NULL,'published','2025-06-21 01:06:23','2025-06-21 01:06:23');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_logs`
--

DROP TABLE IF EXISTS `payment_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `response` longtext COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_logs`
--

LOCK TABLES `payment_logs` WRITE;
/*!40000 ALTER TABLE `payment_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `payment_fee` decimal(15,2) DEFAULT '0.00',
  `order_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` bigint unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (6,1),(5,1),(6,2),(5,2),(6,3),(3,3),(2,4),(1,4),(2,5),(6,6),(2,6),(6,7),(3,7),(1,8),(5,8),(3,9),(4,9),(6,10),(5,10),(2,11),(3,11),(6,12),(4,12),(1,13),(5,13),(4,14),(5,14),(2,15),(3,15),(3,16),(2,16),(1,17),(4,17),(6,18),(1,18);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1),(2,1),(4,1),(8,2),(6,2),(7,2),(7,3),(3,3),(1,3),(6,4),(7,4),(3,4),(3,5),(6,5),(2,5),(2,6),(3,6),(8,7),(5,7),(3,7),(4,8),(5,8),(1,9),(2,9),(8,9),(8,10),(6,10),(2,10),(8,11),(7,11),(7,12),(1,12),(8,12),(3,13),(6,13),(4,13),(8,14),(3,14),(2,14),(1,15),(7,15),(3,15),(6,16),(5,16),(2,16),(4,17),(2,17),(1,17),(1,18),(3,18),(7,18);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_index` (`status`),
  KEY `posts_author_id_index` (`author_id`),
  KEY `posts_author_type_index` (`author_type`),
  KEY `posts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'Top 10 Tips for First-time Home Buyers','Dinah, and saying \"Come up again, dear!\" I shall have some fun now!\' thought Alice. The King turned pale, and shut his eyes.--\'Tell her about the temper of your nose-- What made you so awfully.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',0,'posts/3.jpg',489,NULL,'2025-06-21 01:06:17','2025-06-21 01:06:17'),(2,'How to Stage Your Home for a Quick Sale','Alice. \'It must have a prize herself, you know,\' said Alice aloud, addressing nobody in particular. \'She\'d soon fetch it here, lad!--Here, put \'em up at this corner--No, tie \'em together first--they.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',1,'posts/9.jpg',798,NULL,'2025-06-21 01:06:17','2025-06-21 01:06:17'),(3,'Understanding the Current Real Estate Market Trends','The pepper when he sneezes: He only does it matter to me whether you\'re nervous or not.\' \'I\'m a poor man, your Majesty,\' he began. \'You\'re a very humble tone, going down on their slates, when the.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',0,'posts/9.jpg',505,NULL,'2025-06-21 01:06:17','2025-06-21 01:06:17'),(4,'DIY Home Improvement Projects That Add Value','Hatter went on, without attending to her, so she turned away. \'Come back!\' the Caterpillar took the cauldron of soup off the fire, licking her paws and washing her face--and she is only a pack of.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',1,'posts/9.jpg',1351,NULL,'2025-06-21 01:06:17','2025-06-21 01:06:17'),(5,'A Beginner’s Guide to Real Estate Investing','CHORUS. \'Wow! wow! wow!\' While the Duchess was sitting between them, fast asleep, and the little golden key in the kitchen that did not get dry again: they had any dispute with the lobsters and the.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',1,'posts/6.jpg',1608,NULL,'2025-06-21 01:06:17','2025-06-21 01:06:17'),(6,'How to Choose the Right Neighborhood for Your Family','Mock Turtle, who looked at them with the bones and the little creature down, and nobody spoke for some time busily writing in his turn; and both creatures hid their faces in their mouths. So they.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',0,'posts/3.jpg',132,NULL,'2025-06-21 01:06:17','2025-06-21 01:06:17'),(7,'Luxury Homes: What to Look For','Alice. \'Why, there they lay sprawling about, reminding her very much of it appeared. \'I don\'t see any wine,\' she remarked. \'There isn\'t any,\' said the Mouse, in a VERY good opportunity for showing.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',1,'posts/4.jpg',2017,NULL,'2025-06-21 01:06:17','2025-06-21 01:06:17'),(8,'Property Management: Best Practices for Landlords','Alice: \'she\'s so extremely--\' Just then she walked off, leaving Alice alone with the Mouse only shook its head down, and the procession moved on, three of the court. (As that is rather a handsome.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',1,'posts/1.jpg',443,NULL,'2025-06-21 01:06:17','2025-06-21 01:06:17'),(9,'Renovation Ideas to Increase Your Home’s Value','Cat said, waving its tail about in the same thing a Lobster Quadrille is!\' \'No, indeed,\' said Alice. \'Why, SHE,\' said the Lory, who at last in the air. She did not notice this last remark. \'Of.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',0,'posts/3.jpg',1193,NULL,'2025-06-21 01:06:17','2025-06-21 01:06:17'),(10,'The Ultimate Guide to Buying a Vacation Home','Mock Turtle drew a long way. So they couldn\'t get them out with his head!\' or \'Off with her friend. When she got back to the Mock Turtle: \'why, if a fish came to ME, and told me you had been would.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',1,'posts/6.jpg',1070,NULL,'2025-06-21 01:06:17','2025-06-21 01:06:17'),(11,'How to Successfully Sell Your Home in a Buyer’s Market','The Cat only grinned when it saw Alice. It looked good-natured, she thought: still it was growing, and she jumped up in her life before, and behind it when she first saw the Mock Turtle to sing you.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',0,'posts/7.jpg',1026,NULL,'2025-06-21 01:06:18','2025-06-21 01:06:18'),(12,'Home Inspection: What to Expect and How to Prepare','So Alice began telling them her adventures from the Queen till she had brought herself down to look down and looked at each other for some time busily writing in his turn; and both the hedgehogs.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',1,'posts/2.jpg',2262,NULL,'2025-06-21 01:06:18','2025-06-21 01:06:18'),(13,'Eco-friendly Home Improvements for Sustainable Living','Alice. One of the doors of the house, and the whole party swam to the door. \'Call the next witness. It quite makes my forehead ache!\' Alice watched the Queen said--\' \'Get to your tea; it\'s getting.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',0,'posts/6.jpg',480,NULL,'2025-06-21 01:06:18','2025-06-21 01:06:18'),(14,'How to Navigate the Mortgage Process','Her first idea was that you couldn\'t cut off a little quicker. \'What a number of cucumber-frames there must be!\' thought Alice. \'I\'m glad I\'ve seen that done,\' thought Alice. One of the jurymen. \'It.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',0,'posts/1.jpg',1767,NULL,'2025-06-21 01:06:18','2025-06-21 01:06:18'),(15,'Real Estate Market Analysis: What You Need to Know','Caterpillar sternly. \'Explain yourself!\' \'I can\'t remember half of anger, and tried to look about her pet: \'Dinah\'s our cat. And she\'s such a long and a great thistle, to keep back the wandering.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',1,'posts/4.jpg',409,NULL,'2025-06-21 01:06:18','2025-06-21 01:06:18'),(16,'Tips for Renting Out Your Property','I\'ll come up: if not, I\'ll stay down here! It\'ll be no use denying it. I suppose I ought to be a footman because he taught us,\' said the Dodo, \'the best way you can;--but I must be getting home; the.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',0,'posts/7.jpg',360,NULL,'2025-06-21 01:06:18','2025-06-21 01:06:18'),(17,'Understanding Property Taxes and How to Lower Them','Who would not join the dance? Will you, won\'t you, will you join the dance? Will you, won\'t you, will you, won\'t you, will you, won\'t you join the dance?\"\' \'Thank you, it\'s a set of verses.\' \'Are.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',0,'posts/10.jpg',1883,NULL,'2025-06-21 01:06:18','2025-06-21 01:06:18'),(18,'The Benefits of Smart Home Technology','Then came a little pattering of feet in the after-time, be herself a grown woman; and how she would gather about her repeating \'YOU ARE OLD, FATHER WILLIAM,\' to the Duchess: \'what a clear way you.','<h5>Understanding Housing Stocks</h5>\n<p>\n    Housing stocks encompass companies involved in\n    various aspects of the real estate industry, including home builders, developers, and\n    related service providers. Factors influencing these stocks range from interest\n    rates and economic indicators to trends in home ownership rates.\n</p>\n<p>\n    Pay close attention to economic indicators such as\n    employment rates, GDP growth, and consumer confidence. A strong economy often\n    correlates with increased demand for housing, benefiting related stocks.\n</p>\n[content-quote message=\"Lower rates can boost home buying activity, benefiting housing stocks, while higher rates may have the opposite effect.\" author=\"Nelson Mandela\"][/content-quote]\n\n[content-image number_of_columns=\"col-2\" quantity=\"2\" image_1=\"posts/md-1.jpg\" image_2=\"posts/md-2.jpg\"][/content-image]\n\n<h5>Identify Emerging Trends</h5>\n<p>\n    Stay informed about emerging trends in the housing\n    market, such as the demand for sustainable homes, technological advancements, and\n    demographic shifts. Companies aligning with these trends may present attractive\n    investment opportunities.\n</p>\n<p>\n    Take a long-term investment approach if you believe in\n    the stability and growth potential of the housing sector. Look for companies with\n    solid fundamentals and a track record of success. For short-term traders, capitalize\n    on market fluctuations driven by economic reports, interest rate changes, or\n    industry-specific news. Keep a close eye on earnings reports and government housing\n    data releases.\n</p>\n\n<ul>\n    <li><strong>Affordability:</strong> Compared to larger apartments, 1BHK units are more budget-friendly, making them\n        ideal for individuals and young professionals.\n    </li>\n    <li><strong>Convenience:</strong> These apartments are easier to maintain and are perfect for those who prefer a minimalist\n        lifestyle.\n    </li>\n    <li><strong>Modern Amenities:</strong> Many 1BHK apartments in Dubai come with state-of-the-art facilities such as\n        gyms, swimming pools, and 24/7 security.\n    </li>\n</ul>\n','published',1,'Botble\\ACL\\Models\\User',1,'posts/4.jpg',471,NULL,'2025-06-21 01:06:18','2025-06-21 01:06:18');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `push_notification_recipients`
--

DROP TABLE IF EXISTS `push_notification_recipients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `push_notification_recipients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `push_notification_id` bigint unsigned NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `device_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `platform` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sent',
  `sent_at` timestamp NULL DEFAULT NULL,
  `delivered_at` timestamp NULL DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `clicked_at` timestamp NULL DEFAULT NULL,
  `fcm_response` json DEFAULT NULL,
  `error_message` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pnr_notification_user_index` (`push_notification_id`,`user_type`,`user_id`),
  KEY `pnr_user_status_index` (`user_type`,`user_id`,`status`),
  KEY `pnr_user_read_index` (`user_type`,`user_id`,`read_at`),
  KEY `pnr_status_index` (`status`),
  CONSTRAINT `push_notification_recipients_push_notification_id_foreign` FOREIGN KEY (`push_notification_id`) REFERENCES `push_notifications` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `push_notification_recipients`
--

LOCK TABLES `push_notification_recipients` WRITE;
/*!40000 ALTER TABLE `push_notification_recipients` DISABLE KEYS */;
/*!40000 ALTER TABLE `push_notification_recipients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `push_notifications`
--

DROP TABLE IF EXISTS `push_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `push_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'general',
  `target_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` json DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sent',
  `sent_count` int NOT NULL DEFAULT '0',
  `failed_count` int NOT NULL DEFAULT '0',
  `delivered_count` int NOT NULL DEFAULT '0',
  `read_count` int NOT NULL DEFAULT '0',
  `scheduled_at` timestamp NULL DEFAULT NULL,
  `sent_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `push_notifications_type_created_at_index` (`type`,`created_at`),
  KEY `push_notifications_status_scheduled_at_index` (`status`,`scheduled_at`),
  KEY `push_notifications_created_by_index` (`created_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `push_notifications`
--

LOCK TABLES `push_notifications` WRITE;
/*!40000 ALTER TABLE `push_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `push_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_account_activity_logs`
--

DROP TABLE IF EXISTS `re_account_activity_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_account_activity_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `reference_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `re_account_activity_logs_account_id_index` (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_account_activity_logs`
--

LOCK TABLES `re_account_activity_logs` WRITE;
/*!40000 ALTER TABLE `re_account_activity_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_account_activity_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_account_packages`
--

DROP TABLE IF EXISTS `re_account_packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_account_packages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `account_id` bigint unsigned NOT NULL,
  `package_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_account_packages`
--

LOCK TABLES `re_account_packages` WRITE;
/*!40000 ALTER TABLE `re_account_packages` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_account_packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_account_password_resets`
--

DROP TABLE IF EXISTS `re_account_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_account_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `re_account_password_resets_email_index` (`email`),
  KEY `re_account_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_account_password_resets`
--

LOCK TABLES `re_account_password_resets` WRITE;
/*!40000 ALTER TABLE `re_account_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_account_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_accounts`
--

DROP TABLE IF EXISTS `re_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_accounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `gender` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credits` int unsigned DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `is_public_profile` tinyint(1) NOT NULL DEFAULT '0',
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `state_id` bigint unsigned DEFAULT NULL,
  `city_id` bigint unsigned DEFAULT NULL,
  `approved_at` datetime DEFAULT NULL,
  `blocked_at` datetime DEFAULT NULL,
  `blocked_reason` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `re_accounts_email_unique` (`email`),
  UNIQUE KEY `re_accounts_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_accounts`
--

LOCK TABLES `re_accounts` WRITE;
/*!40000 ALTER TABLE `re_accounts` DISABLE KEYS */;
INSERT INTO `re_accounts` VALUES (1,'Robyn','Schultz','EVEN finish, if he had never.',NULL,'john.smith@botble.com','jacobidexter','$2y$12$TZ88JYen9YJ.vWauKaBXrOYFMVjt46LcUe646TmyJ9ermU1v7oQpq',13,'1971-03-06','+18287477856',10,'2025-06-21 08:06:05',NULL,NULL,'2025-06-21 01:06:05','2025-06-21 01:06:05',0,1,NULL,NULL,NULL,NULL,'2025-06-21 08:06:05',NULL,NULL),(2,'Bethany','Ryan','IT. It\'s HIM.\' \'I don\'t know.',NULL,'agent@botble.com','strosinlysanne','$2y$12$q9zy02TSzGPuX3hPxrnLI.C.SgYj.Em6clE4C6j/z3CbulvLtw7FC',19,'1985-05-01','+12392120926',10,'2025-06-21 08:06:05',NULL,NULL,'2025-06-21 01:06:05','2025-06-21 01:06:05',0,1,NULL,NULL,NULL,NULL,'2025-06-21 08:06:05',NULL,NULL),(3,'Alexis','Kunze','March Hare said to herself.',NULL,'meaghan96@stanton.com','qstreich','$2y$12$MzZRQkHAULftnd2nTCg8ReujcgxMamy5GQ69.GAEXmZaCf6Bp1nMu',18,'1993-11-23','+13033063173',8,'2025-06-21 08:06:05',NULL,NULL,'2025-06-21 01:06:06','2025-06-21 01:06:06',1,1,NULL,NULL,NULL,NULL,'2025-06-21 08:06:05',NULL,NULL),(4,'Grant','Hirthe','Queen had only one who got.',NULL,'claudie52@marquardt.com','ndibbert','$2y$12$q00nwW.jSWy50rqW6BqV0ezeSFK2lAQ5GlDwgmgaZegUsKryN3evq',13,'1999-07-05','+14789685643',2,'2025-06-21 08:06:05',NULL,NULL,'2025-06-21 01:06:06','2025-06-21 01:06:06',0,1,NULL,NULL,NULL,NULL,'2025-06-21 08:06:05',NULL,NULL),(5,'Linnea','Morissette','King triumphantly, pointing.',NULL,'stoltenberg.duncan@yahoo.com','fay78','$2y$12$Juv5pSuomBoMv4FK10QB4u3ND2ziQ.h23SHBpIn5of3542cEGXTRi',18,'1987-02-07','+12488934272',10,'2025-06-21 08:06:05',NULL,NULL,'2025-06-21 01:06:07','2025-06-21 01:06:07',1,1,NULL,NULL,NULL,NULL,'2025-06-21 08:06:05',NULL,NULL),(6,'Amara','Wisozk','Alice could think of any.',NULL,'rice.ian@crona.com','ibaumbach','$2y$12$SgnwlN40d9ocdVA/5nKYBeufkB7tB3zKaYoYnAePQTYEFOgt0y/ey',18,'1973-10-24','+14406702733',9,'2025-06-21 08:06:05',NULL,NULL,'2025-06-21 01:06:07','2025-06-21 01:06:07',1,1,NULL,NULL,NULL,NULL,'2025-06-21 08:06:05',NULL,NULL),(7,'Charlie','Okuneva','Queen: so she went on, \'and.',NULL,'mercedes.zieme@hotmail.com','sigmundgoyette','$2y$12$qHUPTbEN22L.pO5BS7m8beAU0S930lRqqxKxj0V2ZsIlJl3Ha1Crm',16,'2022-08-07','+18154994213',5,'2025-06-21 08:06:05',NULL,NULL,'2025-06-21 01:06:07','2025-06-21 01:06:07',0,1,NULL,NULL,NULL,NULL,'2025-06-21 08:06:05',NULL,NULL),(8,'Gonzalo','Waelchi','I\'ve fallen by this time.',NULL,'dooley.aidan@kunze.org','ukeebler','$2y$12$LPJ9x/ANwiMqFOzM/9nLn.3MSo3U1r1uQ1u0H9.F.GwADqx5UK9g.',18,'2004-07-08','+17479028713',2,'2025-06-21 08:06:05',NULL,NULL,'2025-06-21 01:06:08','2025-06-21 01:06:08',1,1,NULL,NULL,NULL,NULL,'2025-06-21 08:06:05',NULL,NULL),(9,'Dereck','Mante','I can kick a little!\' She.',NULL,'wunsch.lamar@hotmail.com','kavondickens','$2y$12$YtS4piW.sHkThslXRMqZ1OCIUpZ5o4hT6bF6QhNn0Ty6dG0OedMmm',17,'2000-07-08','+12768359184',8,'2025-06-21 08:06:05',NULL,NULL,'2025-06-21 01:06:08','2025-06-21 01:06:08',1,1,NULL,NULL,NULL,NULL,'2025-06-21 08:06:05',NULL,NULL),(10,'Luis','Mraz','He looked at them with one.',NULL,'emard.lexus@hotmail.com','kaleb02','$2y$12$NTBoyxY.0USSK3LDawYAs.ELyD3D2jDNMO73WLLZ22fBa5LA.gVJa',18,'1987-04-11','+16577566106',6,'2025-06-21 08:06:05',NULL,NULL,'2025-06-21 01:06:09','2025-06-21 01:06:09',1,1,NULL,NULL,NULL,NULL,'2025-06-21 08:06:05',NULL,NULL),(11,'Misty','Kunze','However, this bottle does. I.',NULL,'celia70@swaniawski.info','steubergerman','$2y$12$QNHBadhI0.uyjqqGJXsvC.zi3g.7tICH599Byi.0JkNdLtumr6/Xu',15,'1999-01-09','+12284150791',7,'2025-06-21 08:06:05',NULL,NULL,'2025-06-21 01:06:10','2025-06-21 01:06:10',0,1,NULL,NULL,NULL,NULL,'2025-06-21 08:06:05',NULL,NULL),(12,'Letha','Gorczany','Queen in a very grave voice.',NULL,'billie.huels@lemke.com','tvandervort','$2y$12$GJS1WulYAASm8E.E/mbFhO3tQKjlOfd7v5l0gIeng/Pp5FI0G3C5q',14,'1996-02-20','+17209584808',5,'2025-06-21 08:06:05',NULL,NULL,'2025-06-21 01:06:10','2025-06-21 01:06:10',1,1,NULL,NULL,NULL,NULL,'2025-06-21 08:06:05',NULL,NULL);
/*!40000 ALTER TABLE `re_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_accounts_translations`
--

DROP TABLE IF EXISTS `re_accounts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_accounts_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_accounts_id` bigint unsigned NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_accounts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_accounts_translations`
--

LOCK TABLES `re_accounts_translations` WRITE;
/*!40000 ALTER TABLE `re_accounts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_accounts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_categories`
--

DROP TABLE IF EXISTS `re_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_categories`
--

LOCK TABLES `re_categories` WRITE;
/*!40000 ALTER TABLE `re_categories` DISABLE KEYS */;
INSERT INTO `re_categories` VALUES (1,'Apartment',NULL,'published',0,1,'2025-06-21 01:06:03','2025-06-21 01:06:03',0),(2,'Villa',NULL,'published',1,0,'2025-06-21 01:06:03','2025-06-21 01:06:03',0),(3,'Condo',NULL,'published',2,0,'2025-06-21 01:06:03','2025-06-21 01:06:03',0),(4,'House',NULL,'published',3,0,'2025-06-21 01:06:03','2025-06-21 01:06:03',0),(5,'Land',NULL,'published',4,0,'2025-06-21 01:06:03','2025-06-21 01:06:03',0),(6,'Commercial property',NULL,'published',5,0,'2025-06-21 01:06:03','2025-06-21 01:06:03',0);
/*!40000 ALTER TABLE `re_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_categories_translations`
--

DROP TABLE IF EXISTS `re_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_categories_translations`
--

LOCK TABLES `re_categories_translations` WRITE;
/*!40000 ALTER TABLE `re_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_consult_custom_field_options`
--

DROP TABLE IF EXISTS `re_consult_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_consult_custom_field_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` bigint unsigned NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_consult_custom_field_options`
--

LOCK TABLES `re_consult_custom_field_options` WRITE;
/*!40000 ALTER TABLE `re_consult_custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_consult_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_consult_custom_field_options_translations`
--

DROP TABLE IF EXISTS `re_consult_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_consult_custom_field_options_translations` (
  `re_consult_custom_field_options_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_consult_custom_field_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_consult_custom_field_options_translations`
--

LOCK TABLES `re_consult_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `re_consult_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_consult_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_consult_custom_fields`
--

DROP TABLE IF EXISTS `re_consult_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_consult_custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '999',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_consult_custom_fields`
--

LOCK TABLES `re_consult_custom_fields` WRITE;
/*!40000 ALTER TABLE `re_consult_custom_fields` DISABLE KEYS */;
INSERT INTO `re_consult_custom_fields` VALUES (1,'date',0,'Schedule a Tour (optional)',NULL,999,'published','2025-06-21 01:06:26','2025-06-21 01:06:26');
/*!40000 ALTER TABLE `re_consult_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_consult_custom_fields_translations`
--

DROP TABLE IF EXISTS `re_consult_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_consult_custom_fields_translations` (
  `re_consult_custom_fields_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_consult_custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_consult_custom_fields_translations`
--

LOCK TABLES `re_consult_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `re_consult_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_consult_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_consults`
--

DROP TABLE IF EXISTS `re_consults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_consults` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_id` bigint unsigned DEFAULT NULL,
  `property_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `custom_fields` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_consults`
--

LOCK TABLES `re_consults` WRITE;
/*!40000 ALTER TABLE `re_consults` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_consults` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_coupons`
--

DROP TABLE IF EXISTS `re_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_coupons` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(8,2) NOT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `expires_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `re_coupons_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_coupons`
--

LOCK TABLES `re_coupons` WRITE;
/*!40000 ALTER TABLE `re_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_currencies`
--

DROP TABLE IF EXISTS `re_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned NOT NULL DEFAULT '0',
  `order` int unsigned NOT NULL DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_currencies`
--

LOCK TABLES `re_currencies` WRITE;
/*!40000 ALTER TABLE `re_currencies` DISABLE KEYS */;
INSERT INTO `re_currencies` VALUES (1,'USD','$',1,0,0,1,1,'2025-06-21 01:06:03','2025-06-21 01:06:03'),(2,'EUR','€',0,0,1,0,0.91,'2025-06-21 01:06:03','2025-06-21 01:06:03'),(3,'VND','₫',0,0,2,0,23717.5,'2025-06-21 01:06:03','2025-06-21 01:06:03');
/*!40000 ALTER TABLE `re_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_custom_field_options`
--

DROP TABLE IF EXISTS `re_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_custom_field_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` bigint unsigned NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_custom_field_options`
--

LOCK TABLES `re_custom_field_options` WRITE;
/*!40000 ALTER TABLE `re_custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_custom_field_options_translations`
--

DROP TABLE IF EXISTS `re_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_custom_field_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_custom_field_options_id` bigint unsigned NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_custom_field_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_custom_field_options_translations`
--

LOCK TABLES `re_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `re_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_custom_field_values`
--

DROP TABLE IF EXISTS `re_custom_field_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_custom_field_values` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `custom_field_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `re_custom_field_values_reference_type_reference_id_index` (`reference_type`,`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_custom_field_values`
--

LOCK TABLES `re_custom_field_values` WRITE;
/*!40000 ALTER TABLE `re_custom_field_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_custom_field_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_custom_field_values_translations`
--

DROP TABLE IF EXISTS `re_custom_field_values_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_custom_field_values_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_custom_field_values_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_custom_field_values_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_custom_field_values_translations`
--

LOCK TABLES `re_custom_field_values_translations` WRITE;
/*!40000 ALTER TABLE `re_custom_field_values_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_custom_field_values_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_custom_fields`
--

DROP TABLE IF EXISTS `re_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `is_global` tinyint(1) NOT NULL DEFAULT '0',
  `authorable_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authorable_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `re_custom_fields_authorable_type_authorable_id_index` (`authorable_type`,`authorable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_custom_fields`
--

LOCK TABLES `re_custom_fields` WRITE;
/*!40000 ALTER TABLE `re_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_custom_fields_translations`
--

DROP TABLE IF EXISTS `re_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_custom_fields_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_custom_fields_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_custom_fields_translations`
--

LOCK TABLES `re_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `re_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_facilities`
--

DROP TABLE IF EXISTS `re_facilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_facilities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_facilities`
--

LOCK TABLES `re_facilities` WRITE;
/*!40000 ALTER TABLE `re_facilities` DISABLE KEYS */;
INSERT INTO `re_facilities` VALUES (1,'Hospital','ti ti-hospital','published',NULL,NULL),(2,'Super Market','ti ti-shopping-cart','published',NULL,NULL),(3,'School','ti ti-school','published',NULL,NULL),(4,'Entertainment','ti ti-movie','published',NULL,NULL),(5,'Pharmacy','ti ti-pill','published',NULL,NULL),(6,'Airport','ti ti-plane-departure','published',NULL,NULL),(7,'Railways','ti ti-train','published',NULL,NULL),(8,'Bus Stop','ti ti-bus','published',NULL,NULL),(9,'Beach','ti ti-beach','published',NULL,NULL),(10,'Mall','ti ti-shopping-cart','published',NULL,NULL),(11,'Bank','ti ti-building-bank','published',NULL,NULL);
/*!40000 ALTER TABLE `re_facilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_facilities_distances`
--

DROP TABLE IF EXISTS `re_facilities_distances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_facilities_distances` (
  `facility_id` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `distance` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`facility_id`,`reference_id`,`reference_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_facilities_distances`
--

LOCK TABLES `re_facilities_distances` WRITE;
/*!40000 ALTER TABLE `re_facilities_distances` DISABLE KEYS */;
INSERT INTO `re_facilities_distances` VALUES (1,1,'Botble\\RealEstate\\Models\\Project','16km'),(1,1,'Botble\\RealEstate\\Models\\Property','7km'),(1,2,'Botble\\RealEstate\\Models\\Project','6km'),(1,2,'Botble\\RealEstate\\Models\\Property','16km'),(1,3,'Botble\\RealEstate\\Models\\Project','17km'),(1,3,'Botble\\RealEstate\\Models\\Property','3km'),(1,4,'Botble\\RealEstate\\Models\\Project','8km'),(1,4,'Botble\\RealEstate\\Models\\Property','19km'),(1,5,'Botble\\RealEstate\\Models\\Project','8km'),(1,5,'Botble\\RealEstate\\Models\\Property','1km'),(1,6,'Botble\\RealEstate\\Models\\Project','17km'),(1,6,'Botble\\RealEstate\\Models\\Property','11km'),(1,7,'Botble\\RealEstate\\Models\\Project','3km'),(1,7,'Botble\\RealEstate\\Models\\Property','14km'),(1,8,'Botble\\RealEstate\\Models\\Project','6km'),(1,8,'Botble\\RealEstate\\Models\\Property','19km'),(1,9,'Botble\\RealEstate\\Models\\Project','19km'),(1,9,'Botble\\RealEstate\\Models\\Property','16km'),(1,10,'Botble\\RealEstate\\Models\\Project','10km'),(1,10,'Botble\\RealEstate\\Models\\Property','9km'),(1,11,'Botble\\RealEstate\\Models\\Project','9km'),(1,11,'Botble\\RealEstate\\Models\\Property','16km'),(1,12,'Botble\\RealEstate\\Models\\Project','11km'),(1,12,'Botble\\RealEstate\\Models\\Property','8km'),(1,13,'Botble\\RealEstate\\Models\\Project','1km'),(1,13,'Botble\\RealEstate\\Models\\Property','11km'),(1,14,'Botble\\RealEstate\\Models\\Project','16km'),(1,14,'Botble\\RealEstate\\Models\\Property','9km'),(1,15,'Botble\\RealEstate\\Models\\Project','16km'),(1,15,'Botble\\RealEstate\\Models\\Property','5km'),(1,16,'Botble\\RealEstate\\Models\\Project','20km'),(1,16,'Botble\\RealEstate\\Models\\Property','15km'),(1,17,'Botble\\RealEstate\\Models\\Project','13km'),(1,17,'Botble\\RealEstate\\Models\\Property','8km'),(1,18,'Botble\\RealEstate\\Models\\Project','6km'),(1,18,'Botble\\RealEstate\\Models\\Property','2km'),(1,19,'Botble\\RealEstate\\Models\\Property','4km'),(1,20,'Botble\\RealEstate\\Models\\Property','18km'),(1,21,'Botble\\RealEstate\\Models\\Property','7km'),(1,22,'Botble\\RealEstate\\Models\\Property','2km'),(1,23,'Botble\\RealEstate\\Models\\Property','6km'),(1,24,'Botble\\RealEstate\\Models\\Property','13km'),(1,25,'Botble\\RealEstate\\Models\\Property','15km'),(1,26,'Botble\\RealEstate\\Models\\Property','11km'),(1,27,'Botble\\RealEstate\\Models\\Property','7km'),(1,28,'Botble\\RealEstate\\Models\\Property','18km'),(1,29,'Botble\\RealEstate\\Models\\Property','18km'),(1,30,'Botble\\RealEstate\\Models\\Property','11km'),(1,31,'Botble\\RealEstate\\Models\\Property','11km'),(1,32,'Botble\\RealEstate\\Models\\Property','4km'),(1,33,'Botble\\RealEstate\\Models\\Property','18km'),(1,34,'Botble\\RealEstate\\Models\\Property','15km'),(1,35,'Botble\\RealEstate\\Models\\Property','7km'),(1,36,'Botble\\RealEstate\\Models\\Property','12km'),(1,37,'Botble\\RealEstate\\Models\\Property','8km'),(1,38,'Botble\\RealEstate\\Models\\Property','3km'),(1,39,'Botble\\RealEstate\\Models\\Property','15km'),(1,40,'Botble\\RealEstate\\Models\\Property','4km'),(1,41,'Botble\\RealEstate\\Models\\Property','2km'),(1,42,'Botble\\RealEstate\\Models\\Property','8km'),(1,43,'Botble\\RealEstate\\Models\\Property','9km'),(1,44,'Botble\\RealEstate\\Models\\Property','1km'),(1,45,'Botble\\RealEstate\\Models\\Property','6km'),(1,46,'Botble\\RealEstate\\Models\\Property','19km'),(1,47,'Botble\\RealEstate\\Models\\Property','6km'),(1,48,'Botble\\RealEstate\\Models\\Property','15km'),(1,49,'Botble\\RealEstate\\Models\\Property','17km'),(1,50,'Botble\\RealEstate\\Models\\Property','16km'),(1,51,'Botble\\RealEstate\\Models\\Property','17km'),(1,52,'Botble\\RealEstate\\Models\\Property','12km'),(1,53,'Botble\\RealEstate\\Models\\Property','5km'),(1,54,'Botble\\RealEstate\\Models\\Property','1km'),(1,55,'Botble\\RealEstate\\Models\\Property','6km'),(1,56,'Botble\\RealEstate\\Models\\Property','7km'),(1,57,'Botble\\RealEstate\\Models\\Property','20km'),(1,58,'Botble\\RealEstate\\Models\\Property','5km'),(1,59,'Botble\\RealEstate\\Models\\Property','2km'),(1,60,'Botble\\RealEstate\\Models\\Property','20km'),(1,61,'Botble\\RealEstate\\Models\\Property','13km'),(2,1,'Botble\\RealEstate\\Models\\Project','2km'),(2,1,'Botble\\RealEstate\\Models\\Property','15km'),(2,2,'Botble\\RealEstate\\Models\\Project','3km'),(2,2,'Botble\\RealEstate\\Models\\Property','9km'),(2,3,'Botble\\RealEstate\\Models\\Project','15km'),(2,3,'Botble\\RealEstate\\Models\\Property','16km'),(2,4,'Botble\\RealEstate\\Models\\Project','20km'),(2,4,'Botble\\RealEstate\\Models\\Property','13km'),(2,5,'Botble\\RealEstate\\Models\\Project','9km'),(2,5,'Botble\\RealEstate\\Models\\Property','19km'),(2,6,'Botble\\RealEstate\\Models\\Project','16km'),(2,6,'Botble\\RealEstate\\Models\\Property','18km'),(2,7,'Botble\\RealEstate\\Models\\Project','10km'),(2,7,'Botble\\RealEstate\\Models\\Property','2km'),(2,8,'Botble\\RealEstate\\Models\\Project','9km'),(2,8,'Botble\\RealEstate\\Models\\Property','12km'),(2,9,'Botble\\RealEstate\\Models\\Project','1km'),(2,9,'Botble\\RealEstate\\Models\\Property','7km'),(2,10,'Botble\\RealEstate\\Models\\Project','11km'),(2,10,'Botble\\RealEstate\\Models\\Property','11km'),(2,11,'Botble\\RealEstate\\Models\\Project','4km'),(2,11,'Botble\\RealEstate\\Models\\Property','14km'),(2,12,'Botble\\RealEstate\\Models\\Project','11km'),(2,12,'Botble\\RealEstate\\Models\\Property','4km'),(2,13,'Botble\\RealEstate\\Models\\Project','1km'),(2,13,'Botble\\RealEstate\\Models\\Property','3km'),(2,14,'Botble\\RealEstate\\Models\\Project','3km'),(2,14,'Botble\\RealEstate\\Models\\Property','16km'),(2,15,'Botble\\RealEstate\\Models\\Project','6km'),(2,15,'Botble\\RealEstate\\Models\\Property','7km'),(2,16,'Botble\\RealEstate\\Models\\Project','8km'),(2,16,'Botble\\RealEstate\\Models\\Property','16km'),(2,17,'Botble\\RealEstate\\Models\\Project','11km'),(2,17,'Botble\\RealEstate\\Models\\Property','4km'),(2,18,'Botble\\RealEstate\\Models\\Project','15km'),(2,18,'Botble\\RealEstate\\Models\\Property','4km'),(2,19,'Botble\\RealEstate\\Models\\Property','2km'),(2,20,'Botble\\RealEstate\\Models\\Property','5km'),(2,21,'Botble\\RealEstate\\Models\\Property','1km'),(2,22,'Botble\\RealEstate\\Models\\Property','9km'),(2,23,'Botble\\RealEstate\\Models\\Property','1km'),(2,24,'Botble\\RealEstate\\Models\\Property','11km'),(2,25,'Botble\\RealEstate\\Models\\Property','13km'),(2,26,'Botble\\RealEstate\\Models\\Property','2km'),(2,27,'Botble\\RealEstate\\Models\\Property','10km'),(2,28,'Botble\\RealEstate\\Models\\Property','14km'),(2,29,'Botble\\RealEstate\\Models\\Property','14km'),(2,30,'Botble\\RealEstate\\Models\\Property','11km'),(2,31,'Botble\\RealEstate\\Models\\Property','9km'),(2,32,'Botble\\RealEstate\\Models\\Property','14km'),(2,33,'Botble\\RealEstate\\Models\\Property','19km'),(2,34,'Botble\\RealEstate\\Models\\Property','15km'),(2,35,'Botble\\RealEstate\\Models\\Property','17km'),(2,36,'Botble\\RealEstate\\Models\\Property','18km'),(2,37,'Botble\\RealEstate\\Models\\Property','1km'),(2,38,'Botble\\RealEstate\\Models\\Property','13km'),(2,39,'Botble\\RealEstate\\Models\\Property','9km'),(2,40,'Botble\\RealEstate\\Models\\Property','10km'),(2,41,'Botble\\RealEstate\\Models\\Property','10km'),(2,42,'Botble\\RealEstate\\Models\\Property','8km'),(2,43,'Botble\\RealEstate\\Models\\Property','6km'),(2,44,'Botble\\RealEstate\\Models\\Property','17km'),(2,45,'Botble\\RealEstate\\Models\\Property','15km'),(2,46,'Botble\\RealEstate\\Models\\Property','19km'),(2,47,'Botble\\RealEstate\\Models\\Property','5km'),(2,48,'Botble\\RealEstate\\Models\\Property','5km'),(2,49,'Botble\\RealEstate\\Models\\Property','14km'),(2,50,'Botble\\RealEstate\\Models\\Property','6km'),(2,51,'Botble\\RealEstate\\Models\\Property','18km'),(2,52,'Botble\\RealEstate\\Models\\Property','5km'),(2,53,'Botble\\RealEstate\\Models\\Property','20km'),(2,54,'Botble\\RealEstate\\Models\\Property','14km'),(2,55,'Botble\\RealEstate\\Models\\Property','13km'),(2,56,'Botble\\RealEstate\\Models\\Property','8km'),(2,57,'Botble\\RealEstate\\Models\\Property','9km'),(2,58,'Botble\\RealEstate\\Models\\Property','11km'),(2,59,'Botble\\RealEstate\\Models\\Property','20km'),(2,60,'Botble\\RealEstate\\Models\\Property','14km'),(2,61,'Botble\\RealEstate\\Models\\Property','6km'),(3,1,'Botble\\RealEstate\\Models\\Project','18km'),(3,1,'Botble\\RealEstate\\Models\\Property','9km'),(3,2,'Botble\\RealEstate\\Models\\Project','2km'),(3,2,'Botble\\RealEstate\\Models\\Property','13km'),(3,3,'Botble\\RealEstate\\Models\\Project','4km'),(3,3,'Botble\\RealEstate\\Models\\Property','4km'),(3,4,'Botble\\RealEstate\\Models\\Project','9km'),(3,4,'Botble\\RealEstate\\Models\\Property','4km'),(3,5,'Botble\\RealEstate\\Models\\Project','17km'),(3,5,'Botble\\RealEstate\\Models\\Property','9km'),(3,6,'Botble\\RealEstate\\Models\\Project','14km'),(3,6,'Botble\\RealEstate\\Models\\Property','16km'),(3,7,'Botble\\RealEstate\\Models\\Project','8km'),(3,7,'Botble\\RealEstate\\Models\\Property','19km'),(3,8,'Botble\\RealEstate\\Models\\Project','15km'),(3,8,'Botble\\RealEstate\\Models\\Property','2km'),(3,9,'Botble\\RealEstate\\Models\\Project','2km'),(3,9,'Botble\\RealEstate\\Models\\Property','15km'),(3,10,'Botble\\RealEstate\\Models\\Project','11km'),(3,10,'Botble\\RealEstate\\Models\\Property','3km'),(3,11,'Botble\\RealEstate\\Models\\Project','6km'),(3,11,'Botble\\RealEstate\\Models\\Property','10km'),(3,12,'Botble\\RealEstate\\Models\\Project','6km'),(3,12,'Botble\\RealEstate\\Models\\Property','13km'),(3,13,'Botble\\RealEstate\\Models\\Project','4km'),(3,13,'Botble\\RealEstate\\Models\\Property','11km'),(3,14,'Botble\\RealEstate\\Models\\Project','12km'),(3,14,'Botble\\RealEstate\\Models\\Property','19km'),(3,15,'Botble\\RealEstate\\Models\\Project','2km'),(3,15,'Botble\\RealEstate\\Models\\Property','12km'),(3,16,'Botble\\RealEstate\\Models\\Project','7km'),(3,16,'Botble\\RealEstate\\Models\\Property','9km'),(3,17,'Botble\\RealEstate\\Models\\Project','2km'),(3,17,'Botble\\RealEstate\\Models\\Property','4km'),(3,18,'Botble\\RealEstate\\Models\\Project','7km'),(3,18,'Botble\\RealEstate\\Models\\Property','17km'),(3,19,'Botble\\RealEstate\\Models\\Property','9km'),(3,20,'Botble\\RealEstate\\Models\\Property','5km'),(3,21,'Botble\\RealEstate\\Models\\Property','2km'),(3,22,'Botble\\RealEstate\\Models\\Property','14km'),(3,23,'Botble\\RealEstate\\Models\\Property','18km'),(3,24,'Botble\\RealEstate\\Models\\Property','4km'),(3,25,'Botble\\RealEstate\\Models\\Property','14km'),(3,26,'Botble\\RealEstate\\Models\\Property','19km'),(3,27,'Botble\\RealEstate\\Models\\Property','1km'),(3,28,'Botble\\RealEstate\\Models\\Property','16km'),(3,29,'Botble\\RealEstate\\Models\\Property','13km'),(3,30,'Botble\\RealEstate\\Models\\Property','14km'),(3,31,'Botble\\RealEstate\\Models\\Property','1km'),(3,32,'Botble\\RealEstate\\Models\\Property','20km'),(3,33,'Botble\\RealEstate\\Models\\Property','20km'),(3,34,'Botble\\RealEstate\\Models\\Property','14km'),(3,35,'Botble\\RealEstate\\Models\\Property','8km'),(3,36,'Botble\\RealEstate\\Models\\Property','12km'),(3,37,'Botble\\RealEstate\\Models\\Property','16km'),(3,38,'Botble\\RealEstate\\Models\\Property','16km'),(3,39,'Botble\\RealEstate\\Models\\Property','20km'),(3,40,'Botble\\RealEstate\\Models\\Property','16km'),(3,41,'Botble\\RealEstate\\Models\\Property','15km'),(3,42,'Botble\\RealEstate\\Models\\Property','4km'),(3,43,'Botble\\RealEstate\\Models\\Property','20km'),(3,44,'Botble\\RealEstate\\Models\\Property','18km'),(3,45,'Botble\\RealEstate\\Models\\Property','12km'),(3,46,'Botble\\RealEstate\\Models\\Property','2km'),(3,47,'Botble\\RealEstate\\Models\\Property','2km'),(3,48,'Botble\\RealEstate\\Models\\Property','6km'),(3,49,'Botble\\RealEstate\\Models\\Property','14km'),(3,50,'Botble\\RealEstate\\Models\\Property','8km'),(3,51,'Botble\\RealEstate\\Models\\Property','13km'),(3,52,'Botble\\RealEstate\\Models\\Property','17km'),(3,53,'Botble\\RealEstate\\Models\\Property','12km'),(3,54,'Botble\\RealEstate\\Models\\Property','8km'),(3,55,'Botble\\RealEstate\\Models\\Property','12km'),(3,56,'Botble\\RealEstate\\Models\\Property','17km'),(3,57,'Botble\\RealEstate\\Models\\Property','9km'),(3,58,'Botble\\RealEstate\\Models\\Property','18km'),(3,59,'Botble\\RealEstate\\Models\\Property','17km'),(3,60,'Botble\\RealEstate\\Models\\Property','9km'),(3,61,'Botble\\RealEstate\\Models\\Property','13km'),(4,1,'Botble\\RealEstate\\Models\\Project','11km'),(4,1,'Botble\\RealEstate\\Models\\Property','15km'),(4,2,'Botble\\RealEstate\\Models\\Project','20km'),(4,2,'Botble\\RealEstate\\Models\\Property','17km'),(4,3,'Botble\\RealEstate\\Models\\Project','19km'),(4,3,'Botble\\RealEstate\\Models\\Property','17km'),(4,4,'Botble\\RealEstate\\Models\\Project','1km'),(4,4,'Botble\\RealEstate\\Models\\Property','15km'),(4,5,'Botble\\RealEstate\\Models\\Project','16km'),(4,5,'Botble\\RealEstate\\Models\\Property','19km'),(4,6,'Botble\\RealEstate\\Models\\Project','6km'),(4,6,'Botble\\RealEstate\\Models\\Property','5km'),(4,7,'Botble\\RealEstate\\Models\\Project','6km'),(4,7,'Botble\\RealEstate\\Models\\Property','18km'),(4,8,'Botble\\RealEstate\\Models\\Project','5km'),(4,8,'Botble\\RealEstate\\Models\\Property','13km'),(4,9,'Botble\\RealEstate\\Models\\Project','10km'),(4,9,'Botble\\RealEstate\\Models\\Property','14km'),(4,10,'Botble\\RealEstate\\Models\\Project','18km'),(4,10,'Botble\\RealEstate\\Models\\Property','9km'),(4,11,'Botble\\RealEstate\\Models\\Project','17km'),(4,11,'Botble\\RealEstate\\Models\\Property','4km'),(4,12,'Botble\\RealEstate\\Models\\Project','11km'),(4,12,'Botble\\RealEstate\\Models\\Property','4km'),(4,13,'Botble\\RealEstate\\Models\\Project','11km'),(4,13,'Botble\\RealEstate\\Models\\Property','17km'),(4,14,'Botble\\RealEstate\\Models\\Project','5km'),(4,14,'Botble\\RealEstate\\Models\\Property','6km'),(4,15,'Botble\\RealEstate\\Models\\Project','11km'),(4,15,'Botble\\RealEstate\\Models\\Property','7km'),(4,16,'Botble\\RealEstate\\Models\\Project','12km'),(4,16,'Botble\\RealEstate\\Models\\Property','18km'),(4,17,'Botble\\RealEstate\\Models\\Project','5km'),(4,17,'Botble\\RealEstate\\Models\\Property','10km'),(4,18,'Botble\\RealEstate\\Models\\Project','19km'),(4,18,'Botble\\RealEstate\\Models\\Property','12km'),(4,19,'Botble\\RealEstate\\Models\\Property','19km'),(4,20,'Botble\\RealEstate\\Models\\Property','18km'),(4,21,'Botble\\RealEstate\\Models\\Property','4km'),(4,22,'Botble\\RealEstate\\Models\\Property','17km'),(4,23,'Botble\\RealEstate\\Models\\Property','16km'),(4,24,'Botble\\RealEstate\\Models\\Property','16km'),(4,25,'Botble\\RealEstate\\Models\\Property','13km'),(4,26,'Botble\\RealEstate\\Models\\Property','19km'),(4,27,'Botble\\RealEstate\\Models\\Property','9km'),(4,28,'Botble\\RealEstate\\Models\\Property','19km'),(4,29,'Botble\\RealEstate\\Models\\Property','5km'),(4,30,'Botble\\RealEstate\\Models\\Property','2km'),(4,31,'Botble\\RealEstate\\Models\\Property','16km'),(4,32,'Botble\\RealEstate\\Models\\Property','17km'),(4,33,'Botble\\RealEstate\\Models\\Property','17km'),(4,34,'Botble\\RealEstate\\Models\\Property','5km'),(4,35,'Botble\\RealEstate\\Models\\Property','3km'),(4,36,'Botble\\RealEstate\\Models\\Property','14km'),(4,37,'Botble\\RealEstate\\Models\\Property','4km'),(4,38,'Botble\\RealEstate\\Models\\Property','9km'),(4,39,'Botble\\RealEstate\\Models\\Property','3km'),(4,40,'Botble\\RealEstate\\Models\\Property','5km'),(4,41,'Botble\\RealEstate\\Models\\Property','3km'),(4,42,'Botble\\RealEstate\\Models\\Property','4km'),(4,43,'Botble\\RealEstate\\Models\\Property','3km'),(4,44,'Botble\\RealEstate\\Models\\Property','16km'),(4,45,'Botble\\RealEstate\\Models\\Property','16km'),(4,46,'Botble\\RealEstate\\Models\\Property','9km'),(4,47,'Botble\\RealEstate\\Models\\Property','16km'),(4,48,'Botble\\RealEstate\\Models\\Property','4km'),(4,49,'Botble\\RealEstate\\Models\\Property','12km'),(4,50,'Botble\\RealEstate\\Models\\Property','3km'),(4,51,'Botble\\RealEstate\\Models\\Property','10km'),(4,52,'Botble\\RealEstate\\Models\\Property','7km'),(4,53,'Botble\\RealEstate\\Models\\Property','5km'),(4,54,'Botble\\RealEstate\\Models\\Property','20km'),(4,55,'Botble\\RealEstate\\Models\\Property','12km'),(4,56,'Botble\\RealEstate\\Models\\Property','3km'),(4,57,'Botble\\RealEstate\\Models\\Property','15km'),(4,58,'Botble\\RealEstate\\Models\\Property','19km'),(4,59,'Botble\\RealEstate\\Models\\Property','4km'),(4,60,'Botble\\RealEstate\\Models\\Property','7km'),(4,61,'Botble\\RealEstate\\Models\\Property','6km'),(5,1,'Botble\\RealEstate\\Models\\Project','20km'),(5,1,'Botble\\RealEstate\\Models\\Property','2km'),(5,2,'Botble\\RealEstate\\Models\\Project','9km'),(5,2,'Botble\\RealEstate\\Models\\Property','17km'),(5,3,'Botble\\RealEstate\\Models\\Project','11km'),(5,3,'Botble\\RealEstate\\Models\\Property','2km'),(5,4,'Botble\\RealEstate\\Models\\Project','16km'),(5,4,'Botble\\RealEstate\\Models\\Property','6km'),(5,5,'Botble\\RealEstate\\Models\\Project','4km'),(5,5,'Botble\\RealEstate\\Models\\Property','5km'),(5,6,'Botble\\RealEstate\\Models\\Project','12km'),(5,6,'Botble\\RealEstate\\Models\\Property','9km'),(5,7,'Botble\\RealEstate\\Models\\Project','19km'),(5,7,'Botble\\RealEstate\\Models\\Property','19km'),(5,8,'Botble\\RealEstate\\Models\\Project','17km'),(5,8,'Botble\\RealEstate\\Models\\Property','17km'),(5,9,'Botble\\RealEstate\\Models\\Project','15km'),(5,9,'Botble\\RealEstate\\Models\\Property','20km'),(5,10,'Botble\\RealEstate\\Models\\Project','10km'),(5,10,'Botble\\RealEstate\\Models\\Property','11km'),(5,11,'Botble\\RealEstate\\Models\\Project','10km'),(5,11,'Botble\\RealEstate\\Models\\Property','3km'),(5,12,'Botble\\RealEstate\\Models\\Project','8km'),(5,12,'Botble\\RealEstate\\Models\\Property','1km'),(5,13,'Botble\\RealEstate\\Models\\Project','6km'),(5,13,'Botble\\RealEstate\\Models\\Property','17km'),(5,14,'Botble\\RealEstate\\Models\\Project','15km'),(5,14,'Botble\\RealEstate\\Models\\Property','5km'),(5,15,'Botble\\RealEstate\\Models\\Project','14km'),(5,15,'Botble\\RealEstate\\Models\\Property','7km'),(5,16,'Botble\\RealEstate\\Models\\Project','4km'),(5,16,'Botble\\RealEstate\\Models\\Property','4km'),(5,17,'Botble\\RealEstate\\Models\\Project','18km'),(5,17,'Botble\\RealEstate\\Models\\Property','17km'),(5,18,'Botble\\RealEstate\\Models\\Project','15km'),(5,18,'Botble\\RealEstate\\Models\\Property','18km'),(5,19,'Botble\\RealEstate\\Models\\Property','17km'),(5,20,'Botble\\RealEstate\\Models\\Property','18km'),(5,21,'Botble\\RealEstate\\Models\\Property','8km'),(5,22,'Botble\\RealEstate\\Models\\Property','9km'),(5,23,'Botble\\RealEstate\\Models\\Property','14km'),(5,24,'Botble\\RealEstate\\Models\\Property','5km'),(5,25,'Botble\\RealEstate\\Models\\Property','8km'),(5,26,'Botble\\RealEstate\\Models\\Property','16km'),(5,27,'Botble\\RealEstate\\Models\\Property','19km'),(5,28,'Botble\\RealEstate\\Models\\Property','6km'),(5,29,'Botble\\RealEstate\\Models\\Property','6km'),(5,30,'Botble\\RealEstate\\Models\\Property','8km'),(5,31,'Botble\\RealEstate\\Models\\Property','7km'),(5,32,'Botble\\RealEstate\\Models\\Property','20km'),(5,33,'Botble\\RealEstate\\Models\\Property','9km'),(5,34,'Botble\\RealEstate\\Models\\Property','15km'),(5,35,'Botble\\RealEstate\\Models\\Property','9km'),(5,36,'Botble\\RealEstate\\Models\\Property','19km'),(5,37,'Botble\\RealEstate\\Models\\Property','14km'),(5,38,'Botble\\RealEstate\\Models\\Property','15km'),(5,39,'Botble\\RealEstate\\Models\\Property','10km'),(5,40,'Botble\\RealEstate\\Models\\Property','6km'),(5,41,'Botble\\RealEstate\\Models\\Property','11km'),(5,42,'Botble\\RealEstate\\Models\\Property','16km'),(5,43,'Botble\\RealEstate\\Models\\Property','1km'),(5,44,'Botble\\RealEstate\\Models\\Property','6km'),(5,45,'Botble\\RealEstate\\Models\\Property','4km'),(5,46,'Botble\\RealEstate\\Models\\Property','7km'),(5,47,'Botble\\RealEstate\\Models\\Property','3km'),(5,48,'Botble\\RealEstate\\Models\\Property','3km'),(5,49,'Botble\\RealEstate\\Models\\Property','16km'),(5,50,'Botble\\RealEstate\\Models\\Property','14km'),(5,51,'Botble\\RealEstate\\Models\\Property','6km'),(5,52,'Botble\\RealEstate\\Models\\Property','9km'),(5,53,'Botble\\RealEstate\\Models\\Property','20km'),(5,54,'Botble\\RealEstate\\Models\\Property','4km'),(5,55,'Botble\\RealEstate\\Models\\Property','20km'),(5,56,'Botble\\RealEstate\\Models\\Property','3km'),(5,57,'Botble\\RealEstate\\Models\\Property','19km'),(5,58,'Botble\\RealEstate\\Models\\Property','7km'),(5,59,'Botble\\RealEstate\\Models\\Property','15km'),(5,60,'Botble\\RealEstate\\Models\\Property','3km'),(5,61,'Botble\\RealEstate\\Models\\Property','10km'),(6,1,'Botble\\RealEstate\\Models\\Project','20km'),(6,1,'Botble\\RealEstate\\Models\\Property','13km'),(6,2,'Botble\\RealEstate\\Models\\Project','19km'),(6,2,'Botble\\RealEstate\\Models\\Property','2km'),(6,3,'Botble\\RealEstate\\Models\\Project','15km'),(6,3,'Botble\\RealEstate\\Models\\Property','9km'),(6,4,'Botble\\RealEstate\\Models\\Project','9km'),(6,4,'Botble\\RealEstate\\Models\\Property','15km'),(6,5,'Botble\\RealEstate\\Models\\Project','1km'),(6,5,'Botble\\RealEstate\\Models\\Property','5km'),(6,6,'Botble\\RealEstate\\Models\\Project','16km'),(6,6,'Botble\\RealEstate\\Models\\Property','3km'),(6,7,'Botble\\RealEstate\\Models\\Project','12km'),(6,7,'Botble\\RealEstate\\Models\\Property','18km'),(6,8,'Botble\\RealEstate\\Models\\Project','1km'),(6,8,'Botble\\RealEstate\\Models\\Property','1km'),(6,9,'Botble\\RealEstate\\Models\\Project','1km'),(6,9,'Botble\\RealEstate\\Models\\Property','17km'),(6,10,'Botble\\RealEstate\\Models\\Project','6km'),(6,10,'Botble\\RealEstate\\Models\\Property','13km'),(6,11,'Botble\\RealEstate\\Models\\Project','4km'),(6,11,'Botble\\RealEstate\\Models\\Property','12km'),(6,12,'Botble\\RealEstate\\Models\\Project','9km'),(6,12,'Botble\\RealEstate\\Models\\Property','15km'),(6,13,'Botble\\RealEstate\\Models\\Project','20km'),(6,13,'Botble\\RealEstate\\Models\\Property','5km'),(6,14,'Botble\\RealEstate\\Models\\Project','1km'),(6,14,'Botble\\RealEstate\\Models\\Property','6km'),(6,15,'Botble\\RealEstate\\Models\\Project','10km'),(6,15,'Botble\\RealEstate\\Models\\Property','13km'),(6,16,'Botble\\RealEstate\\Models\\Project','20km'),(6,16,'Botble\\RealEstate\\Models\\Property','15km'),(6,17,'Botble\\RealEstate\\Models\\Project','20km'),(6,17,'Botble\\RealEstate\\Models\\Property','15km'),(6,18,'Botble\\RealEstate\\Models\\Project','2km'),(6,18,'Botble\\RealEstate\\Models\\Property','14km'),(6,19,'Botble\\RealEstate\\Models\\Property','10km'),(6,20,'Botble\\RealEstate\\Models\\Property','16km'),(6,21,'Botble\\RealEstate\\Models\\Property','15km'),(6,22,'Botble\\RealEstate\\Models\\Property','9km'),(6,23,'Botble\\RealEstate\\Models\\Property','9km'),(6,24,'Botble\\RealEstate\\Models\\Property','7km'),(6,25,'Botble\\RealEstate\\Models\\Property','17km'),(6,26,'Botble\\RealEstate\\Models\\Property','7km'),(6,27,'Botble\\RealEstate\\Models\\Property','14km'),(6,28,'Botble\\RealEstate\\Models\\Property','9km'),(6,29,'Botble\\RealEstate\\Models\\Property','12km'),(6,30,'Botble\\RealEstate\\Models\\Property','1km'),(6,31,'Botble\\RealEstate\\Models\\Property','6km'),(6,32,'Botble\\RealEstate\\Models\\Property','18km'),(6,33,'Botble\\RealEstate\\Models\\Property','20km'),(6,34,'Botble\\RealEstate\\Models\\Property','6km'),(6,35,'Botble\\RealEstate\\Models\\Property','17km'),(6,36,'Botble\\RealEstate\\Models\\Property','8km'),(6,37,'Botble\\RealEstate\\Models\\Property','14km'),(6,38,'Botble\\RealEstate\\Models\\Property','9km'),(6,39,'Botble\\RealEstate\\Models\\Property','12km'),(6,40,'Botble\\RealEstate\\Models\\Property','10km'),(6,41,'Botble\\RealEstate\\Models\\Property','16km'),(6,42,'Botble\\RealEstate\\Models\\Property','7km'),(6,43,'Botble\\RealEstate\\Models\\Property','1km'),(6,44,'Botble\\RealEstate\\Models\\Property','12km'),(6,45,'Botble\\RealEstate\\Models\\Property','11km'),(6,46,'Botble\\RealEstate\\Models\\Property','2km'),(6,47,'Botble\\RealEstate\\Models\\Property','12km'),(6,48,'Botble\\RealEstate\\Models\\Property','19km'),(6,49,'Botble\\RealEstate\\Models\\Property','1km'),(6,50,'Botble\\RealEstate\\Models\\Property','8km'),(6,51,'Botble\\RealEstate\\Models\\Property','2km'),(6,52,'Botble\\RealEstate\\Models\\Property','17km'),(6,53,'Botble\\RealEstate\\Models\\Property','3km'),(6,54,'Botble\\RealEstate\\Models\\Property','15km'),(6,55,'Botble\\RealEstate\\Models\\Property','13km'),(6,56,'Botble\\RealEstate\\Models\\Property','8km'),(6,57,'Botble\\RealEstate\\Models\\Property','2km'),(6,58,'Botble\\RealEstate\\Models\\Property','17km'),(6,59,'Botble\\RealEstate\\Models\\Property','2km'),(6,60,'Botble\\RealEstate\\Models\\Property','14km'),(6,61,'Botble\\RealEstate\\Models\\Property','18km'),(7,1,'Botble\\RealEstate\\Models\\Project','18km'),(7,1,'Botble\\RealEstate\\Models\\Property','20km'),(7,2,'Botble\\RealEstate\\Models\\Project','19km'),(7,2,'Botble\\RealEstate\\Models\\Property','2km'),(7,3,'Botble\\RealEstate\\Models\\Project','6km'),(7,3,'Botble\\RealEstate\\Models\\Property','9km'),(7,4,'Botble\\RealEstate\\Models\\Project','7km'),(7,4,'Botble\\RealEstate\\Models\\Property','1km'),(7,5,'Botble\\RealEstate\\Models\\Project','7km'),(7,5,'Botble\\RealEstate\\Models\\Property','13km'),(7,6,'Botble\\RealEstate\\Models\\Project','18km'),(7,6,'Botble\\RealEstate\\Models\\Property','3km'),(7,7,'Botble\\RealEstate\\Models\\Project','18km'),(7,7,'Botble\\RealEstate\\Models\\Property','8km'),(7,8,'Botble\\RealEstate\\Models\\Project','8km'),(7,8,'Botble\\RealEstate\\Models\\Property','19km'),(7,9,'Botble\\RealEstate\\Models\\Project','4km'),(7,9,'Botble\\RealEstate\\Models\\Property','19km'),(7,10,'Botble\\RealEstate\\Models\\Project','5km'),(7,10,'Botble\\RealEstate\\Models\\Property','20km'),(7,11,'Botble\\RealEstate\\Models\\Project','18km'),(7,11,'Botble\\RealEstate\\Models\\Property','9km'),(7,12,'Botble\\RealEstate\\Models\\Project','20km'),(7,12,'Botble\\RealEstate\\Models\\Property','1km'),(7,13,'Botble\\RealEstate\\Models\\Project','4km'),(7,13,'Botble\\RealEstate\\Models\\Property','10km'),(7,14,'Botble\\RealEstate\\Models\\Project','11km'),(7,14,'Botble\\RealEstate\\Models\\Property','8km'),(7,15,'Botble\\RealEstate\\Models\\Project','2km'),(7,15,'Botble\\RealEstate\\Models\\Property','8km'),(7,16,'Botble\\RealEstate\\Models\\Project','10km'),(7,16,'Botble\\RealEstate\\Models\\Property','16km'),(7,17,'Botble\\RealEstate\\Models\\Project','3km'),(7,17,'Botble\\RealEstate\\Models\\Property','2km'),(7,18,'Botble\\RealEstate\\Models\\Project','8km'),(7,18,'Botble\\RealEstate\\Models\\Property','18km'),(7,19,'Botble\\RealEstate\\Models\\Property','10km'),(7,20,'Botble\\RealEstate\\Models\\Property','14km'),(7,21,'Botble\\RealEstate\\Models\\Property','15km'),(7,22,'Botble\\RealEstate\\Models\\Property','1km'),(7,23,'Botble\\RealEstate\\Models\\Property','17km'),(7,24,'Botble\\RealEstate\\Models\\Property','11km'),(7,25,'Botble\\RealEstate\\Models\\Property','8km'),(7,26,'Botble\\RealEstate\\Models\\Property','20km'),(7,27,'Botble\\RealEstate\\Models\\Property','14km'),(7,28,'Botble\\RealEstate\\Models\\Property','19km'),(7,29,'Botble\\RealEstate\\Models\\Property','1km'),(7,30,'Botble\\RealEstate\\Models\\Property','20km'),(7,31,'Botble\\RealEstate\\Models\\Property','7km'),(7,32,'Botble\\RealEstate\\Models\\Property','14km'),(7,33,'Botble\\RealEstate\\Models\\Property','1km'),(7,34,'Botble\\RealEstate\\Models\\Property','15km'),(7,35,'Botble\\RealEstate\\Models\\Property','18km'),(7,36,'Botble\\RealEstate\\Models\\Property','15km'),(7,37,'Botble\\RealEstate\\Models\\Property','20km'),(7,38,'Botble\\RealEstate\\Models\\Property','8km'),(7,39,'Botble\\RealEstate\\Models\\Property','19km'),(7,40,'Botble\\RealEstate\\Models\\Property','2km'),(7,41,'Botble\\RealEstate\\Models\\Property','8km'),(7,42,'Botble\\RealEstate\\Models\\Property','4km'),(7,43,'Botble\\RealEstate\\Models\\Property','1km'),(7,44,'Botble\\RealEstate\\Models\\Property','4km'),(7,45,'Botble\\RealEstate\\Models\\Property','17km'),(7,46,'Botble\\RealEstate\\Models\\Property','17km'),(7,47,'Botble\\RealEstate\\Models\\Property','16km'),(7,48,'Botble\\RealEstate\\Models\\Property','18km'),(7,49,'Botble\\RealEstate\\Models\\Property','11km'),(7,50,'Botble\\RealEstate\\Models\\Property','11km'),(7,51,'Botble\\RealEstate\\Models\\Property','10km'),(7,52,'Botble\\RealEstate\\Models\\Property','19km'),(7,53,'Botble\\RealEstate\\Models\\Property','18km'),(7,54,'Botble\\RealEstate\\Models\\Property','16km'),(7,55,'Botble\\RealEstate\\Models\\Property','11km'),(7,56,'Botble\\RealEstate\\Models\\Property','4km'),(7,57,'Botble\\RealEstate\\Models\\Property','10km'),(7,58,'Botble\\RealEstate\\Models\\Property','3km'),(7,59,'Botble\\RealEstate\\Models\\Property','12km'),(7,60,'Botble\\RealEstate\\Models\\Property','19km'),(7,61,'Botble\\RealEstate\\Models\\Property','7km'),(8,1,'Botble\\RealEstate\\Models\\Project','14km'),(8,1,'Botble\\RealEstate\\Models\\Property','15km'),(8,2,'Botble\\RealEstate\\Models\\Project','15km'),(8,2,'Botble\\RealEstate\\Models\\Property','7km'),(8,3,'Botble\\RealEstate\\Models\\Project','12km'),(8,3,'Botble\\RealEstate\\Models\\Property','6km'),(8,4,'Botble\\RealEstate\\Models\\Project','7km'),(8,4,'Botble\\RealEstate\\Models\\Property','4km'),(8,5,'Botble\\RealEstate\\Models\\Project','12km'),(8,5,'Botble\\RealEstate\\Models\\Property','3km'),(8,6,'Botble\\RealEstate\\Models\\Project','12km'),(8,6,'Botble\\RealEstate\\Models\\Property','19km'),(8,7,'Botble\\RealEstate\\Models\\Project','19km'),(8,7,'Botble\\RealEstate\\Models\\Property','20km'),(8,8,'Botble\\RealEstate\\Models\\Project','13km'),(8,8,'Botble\\RealEstate\\Models\\Property','1km'),(8,9,'Botble\\RealEstate\\Models\\Project','19km'),(8,9,'Botble\\RealEstate\\Models\\Property','2km'),(8,10,'Botble\\RealEstate\\Models\\Project','3km'),(8,10,'Botble\\RealEstate\\Models\\Property','5km'),(8,11,'Botble\\RealEstate\\Models\\Project','17km'),(8,11,'Botble\\RealEstate\\Models\\Property','17km'),(8,12,'Botble\\RealEstate\\Models\\Project','9km'),(8,12,'Botble\\RealEstate\\Models\\Property','10km'),(8,13,'Botble\\RealEstate\\Models\\Project','15km'),(8,13,'Botble\\RealEstate\\Models\\Property','6km'),(8,14,'Botble\\RealEstate\\Models\\Project','20km'),(8,14,'Botble\\RealEstate\\Models\\Property','7km'),(8,15,'Botble\\RealEstate\\Models\\Project','5km'),(8,15,'Botble\\RealEstate\\Models\\Property','20km'),(8,16,'Botble\\RealEstate\\Models\\Project','16km'),(8,16,'Botble\\RealEstate\\Models\\Property','12km'),(8,17,'Botble\\RealEstate\\Models\\Project','11km'),(8,17,'Botble\\RealEstate\\Models\\Property','7km'),(8,18,'Botble\\RealEstate\\Models\\Project','4km'),(8,18,'Botble\\RealEstate\\Models\\Property','6km'),(8,19,'Botble\\RealEstate\\Models\\Property','14km'),(8,20,'Botble\\RealEstate\\Models\\Property','5km'),(8,21,'Botble\\RealEstate\\Models\\Property','2km'),(8,22,'Botble\\RealEstate\\Models\\Property','8km'),(8,23,'Botble\\RealEstate\\Models\\Property','20km'),(8,24,'Botble\\RealEstate\\Models\\Property','11km'),(8,25,'Botble\\RealEstate\\Models\\Property','12km'),(8,26,'Botble\\RealEstate\\Models\\Property','12km'),(8,27,'Botble\\RealEstate\\Models\\Property','3km'),(8,28,'Botble\\RealEstate\\Models\\Property','4km'),(8,29,'Botble\\RealEstate\\Models\\Property','8km'),(8,30,'Botble\\RealEstate\\Models\\Property','9km'),(8,31,'Botble\\RealEstate\\Models\\Property','10km'),(8,32,'Botble\\RealEstate\\Models\\Property','9km'),(8,33,'Botble\\RealEstate\\Models\\Property','20km'),(8,34,'Botble\\RealEstate\\Models\\Property','11km'),(8,35,'Botble\\RealEstate\\Models\\Property','15km'),(8,36,'Botble\\RealEstate\\Models\\Property','18km'),(8,37,'Botble\\RealEstate\\Models\\Property','19km'),(8,38,'Botble\\RealEstate\\Models\\Property','14km'),(8,39,'Botble\\RealEstate\\Models\\Property','1km'),(8,40,'Botble\\RealEstate\\Models\\Property','13km'),(8,41,'Botble\\RealEstate\\Models\\Property','12km'),(8,42,'Botble\\RealEstate\\Models\\Property','19km'),(8,43,'Botble\\RealEstate\\Models\\Property','6km'),(8,44,'Botble\\RealEstate\\Models\\Property','17km'),(8,45,'Botble\\RealEstate\\Models\\Property','5km'),(8,46,'Botble\\RealEstate\\Models\\Property','16km'),(8,47,'Botble\\RealEstate\\Models\\Property','19km'),(8,48,'Botble\\RealEstate\\Models\\Property','8km'),(8,49,'Botble\\RealEstate\\Models\\Property','9km'),(8,50,'Botble\\RealEstate\\Models\\Property','17km'),(8,51,'Botble\\RealEstate\\Models\\Property','10km'),(8,52,'Botble\\RealEstate\\Models\\Property','9km'),(8,53,'Botble\\RealEstate\\Models\\Property','14km'),(8,54,'Botble\\RealEstate\\Models\\Property','14km'),(8,55,'Botble\\RealEstate\\Models\\Property','3km'),(8,56,'Botble\\RealEstate\\Models\\Property','20km'),(8,57,'Botble\\RealEstate\\Models\\Property','1km'),(8,58,'Botble\\RealEstate\\Models\\Property','14km'),(8,59,'Botble\\RealEstate\\Models\\Property','18km'),(8,60,'Botble\\RealEstate\\Models\\Property','11km'),(8,61,'Botble\\RealEstate\\Models\\Property','3km'),(9,1,'Botble\\RealEstate\\Models\\Project','10km'),(9,1,'Botble\\RealEstate\\Models\\Property','5km'),(9,2,'Botble\\RealEstate\\Models\\Project','11km'),(9,2,'Botble\\RealEstate\\Models\\Property','18km'),(9,3,'Botble\\RealEstate\\Models\\Project','17km'),(9,3,'Botble\\RealEstate\\Models\\Property','17km'),(9,4,'Botble\\RealEstate\\Models\\Project','19km'),(9,4,'Botble\\RealEstate\\Models\\Property','9km'),(9,5,'Botble\\RealEstate\\Models\\Project','13km'),(9,5,'Botble\\RealEstate\\Models\\Property','1km'),(9,6,'Botble\\RealEstate\\Models\\Project','3km'),(9,6,'Botble\\RealEstate\\Models\\Property','5km'),(9,7,'Botble\\RealEstate\\Models\\Project','13km'),(9,7,'Botble\\RealEstate\\Models\\Property','16km'),(9,8,'Botble\\RealEstate\\Models\\Project','19km'),(9,8,'Botble\\RealEstate\\Models\\Property','1km'),(9,9,'Botble\\RealEstate\\Models\\Project','4km'),(9,9,'Botble\\RealEstate\\Models\\Property','9km'),(9,10,'Botble\\RealEstate\\Models\\Project','5km'),(9,10,'Botble\\RealEstate\\Models\\Property','2km'),(9,11,'Botble\\RealEstate\\Models\\Project','9km'),(9,11,'Botble\\RealEstate\\Models\\Property','12km'),(9,12,'Botble\\RealEstate\\Models\\Project','15km'),(9,12,'Botble\\RealEstate\\Models\\Property','2km'),(9,13,'Botble\\RealEstate\\Models\\Project','20km'),(9,13,'Botble\\RealEstate\\Models\\Property','16km'),(9,14,'Botble\\RealEstate\\Models\\Project','14km'),(9,14,'Botble\\RealEstate\\Models\\Property','7km'),(9,15,'Botble\\RealEstate\\Models\\Project','9km'),(9,15,'Botble\\RealEstate\\Models\\Property','11km'),(9,16,'Botble\\RealEstate\\Models\\Project','17km'),(9,16,'Botble\\RealEstate\\Models\\Property','5km'),(9,17,'Botble\\RealEstate\\Models\\Project','18km'),(9,17,'Botble\\RealEstate\\Models\\Property','7km'),(9,18,'Botble\\RealEstate\\Models\\Project','19km'),(9,18,'Botble\\RealEstate\\Models\\Property','20km'),(9,19,'Botble\\RealEstate\\Models\\Property','19km'),(9,20,'Botble\\RealEstate\\Models\\Property','17km'),(9,21,'Botble\\RealEstate\\Models\\Property','2km'),(9,22,'Botble\\RealEstate\\Models\\Property','14km'),(9,23,'Botble\\RealEstate\\Models\\Property','10km'),(9,24,'Botble\\RealEstate\\Models\\Property','19km'),(9,25,'Botble\\RealEstate\\Models\\Property','7km'),(9,26,'Botble\\RealEstate\\Models\\Property','6km'),(9,27,'Botble\\RealEstate\\Models\\Property','20km'),(9,28,'Botble\\RealEstate\\Models\\Property','5km'),(9,29,'Botble\\RealEstate\\Models\\Property','6km'),(9,30,'Botble\\RealEstate\\Models\\Property','7km'),(9,31,'Botble\\RealEstate\\Models\\Property','16km'),(9,32,'Botble\\RealEstate\\Models\\Property','15km'),(9,33,'Botble\\RealEstate\\Models\\Property','18km'),(9,34,'Botble\\RealEstate\\Models\\Property','19km'),(9,35,'Botble\\RealEstate\\Models\\Property','12km'),(9,36,'Botble\\RealEstate\\Models\\Property','8km'),(9,37,'Botble\\RealEstate\\Models\\Property','17km'),(9,38,'Botble\\RealEstate\\Models\\Property','18km'),(9,39,'Botble\\RealEstate\\Models\\Property','5km'),(9,40,'Botble\\RealEstate\\Models\\Property','8km'),(9,41,'Botble\\RealEstate\\Models\\Property','4km'),(9,42,'Botble\\RealEstate\\Models\\Property','8km'),(9,43,'Botble\\RealEstate\\Models\\Property','7km'),(9,44,'Botble\\RealEstate\\Models\\Property','13km'),(9,45,'Botble\\RealEstate\\Models\\Property','20km'),(9,46,'Botble\\RealEstate\\Models\\Property','5km'),(9,47,'Botble\\RealEstate\\Models\\Property','2km'),(9,48,'Botble\\RealEstate\\Models\\Property','19km'),(9,49,'Botble\\RealEstate\\Models\\Property','3km'),(9,50,'Botble\\RealEstate\\Models\\Property','12km'),(9,51,'Botble\\RealEstate\\Models\\Property','15km'),(9,52,'Botble\\RealEstate\\Models\\Property','16km'),(9,53,'Botble\\RealEstate\\Models\\Property','20km'),(9,54,'Botble\\RealEstate\\Models\\Property','10km'),(9,55,'Botble\\RealEstate\\Models\\Property','12km'),(9,56,'Botble\\RealEstate\\Models\\Property','1km'),(9,57,'Botble\\RealEstate\\Models\\Property','15km'),(9,58,'Botble\\RealEstate\\Models\\Property','10km'),(9,59,'Botble\\RealEstate\\Models\\Property','18km'),(9,60,'Botble\\RealEstate\\Models\\Property','15km'),(9,61,'Botble\\RealEstate\\Models\\Property','11km'),(10,1,'Botble\\RealEstate\\Models\\Project','9km'),(10,1,'Botble\\RealEstate\\Models\\Property','15km'),(10,2,'Botble\\RealEstate\\Models\\Project','20km'),(10,2,'Botble\\RealEstate\\Models\\Property','4km'),(10,3,'Botble\\RealEstate\\Models\\Project','3km'),(10,3,'Botble\\RealEstate\\Models\\Property','1km'),(10,4,'Botble\\RealEstate\\Models\\Project','2km'),(10,4,'Botble\\RealEstate\\Models\\Property','2km'),(10,5,'Botble\\RealEstate\\Models\\Project','18km'),(10,5,'Botble\\RealEstate\\Models\\Property','8km'),(10,6,'Botble\\RealEstate\\Models\\Project','16km'),(10,6,'Botble\\RealEstate\\Models\\Property','12km'),(10,7,'Botble\\RealEstate\\Models\\Project','7km'),(10,7,'Botble\\RealEstate\\Models\\Property','18km'),(10,8,'Botble\\RealEstate\\Models\\Project','19km'),(10,8,'Botble\\RealEstate\\Models\\Property','7km'),(10,9,'Botble\\RealEstate\\Models\\Project','6km'),(10,9,'Botble\\RealEstate\\Models\\Property','13km'),(10,10,'Botble\\RealEstate\\Models\\Project','5km'),(10,10,'Botble\\RealEstate\\Models\\Property','17km'),(10,11,'Botble\\RealEstate\\Models\\Project','4km'),(10,11,'Botble\\RealEstate\\Models\\Property','12km'),(10,12,'Botble\\RealEstate\\Models\\Project','9km'),(10,12,'Botble\\RealEstate\\Models\\Property','9km'),(10,13,'Botble\\RealEstate\\Models\\Project','18km'),(10,13,'Botble\\RealEstate\\Models\\Property','1km'),(10,14,'Botble\\RealEstate\\Models\\Project','14km'),(10,14,'Botble\\RealEstate\\Models\\Property','15km'),(10,15,'Botble\\RealEstate\\Models\\Project','6km'),(10,15,'Botble\\RealEstate\\Models\\Property','9km'),(10,16,'Botble\\RealEstate\\Models\\Project','1km'),(10,16,'Botble\\RealEstate\\Models\\Property','10km'),(10,17,'Botble\\RealEstate\\Models\\Project','12km'),(10,17,'Botble\\RealEstate\\Models\\Property','16km'),(10,18,'Botble\\RealEstate\\Models\\Project','1km'),(10,18,'Botble\\RealEstate\\Models\\Property','10km'),(10,19,'Botble\\RealEstate\\Models\\Property','17km'),(10,20,'Botble\\RealEstate\\Models\\Property','20km'),(10,21,'Botble\\RealEstate\\Models\\Property','10km'),(10,22,'Botble\\RealEstate\\Models\\Property','1km'),(10,23,'Botble\\RealEstate\\Models\\Property','14km'),(10,24,'Botble\\RealEstate\\Models\\Property','1km'),(10,25,'Botble\\RealEstate\\Models\\Property','5km'),(10,26,'Botble\\RealEstate\\Models\\Property','5km'),(10,27,'Botble\\RealEstate\\Models\\Property','15km'),(10,28,'Botble\\RealEstate\\Models\\Property','6km'),(10,29,'Botble\\RealEstate\\Models\\Property','5km'),(10,30,'Botble\\RealEstate\\Models\\Property','11km'),(10,31,'Botble\\RealEstate\\Models\\Property','6km'),(10,32,'Botble\\RealEstate\\Models\\Property','2km'),(10,33,'Botble\\RealEstate\\Models\\Property','17km'),(10,34,'Botble\\RealEstate\\Models\\Property','13km'),(10,35,'Botble\\RealEstate\\Models\\Property','4km'),(10,36,'Botble\\RealEstate\\Models\\Property','10km'),(10,37,'Botble\\RealEstate\\Models\\Property','7km'),(10,38,'Botble\\RealEstate\\Models\\Property','18km'),(10,39,'Botble\\RealEstate\\Models\\Property','16km'),(10,40,'Botble\\RealEstate\\Models\\Property','14km'),(10,41,'Botble\\RealEstate\\Models\\Property','7km'),(10,42,'Botble\\RealEstate\\Models\\Property','6km'),(10,43,'Botble\\RealEstate\\Models\\Property','7km'),(10,44,'Botble\\RealEstate\\Models\\Property','1km'),(10,45,'Botble\\RealEstate\\Models\\Property','9km'),(10,46,'Botble\\RealEstate\\Models\\Property','19km'),(10,47,'Botble\\RealEstate\\Models\\Property','12km'),(10,48,'Botble\\RealEstate\\Models\\Property','13km'),(10,49,'Botble\\RealEstate\\Models\\Property','9km'),(10,50,'Botble\\RealEstate\\Models\\Property','2km'),(10,51,'Botble\\RealEstate\\Models\\Property','7km'),(10,52,'Botble\\RealEstate\\Models\\Property','8km'),(10,53,'Botble\\RealEstate\\Models\\Property','8km'),(10,54,'Botble\\RealEstate\\Models\\Property','12km'),(10,55,'Botble\\RealEstate\\Models\\Property','5km'),(10,56,'Botble\\RealEstate\\Models\\Property','1km'),(10,57,'Botble\\RealEstate\\Models\\Property','18km'),(10,58,'Botble\\RealEstate\\Models\\Property','8km'),(10,59,'Botble\\RealEstate\\Models\\Property','15km'),(10,60,'Botble\\RealEstate\\Models\\Property','4km'),(10,61,'Botble\\RealEstate\\Models\\Property','4km'),(11,1,'Botble\\RealEstate\\Models\\Project','20km'),(11,1,'Botble\\RealEstate\\Models\\Property','13km'),(11,2,'Botble\\RealEstate\\Models\\Project','5km'),(11,2,'Botble\\RealEstate\\Models\\Property','11km'),(11,3,'Botble\\RealEstate\\Models\\Project','18km'),(11,3,'Botble\\RealEstate\\Models\\Property','12km'),(11,4,'Botble\\RealEstate\\Models\\Project','14km'),(11,4,'Botble\\RealEstate\\Models\\Property','9km'),(11,5,'Botble\\RealEstate\\Models\\Project','7km'),(11,5,'Botble\\RealEstate\\Models\\Property','1km'),(11,6,'Botble\\RealEstate\\Models\\Project','14km'),(11,6,'Botble\\RealEstate\\Models\\Property','4km'),(11,7,'Botble\\RealEstate\\Models\\Project','14km'),(11,7,'Botble\\RealEstate\\Models\\Property','17km'),(11,8,'Botble\\RealEstate\\Models\\Project','14km'),(11,8,'Botble\\RealEstate\\Models\\Property','6km'),(11,9,'Botble\\RealEstate\\Models\\Project','11km'),(11,9,'Botble\\RealEstate\\Models\\Property','15km'),(11,10,'Botble\\RealEstate\\Models\\Project','4km'),(11,10,'Botble\\RealEstate\\Models\\Property','3km'),(11,11,'Botble\\RealEstate\\Models\\Project','8km'),(11,11,'Botble\\RealEstate\\Models\\Property','14km'),(11,12,'Botble\\RealEstate\\Models\\Project','11km'),(11,12,'Botble\\RealEstate\\Models\\Property','6km'),(11,13,'Botble\\RealEstate\\Models\\Project','3km'),(11,13,'Botble\\RealEstate\\Models\\Property','18km'),(11,14,'Botble\\RealEstate\\Models\\Project','11km'),(11,14,'Botble\\RealEstate\\Models\\Property','13km'),(11,15,'Botble\\RealEstate\\Models\\Project','1km'),(11,15,'Botble\\RealEstate\\Models\\Property','8km'),(11,16,'Botble\\RealEstate\\Models\\Project','2km'),(11,16,'Botble\\RealEstate\\Models\\Property','11km'),(11,17,'Botble\\RealEstate\\Models\\Project','17km'),(11,17,'Botble\\RealEstate\\Models\\Property','19km'),(11,18,'Botble\\RealEstate\\Models\\Project','1km'),(11,18,'Botble\\RealEstate\\Models\\Property','13km'),(11,19,'Botble\\RealEstate\\Models\\Property','11km'),(11,20,'Botble\\RealEstate\\Models\\Property','5km'),(11,21,'Botble\\RealEstate\\Models\\Property','9km'),(11,22,'Botble\\RealEstate\\Models\\Property','20km'),(11,23,'Botble\\RealEstate\\Models\\Property','13km'),(11,24,'Botble\\RealEstate\\Models\\Property','13km'),(11,25,'Botble\\RealEstate\\Models\\Property','16km'),(11,26,'Botble\\RealEstate\\Models\\Property','14km'),(11,27,'Botble\\RealEstate\\Models\\Property','15km'),(11,28,'Botble\\RealEstate\\Models\\Property','2km'),(11,29,'Botble\\RealEstate\\Models\\Property','14km'),(11,30,'Botble\\RealEstate\\Models\\Property','16km'),(11,31,'Botble\\RealEstate\\Models\\Property','10km'),(11,32,'Botble\\RealEstate\\Models\\Property','7km'),(11,33,'Botble\\RealEstate\\Models\\Property','19km'),(11,34,'Botble\\RealEstate\\Models\\Property','8km'),(11,35,'Botble\\RealEstate\\Models\\Property','19km'),(11,36,'Botble\\RealEstate\\Models\\Property','8km'),(11,37,'Botble\\RealEstate\\Models\\Property','7km'),(11,38,'Botble\\RealEstate\\Models\\Property','20km'),(11,39,'Botble\\RealEstate\\Models\\Property','9km'),(11,40,'Botble\\RealEstate\\Models\\Property','4km'),(11,41,'Botble\\RealEstate\\Models\\Property','2km'),(11,42,'Botble\\RealEstate\\Models\\Property','12km'),(11,43,'Botble\\RealEstate\\Models\\Property','20km'),(11,44,'Botble\\RealEstate\\Models\\Property','14km'),(11,45,'Botble\\RealEstate\\Models\\Property','13km'),(11,46,'Botble\\RealEstate\\Models\\Property','2km'),(11,47,'Botble\\RealEstate\\Models\\Property','19km'),(11,48,'Botble\\RealEstate\\Models\\Property','1km'),(11,49,'Botble\\RealEstate\\Models\\Property','12km'),(11,50,'Botble\\RealEstate\\Models\\Property','19km'),(11,51,'Botble\\RealEstate\\Models\\Property','10km'),(11,52,'Botble\\RealEstate\\Models\\Property','8km'),(11,53,'Botble\\RealEstate\\Models\\Property','1km'),(11,54,'Botble\\RealEstate\\Models\\Property','11km'),(11,55,'Botble\\RealEstate\\Models\\Property','1km'),(11,56,'Botble\\RealEstate\\Models\\Property','1km'),(11,57,'Botble\\RealEstate\\Models\\Property','10km'),(11,58,'Botble\\RealEstate\\Models\\Property','6km'),(11,59,'Botble\\RealEstate\\Models\\Property','8km'),(11,60,'Botble\\RealEstate\\Models\\Property','17km'),(11,61,'Botble\\RealEstate\\Models\\Property','6km');
/*!40000 ALTER TABLE `re_facilities_distances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_facilities_translations`
--

DROP TABLE IF EXISTS `re_facilities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_facilities_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_facilities_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_facilities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_facilities_translations`
--

LOCK TABLES `re_facilities_translations` WRITE;
/*!40000 ALTER TABLE `re_facilities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_facilities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_features`
--

DROP TABLE IF EXISTS `re_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_features` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_features`
--

LOCK TABLES `re_features` WRITE;
/*!40000 ALTER TABLE `re_features` DISABLE KEYS */;
INSERT INTO `re_features` VALUES (1,'Wifi','ti ti-wifi','published'),(2,'Parking','ti ti-parking','published'),(3,'Swimming pool','ti ti-pool','published'),(4,'Balcony','ti ti-building-skyscraper','published'),(5,'Garden','ti ti-trees','published'),(6,'Security','ti ti-shield-lock','published'),(7,'Fitness center','ti ti-stretching','published'),(8,'Air Conditioning','ti ti-air-conditioning','published'),(9,'Central Heating','ti ti-thermometer','published'),(10,'Laundry Room','ti ti-wash-machine','published'),(11,'Pets Allow','ti ti-paw','published'),(12,'Spa & Massage','ti ti-bath','published');
/*!40000 ALTER TABLE `re_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_features_translations`
--

DROP TABLE IF EXISTS `re_features_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_features_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_features_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_features_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_features_translations`
--

LOCK TABLES `re_features_translations` WRITE;
/*!40000 ALTER TABLE `re_features_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_features_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_investors`
--

DROP TABLE IF EXISTS `re_investors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_investors` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_investors`
--

LOCK TABLES `re_investors` WRITE;
/*!40000 ALTER TABLE `re_investors` DISABLE KEYS */;
INSERT INTO `re_investors` VALUES (1,'National Pension Service','published','2025-06-21 01:06:03','2025-06-21 01:06:03',NULL,NULL),(2,'Generali','published','2025-06-21 01:06:03','2025-06-21 01:06:03',NULL,NULL),(3,'Temasek','published','2025-06-21 01:06:03','2025-06-21 01:06:03',NULL,NULL),(4,'China Investment Corporation','published','2025-06-21 01:06:03','2025-06-21 01:06:03',NULL,NULL),(5,'Government Pension Fund Global','published','2025-06-21 01:06:03','2025-06-21 01:06:03',NULL,NULL),(6,'PSP Investments','published','2025-06-21 01:06:03','2025-06-21 01:06:03',NULL,NULL),(7,'MEAG Munich ERGO','published','2025-06-21 01:06:03','2025-06-21 01:06:03',NULL,NULL),(8,'HOOPP','published','2025-06-21 01:06:03','2025-06-21 01:06:03',NULL,NULL),(9,'BT Group','published','2025-06-21 01:06:03','2025-06-21 01:06:03',NULL,NULL),(10,'New York City ERS','published','2025-06-21 01:06:03','2025-06-21 01:06:03',NULL,NULL),(11,'New Jersey Division of Investment','published','2025-06-21 01:06:03','2025-06-21 01:06:03',NULL,NULL),(12,'State Super','published','2025-06-21 01:06:03','2025-06-21 01:06:03',NULL,NULL),(13,'Shinkong','published','2025-06-21 01:06:03','2025-06-21 01:06:03',NULL,NULL),(14,'Rest Super','published','2025-06-21 01:06:03','2025-06-21 01:06:03',NULL,NULL);
/*!40000 ALTER TABLE `re_investors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_investors_translations`
--

DROP TABLE IF EXISTS `re_investors_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_investors_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_investors_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_investors_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_investors_translations`
--

LOCK TABLES `re_investors_translations` WRITE;
/*!40000 ALTER TABLE `re_investors_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_investors_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_invoice_items`
--

DROP TABLE IF EXISTS `re_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int unsigned NOT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_invoice_items`
--

LOCK TABLES `re_invoice_items` WRITE;
/*!40000 ALTER TABLE `re_invoice_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_invoices`
--

DROP TABLE IF EXISTS `re_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `account_id` bigint unsigned NOT NULL,
  `payment_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `re_invoices_code_unique` (`code`),
  KEY `re_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `re_invoices_payment_id_index` (`payment_id`),
  KEY `re_invoices_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_invoices`
--

LOCK TABLES `re_invoices` WRITE;
/*!40000 ALTER TABLE `re_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_packages`
--

DROP TABLE IF EXISTS `re_packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_packages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double unsigned NOT NULL,
  `currency_id` bigint unsigned NOT NULL,
  `percent_save` int unsigned NOT NULL DEFAULT '0',
  `number_of_listings` int unsigned NOT NULL,
  `account_limit` int unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_packages`
--

LOCK TABLES `re_packages` WRITE;
/*!40000 ALTER TABLE `re_packages` DISABLE KEYS */;
INSERT INTO `re_packages` VALUES (1,'Free Trial',0,1,0,1,1,1,0,'published','2025-06-21 01:06:03','2025-06-21 01:06:03',NULL,'[[{\"key\":\"text\",\"value\":\"Limited time trial period\"}],[{\"key\":\"text\",\"value\":\"1 listing allowed\"}],[{\"key\":\"text\",\"value\":\"Basic support\"}]]'),(2,'Basic Listing',250,1,0,1,5,2,1,'published','2025-06-21 01:06:03','2025-06-21 01:06:03',NULL,'[[{\"key\":\"text\",\"value\":\"1 listing allowed\"}],[{\"key\":\"text\",\"value\":\"5 photos per listing\"}],[{\"key\":\"text\",\"value\":\"Basic support\"}]]'),(3,'Standard Package',1000,1,20,5,10,3,0,'published','2025-06-21 01:06:03','2025-06-21 01:06:03',NULL,'[[{\"key\":\"text\",\"value\":\"5 listings allowed\"}],[{\"key\":\"text\",\"value\":\"10 photos per listing\"}],[{\"key\":\"text\",\"value\":\"Priority support\"}]]'),(4,'Professional Package',1800,1,28,10,15,4,0,'published','2025-06-21 01:06:03','2025-06-21 01:06:03',NULL,'[[{\"key\":\"text\",\"value\":\"10 listings allowed\"}],[{\"key\":\"text\",\"value\":\"15 photos per listing\"}],[{\"key\":\"text\",\"value\":\"Premium support\"}],[{\"key\":\"text\",\"value\":\"Featured listings\"}]]'),(5,'Premium Package',2500,1,33,15,20,5,0,'published','2025-06-21 01:06:03','2025-06-21 01:06:03',NULL,'[[{\"key\":\"text\",\"value\":\"15 listings allowed\"}],[{\"key\":\"text\",\"value\":\"20 photos per listing\"}],[{\"key\":\"text\",\"value\":\"Premium support\"}],[{\"key\":\"text\",\"value\":\"Featured listings\"}],[{\"key\":\"text\",\"value\":\"Priority listing placement\"}]]');
/*!40000 ALTER TABLE `re_packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_packages_translations`
--

DROP TABLE IF EXISTS `re_packages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_packages_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_packages_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`re_packages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_packages_translations`
--

LOCK TABLES `re_packages_translations` WRITE;
/*!40000 ALTER TABLE `re_packages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_packages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_project_categories`
--

DROP TABLE IF EXISTS `re_project_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_project_categories` (
  `project_id` bigint unsigned NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`project_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_project_categories`
--

LOCK TABLES `re_project_categories` WRITE;
/*!40000 ALTER TABLE `re_project_categories` DISABLE KEYS */;
INSERT INTO `re_project_categories` VALUES (1,3),(1,4),(2,2),(2,3),(2,5),(3,2),(3,3),(3,6),(4,1),(4,2),(4,6),(5,6),(6,1),(6,6),(7,1),(7,2),(7,3),(8,2),(8,3),(8,4),(9,3),(9,4),(10,1),(11,3),(11,6),(12,3),(12,4),(12,5),(13,5),(14,2),(14,6),(15,4),(16,2),(16,3),(16,5),(17,3),(17,5),(18,4),(18,6);
/*!40000 ALTER TABLE `re_project_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_project_features`
--

DROP TABLE IF EXISTS `re_project_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_project_features` (
  `project_id` bigint unsigned NOT NULL,
  `feature_id` bigint unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_project_features`
--

LOCK TABLES `re_project_features` WRITE;
/*!40000 ALTER TABLE `re_project_features` DISABLE KEYS */;
INSERT INTO `re_project_features` VALUES (1,2),(1,5),(1,6),(1,12),(2,1),(2,3),(2,4),(2,5),(2,9),(2,11),(3,2),(3,3),(3,4),(3,9),(4,2),(4,4),(4,5),(4,10),(4,11),(5,1),(5,2),(5,3),(5,5),(5,6),(5,7),(5,8),(5,10),(5,12),(6,3),(6,6),(6,7),(6,9),(6,10),(7,1),(7,2),(7,3),(7,5),(7,6),(7,9),(7,10),(7,11),(8,1),(8,3),(8,4),(8,5),(8,9),(8,10),(8,11),(9,2),(9,5),(9,6),(9,8),(10,1),(10,2),(10,3),(10,4),(10,5),(10,8),(10,9),(10,10),(10,12),(11,1),(11,2),(11,6),(11,7),(11,9),(11,10),(11,11),(12,2),(12,5),(12,7),(12,9),(13,1),(13,3),(13,4),(13,5),(13,7),(13,9),(13,10),(13,11),(13,12),(14,1),(14,2),(14,4),(14,5),(14,6),(14,8),(14,9),(14,10),(14,11),(15,1),(15,2),(15,4),(15,5),(15,6),(15,7),(15,9),(15,10),(15,11),(15,12),(16,1),(16,2),(16,7),(16,8),(16,9),(16,10),(17,1),(17,2),(17,3),(17,4),(17,6),(17,12),(18,1),(18,4),(18,6),(18,8),(18,9),(18,10),(18,11);
/*!40000 ALTER TABLE `re_project_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_projects`
--

DROP TABLE IF EXISTS `re_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_projects` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `images` text COLLATE utf8mb4_unicode_ci,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `investor_id` bigint unsigned DEFAULT NULL,
  `number_block` int DEFAULT NULL,
  `number_floor` smallint DEFAULT NULL,
  `number_flat` smallint DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `featured_priority` int DEFAULT '0',
  `date_finish` date DEFAULT NULL,
  `date_sell` date DEFAULT NULL,
  `price_from` decimal(15,0) DEFAULT NULL,
  `price_to` decimal(15,0) DEFAULT NULL,
  `currency_id` bigint unsigned DEFAULT NULL,
  `city_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'selling',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `latitude` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `country_id` bigint unsigned DEFAULT '1',
  `state_id` bigint unsigned DEFAULT NULL,
  `unique_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `private_notes` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `re_projects_unique_id_unique` (`unique_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_projects`
--

LOCK TABLES `re_projects` WRITE;
/*!40000 ALTER TABLE `re_projects` DISABLE KEYS */;
INSERT INTO `re_projects` VALUES (1,'Walnut Park Apartments','Ut debitis voluptatem eum vel. Deleniti amet voluptatem aliquid sit aliquid. Ducimus non harum et. Quo reprehenderit eaque porro.','Nulla ipsum nesciunt tempore enim est quos sunt. Amet numquam voluptas ab sed autem molestiae repellendus odio. Necessitatibus est assumenda sit harum aliquid qui. Omnis fuga qui quibusdam voluptas omnis perspiciatis inventore. Quia est modi nostrum sit ut ea consequatur. Nam ut voluptatum culpa debitis. Sit sapiente et eum.','[\"properties\\/6.jpg\",\"properties\\/7.jpg\",\"properties\\/11.jpg\",\"properties\\/9.jpg\",\"properties\\/5.jpg\",\"properties\\/10.jpg\",\"properties\\/2.jpg\",\"properties\\/4.jpg\",\"properties\\/1.jpg\",\"properties\\/12.jpg\",\"properties\\/8.jpg\"]','348 Jayce Prairie Apt. 472\nNorth Alda, IN 71933',1,9,48,122,0,0,'1993-09-11','1991-07-10',3343,7441,1,3,'selling',1,'Botble\\ACL\\Models\\User','2025-06-21 01:06:12','2025-06-21 01:06:12','43.03719','-75.058026',NULL,7381,3,3,NULL,NULL),(2,'Sunshine Wonder Villas','Praesentium quia earum consequatur. Fuga et id eveniet id voluptas aspernatur reprehenderit placeat. Qui vitae rem praesentium voluptatem. Et earum minus explicabo nihil ut.','In velit velit voluptatem magni in. Non quia nulla mollitia corporis quisquam. Est sint aut ut quia maxime eos. Ad perferendis quidem nihil voluptate. Expedita dolor fugiat nemo reprehenderit explicabo. Minus ab corporis dolorem inventore quaerat magnam sunt. Non quia dolores voluptatum voluptatem blanditiis dolor praesentium.','[\"properties\\/6.jpg\",\"properties\\/10.jpg\",\"properties\\/12.jpg\",\"properties\\/8.jpg\",\"properties\\/7.jpg\",\"properties\\/3.jpg\",\"properties\\/4.jpg\",\"properties\\/1.jpg\"]','241 Kiera Cliffs Suite 583\nDarenborough, HI 08126',3,4,42,3059,0,0,'2013-09-07','1972-03-10',8107,13178,1,2,'selling',1,'Botble\\ACL\\Models\\User','2025-06-21 01:06:12','2025-06-21 01:06:12','43.626004','-75.027566',NULL,4389,2,2,NULL,NULL),(3,'Diamond Island','Dolor consequatur corporis ipsum ad autem. Quisquam et a non. Eius non non voluptas sit. Accusantium temporibus accusantium at nostrum sit.','Dolor laboriosam sint veritatis suscipit voluptatem libero illo. Nam harum deleniti maxime debitis dolor odio. Et ad quisquam voluptatem facere sed est velit. Eligendi harum magnam quia omnis rerum. Cum doloremque laboriosam error quia quasi repudiandae. Aut quibusdam dolorem praesentium vel architecto. Qui asperiores modi placeat a ut nihil omnis. Rerum quas aliquam qui et. Quaerat quo maiores consequatur corrupti sed ea ut.','[\"properties\\/9.jpg\",\"properties\\/5.jpg\",\"properties\\/10.jpg\",\"properties\\/7.jpg\",\"properties\\/12.jpg\",\"properties\\/2.jpg\",\"properties\\/3.jpg\",\"properties\\/6.jpg\",\"properties\\/11.jpg\"]','9028 Fisher Spring\nDaughertymouth, NV 19114-8225',3,5,40,1319,0,0,'1993-07-22','2000-09-21',7923,10772,1,6,'selling',1,'Botble\\ACL\\Models\\User','2025-06-21 01:06:12','2025-06-21 01:06:12','43.54378','-76.055865',NULL,7442,6,6,NULL,NULL),(4,'The Nassim','Quisquam sed sit provident rerum dolor in esse omnis. Ipsa velit cupiditate quo nulla adipisci non ipsum qui. Enim sequi ad maxime nihil voluptate.','Sunt ut cumque dolores architecto. Impedit fugiat corrupti aut molestiae. Autem quis est est tempore aut veritatis. Error earum nisi nesciunt cumque cumque alias nisi. Blanditiis sint quo est harum accusamus. Est delectus et itaque tenetur saepe qui. Labore eum sed dolor blanditiis vero voluptas. Sed dolorum voluptatibus consequuntur corporis id. Est voluptate voluptatibus quo repudiandae. Dolor quo ab consequatur pariatur consequatur repellendus.','[\"properties\\/5.jpg\",\"properties\\/4.jpg\",\"properties\\/12.jpg\",\"properties\\/7.jpg\",\"properties\\/6.jpg\",\"properties\\/3.jpg\",\"properties\\/8.jpg\",\"properties\\/10.jpg\"]','6645 Abigail Cove Suite 281\nKeonport, AK 73536-5538',4,10,23,1870,1,0,'2022-02-04','2007-03-12',377,8463,1,5,'selling',1,'Botble\\ACL\\Models\\User','2025-06-21 01:06:12','2025-06-21 01:06:12','43.030715','-75.487089',NULL,4593,5,5,NULL,NULL),(5,'Vinhomes Grand Park','Deserunt est enim dolores dolore voluptas ut. Rerum sunt totam dolorem qui culpa. Enim nulla ut tenetur eius autem.','Molestiae alias tenetur culpa expedita autem laborum. Tempora dolores ex veritatis rem iusto et. Ex enim sit molestias cumque. Maiores provident omnis error omnis et quidem. Pariatur corrupti qui aliquam totam adipisci. Reprehenderit inventore molestias aut dignissimos ut voluptatum nemo. Voluptas libero delectus rerum nihil. Rerum ipsam asperiores deserunt laborum voluptatem libero perspiciatis. Et qui mollitia voluptatem voluptatibus aspernatur autem. Soluta voluptatem aperiam earum expedita fugiat tempore atque. Quo officiis ratione harum magni. Rerum voluptates alias eveniet nam assumenda fugit nam. Sed non aspernatur alias animi.','[\"properties\\/4.jpg\",\"properties\\/1.jpg\",\"properties\\/2.jpg\",\"properties\\/10.jpg\",\"properties\\/9.jpg\",\"properties\\/3.jpg\",\"properties\\/12.jpg\",\"properties\\/8.jpg\",\"properties\\/6.jpg\"]','42465 Jedediah Green\nWest Alena, OR 71496',12,4,47,56,1,0,'2016-04-22','2002-06-05',2793,5510,1,5,'selling',1,'Botble\\ACL\\Models\\User','2025-06-21 01:06:12','2025-06-21 01:06:12','43.678706','-75.932755',NULL,6020,5,5,NULL,NULL),(6,'The Metropole Thu Thiem','Corporis deserunt est et perspiciatis est sit. Ullam sunt a perspiciatis recusandae dolorum adipisci quisquam ad.','Facilis nihil nihil quae quaerat dolor. Omnis veritatis impedit et recusandae fugit corrupti eius et. Nisi nostrum est error et. Quaerat neque sint illo ea aut. Quia suscipit neque asperiores perferendis. Accusantium reprehenderit eos velit iusto est rerum eum. Saepe sunt quasi dolores nostrum commodi laboriosam doloremque.','[\"properties\\/3.jpg\",\"properties\\/5.jpg\",\"properties\\/4.jpg\",\"properties\\/9.jpg\",\"properties\\/7.jpg\",\"properties\\/6.jpg\",\"properties\\/10.jpg\",\"properties\\/11.jpg\",\"properties\\/12.jpg\",\"properties\\/2.jpg\",\"properties\\/1.jpg\",\"properties\\/8.jpg\"]','7303 Darian Burgs Apt. 549\nNorth Alexandra, WI 52062',4,4,4,729,1,0,'1997-12-09','1994-09-23',8999,16971,1,3,'selling',1,'Botble\\ACL\\Models\\User','2025-06-21 01:06:12','2025-06-21 01:06:12','42.788418','-76.166934',NULL,2408,3,3,NULL,NULL),(7,'Villa on Grand Avenue','Quas libero officia quasi repellat voluptas. Perspiciatis illo pariatur laboriosam beatae fugiat optio. Ut nostrum porro modi illum.','Sit debitis ut sed accusamus ut voluptatum. Laudantium dignissimos ut aliquam est accusamus occaecati. Illum nam necessitatibus molestiae deleniti non asperiores alias. Molestias autem nemo modi et quae eum magnam. Facere deserunt asperiores aperiam inventore. Culpa libero rerum iste. Iste ut provident non qui. Esse adipisci possimus debitis velit. Quasi sed a explicabo sint dolores qui at. Repellat quas ipsum dolores nulla illum dolore deserunt minima. Dolores porro non nihil similique. Quis qui error non beatae voluptates iste suscipit. Debitis maiores sunt est eos dolor.','[\"properties\\/3.jpg\",\"properties\\/5.jpg\",\"properties\\/12.jpg\",\"properties\\/11.jpg\",\"properties\\/4.jpg\",\"properties\\/7.jpg\",\"properties\\/6.jpg\",\"properties\\/2.jpg\",\"properties\\/8.jpg\",\"properties\\/1.jpg\",\"properties\\/9.jpg\"]','1694 Ayana Oval Suite 209\nPort Rosie, KY 92609-5579',1,6,21,2370,1,0,'2005-11-05','1973-02-10',7963,13934,1,1,'selling',1,'Botble\\ACL\\Models\\User','2025-06-21 01:06:12','2025-06-21 01:06:12','42.76633','-75.275978',NULL,9381,1,1,NULL,NULL),(8,'Traditional Food Restaurant','Est veniam cumque ex natus laborum. Accusantium error sit laboriosam consequatur voluptas. In at et error nobis. Eius explicabo vitae qui fuga odio.','Qui reiciendis velit nisi ducimus. Accusantium laboriosam dicta voluptate quas. Facere aspernatur dignissimos ut a consequuntur aut sapiente. Inventore sint quas porro voluptas laborum. Impedit corporis aut est et error aut. Molestiae odio illo laborum non omnis assumenda. Impedit non consectetur ex porro laboriosam earum. Cum temporibus aut atque eius deserunt. Fugit sint necessitatibus cupiditate nulla officiis minima. Odio soluta id maiores sit sit. Reiciendis necessitatibus quis rerum occaecati in non. Aliquid non doloribus quod et modi. Possimus et possimus sunt fuga. Suscipit illum consequatur ea.','[\"properties\\/1.jpg\",\"properties\\/3.jpg\",\"properties\\/5.jpg\",\"properties\\/9.jpg\",\"properties\\/8.jpg\"]','94759 Gussie Park Suite 046\nLake Muhammadton, MD 32709-7307',8,8,15,1986,0,0,'2000-06-22','1984-08-11',8578,17327,1,6,'selling',1,'Botble\\ACL\\Models\\User','2025-06-21 01:06:12','2025-06-21 01:06:12','43.742348','-76.69647',NULL,6145,6,6,NULL,NULL),(9,'Villa on Hollywood Boulevard','Incidunt quia eos pariatur explicabo. Aut nam aut impedit dolores voluptas quia aut. Maiores suscipit sint ad consequatur itaque explicabo sit.','Nesciunt et mollitia consequuntur praesentium. Reiciendis eos eveniet officia saepe fuga. Ducimus vitae tempore officia expedita sunt et quidem. Quisquam nam corrupti sit asperiores non ipsam. Dignissimos sit consequatur quis non dolore. Est sed dolores officiis quibusdam. Fugiat reprehenderit quos provident et dolorum. Accusantium laudantium dignissimos recusandae et repellendus iure. Ratione voluptas sunt placeat debitis. Quos molestiae qui a rerum voluptas quas perspiciatis nemo. Voluptatibus cumque omnis minus ipsam. Omnis et et tempora architecto iste nesciunt voluptatem. Dolores est ex sint sint.','[\"properties\\/4.jpg\",\"properties\\/5.jpg\",\"properties\\/6.jpg\",\"properties\\/1.jpg\",\"properties\\/7.jpg\",\"properties\\/11.jpg\",\"properties\\/10.jpg\"]','16508 Buford Locks Suite 743\nNew Trenton, CT 31699-9473',1,6,12,3574,0,0,'2017-02-17','1970-02-15',8215,17477,1,5,'selling',1,'Botble\\ACL\\Models\\User','2025-06-21 01:06:12','2025-06-21 01:06:12','43.678884','-74.880356',NULL,9355,5,5,NULL,NULL),(10,'Office Space at Northwest 107th','Omnis accusamus ad vero aliquid ullam velit qui. Consequatur facilis aliquam eum labore maiores rerum veniam. Et quisquam aut assumenda et. Rerum at voluptates aliquid perferendis quasi. Labore quia ad odio consectetur vero doloribus necessitatibus autem.','Sunt fuga quia tenetur distinctio sit voluptate. Quod recusandae voluptatum vel officia accusantium nesciunt nisi. Ut fuga eum at dolorem dolor. Vero sint tempore consequatur nam quia repellat recusandae. Commodi necessitatibus nesciunt quia rem in praesentium. Fugit sit eos quis et eos tempore est. Libero ex illo unde ad. Magnam sed necessitatibus laborum voluptatem enim. Qui vitae fuga aspernatur incidunt ut facilis nobis. Dicta consequatur quasi in tempore. Ullam maxime officia ducimus id provident ut.','[\"properties\\/5.jpg\",\"properties\\/3.jpg\",\"properties\\/9.jpg\",\"properties\\/8.jpg\",\"properties\\/1.jpg\",\"properties\\/4.jpg\",\"properties\\/11.jpg\",\"properties\\/10.jpg\",\"properties\\/7.jpg\"]','24976 Zulauf Rue\nEmmerichview, MO 33190',7,6,46,1893,1,0,'1996-11-28','2003-01-21',1169,10748,1,2,'selling',1,'Botble\\ACL\\Models\\User','2025-06-21 01:06:12','2025-06-21 01:06:12','43.517666','-76.52846',NULL,3871,2,2,NULL,NULL),(11,'Home in Merrick Way','Dolor reiciendis facere quaerat aut et. Fugit ut commodi unde quia non dignissimos facere. Occaecati eligendi assumenda esse est tempore molestias. Inventore rerum praesentium saepe fuga sint delectus vel.','Est neque inventore temporibus error. Iure quidem non officiis atque tempore. Ducimus aut explicabo quo sit. Quas autem blanditiis sit voluptatem. Commodi ut maxime voluptatem ea ipsa voluptas quis nulla. Aperiam ut perferendis vel. Voluptas quis soluta voluptas ipsa voluptatem qui ut sed. Sint eveniet quos blanditiis sed. Non quisquam eaque et qui porro aliquam qui. Illo et aut consectetur fuga accusamus voluptatum. Illo omnis libero ab omnis.','[\"properties\\/11.jpg\",\"properties\\/5.jpg\",\"properties\\/6.jpg\",\"properties\\/3.jpg\",\"properties\\/8.jpg\",\"properties\\/7.jpg\",\"properties\\/12.jpg\",\"properties\\/9.jpg\"]','17259 Corbin Plaza Suite 505\nBrycenchester, NV 67596',1,10,11,2751,1,0,'1997-01-20','1970-04-01',7672,8461,1,4,'selling',1,'Botble\\ACL\\Models\\User','2025-06-21 01:06:12','2025-06-21 01:06:12','43.751364','-74.897852',NULL,1900,4,4,NULL,NULL),(12,'Adarsh Greens','Facere sed dolor facilis sit. Aspernatur quidem et et non dolorem dolores. Corrupti voluptatem consequuntur accusantium cum eum ea.','Odio repudiandae exercitationem commodi nostrum. Est consequatur et cumque aut rem. Quis molestiae est incidunt ducimus cum quia ab. Reiciendis libero vel sit blanditiis qui nostrum. Consequuntur ipsa voluptatum iusto non dignissimos eum. Blanditiis a ut ex sed sed quidem. Voluptate ea sit aliquam architecto. Qui iure nisi et rerum quis sint necessitatibus modi. Et id tenetur qui cumque. Non voluptates dolores laboriosam quaerat. Quo consequatur sapiente iste ducimus vitae ea.','[\"properties\\/8.jpg\",\"properties\\/5.jpg\",\"properties\\/12.jpg\",\"properties\\/2.jpg\",\"properties\\/1.jpg\",\"properties\\/10.jpg\",\"properties\\/11.jpg\",\"properties\\/6.jpg\"]','6836 Hillary Vista Suite 555\nKeatonmouth, NE 05076',8,7,41,2141,1,0,'2021-12-29','2013-01-31',4736,10598,1,1,'selling',1,'Botble\\ACL\\Models\\User','2025-06-21 01:06:12','2025-06-21 01:06:12','43.447328','-74.969688',NULL,362,1,1,NULL,NULL),(13,'Rustomjee Evershine Global City','Omnis corrupti ut in consequatur. Autem quia sit facilis molestiae officia qui. Sunt ut at enim. Eligendi aspernatur sint sed.','Nobis et distinctio corrupti sit. Repudiandae similique ut quisquam labore qui sint. Eveniet fugiat ut dolores eius ea. Dolor distinctio dolor pariatur. Voluptate sunt facere optio est est. Asperiores delectus tenetur omnis sint. Molestiae ut inventore maiores nihil incidunt error. Modi aut quasi esse labore quo ex ab. Ex tempore qui necessitatibus sed dolores. Et voluptatem nisi qui explicabo animi blanditiis. Aut amet quibusdam qui in non. Excepturi autem tenetur voluptas magni quia doloremque sit. Explicabo voluptas explicabo explicabo reiciendis debitis tempore placeat.','[\"properties\\/7.jpg\",\"properties\\/4.jpg\",\"properties\\/1.jpg\",\"properties\\/11.jpg\",\"properties\\/12.jpg\",\"properties\\/2.jpg\",\"properties\\/10.jpg\",\"properties\\/9.jpg\",\"properties\\/3.jpg\",\"properties\\/5.jpg\",\"properties\\/6.jpg\",\"properties\\/8.jpg\"]','1515 Mueller Springs Suite 362\nJacquesfort, PA 93322',6,6,19,175,1,0,'2019-06-13','1996-05-05',2724,11021,1,3,'selling',1,'Botble\\ACL\\Models\\User','2025-06-21 01:06:12','2025-06-21 01:06:12','43.977113','-76.401726',NULL,3336,3,3,NULL,NULL),(14,'Godrej Exquisite','Eligendi ratione quam ut accusamus unde aut vel. Et dicta praesentium vitae magni vel culpa. Et in voluptatem repudiandae qui repudiandae quia. Dolore laborum eveniet magnam et ipsam.','Esse enim hic ut sit fugit et. Ad esse rem debitis. Aut quas quia ab ullam eveniet magnam animi. Possimus ab ullam facilis aut. Ut id ab porro ullam. Unde officia aliquid beatae error neque quam. Sed qui consectetur nostrum at et voluptatem vero. Quia labore quos iste et est ratione.','[\"properties\\/8.jpg\",\"properties\\/7.jpg\",\"properties\\/12.jpg\",\"properties\\/3.jpg\",\"properties\\/5.jpg\",\"properties\\/10.jpg\",\"properties\\/11.jpg\",\"properties\\/2.jpg\",\"properties\\/6.jpg\"]','6825 Kenneth Mission\nNew Linnea, NH 30598-2215',2,4,18,891,0,0,'1999-04-29','2016-08-15',2862,12044,1,6,'selling',1,'Botble\\ACL\\Models\\User','2025-06-21 01:06:12','2025-06-21 01:06:12','42.666096','-76.223',NULL,2449,6,6,NULL,NULL),(15,'Godrej Prime','Eaque voluptates tenetur facilis. Repellat consequatur quaerat odio maxime dolorem dolores autem dolorem. Tenetur fuga sed et enim distinctio consequatur. Iure dolorem facilis provident quibusdam.','Qui saepe debitis tenetur unde nam nam doloremque. Voluptas sunt animi quia. Natus aut ex ut nemo quaerat. Non molestiae qui iste dolor amet enim. Doloremque earum dolores eum voluptatem nobis. Ducimus ipsam optio saepe rem qui non. Corporis et dolorum omnis accusamus expedita porro. Provident cupiditate perspiciatis reprehenderit est in dignissimos.','[\"properties\\/12.jpg\",\"properties\\/4.jpg\",\"properties\\/7.jpg\",\"properties\\/11.jpg\",\"properties\\/9.jpg\"]','82255 Berta Shores\nPort Lornaport, IN 60957-9266',2,8,17,725,0,0,'2021-04-28','1986-02-11',1208,4656,1,1,'selling',1,'Botble\\ACL\\Models\\User','2025-06-21 01:06:12','2025-06-21 01:06:12','43.921264','-76.330406',NULL,7077,1,1,NULL,NULL),(16,'PS Panache','Repellat nemo laborum et saepe. Suscipit earum rem nesciunt pariatur sapiente ipsum quibusdam. Voluptatem qui velit voluptates accusantium ipsa voluptas. Nisi adipisci nam est corrupti doloremque recusandae dolores.','Quisquam neque ullam iste expedita nam excepturi eligendi. Quis esse voluptate fuga ipsum itaque. Ab necessitatibus illum similique dolor explicabo. Eos ratione quibusdam nihil. Ea molestias quisquam cumque sapiente sed blanditiis. Ab non est inventore suscipit ex distinctio velit. Facere velit culpa autem nobis optio. Ea reprehenderit aspernatur non est corporis rem doloribus. Vitae illo qui dolor molestias vel. Ea necessitatibus animi voluptatem incidunt dolor et corrupti ipsa. Tempore et culpa suscipit expedita quis. Ut sed aliquid facilis fugiat est nam dolores. Impedit debitis et soluta voluptate culpa.','[\"properties\\/3.jpg\",\"properties\\/11.jpg\",\"properties\\/9.jpg\",\"properties\\/2.jpg\",\"properties\\/12.jpg\"]','17126 Deanna Loop Apt. 784\nHarrisville, NJ 27561-4788',14,2,34,2960,1,0,'1976-02-24','2015-03-22',133,8243,1,1,'selling',1,'Botble\\ACL\\Models\\User','2025-06-21 01:06:12','2025-06-21 01:06:12','43.696094','-75.937158',NULL,5983,1,1,NULL,NULL),(17,'Upturn Atmiya Centria','Nisi veritatis rerum labore dolorem veniam ipsum rerum. Qui libero sed totam sit excepturi quia sapiente. Rerum necessitatibus dolor in.','Et consequatur quo corrupti modi. Vel quia aspernatur labore aut dignissimos distinctio. Praesentium veritatis tempore aut in eum. Sunt harum ab atque. Aliquam et quia in distinctio. Ut eos vitae asperiores perspiciatis nam modi doloremque. Voluptate ab quia aut ab omnis aut. Autem ut sit qui et veniam ducimus. Et eos voluptatum officia perferendis quos. Consequatur maiores quia officiis eum nihil ipsum. Nihil nam totam ipsam. Omnis sunt nam officia at distinctio numquam. Consequatur vitae aut aliquid porro. Voluptatibus beatae alias aliquid voluptatem.','[\"properties\\/9.jpg\",\"properties\\/5.jpg\",\"properties\\/2.jpg\",\"properties\\/6.jpg\",\"properties\\/11.jpg\"]','7759 Brandyn Summit\nJermeybury, NY 15429',11,1,21,3831,0,0,'1992-05-17','1975-06-26',1694,6652,1,4,'selling',1,'Botble\\ACL\\Models\\User','2025-06-21 01:06:12','2025-06-21 01:06:12','43.105774','-76.438845',NULL,7490,4,4,NULL,NULL),(18,'Brigade Oasis','Laudantium omnis quo nostrum ea omnis expedita possimus animi. Non occaecati ut et consequatur. Aspernatur voluptas ut est aut perferendis. Ea tempore perferendis magnam fuga repellat itaque et.','Tempora eum vero accusamus omnis suscipit id rem minima. Doloribus ex ut quisquam iusto sunt. Sed doloribus omnis soluta inventore nulla corporis quidem. Nihil eos omnis libero minus ut. Nostrum sit est deserunt vero. Magnam sit porro et minima perspiciatis. Ab rerum ullam dolores aut saepe quia perspiciatis.','[\"properties\\/11.jpg\",\"properties\\/3.jpg\",\"properties\\/8.jpg\",\"properties\\/2.jpg\",\"properties\\/9.jpg\",\"properties\\/1.jpg\",\"properties\\/12.jpg\",\"properties\\/7.jpg\",\"properties\\/5.jpg\"]','96216 Barry Rapid\nNorth Jake, IN 45802',11,4,27,119,1,0,'2020-11-15','1985-01-30',4634,6023,1,5,'selling',1,'Botble\\ACL\\Models\\User','2025-06-21 01:06:12','2025-06-21 01:06:12','43.798776','-76.651148',NULL,3908,5,5,NULL,NULL);
/*!40000 ALTER TABLE `re_projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_projects_translations`
--

DROP TABLE IF EXISTS `re_projects_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_projects_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_projects_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `floor_plans` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`re_projects_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_projects_translations`
--

LOCK TABLES `re_projects_translations` WRITE;
/*!40000 ALTER TABLE `re_projects_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_projects_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_properties`
--

DROP TABLE IF EXISTS `re_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_properties` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sale',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  `floor_plans` longtext COLLATE utf8mb4_unicode_ci,
  `project_id` bigint unsigned DEFAULT '0',
  `number_bedroom` int DEFAULT NULL,
  `number_bathroom` int DEFAULT NULL,
  `number_floor` int DEFAULT NULL,
  `square` double DEFAULT NULL,
  `price` decimal(15,2) DEFAULT NULL,
  `currency_id` bigint unsigned DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `featured_priority` int DEFAULT '0',
  `city_id` bigint unsigned DEFAULT NULL,
  `period` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'month',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'selling',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `moderation_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `reject_reason` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `auto_renew` tinyint(1) NOT NULL DEFAULT '0',
  `never_expired` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `latitude` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `country_id` bigint unsigned DEFAULT '1',
  `state_id` bigint unsigned DEFAULT NULL,
  `unique_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `private_notes` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `re_properties_unique_id_unique` (`unique_id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_properties`
--

LOCK TABLES `re_properties` WRITE;
/*!40000 ALTER TABLE `re_properties` DISABLE KEYS */;
INSERT INTO `re_properties` VALUES (1,'3 Beds Villa Calpe, Alicante','rent','Maiores minus vero ab placeat quae voluptatem. Repudiandae et excepturi porro natus expedita.','Velit voluptatibus quisquam est asperiores ut reprehenderit aliquid. Est officiis voluptatibus maxime ea vel ut. Officiis unde maiores eligendi fugiat itaque distinctio. Sit ipsa eum iste autem. Earum possimus consectetur ut deleniti eligendi similique. Ea sit quidem hic odit ut incidunt eaque. Dolorem quae quis quisquam consequatur provident dolorem est ea. Voluptatem ducimus et dolores quia fugit. Ut distinctio qui est nihil labore aut aut ex. Aspernatur doloremque qui quis ut aliquam.','62073 Verla Landing\nSouth Daron, IA 55454','[\"properties\\/1.jpg\",\"properties\\/12.jpg\",\"properties\\/3.jpg\",\"properties\\/4.jpg\",\"properties\\/11.jpg\",\"properties\\/9.jpg\",\"properties\\/10.jpg\",\"properties\\/8.jpg\",\"properties\\/7.jpg\",\"properties\\/2.jpg\",\"properties\\/5.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',6,9,2,64,440,307000.00,NULL,1,0,2,'month','renting',1,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-07-19',0,1,'2025-06-21 01:06:12','2025-06-21 01:06:12','43.390149','-76.014848',NULL,96628,2,2,'URTGB8',NULL),(2,'Lavida Plus Office-tel 1 Bedroom','rent','Cumque distinctio tempore fugit mollitia ea repellendus voluptas ea. Facere consequatur dolorum quos pariatur aut corrupti eveniet quo. Et dolor fugiat quia cumque ut praesentium consequatur. Ullam est optio et repudiandae placeat.','Sed voluptatem et eos provident praesentium ut. Enim doloremque autem at aut veniam quos. In aut expedita saepe sunt rerum autem minus. Sed dignissimos itaque unde et quas doloribus. Itaque recusandae velit totam numquam esse. Dicta quia incidunt possimus consequatur commodi tempore. Dolores laudantium distinctio enim dolorum. Sunt dolorum pariatur dolorum quibusdam architecto quaerat voluptatem. Quia qui nisi ducimus aperiam.','1905 Destiney Fall Suite 096\nEast Jevonberg, MA 25442-6325','[\"properties\\/4.jpg\",\"properties\\/9.jpg\",\"properties\\/10.jpg\",\"properties\\/1.jpg\",\"properties\\/8.jpg\",\"properties\\/7.jpg\",\"properties\\/11.jpg\",\"properties\\/2.jpg\",\"properties\\/5.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',7,2,5,9,600,544100.00,NULL,0,0,5,'month','renting',3,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-03-17',0,1,'2025-06-21 01:06:13','2025-06-21 01:06:13','43.619264','-74.772366',NULL,19241,5,5,'0ERAJR',NULL),(3,'Vinhomes Grand Park Studio 1 Bedroom','rent','Delectus mollitia nam est reprehenderit. Quo reiciendis quia labore est ducimus ut. Molestiae quasi nulla mollitia necessitatibus. Eius nemo at perspiciatis voluptas facilis sint.','Quasi nostrum sit non est deleniti. Et quo et earum doloribus in. Sint asperiores dolores dolorem quidem quia. Esse suscipit quidem modi quia aspernatur et impedit. Cupiditate qui doloribus eaque nisi totam. Laboriosam ipsa incidunt est non veniam porro. Dolorem neque magnam provident quasi est reiciendis eos.','78030 Jason Pike\nNew Kari, KY 11897','[\"properties\\/8.jpg\",\"properties\\/1.jpg\",\"properties\\/2.jpg\",\"properties\\/12.jpg\",\"properties\\/6.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',14,1,5,32,530,922600.00,NULL,0,0,3,'month','renting',6,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-06-30',0,1,'2025-06-21 01:06:13','2025-06-21 01:06:13','43.533904','-75.841111',NULL,65653,3,3,'TPKBU9',NULL),(4,'The Sun Avenue Office-tel 1 Bedroom','rent','Rerum ut sed eligendi quis. Et molestiae nam alias labore repudiandae cupiditate eius id. Et repellat sapiente qui error.','Ducimus doloremque fuga tenetur blanditiis doloremque. Nesciunt et sunt ratione ipsum repellat. Dolorum accusantium qui omnis dolorum sed voluptatem. Voluptates quae corporis et sed aut et. Magni eos ea culpa adipisci deserunt at officiis voluptates. Corporis exercitationem nostrum enim reiciendis. Et et et nisi vel numquam et. Blanditiis consequuntur iusto in sed expedita. Est est fuga excepturi incidunt molestiae. Nam aut libero est molestiae temporibus ducimus. Qui molestiae qui consequatur vero molestias laudantium.','8147 Rosario Avenue\nEast Lisettemouth, OR 16925','[\"properties\\/4.jpg\",\"properties\\/10.jpg\",\"properties\\/3.jpg\",\"properties\\/12.jpg\",\"properties\\/2.jpg\",\"properties\\/7.jpg\",\"properties\\/6.jpg\",\"properties\\/9.jpg\",\"properties\\/8.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',8,9,9,78,550,343900.00,NULL,0,0,3,'month','renting',4,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-09-29',0,1,'2025-06-21 01:06:13','2025-06-21 01:06:13','43.828133','-76.151442',NULL,3279,3,3,'IXDAP4',NULL),(5,'Property For sale, Johannesburg, South Africa','sale','Facilis nam eius mollitia qui nam officiis dolorum rerum. Exercitationem porro in ab voluptatem. Ea distinctio temporibus cumque. Eum ex accusamus est nobis et ratione.','Eaque non ab quia quibusdam et illo dignissimos. Veritatis voluptatibus et quod et hic. Dolores dolores autem inventore quisquam tenetur velit deserunt. Ad rem voluptas odio vitae. Adipisci nemo autem minima rerum qui. Eos necessitatibus in vitae facilis enim corporis et. Libero facere tempore omnis illum. Quidem ratione quo animi aut. Quaerat voluptate omnis sed excepturi. Eveniet enim ipsa odio provident delectus aspernatur. Et voluptate earum aut qui omnis labore.','94273 Conn Trace Apt. 438\nMelvinfort, ID 43068','[\"properties\\/8.jpg\",\"properties\\/5.jpg\",\"properties\\/9.jpg\",\"properties\\/2.jpg\",\"properties\\/12.jpg\",\"properties\\/1.jpg\",\"properties\\/4.jpg\",\"properties\\/6.jpg\",\"properties\\/11.jpg\",\"properties\\/10.jpg\",\"properties\\/7.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',12,9,2,75,820,101700.00,NULL,0,0,5,'month','selling',9,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-10-25',0,1,'2025-06-21 01:06:13','2025-06-21 01:06:13','42.494106','-74.843882',NULL,48197,5,5,'4YKUCR',NULL),(6,'Stunning French Inspired Manor','sale','Nam doloribus optio maxime excepturi cum voluptas totam. Dicta sit inventore quae quia atque. Doloribus nesciunt saepe saepe harum dignissimos est cum qui.','Impedit sit cumque expedita sit dolorem labore hic. Iste voluptatem natus pariatur vitae laboriosam culpa et temporibus. Est natus sed sit sit sed excepturi quae. Ratione eum molestiae autem. Sapiente blanditiis blanditiis exercitationem totam consequatur delectus. Sapiente quos quaerat eum atque accusamus. Sint saepe aut perspiciatis corrupti quas et aut. Deserunt animi est error reprehenderit. Voluptate sunt in ullam quaerat minima eius.','45826 Jast Land Apt. 611\nNew Tyree, UT 81011','[\"properties\\/6.jpg\",\"properties\\/7.jpg\",\"properties\\/11.jpg\",\"properties\\/5.jpg\",\"properties\\/1.jpg\",\"properties\\/9.jpg\",\"properties\\/10.jpg\",\"properties\\/3.jpg\",\"properties\\/12.jpg\",\"properties\\/4.jpg\",\"properties\\/8.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',6,3,10,100,780,994800.00,NULL,1,0,3,'month','selling',7,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-01-07',0,1,'2025-06-21 01:06:13','2025-06-21 01:06:13','43.602988','-75.042039',NULL,99250,3,3,'IDVWZT',NULL),(7,'Villa for sale at Bermuda Dunes','rent','Voluptas similique occaecati modi vel aut laboriosam. Ipsa suscipit quo rem delectus consequatur omnis sit soluta. Qui distinctio fuga qui eveniet a voluptatem incidunt. Accusantium perferendis vel cumque et asperiores corporis nemo.','Aut nulla et numquam harum et consectetur atque maxime. Veritatis iste laudantium exercitationem facilis in debitis. Explicabo quidem occaecati est earum. Exercitationem laborum nemo enim ea. Molestiae et commodi natus asperiores. Unde quo officia molestiae voluptatem temporibus dolorem. Omnis nisi libero necessitatibus nobis ut sunt at. Provident corporis quod eveniet ullam ut laborum repellendus. Corporis totam aspernatur sunt magnam quisquam ab ea. Iste veniam qui et alias sint et. Consequuntur deserunt nihil consequuntur sunt ut in nemo.','425 Robin Crest Apt. 094\nSipesside, MA 21084-5554','[\"properties\\/5.jpg\",\"properties\\/8.jpg\",\"properties\\/7.jpg\",\"properties\\/4.jpg\",\"properties\\/11.jpg\",\"properties\\/10.jpg\",\"properties\\/3.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',15,10,9,75,660,921900.00,NULL,1,0,1,'month','renting',5,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-10-06',0,1,'2025-06-21 01:06:13','2025-06-21 01:06:13','43.425406','-75.316702',NULL,62768,1,1,'IKMBYZ',NULL),(8,'Walnut Park Apartment','rent','Et velit eum adipisci deleniti. Fugiat doloribus dolor voluptas delectus. Impedit in molestiae iure laudantium.','Suscipit eaque tempore totam voluptatibus ullam aut dolorem. Ut necessitatibus iure accusantium inventore incidunt totam et. Sunt optio expedita neque omnis velit quod explicabo. Soluta nulla architecto quod inventore omnis fugiat aut qui. Qui quae fuga ratione quasi minima accusamus quas. Qui nobis ut soluta repudiandae labore ab. Nobis omnis soluta dolores rerum omnis. Dignissimos aperiam ut deserunt nobis tenetur. Eligendi voluptas voluptatem assumenda expedita. Debitis odio velit aspernatur ut. Consequuntur voluptatem hic quisquam ut temporibus omnis. Et repellat aliquid rem corrupti libero. Deserunt qui est voluptatibus provident quia quia.','16818 Deondre Trafficway Suite 265\nWest Rashadbury, TN 60017-2990','[\"properties\\/4.jpg\",\"properties\\/10.jpg\",\"properties\\/9.jpg\",\"properties\\/5.jpg\",\"properties\\/8.jpg\",\"properties\\/3.jpg\",\"properties\\/1.jpg\",\"properties\\/12.jpg\",\"properties\\/6.jpg\",\"properties\\/11.jpg\",\"properties\\/2.jpg\",\"properties\\/7.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',5,6,1,87,150,185100.00,NULL,0,0,5,'month','renting',5,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-01-13',0,1,'2025-06-21 01:06:13','2025-06-21 01:06:13','42.672004','-74.947089',NULL,24765,5,5,'WUDUNC',NULL),(9,'5 beds luxury house','rent','Soluta quis veniam possimus ut facere. Tenetur voluptatem qui quod omnis est aliquam cum.','Quidem eaque ab aut nostrum sed quo. Rerum temporibus perferendis vero laborum. Velit dolore magnam minus enim aut dolore molestiae. Incidunt sit omnis accusamus sed aut ut. Sed nulla assumenda fugit perferendis numquam non est. Minus fugit et et voluptatum. Debitis commodi quia iure nihil. Explicabo quaerat officiis perferendis omnis sed. Quisquam cumque aut omnis perspiciatis voluptatem. Corporis ex ut et impedit dolores.','2770 Hilpert Islands\nSchummchester, AR 84902','[\"properties\\/8.jpg\",\"properties\\/6.jpg\",\"properties\\/1.jpg\",\"properties\\/2.jpg\",\"properties\\/9.jpg\",\"properties\\/3.jpg\",\"properties\\/7.jpg\",\"properties\\/4.jpg\",\"properties\\/5.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',8,5,10,42,630,422500.00,NULL,0,0,6,'month','renting',5,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-07-08',0,1,'2025-06-21 01:06:13','2025-06-21 01:06:13','42.524913','-76.323873',NULL,83818,6,6,'QGHZOS',NULL),(10,'Family Victorian \"View\" Home','rent','Occaecati aliquam adipisci omnis vitae fugit aut delectus. Nostrum quia libero corporis esse animi sequi. Non officia neque perspiciatis occaecati voluptatem atque iste. Dolorem odit temporibus reiciendis ipsa qui id in et.','Aut deleniti cumque temporibus aut. Enim dicta quia rerum deserunt cum sapiente quia nemo. Illum autem dolorem quae eius. Aspernatur enim et recusandae quaerat vitae illum assumenda. Iure qui id distinctio tempora beatae. Qui quidem ea neque nihil consectetur quos placeat. Possimus eos eum accusamus. Fugiat assumenda ratione quo eligendi. Assumenda possimus facere voluptatem exercitationem ut doloremque. Fugiat illo expedita est corporis. Illum dolore saepe qui atque.','7017 Rita Village Apt. 442\nWest Baby, AZ 86817-0791','[\"properties\\/5.jpg\",\"properties\\/11.jpg\",\"properties\\/12.jpg\",\"properties\\/4.jpg\",\"properties\\/8.jpg\",\"properties\\/1.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',17,6,3,78,990,510100.00,NULL,1,0,5,'month','renting',12,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-11-08',0,1,'2025-06-21 01:06:13','2025-06-21 01:06:13','43.43753','-75.031432',NULL,24754,5,5,'PFWBN2',NULL),(11,'Osaka Heights Apartment','rent','Ab atque nisi pariatur qui suscipit veniam. Cupiditate architecto necessitatibus natus dicta cumque. Voluptas error illum quia cum quidem nihil laboriosam.','Dolores praesentium sunt earum repudiandae odit esse. Et neque et repellat eligendi enim. Ut minus omnis labore nihil fugit. Omnis iste nobis sequi in voluptas qui consequatur veritatis. Explicabo qui ea neque sint commodi aut. Expedita rem quis unde rerum impedit vel. Omnis dolorem atque consequatur error illum qui assumenda. Iusto laborum cumque aspernatur ratione nemo quas ipsum quis.','29011 Oleta Roads\nPort Jilliantown, ND 07444','[\"properties\\/4.jpg\",\"properties\\/10.jpg\",\"properties\\/3.jpg\",\"properties\\/2.jpg\",\"properties\\/11.jpg\",\"properties\\/6.jpg\",\"properties\\/8.jpg\",\"properties\\/7.jpg\",\"properties\\/5.jpg\",\"properties\\/12.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',12,2,8,55,630,309600.00,NULL,0,0,2,'month','renting',4,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-07-30',0,1,'2025-06-21 01:06:13','2025-06-21 01:06:13','43.678369','-74.818309',NULL,73930,2,2,'3NQEHO',NULL),(12,'Private Estate Magnificent Views','sale','Provident nam dolorem velit. Necessitatibus ut omnis aut ipsa ea. Quis sint accusamus et. Nisi dolorem ab dolor magnam assumenda.','Porro veniam et nesciunt libero. Cupiditate sapiente sint rerum excepturi. Odit laborum qui aliquid autem sint rerum. Qui ea nobis tempore perspiciatis unde veritatis. Fuga ut iusto eos consectetur incidunt vero perspiciatis. Sint delectus aut fugit. Commodi nesciunt nostrum esse. Dolorum est saepe quaerat enim dignissimos dolores sit. Repellat eum eius dolorem. Sed quis tenetur perspiciatis. Ut quaerat soluta perferendis totam minus commodi et. Modi consectetur vel quae impedit ratione magnam. Perspiciatis modi quos ut molestias aliquam.','693 Konopelski Spring Suite 870\nNew Myahmouth, WY 62059','[\"properties\\/3.jpg\",\"properties\\/8.jpg\",\"properties\\/7.jpg\",\"properties\\/11.jpg\",\"properties\\/9.jpg\",\"properties\\/6.jpg\",\"properties\\/4.jpg\",\"properties\\/12.jpg\",\"properties\\/1.jpg\",\"properties\\/5.jpg\",\"properties\\/10.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',18,6,10,71,850,478600.00,NULL,0,0,6,'month','selling',9,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-05-21',0,1,'2025-06-21 01:06:13','2025-06-21 01:06:13','42.895388','-76.133889',NULL,57318,6,6,'LB2PK6',NULL),(13,'Thompson Road House for rent','sale','Ratione repellendus rerum possimus voluptatem eum. Iusto maxime eum illo corporis. Occaecati distinctio esse quos voluptates.','Ipsam nesciunt quam adipisci laudantium id ipsa ipsum. Sit vel voluptatem voluptatum rerum fuga ut recusandae. Magni iusto aut vel eveniet quo dolor ullam. At quod dolorum rerum. Quod dolore culpa nihil et non fugit et. Blanditiis voluptatum quod optio sed sequi deserunt ut. Vel id in voluptatum consequatur voluptas. Quisquam quis ut corrupti quidem non ex. Natus quisquam autem voluptates quisquam doloribus inventore. Hic non assumenda incidunt sequi. Recusandae qui doloribus eaque libero laborum. Velit aut nisi modi dicta veniam est a aspernatur. Reprehenderit architecto molestias qui.','522 Morar Plains Suite 220\nLake Cielo, GA 12435-1124','[\"properties\\/8.jpg\",\"properties\\/2.jpg\",\"properties\\/10.jpg\",\"properties\\/11.jpg\",\"properties\\/12.jpg\",\"properties\\/1.jpg\",\"properties\\/3.jpg\",\"properties\\/9.jpg\",\"properties\\/6.jpg\",\"properties\\/7.jpg\",\"properties\\/4.jpg\",\"properties\\/5.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',16,10,1,33,340,159300.00,NULL,0,0,6,'month','selling',11,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-07-24',0,1,'2025-06-21 01:06:13','2025-06-21 01:06:13','42.725032','-75.465796',NULL,41270,6,6,'M4YGLW',NULL),(14,'Brand New 1 Bedroom Apartment In First Class Location','rent','Est provident ratione laboriosam ut ea voluptatum eius. Ducimus maxime dignissimos quia. Ut harum temporibus distinctio architecto assumenda fugit aut ut. Perferendis ex eligendi eum vero ipsam aut laudantium. Et aut et cum dignissimos.','Id dolore et distinctio rerum. Non voluptatibus quis ullam voluptate voluptas dolor. Enim quam reiciendis ut aliquid et. Quos harum fugiat quasi id. Quibusdam eveniet ut nemo. Sit architecto totam aut sed. Quia qui molestias harum qui tempore. Aspernatur aliquid dicta sed laboriosam. Aut nesciunt omnis inventore cupiditate. Consequatur aperiam eius sapiente dicta officia doloribus tempore doloremque. Error excepturi et possimus maiores natus. Illum et non amet veniam sed ut maiores. Facilis ut laborum nam cum eius. Voluptatum facilis voluptatem vel aperiam minus sit. Sed sint tenetur blanditiis assumenda nihil.','790 Heller Lakes\nLake Kiannafurt, MN 21526','[\"properties\\/2.jpg\",\"properties\\/11.jpg\",\"properties\\/8.jpg\",\"properties\\/12.jpg\",\"properties\\/4.jpg\",\"properties\\/6.jpg\",\"properties\\/9.jpg\",\"properties\\/3.jpg\",\"properties\\/7.jpg\",\"properties\\/1.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',15,6,2,39,460,671100.00,NULL,1,0,6,'month','renting',5,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-12-13',0,1,'2025-06-21 01:06:13','2025-06-21 01:06:13','43.945461','-76.479496',NULL,62352,6,6,'6IISO4',NULL),(15,'Elegant family home presents premium modern living','rent','Sed porro eos et consequatur quas minus quis minus. Suscipit ipsa est placeat iusto tempora qui. Ipsa fuga voluptates magnam.','Aut magni explicabo est corrupti consectetur odio ex officia. Cupiditate non vitae neque. Molestias nihil vel accusamus rerum delectus. In quo voluptate ut voluptatem. Qui rem quas consequatur beatae est ducimus. In aut ut voluptate perspiciatis consequatur ipsam. Non autem eveniet nulla aspernatur. Nemo repellat eveniet possimus voluptas rerum. Non reprehenderit voluptas vitae in. Doloremque provident deserunt deserunt dicta. Repellendus voluptate qui modi magni maiores accusantium. Et culpa nemo rerum amet nemo aperiam voluptas quisquam. Assumenda vel magni quia qui dolores quibusdam. Amet dolore ipsam aut omnis repellat. Natus perspiciatis ipsum illum autem totam.','18944 Parisian Terrace\nLake Haroldhaven, NM 56269','[\"properties\\/2.jpg\",\"properties\\/6.jpg\",\"properties\\/9.jpg\",\"properties\\/5.jpg\",\"properties\\/10.jpg\",\"properties\\/3.jpg\",\"properties\\/12.jpg\",\"properties\\/8.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',7,10,3,7,980,532700.00,NULL,0,0,4,'month','renting',4,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-10-28',0,1,'2025-06-21 01:06:13','2025-06-21 01:06:13','42.888557','-76.014987',NULL,4547,4,4,'1IB4W3',NULL),(16,'Luxury Apartments in Singapore for Sale','rent','Voluptatibus quia eos quia quam accusantium aliquid possimus. Aut reprehenderit ducimus ut veniam similique nam ad qui. Est facere fugiat ducimus.','Eius voluptas consequatur accusamus maiores sunt. Enim iure rem fugit nihil aliquid et omnis fuga. Ipsum quas animi nemo nisi at. Consectetur odit officiis mollitia at est. Natus ea optio perferendis cupiditate omnis nostrum est. Odio molestias quae fugiat in. Aut nemo consequuntur soluta nostrum rerum. Molestiae voluptas voluptas perspiciatis omnis doloribus est dolorem hic. Pariatur rem quibusdam doloremque.','734 Stokes Inlet Suite 452\nDorafurt, AL 18344','[\"properties\\/8.jpg\",\"properties\\/12.jpg\",\"properties\\/5.jpg\",\"properties\\/6.jpg\",\"properties\\/9.jpg\",\"properties\\/2.jpg\",\"properties\\/3.jpg\",\"properties\\/10.jpg\",\"properties\\/7.jpg\",\"properties\\/1.jpg\",\"properties\\/4.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',4,1,8,49,150,402100.00,NULL,1,0,1,'month','renting',10,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-05-27',0,1,'2025-06-21 01:06:13','2025-06-21 01:06:13','43.809707','-74.798234',NULL,17424,1,1,'GUB7RP',NULL),(17,'5 room luxury penthouse for sale in Kuala Lumpur','sale','Itaque sed numquam adipisci omnis repellat. Omnis unde et repudiandae voluptas.','Assumenda ratione perspiciatis omnis sint fugiat. Adipisci expedita nihil reiciendis consectetur dolores minima. Non reiciendis possimus et saepe sit et debitis. Amet veniam ab quis hic et voluptas quia. Nisi sequi cumque qui maxime eaque ut. Voluptas sapiente impedit aut harum rerum. Voluptatem tempora et accusantium distinctio. Non incidunt dolor sit sed rerum. Quo ab dignissimos dolorem reiciendis qui tempora.','15208 Hessel Lane Apt. 556\nSouth Garth, NM 33763-5999','[\"properties\\/10.jpg\",\"properties\\/7.jpg\",\"properties\\/4.jpg\",\"properties\\/9.jpg\",\"properties\\/6.jpg\",\"properties\\/2.jpg\",\"properties\\/5.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',10,6,8,56,360,10300.00,NULL,0,0,1,'month','selling',8,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-11-18',0,1,'2025-06-21 01:06:13','2025-06-21 01:06:13','42.961487','-75.239378',NULL,33733,1,1,'SXPSZ7',NULL),(18,'2 Floor house in Compound Pejaten Barat Kemang','rent','Id ut exercitationem in delectus unde vero qui. Quia iure quia distinctio repellat. Ut ab dolorum ea modi quaerat.','Harum totam repellendus voluptates. Dolorem tenetur pariatur quos aut qui. Sunt assumenda non repellendus qui. In cupiditate quae similique autem quis reiciendis voluptatibus. Tenetur ullam nam neque perspiciatis aut rem pariatur. Praesentium in quia eius voluptatem quia suscipit deserunt illum. Cupiditate non aut laboriosam libero ipsum ut. Hic optio commodi ut nemo asperiores et. Sit nulla assumenda consequatur aut quia et exercitationem ipsa. Et dignissimos sed dicta. Qui molestiae a et blanditiis quidem. Voluptatem dolor sapiente qui sunt quia natus reiciendis dolorem. Vero eos ut culpa. Sed ullam nemo facilis voluptatem cum dignissimos voluptas.','167 Hessel Mountains\nPort Ethelyn, RI 81749-1234','[\"properties\\/11.jpg\",\"properties\\/10.jpg\",\"properties\\/1.jpg\",\"properties\\/5.jpg\",\"properties\\/7.jpg\",\"properties\\/2.jpg\",\"properties\\/6.jpg\",\"properties\\/8.jpg\",\"properties\\/12.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',7,9,9,84,850,938700.00,NULL,1,0,1,'month','renting',10,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-11-15',0,1,'2025-06-21 01:06:13','2025-06-21 01:06:13','43.578054','-75.573023',NULL,3230,1,1,'VZMP5Z',NULL),(19,'Apartment Muiderstraatweg in Diemen','rent','Sint aut magnam odit non incidunt. Maiores temporibus itaque dolore excepturi. Et alias deserunt voluptatem fugiat sunt odit. Delectus voluptatem dolores maxime in qui.','Non laboriosam quaerat et natus et quaerat id. Aperiam delectus voluptas fugit odio dolorem voluptatem. Optio accusamus corporis voluptatibus doloribus exercitationem illo. Non ut voluptate rem eum perferendis consequuntur libero. Voluptatem qui qui placeat ab vitae autem. Corrupti maxime eaque nihil voluptas necessitatibus. Commodi corporis tenetur ex et similique.','66606 Ondricka Ports Suite 707\nNorth Aliyah, KS 13572-4683','[\"properties\\/6.jpg\",\"properties\\/10.jpg\",\"properties\\/2.jpg\",\"properties\\/7.jpg\",\"properties\\/11.jpg\",\"properties\\/12.jpg\",\"properties\\/1.jpg\",\"properties\\/4.jpg\",\"properties\\/3.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',9,10,3,29,70,655700.00,NULL,1,0,4,'month','renting',12,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-09-18',0,1,'2025-06-21 01:06:13','2025-06-21 01:06:13','43.994475','-76.357903',NULL,62610,4,4,'NS51WY',NULL),(20,'Nice Apartment for rent in Berlin','sale','Aut impedit architecto voluptatem et aut repudiandae vitae. Voluptate iste nam vel doloremque rerum eos. Nesciunt nihil qui qui aperiam.','Quasi et omnis harum vel et nobis quia quia. Soluta libero dolores accusantium dolore. Voluptatem sit reiciendis saepe magni. Veniam atque harum consequatur aut rerum veniam. Id dolor vitae neque vel veniam voluptas quia dolorum. Dolores numquam maxime consequuntur consequatur et soluta. Aut consequatur doloremque repellat hic voluptatum libero aut. Perspiciatis facere enim ut atque officia. Incidunt perspiciatis numquam nesciunt ut itaque.','458 Powlowski Place Apt. 419\nChaseview, NY 13092-2027','[\"properties\\/10.jpg\",\"properties\\/1.jpg\",\"properties\\/11.jpg\",\"properties\\/3.jpg\",\"properties\\/8.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',16,10,5,54,690,420000.00,NULL,1,0,2,'month','selling',11,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-03-01',0,1,'2025-06-21 01:06:13','2025-06-21 01:06:13','42.542795','-76.252788',NULL,33616,2,2,'1JUD4P',NULL),(21,'Pumpkin Key - Private Island','sale','Ut consequatur ea consequatur ipsum voluptas fuga necessitatibus. Laboriosam a quis dolorem aut officia. Itaque atque consequatur cumque ipsum odio provident sequi. Consequatur laboriosam dolore illo soluta.','Ut quasi laboriosam pariatur alias consectetur. Inventore neque dolorem corrupti animi quia voluptatem aperiam accusamus. Illum corporis quis deserunt sunt. Magni aut officiis similique totam doloribus. A eaque fugiat et et dolore. Suscipit quis hic dolorum quaerat voluptatum aut sunt. Et cumque vel est amet. Aperiam voluptatem deserunt aut aut. Illum quis optio est saepe velit doloremque. Ipsum nam earum aut labore. Iusto omnis voluptatem qui nesciunt vero sequi molestias. Soluta est sit porro.','60512 Clay Viaduct Apt. 067\nEast Chester, RI 68004-7094','[\"properties\\/11.jpg\",\"properties\\/2.jpg\",\"properties\\/12.jpg\",\"properties\\/8.jpg\",\"properties\\/3.jpg\",\"properties\\/10.jpg\",\"properties\\/1.jpg\",\"properties\\/6.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',2,7,6,97,930,482700.00,NULL,0,0,6,'month','selling',11,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-06-30',0,1,'2025-06-21 01:06:13','2025-06-21 01:06:13','43.22334','-74.805041',NULL,90245,6,6,'KNCG1S',NULL),(22,'Maplewood Estates','sale','Ipsa blanditiis odio nobis nihil. Consequuntur sit possimus maiores soluta natus tempora. Tempora et aut rerum aut nobis. Ducimus enim aliquid aspernatur.','Velit ut consequatur reprehenderit culpa. Sint non quia consequatur aut. Et sint perferendis corporis odit commodi. Deserunt voluptates necessitatibus suscipit qui vero maxime sint quis. Totam sed illum totam. Consequatur sint molestias ipsam. Quo iusto animi sapiente ea. Consequatur perferendis eum numquam quibusdam quidem quaerat. Eligendi nihil et et. Natus dolorem pariatur amet optio aliquam ullam dolorum velit. Enim ut aliquid voluptas aperiam aut aspernatur repellendus. Assumenda eum ea aut numquam.','501 Johnston Ridges\nHesselport, IL 16354','[\"properties\\/5.jpg\",\"properties\\/3.jpg\",\"properties\\/10.jpg\",\"properties\\/7.jpg\",\"properties\\/12.jpg\",\"properties\\/9.jpg\",\"properties\\/8.jpg\",\"properties\\/4.jpg\",\"properties\\/2.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',16,7,7,97,100,805700.00,NULL,1,0,1,'month','selling',3,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-12-18',0,1,'2025-06-21 01:06:13','2025-06-21 01:06:13','43.796295','-74.852219',NULL,32512,1,1,'Q21ZMA',NULL),(23,'Pine Ridge Manor','sale','Eius voluptas id aperiam eos aut blanditiis aut. Et nisi est aliquid consequatur. Officiis ut recusandae doloribus quia.','Autem aliquid enim sed cumque et. At modi quo quo et. Dolorum sed rerum suscipit. Error est recusandae sunt quaerat aut est. Animi illo veniam voluptas repudiandae. Quisquam minima nam omnis accusantium. Voluptas repellat distinctio nesciunt et odio. Provident asperiores error et natus quo temporibus. Distinctio laborum consequuntur omnis natus sunt. Eaque dolores animi delectus officiis.','99818 Brown Creek\nLake Ramonaland, WV 48491-1679','[\"properties\\/9.jpg\",\"properties\\/10.jpg\",\"properties\\/3.jpg\",\"properties\\/7.jpg\",\"properties\\/1.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',11,1,1,72,700,948100.00,NULL,0,0,4,'month','selling',1,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-12-31',0,1,'2025-06-21 01:06:13','2025-06-21 01:06:13','42.699166','-75.769393',NULL,63710,4,4,'RZZTEU',NULL),(24,'Oak Hill Residences','rent','Adipisci nulla occaecati explicabo quaerat commodi commodi animi. Aut veniam similique mollitia. Et incidunt soluta tempore error voluptates sint.','Voluptatem suscipit officia voluptatem aut. Iste eum reprehenderit repudiandae harum exercitationem perferendis doloribus. Non suscipit labore dolorem corporis voluptatem. Voluptatum fugiat hic quia eaque. Enim et deleniti facere autem voluptate aliquid. Corrupti occaecati et soluta explicabo officia consectetur non. Quia rerum vero laudantium quis. Repellendus adipisci debitis dolorem earum qui et tempora quidem.','27037 Blanche Meadows\nWest Lazarobury, VT 93811-2534','[\"properties\\/5.jpg\",\"properties\\/10.jpg\",\"properties\\/4.jpg\",\"properties\\/2.jpg\",\"properties\\/6.jpg\",\"properties\\/7.jpg\",\"properties\\/12.jpg\",\"properties\\/8.jpg\",\"properties\\/1.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',17,10,9,16,490,461400.00,NULL,1,0,2,'month','renting',5,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-10-08',0,1,'2025-06-21 01:06:14','2025-06-21 01:06:14','43.190096','-75.501553',NULL,83013,2,2,'RHUPKR',NULL),(25,'Sunnybrook Villas','sale','Architecto reiciendis aspernatur ullam omnis sunt ut. Similique consequuntur dolore impedit cum rerum commodi. Facere est officia eius id. Accusamus ut temporibus debitis in praesentium ut architecto. Fuga dolorem aut sed voluptas animi ea.','Autem suscipit deleniti exercitationem. Adipisci quia ipsa et ipsa laudantium. Exercitationem totam vero molestiae quas occaecati nulla et. Enim porro nemo at est quo. Ipsum magni in iste sed porro. Sint molestiae ab voluptas quis et. Recusandae harum et officia consequatur possimus ratione laborum illo. Magni nulla esse nesciunt aliquam magni voluptas voluptatibus. Impedit et quae dolorem incidunt rerum quis corporis ad. Quo reiciendis ipsam rerum quisquam dolorum. Nisi totam neque incidunt ad minima aliquam. Amet voluptas debitis labore consequuntur rerum aliquid velit.','133 Teresa Neck Apt. 500\nAbbotttown, NM 61535','[\"properties\\/4.jpg\",\"properties\\/7.jpg\",\"properties\\/8.jpg\",\"properties\\/1.jpg\",\"properties\\/6.jpg\",\"properties\\/2.jpg\",\"properties\\/12.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',17,10,6,98,40,311000.00,NULL,1,0,4,'month','selling',9,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-02-22',0,1,'2025-06-21 01:06:14','2025-06-21 01:06:14','43.099958','-74.856789',NULL,48013,4,4,'5SEEPN',NULL),(26,'Riverstone Condominiums','rent','Qui quidem consequatur quia error modi iure. Voluptatem voluptates nemo neque voluptas velit. Recusandae aliquid facere accusantium animi voluptatem iste quibusdam consequatur.','Expedita officiis accusamus porro fugit et. Porro asperiores eos fugiat aut distinctio natus. Labore saepe quam pariatur beatae laborum ea explicabo. Corrupti pariatur quia corrupti dolor. Magni consequatur est voluptate voluptas voluptatem incidunt. Veniam atque nam in vero dolorem error. Aut vel assumenda possimus porro. Cupiditate ullam praesentium est sapiente consectetur consequatur quam. Facilis eos ut voluptas adipisci ad pariatur velit. Et voluptatem excepturi distinctio rerum atque aut eos. Adipisci laborum nobis est neque labore eius id facere.','8229 Donnelly Course\nOrlandomouth, WV 89705','[\"properties\\/8.jpg\",\"properties\\/1.jpg\",\"properties\\/3.jpg\",\"properties\\/6.jpg\",\"properties\\/5.jpg\",\"properties\\/12.jpg\",\"properties\\/4.jpg\",\"properties\\/2.jpg\",\"properties\\/7.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',11,3,7,64,230,889000.00,NULL,0,0,3,'month','renting',1,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-02-23',0,1,'2025-06-21 01:06:14','2025-06-21 01:06:14','43.054995','-74.837868',NULL,750,3,3,'0PAVTE',NULL),(27,'Cedar Park Apartments','rent','Cum odit consequatur necessitatibus libero. Alias eveniet explicabo reprehenderit dignissimos occaecati at. In est dolorum consectetur qui doloremque asperiores. Eligendi omnis nemo corporis aliquam omnis beatae omnis non.','Earum aut neque rerum sequi consequatur rem. Odit distinctio veritatis repellendus amet explicabo incidunt itaque. Omnis illum quos incidunt commodi. Amet voluptate perspiciatis et ut. Culpa recusandae vitae facere consequatur. Porro amet perferendis aut aliquam reprehenderit a. Debitis soluta corporis sit vero. Aut magnam velit sequi perspiciatis reprehenderit dolores temporibus inventore. Nam quis sed quaerat qui. Commodi consequatur eum distinctio vel aut voluptas laborum.','2533 Katarina Falls Suite 614\nLake Evieside, ND 00381','[\"properties\\/7.jpg\",\"properties\\/9.jpg\",\"properties\\/10.jpg\",\"properties\\/3.jpg\",\"properties\\/12.jpg\",\"properties\\/11.jpg\",\"properties\\/4.jpg\",\"properties\\/2.jpg\",\"properties\\/5.jpg\",\"properties\\/1.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',4,8,7,40,740,649400.00,NULL,1,0,6,'month','renting',8,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-04-04',0,1,'2025-06-21 01:06:14','2025-06-21 01:06:14','43.653629','-76.096686',NULL,86215,6,6,'TR0BSP',NULL),(28,'Lakeside Retreat','sale','Vel voluptatem animi perspiciatis expedita sequi iure dolorem. Enim eos eum ullam eos totam ea et.','Praesentium non quisquam hic est. Asperiores dicta consectetur dolor earum ipsa illo. Occaecati fugiat quasi est quo. Iste sed cupiditate quisquam aut quod id. Impedit facilis laborum libero accusantium sint. Aut itaque sint autem debitis. Aut veritatis id odit est. Voluptatem error iste et magnam exercitationem est ut. Minus deleniti ducimus et corrupti voluptatem.','106 Camilla Forge\nGreenfeldertown, PA 88170','[\"properties\\/6.jpg\",\"properties\\/9.jpg\",\"properties\\/7.jpg\",\"properties\\/12.jpg\",\"properties\\/10.jpg\",\"properties\\/1.jpg\",\"properties\\/5.jpg\",\"properties\\/3.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',7,4,4,75,670,353200.00,NULL,1,0,4,'month','selling',6,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-05-05',0,1,'2025-06-21 01:06:14','2025-06-21 01:06:14','42.852639','-76.524025',NULL,26980,4,4,'5LUI18',NULL),(29,'Willow Creek Homes','rent','Est molestiae omnis consequatur voluptatibus ducimus. Voluptates aut voluptas consequatur qui. Similique minus explicabo earum pariatur labore itaque adipisci omnis. Blanditiis at possimus molestiae voluptatem qui voluptatem sint.','Ratione id eum illum repudiandae accusantium voluptatum inventore. Ipsa facere beatae repellat qui ut. Voluptatem assumenda cupiditate et non repellendus eius rerum. Necessitatibus consequatur minima odio earum ullam. Qui quis et consequatur libero nostrum nihil. Soluta vitae voluptatem sapiente nam rem voluptatem assumenda rerum. Eligendi laboriosam ad quas. Sit consequatur in eaque. Accusantium nesciunt molestiae occaecati neque autem esse cum. Quod rem similique qui beatae reiciendis. Est non cupiditate vel aut sequi. Aperiam sint unde dolorem. Iusto consequatur qui voluptates ipsum eius.','1054 Ewell Corner Suite 758\nPacochatown, AZ 79069','[\"properties\\/11.jpg\",\"properties\\/3.jpg\",\"properties\\/10.jpg\",\"properties\\/8.jpg\",\"properties\\/6.jpg\",\"properties\\/1.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',14,7,7,31,660,870000.00,NULL,1,0,3,'month','renting',3,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-11-25',0,1,'2025-06-21 01:06:14','2025-06-21 01:06:14','43.683511','-76.231312',NULL,5843,3,3,'JHTJS6',NULL),(30,'Grandview Heights','rent','Ut odio corporis quo earum quia eligendi architecto. Doloribus sit nihil non aliquam harum. Iste natus omnis et alias et iste. Voluptate reiciendis hic eum vitae est provident.','Nihil nobis voluptatem veniam mollitia officia eveniet. Iusto repudiandae debitis quaerat voluptatem consequatur voluptatem et perferendis. Esse minima nemo labore. Numquam necessitatibus mollitia asperiores quia numquam sed atque. Repudiandae ut architecto similique voluptatum maxime molestiae architecto. Non beatae odit corporis omnis deleniti odit non reprehenderit. Sint totam qui commodi quam.','1832 Schimmel Walk Apt. 228\nRashadtown, MI 37141','[\"properties\\/8.jpg\",\"properties\\/6.jpg\",\"properties\\/4.jpg\",\"properties\\/12.jpg\",\"properties\\/3.jpg\",\"properties\\/9.jpg\",\"properties\\/7.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',11,9,4,67,600,334600.00,NULL,1,0,1,'month','renting',6,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-12-30',0,1,'2025-06-21 01:06:14','2025-06-21 01:06:14','42.632704','-76.009975',NULL,5455,1,1,'5RHMO2',NULL),(31,'Forest Glen Cottages','rent','Provident sed libero ut nihil sapiente. Voluptatem corporis dolores voluptas cumque blanditiis quo. Quod ab eaque sit quia consequatur quidem. Maxime consequuntur saepe possimus sunt sit cumque.','Nostrum ea repudiandae ullam rerum vero. Sunt libero dolorem alias rerum magni mollitia. Sit quas qui et tenetur et. Mollitia id quae sit. Doloremque saepe nihil consequatur ducimus aut nostrum earum deleniti. Eius ut ex qui nostrum laborum. Cupiditate mollitia ducimus eum eos eum qui repellat. Nihil qui dolorum et perferendis. Autem dolores ut neque vero ut. Eveniet vitae debitis voluptatibus repudiandae iste. Nam velit laborum dolores nihil magnam minus. Doloribus nulla et amet et ut voluptatibus. Aut consequatur quo qui perferendis animi odio.','929 Ryann Circles\nSouth Waynefort, ND 22454-1590','[\"properties\\/4.jpg\",\"properties\\/9.jpg\",\"properties\\/8.jpg\",\"properties\\/11.jpg\",\"properties\\/7.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',18,9,7,20,20,591600.00,NULL,1,0,2,'month','renting',1,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-01-28',0,1,'2025-06-21 01:06:14','2025-06-21 01:06:14','43.081016','-76.267241',NULL,28877,2,2,'A8OJ7M',NULL),(32,'Harborview Towers','rent','Fugit quisquam ea iusto eum officiis. Officia error sunt sunt non occaecati voluptas.','Et nobis repellendus id provident esse quasi. Autem nostrum cumque rerum consequatur temporibus et sunt. Expedita ea et repudiandae voluptate. Eaque recusandae eligendi cum ut. Vero sunt quidem quia est corporis reiciendis voluptatem. Ipsum repellat quasi non eaque accusamus voluptates. Vel sed laudantium dolorem velit sed mollitia. Quidem qui nihil est debitis.','57152 Stehr Freeway\nGlennieview, MN 65208-4223','[\"properties\\/4.jpg\",\"properties\\/9.jpg\",\"properties\\/11.jpg\",\"properties\\/5.jpg\",\"properties\\/1.jpg\",\"properties\\/7.jpg\",\"properties\\/2.jpg\",\"properties\\/10.jpg\",\"properties\\/8.jpg\",\"properties\\/12.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',2,10,5,68,80,890600.00,NULL,0,0,2,'month','renting',12,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-09-29',0,1,'2025-06-21 01:06:14','2025-06-21 01:06:14','42.550512','-75.836897',NULL,85023,2,2,'HTMLKA',NULL),(33,'Meadowlands Estates','rent','Laborum earum explicabo mollitia doloribus fugiat numquam quia. Incidunt perferendis minima ut ad deleniti.','Autem pariatur vero nam officiis veritatis modi temporibus. Quae ut rerum adipisci perspiciatis eaque. Fugiat quia et eius debitis et hic. Possimus cumque praesentium vel necessitatibus omnis. Quia ut iure maiores at est. Animi reiciendis nihil labore ratione porro laborum. Explicabo qui rerum sit quia. Sunt commodi labore sit voluptatum mollitia tempore minus. Sed quis sit ab dolorem libero voluptatem voluptate. Accusamus id vel aut non nihil temporibus occaecati. Quasi quia soluta labore est facere soluta. Deleniti et blanditiis similique repellat dolores nulla itaque. Atque placeat aspernatur sunt.','55292 Lelia Light Apt. 854\nWest Berneicefurt, VA 48890','[\"properties\\/11.jpg\",\"properties\\/9.jpg\",\"properties\\/1.jpg\",\"properties\\/12.jpg\",\"properties\\/8.jpg\",\"properties\\/3.jpg\",\"properties\\/7.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',2,7,2,99,40,882000.00,NULL,1,0,6,'month','renting',6,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-11-26',0,1,'2025-06-21 01:06:14','2025-06-21 01:06:14','43.863014','-75.688538',NULL,89948,6,6,'BZFR7O',NULL),(34,'Highland Meadows','sale','Sit et ea quidem omnis. Voluptas dolores nihil ut velit. Porro et aut adipisci a doloremque enim inventore ducimus.','Doloremque molestias porro iste occaecati. Neque quidem consequatur unde blanditiis quia. Et provident voluptatem repellat a repellendus sed. Modi explicabo totam nostrum praesentium aut libero consequuntur. Omnis doloribus hic illum est molestiae. Nisi exercitationem rerum maiores quasi quo quisquam dolores. Vero voluptas qui quia delectus in. Exercitationem ipsum qui iusto qui sapiente repudiandae.','4991 Jensen Springs Apt. 178\nSouth Diegomouth, MO 19986','[\"properties\\/7.jpg\",\"properties\\/9.jpg\",\"properties\\/5.jpg\",\"properties\\/3.jpg\",\"properties\\/11.jpg\",\"properties\\/2.jpg\",\"properties\\/1.jpg\",\"properties\\/6.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',15,10,9,7,950,84800.00,NULL,1,0,2,'month','selling',7,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-12-15',0,1,'2025-06-21 01:06:14','2025-06-21 01:06:14','42.655614','-75.127425',NULL,93590,2,2,'JSHWOB',NULL),(35,'Brookfield Gardens','sale','Voluptatum eius nihil sunt ab et possimus. Enim optio veniam ea et incidunt laudantium. Harum sed voluptas ut ducimus architecto nemo et.','Quo eos sunt et. Sapiente non nesciunt ea nisi et illum eum. Magni ut vel et ut ut impedit exercitationem. Voluptatem numquam ad ea. Sequi velit rem accusamus quis esse. Possimus molestias nisi ut repudiandae illo unde. Expedita voluptatem accusantium incidunt consequatur quaerat laborum. Accusamus architecto eos animi magni ducimus cupiditate veniam. Ut soluta voluptatem velit quae enim. Reprehenderit veniam aliquid ut cum sint. Illum corporis sed enim illum consectetur. Dolores incidunt corporis voluptate autem. Doloribus a cum consequatur iusto consectetur enim.','324 Schneider Neck Suite 774\nWest Geraldinebury, OR 70093-7938','[\"properties\\/1.jpg\",\"properties\\/10.jpg\",\"properties\\/9.jpg\",\"properties\\/8.jpg\",\"properties\\/3.jpg\",\"properties\\/7.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',1,7,5,28,770,930700.00,NULL,1,0,6,'month','selling',8,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-05-08',0,1,'2025-06-21 01:06:14','2025-06-21 01:06:14','43.79507','-75.619275',NULL,61170,6,6,'N5STAG',NULL),(36,'Silverwood Villas','sale','Possimus quibusdam voluptas ipsum repellat. Ullam aut aliquid possimus similique. Qui eum ut quisquam voluptatem debitis reiciendis. Sunt reiciendis officia alias minus officia.','Fuga qui exercitationem eum repellat qui. Et necessitatibus eius tempore sequi. Ab rerum similique amet dolore deserunt qui. Nesciunt labore voluptatem et ullam. Consequatur voluptates est fugit at tempore tenetur. Accusantium aperiam quis quia aut autem velit porro illum. Autem consequatur possimus provident quis ea asperiores est. Inventore voluptatem eum quia. Itaque ab assumenda enim non et dicta. Eaque nam eos officiis tempore et dolores suscipit. Et ipsum dolore et enim provident qui. Neque odit ipsa animi omnis.','62982 Joan Harbors Apt. 020\nNew Rupert, HI 78402-6728','[\"properties\\/12.jpg\",\"properties\\/1.jpg\",\"properties\\/6.jpg\",\"properties\\/9.jpg\",\"properties\\/11.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',16,2,10,84,1000,846100.00,NULL,1,0,2,'month','selling',7,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-03-29',0,1,'2025-06-21 01:06:15','2025-06-21 01:06:15','43.145944','-76.545466',NULL,19851,2,2,'5GMCMY',NULL),(37,'Evergreen Terrace','sale','Magni quibusdam commodi incidunt voluptate doloribus eaque. Maiores est nihil aut ut est est. Ea at maiores laborum sint eligendi recusandae eligendi.','Suscipit non nemo vel perspiciatis qui quasi. Sed ut eum dolorem asperiores alias deleniti. Expedita iste rerum voluptas. Voluptatum rerum rerum nulla aut asperiores id blanditiis est. Debitis ut soluta laudantium sint eius optio. Voluptatem ut vel repellat. Quisquam nobis possimus eaque. Temporibus ut et unde. Suscipit qui repellendus vel nam adipisci hic.','285 Auer Mills Apt. 243\nRetafort, DC 63058','[\"properties\\/6.jpg\",\"properties\\/10.jpg\",\"properties\\/2.jpg\",\"properties\\/8.jpg\",\"properties\\/4.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',1,2,10,63,140,225200.00,NULL,0,0,2,'month','selling',4,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-12-06',0,1,'2025-06-21 01:06:15','2025-06-21 01:06:15','43.921387','-75.255163',NULL,56871,2,2,'SAD605',NULL),(38,'Golden Gate Residences','rent','Delectus vel eaque velit sit sequi sequi. Explicabo in culpa reiciendis. Suscipit soluta provident nihil fugit. Voluptatibus quia odit maxime est eius ipsum.','Sed qui sapiente corrupti doloribus iste. Nihil aut quia tempora ipsa nulla expedita voluptates repellat. Officia architecto animi sint quis consequatur dolorem maxime. Accusantium quaerat quia vel quia voluptatem neque. Et deleniti facilis deserunt possimus qui. Recusandae et nihil eum atque quia velit. Amet impedit ex praesentium nemo nam doloribus numquam iusto. Sit laborum maiores quia blanditiis molestiae rem recusandae amet. Beatae ipsam beatae et veritatis ut. Nesciunt voluptatem vitae sed voluptatem quia non veritatis.','80714 Marilie Course\nDaremouth, IL 21569','[\"properties\\/10.jpg\",\"properties\\/1.jpg\",\"properties\\/6.jpg\",\"properties\\/2.jpg\",\"properties\\/12.jpg\",\"properties\\/8.jpg\",\"properties\\/9.jpg\",\"properties\\/11.jpg\",\"properties\\/5.jpg\",\"properties\\/3.jpg\",\"properties\\/4.jpg\",\"properties\\/7.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',1,3,1,30,560,445700.00,NULL,1,0,6,'month','renting',1,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-08-31',0,1,'2025-06-21 01:06:15','2025-06-21 01:06:15','43.952901','-75.570906',NULL,98450,6,6,'7OIF0A',NULL),(39,'Spring Blossom Park','rent','Ab vero ad doloremque molestias molestiae. Rem aut iste et rerum et quam aperiam. Doloribus pariatur aut praesentium culpa debitis sit. Dicta sed at aliquam molestiae vitae.','Sit at distinctio aperiam culpa ad cum. Odio laborum vel est. Et minus rerum temporibus harum minima velit. Est molestiae aut debitis et. Delectus velit unde vitae occaecati aliquid. Hic corporis ea aut reprehenderit. Voluptatibus neque minima beatae autem. Odit nisi autem necessitatibus sit. In fuga aut culpa ut. Ut sunt cupiditate ullam corporis voluptatum qui consectetur. Perspiciatis nihil reiciendis atque minima. Laudantium suscipit molestiae aut sunt molestias nemo nulla. Qui facilis sit quod fuga. Odio veniam vel eveniet a veniam maiores.','500 Einar Dam\nNew Benton, UT 22139','[\"properties\\/7.jpg\",\"properties\\/2.jpg\",\"properties\\/9.jpg\",\"properties\\/1.jpg\",\"properties\\/12.jpg\",\"properties\\/6.jpg\",\"properties\\/8.jpg\",\"properties\\/5.jpg\",\"properties\\/10.jpg\",\"properties\\/3.jpg\",\"properties\\/11.jpg\",\"properties\\/4.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',17,8,7,85,390,404200.00,NULL,0,0,3,'month','renting',7,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-08-20',0,1,'2025-06-21 01:06:15','2025-06-21 01:06:15','43.46439','-76.158382',NULL,49666,3,3,'FZW2T6',NULL),(40,'Horizon Pointe','rent','Illum eveniet atque dolore sint dolores. Commodi quasi cum est aut numquam earum cumque optio. Aut eligendi consequuntur provident sint vel.','Non officia labore et nihil recusandae. Ducimus mollitia ut numquam eius hic. Sapiente dicta excepturi adipisci quisquam. Voluptatem nesciunt et quae cupiditate. Modi fugit necessitatibus aliquam. Blanditiis quia quia ab doloribus. Ratione delectus aut nihil autem ea voluptatem. Expedita nesciunt voluptatibus aut unde. Voluptatem in voluptatum doloremque unde eum doloremque. Qui qui sint nemo sed. Inventore eius beatae sit est officia sint. Ut quas laudantium accusamus iste eum.','537 Littel Overpass\nNew Chance, MT 50615','[\"properties\\/6.jpg\",\"properties\\/5.jpg\",\"properties\\/4.jpg\",\"properties\\/12.jpg\",\"properties\\/8.jpg\",\"properties\\/9.jpg\",\"properties\\/1.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',1,9,2,13,960,162500.00,NULL,1,0,1,'month','renting',6,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-02-25',0,1,'2025-06-21 01:06:15','2025-06-21 01:06:15','43.648084','-75.827217',NULL,96086,1,1,'GRIXNX',NULL),(41,'Whispering Pines Lodge','sale','Quae blanditiis consequatur aut doloribus. Aut a doloribus ratione eum ea vero.','Laboriosam saepe doloribus est placeat suscipit quibusdam minima. Impedit ullam atque inventore officia. Aliquid sint sit animi natus. Eveniet aliquid deleniti ipsa quia quas necessitatibus. Perspiciatis ea perferendis consequatur nihil rerum et nulla non. Animi dolorem repellat sunt cupiditate sit nihil. Distinctio suscipit eaque in ea rem est. Id non ea eum dolore. Molestias dolorum omnis rerum perspiciatis vero culpa. Enim quas ducimus reiciendis dolorum ut alias facere et. Assumenda eligendi error fugiat ut. Eius vel consequuntur vero et. Tenetur fugiat harum est iste inventore.','58172 Christ Plain Suite 136\nJerroldshire, AL 06947-7502','[\"properties\\/4.jpg\",\"properties\\/7.jpg\",\"properties\\/9.jpg\",\"properties\\/11.jpg\",\"properties\\/2.jpg\",\"properties\\/6.jpg\",\"properties\\/3.jpg\",\"properties\\/5.jpg\",\"properties\\/8.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',8,6,9,43,50,990200.00,NULL,1,0,3,'month','selling',12,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-02-22',0,1,'2025-06-21 01:06:15','2025-06-21 01:06:15','43.418989','-76.30215',NULL,53692,3,3,'EE42WO',NULL),(42,'Sunset Ridge','sale','Eum autem facere commodi temporibus. Maxime laudantium aut eius nam eveniet quia. Magni quos omnis totam beatae explicabo dolores.','Dolorem quia corrupti cum perspiciatis possimus omnis recusandae. Odit commodi vero culpa labore eum. Voluptas libero aperiam facilis totam ex doloribus. Aut quo consequatur corrupti perferendis. Dignissimos ex sunt molestiae nostrum asperiores ad est officia. Saepe aut architecto molestias quia at ut. Non ratione dolores ab est odio voluptatibus nisi. Voluptates quo est non eligendi amet.','80619 Boehm Squares Apt. 818\nLelandbury, MD 87437','[\"properties\\/8.jpg\",\"properties\\/2.jpg\",\"properties\\/6.jpg\",\"properties\\/4.jpg\",\"properties\\/5.jpg\",\"properties\\/3.jpg\",\"properties\\/9.jpg\",\"properties\\/10.jpg\",\"properties\\/12.jpg\",\"properties\\/1.jpg\",\"properties\\/7.jpg\",\"properties\\/11.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',16,2,1,53,170,119500.00,NULL,0,0,5,'month','selling',12,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-05-23',0,1,'2025-06-21 01:06:15','2025-06-21 01:06:15','43.798457','-75.97433',NULL,35790,5,5,'4MAMWC',NULL),(43,'Timberline Estates','sale','Eum dicta sunt voluptas est. Aliquam impedit animi porro porro. Est voluptates culpa dolores maiores.','Iste ullam sunt at itaque sunt sit reiciendis. Id quis doloribus enim ea. Autem minus sapiente rerum natus vel ut. Possimus vel porro rerum est quisquam molestiae. Consequatur corrupti assumenda aut velit ipsam voluptas. Consequuntur occaecati autem doloribus recusandae modi explicabo. Adipisci saepe eos sint sed est explicabo. Molestiae illo animi occaecati occaecati. Consequuntur rerum id id neque. Accusamus ut assumenda officia sit pariatur nam. Nam eligendi nisi delectus repellat enim. Nihil cupiditate aut cumque consequatur in. Perferendis asperiores consequatur illo earum deserunt deleniti voluptatum. Nulla ut consequuntur in error.','72702 Christa Mission Apt. 103\nSpinkaville, OH 62956','[\"properties\\/2.jpg\",\"properties\\/1.jpg\",\"properties\\/9.jpg\",\"properties\\/5.jpg\",\"properties\\/12.jpg\",\"properties\\/7.jpg\",\"properties\\/8.jpg\",\"properties\\/4.jpg\",\"properties\\/10.jpg\",\"properties\\/3.jpg\",\"properties\\/11.jpg\",\"properties\\/6.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',15,2,5,36,940,280000.00,NULL,1,0,6,'month','selling',6,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-04-21',0,1,'2025-06-21 01:06:15','2025-06-21 01:06:15','43.778199','-76.535341',NULL,95752,6,6,'G8JMHG',NULL),(44,'Crystal Lake Condos','rent','Ipsam velit occaecati vitae aperiam ut iusto voluptas. Eius veritatis inventore quo. Quod adipisci soluta vero mollitia.','Consequatur velit alias dolores porro est necessitatibus cupiditate non. Unde sunt et natus sunt labore consectetur ratione. Et alias eius nisi molestiae. Sunt sapiente nesciunt non voluptas dolorum. Laboriosam est molestiae pariatur quas. Ut aut eum doloribus repudiandae. Tempore nobis qui ratione vel neque inventore consequuntur dolores. Asperiores harum ipsam aspernatur. Modi repellat saepe ipsam quisquam eum sapiente perspiciatis. Voluptatem molestias sunt esse non distinctio consequatur aut. Laudantium dolores rem rerum veritatis. Dolores quo sed consequuntur itaque. Repellendus et minus ratione vero. Quidem illo ut nostrum id.','96635 Nolan Forest Apt. 074\nNew June, AZ 87845-9145','[\"properties\\/12.jpg\",\"properties\\/10.jpg\",\"properties\\/1.jpg\",\"properties\\/5.jpg\",\"properties\\/6.jpg\",\"properties\\/8.jpg\",\"properties\\/9.jpg\",\"properties\\/7.jpg\",\"properties\\/3.jpg\",\"properties\\/11.jpg\",\"properties\\/4.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',13,2,5,63,180,492200.00,NULL,0,0,4,'month','renting',7,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-12-13',0,1,'2025-06-21 01:06:15','2025-06-21 01:06:15','42.569697','-75.165834',NULL,51423,4,4,'L4PBNR',NULL),(45,'Briarwood Apartments','rent','Ipsam et et quia rerum harum qui. Assumenda a ab magnam ipsa beatae. Enim distinctio odit facilis. Quidem quidem a quibusdam quia est.','Adipisci excepturi voluptates dolore suscipit et consequuntur dolor ipsum. Et excepturi qui delectus quis est non soluta. Voluptates doloribus et qui et nobis vel totam inventore. Aut dolorem omnis debitis modi corrupti animi. Possimus molestiae dolorem rem harum fugiat sunt et. Labore architecto voluptates in aut beatae. Magni omnis sit possimus repudiandae velit voluptatem. Nulla dolor qui ab laboriosam. Dolor et beatae sit iusto. Harum voluptatibus ratione sequi sit at.','98363 Langworth Motorway\nFlatleyfort, SC 53662','[\"properties\\/5.jpg\",\"properties\\/4.jpg\",\"properties\\/9.jpg\",\"properties\\/10.jpg\",\"properties\\/8.jpg\",\"properties\\/7.jpg\",\"properties\\/3.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',14,8,9,96,160,897900.00,NULL,1,0,1,'month','renting',9,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-08-09',0,1,'2025-06-21 01:06:15','2025-06-21 01:06:15','42.866952','-75.045662',NULL,84319,1,1,'IXVMVN',NULL),(46,'Summit View','sale','Dolorem quisquam et eligendi ut. Velit quidem quam ad qui ex. Quia quo aspernatur quia animi suscipit. Sunt blanditiis facilis voluptatibus perferendis quibusdam officiis et illum.','Consequatur modi laboriosam dolores itaque non eaque nam rem. Nesciunt inventore architecto modi enim quia nulla neque. Omnis dolorem dolorem amet voluptatem est dignissimos. Soluta delectus eaque est omnis. Voluptatem molestias nostrum dolorum ab et error laborum molestiae. Error veritatis omnis et excepturi recusandae. Eius alias explicabo id molestiae at rerum eius voluptatem. Est in ut ut et. Dolorum quo aliquid molestiae quia sunt omnis. Tenetur laboriosam consequatur molestiae excepturi harum sequi consequatur aut. Dolorem praesentium sapiente sed et. Non accusamus mollitia qui nulla harum. Id suscipit velit velit dicta. Sed consequatur assumenda et dolor sint ducimus. Dolorum vel voluptatum commodi explicabo excepturi quaerat sit.','92866 Towne Highway Apt. 105\nNorth Lester, OH 78992-0562','[\"properties\\/10.jpg\",\"properties\\/12.jpg\",\"properties\\/2.jpg\",\"properties\\/6.jpg\",\"properties\\/5.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',13,3,5,3,300,331100.00,NULL,1,0,6,'month','selling',7,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-03-05',0,1,'2025-06-21 01:06:15','2025-06-21 01:06:15','43.763022','-76.571718',NULL,38840,6,6,'QROORC',NULL),(47,'Elmwood Park','rent','Voluptas commodi a et. Beatae similique voluptatem laboriosam et et beatae quisquam praesentium. Nisi dicta ut vero odit aliquid.','Sapiente qui ut dicta aspernatur odio velit. Eos et perspiciatis consequatur et. Nisi animi assumenda sed vitae in rerum placeat fugiat. Qui ad mollitia dolorem est. Sit quibusdam porro eos praesentium ad. Reiciendis numquam quo sed. Hic maiores repudiandae nam est quam ducimus. Eum eos impedit fuga voluptate tempore aspernatur. Cumque reiciendis est dolor eum aut. Soluta dicta eum est et aspernatur. Id consequuntur molestiae quo laborum. Ipsam neque veritatis cupiditate dicta suscipit dicta aperiam.','9306 Simonis Crescent Suite 974\nWeimannport, OK 58503-7994','[\"properties\\/7.jpg\",\"properties\\/1.jpg\",\"properties\\/9.jpg\",\"properties\\/12.jpg\",\"properties\\/8.jpg\",\"properties\\/4.jpg\",\"properties\\/3.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',17,10,4,14,350,632200.00,NULL,0,0,4,'month','renting',8,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-10-18',0,1,'2025-06-21 01:06:15','2025-06-21 01:06:15','42.884752','-75.622201',NULL,82205,4,4,'NRNJ1K',NULL),(48,'Stonegate Homes','rent','Nihil magni qui repellat iure ullam. Asperiores minus aperiam iure alias sit nemo ducimus. A sed consectetur aut cum esse sit magni voluptates. Temporibus nobis vel repellat inventore libero.','Explicabo quos vitae facere necessitatibus. Eligendi eaque nulla vel. Quis distinctio laudantium iste et non vero doloribus ducimus. Mollitia quia at et harum est natus. Rerum et et perspiciatis. Quis explicabo quis autem magni et est voluptates. Corrupti delectus id et occaecati. Porro aut voluptatem officia facere ut. Quis vero error quo quis ducimus. Ipsam et suscipit et sint qui. Aliquid vel voluptatem explicabo eligendi repellat nihil. Rerum quidem non et aperiam assumenda voluptate. Rerum molestiae eligendi sunt numquam. Eveniet rerum quo eum similique nesciunt.','3760 Fahey Roads Apt. 263\nNorth Thad, CA 99800','[\"properties\\/2.jpg\",\"properties\\/9.jpg\",\"properties\\/1.jpg\",\"properties\\/5.jpg\",\"properties\\/3.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',8,6,1,10,240,733900.00,NULL,1,0,5,'month','renting',5,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-05-17',0,1,'2025-06-21 01:06:15','2025-06-21 01:06:15','44.001911','-75.071969',NULL,5555,5,5,'VXMODD',NULL),(49,'Rosewood Villas','sale','Aut et eaque commodi corporis quia enim est exercitationem. Nihil rerum soluta itaque qui sit molestiae natus. Laboriosam impedit quis ullam aliquid quia voluptas temporibus.','Harum ea eaque est mollitia. Sint quaerat tempora aperiam totam aperiam ut ratione. Quia blanditiis quas et aut vel at placeat. Saepe ipsum placeat ducimus nisi voluptatem. Id quisquam consequatur rerum. Facere consectetur autem distinctio beatae qui dolores. Laboriosam nisi nulla quod nihil.','54150 Baumbach Squares Apt. 312\nWest Bridget, HI 98568','[\"properties\\/7.jpg\",\"properties\\/1.jpg\",\"properties\\/4.jpg\",\"properties\\/10.jpg\",\"properties\\/2.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',1,2,8,90,580,448200.00,NULL,0,0,4,'month','selling',8,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-01-05',0,1,'2025-06-21 01:06:15','2025-06-21 01:06:15','42.548388','-75.407832',NULL,11705,4,4,'SYQA1M',NULL),(50,'Prairie Meadows','rent','Architecto ea error odit repellendus. Rerum est eius sit atque culpa dolorum error. Eaque autem doloribus eum eius quibusdam rerum.','Temporibus at eveniet repudiandae quis ex consequatur architecto. Quod provident veritatis reiciendis molestiae. Ratione distinctio sint et et ratione aperiam nobis eum. Vitae non molestiae et qui vel sunt. Odio architecto molestiae maiores cum quia beatae quod. Ipsam error et est quo ullam. Repudiandae tempora eos asperiores natus et quos aut. Tempora autem officiis totam reprehenderit. Blanditiis iusto velit vero sint fugiat vero eligendi. Est ea quidem repudiandae laudantium. Sint quis velit molestiae quaerat impedit quaerat. Voluptates fugit officiis hic ratione et voluptates. Voluptas aut optio veniam modi voluptatibus et. Adipisci sit delectus eligendi est et est adipisci. Voluptatibus dolores illum ut molestiae libero.','675 Hermina Light Suite 496\nNorth Samanta, MD 69223-1535','[\"properties\\/8.jpg\",\"properties\\/3.jpg\",\"properties\\/7.jpg\",\"properties\\/9.jpg\",\"properties\\/2.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',15,10,10,75,930,581300.00,NULL,1,0,4,'month','renting',11,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-08-07',0,1,'2025-06-21 01:06:15','2025-06-21 01:06:15','43.022827','-75.687609',NULL,71957,4,4,'W6EQAZ',NULL),(51,'Hawthorne Heights','sale','Natus suscipit tenetur eveniet iure tempore. Aut corporis amet consequatur mollitia. Ut maxime reiciendis numquam placeat ad.','Omnis explicabo sequi itaque maxime qui. Assumenda voluptatem nihil nulla porro sequi qui et rem. Magnam consectetur culpa quia temporibus sit illo est. Perferendis minima tempora qui est. Ut et fuga eaque blanditiis adipisci omnis sit. Consequatur atque quo consequuntur neque qui qui sed sed. Rerum debitis voluptatem doloribus quae dolorum maxime iste. Omnis quisquam fugit culpa sunt dolorum quae. Architecto aut quaerat quidem quas voluptatem repellendus a. Voluptatibus accusantium reprehenderit in est cupiditate culpa neque. Beatae natus non quaerat nam voluptate veniam consequatur. Amet quia quod sed vel. Quo maiores id facere perferendis.','70072 Simonis Crossroad\nSchummfort, LA 81097','[\"properties\\/1.jpg\",\"properties\\/3.jpg\",\"properties\\/10.jpg\",\"properties\\/6.jpg\",\"properties\\/8.jpg\",\"properties\\/9.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',15,7,6,63,210,148400.00,NULL,0,0,5,'month','selling',3,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-08-14',0,1,'2025-06-21 01:06:15','2025-06-21 01:06:15','43.397035','-75.89128',NULL,27249,5,5,'F0A9T9',NULL),(52,'Sierra Vista','rent','Sed ipsa minus enim illo velit et. Qui dolor aut architecto soluta at. Animi aperiam eos nostrum illum. Pariatur aut soluta accusamus ipsam.','In nemo modi ut minima. Ea ratione hic minima ut. Provident accusantium neque sit minima possimus aut deserunt. Quas rerum asperiores laudantium sit. Quidem magnam natus nesciunt illum repellendus necessitatibus est. Velit quaerat ipsam consequatur error illo asperiores. Eos nihil eos consequatur. Illum sunt quia rem quia. Nesciunt et iste ea nam beatae labore consequatur reiciendis. Quis repudiandae omnis magnam nobis laboriosam quidem eos.','1032 Kuphal Park Apt. 224\nLake Mabelleton, RI 92159','[\"properties\\/3.jpg\",\"properties\\/11.jpg\",\"properties\\/8.jpg\",\"properties\\/7.jpg\",\"properties\\/1.jpg\",\"properties\\/12.jpg\",\"properties\\/2.jpg\",\"properties\\/10.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',5,5,4,49,520,769500.00,NULL,0,0,2,'month','renting',10,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-10-24',0,1,'2025-06-21 01:06:15','2025-06-21 01:06:15','43.778426','-76.082588',NULL,99594,2,2,'TMDTVJ',NULL),(53,'Autumn Leaves','rent','Rem modi ut eveniet deleniti. Qui accusamus repellendus tenetur molestiae corporis iure. Iure accusantium dignissimos in. Deserunt eius modi aut ut ipsam ut.','Aliquam ipsum beatae voluptatem modi nisi. Laudantium explicabo quo quas voluptates. Quas eligendi ea sit non incidunt ut. Optio nobis facere aut nemo. Aut a eos non ex modi. Ut soluta est consequatur excepturi sed nulla occaecati. Adipisci ea qui qui dolorum quam eum. Consequuntur ea amet omnis quis id reiciendis. Quis ea vel et placeat. Beatae impedit ad quia praesentium iste. Qui eaque ea id non quia.','740 Grace Ridge\nKatelynbury, ME 09083-4279','[\"properties\\/11.jpg\",\"properties\\/2.jpg\",\"properties\\/7.jpg\",\"properties\\/5.jpg\",\"properties\\/4.jpg\",\"properties\\/9.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',15,8,4,95,10,146500.00,NULL,0,0,1,'month','renting',4,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-08-06',0,1,'2025-06-21 01:06:15','2025-06-21 01:06:15','43.630631','-74.888201',NULL,48364,1,1,'NUYREZ',NULL),(54,'Blue Sky Residences','sale','Eius animi consequatur nobis eos quia. Non nesciunt aliquid dolorem suscipit dolorem quam. Voluptas ab dolor autem eos. Doloribus aut et magnam.','Aperiam nam enim id dolores. Ut qui nesciunt est facere harum. Fugiat et modi natus beatae. Nemo sit velit velit. Id eum voluptatibus odit. Aut magnam iusto nam dolor nihil. Quo voluptatem laborum iusto porro. Earum exercitationem qui nobis eius debitis qui explicabo. Accusantium tempore impedit non provident ut unde totam ullam. Atque repudiandae repellat neque in vitae. Fugiat rerum nam similique excepturi esse ea. Cupiditate fugit voluptas dignissimos incidunt. Labore omnis quia et nostrum quis est nobis alias. Minus voluptas vitae nesciunt enim rem quas.','73387 Doyle Roads Apt. 579\nDemondton, FL 16282','[\"properties\\/2.jpg\",\"properties\\/10.jpg\",\"properties\\/12.jpg\",\"properties\\/8.jpg\",\"properties\\/3.jpg\",\"properties\\/9.jpg\",\"properties\\/4.jpg\",\"properties\\/5.jpg\",\"properties\\/1.jpg\",\"properties\\/7.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',16,1,9,62,90,875300.00,NULL,0,0,3,'month','selling',5,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-09-03',0,1,'2025-06-21 01:06:15','2025-06-21 01:06:15','43.690182','-75.252329',NULL,19008,3,3,'L660US',NULL),(55,'Pebble Creek','rent','Eos quia delectus totam ad itaque nesciunt. Porro nesciunt facere suscipit. Molestias aut vel voluptas quis officiis.','Officiis aliquid praesentium et expedita dolore. Aut eaque et omnis possimus repellendus omnis. Quia omnis minus voluptatem nesciunt qui. Laboriosam occaecati eum et velit laudantium. Omnis fugiat corporis vel quibusdam. Minus dolorum qui blanditiis voluptas. Nihil optio consequatur dolore esse expedita excepturi eveniet eum. Laudantium sed qui ratione ut ipsam. Fugit laboriosam repellat maxime vel laborum consectetur. Quaerat doloribus accusamus deleniti porro numquam. Occaecati et laboriosam ipsum id sit. Et quis nulla molestiae. Voluptas nobis dolores sunt vitae quia et facere.','926 Oberbrunner Freeway Suite 910\nZiemanntown, MO 57101','[\"properties\\/5.jpg\",\"properties\\/12.jpg\",\"properties\\/1.jpg\",\"properties\\/6.jpg\",\"properties\\/8.jpg\",\"properties\\/2.jpg\",\"properties\\/3.jpg\",\"properties\\/4.jpg\",\"properties\\/7.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',10,5,4,34,580,758600.00,NULL,0,0,4,'month','renting',4,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-11-18',0,1,'2025-06-21 01:06:15','2025-06-21 01:06:15','43.05626','-75.648306',NULL,94490,4,4,'IJFPWI',NULL),(56,'Magnolia Manor','rent','Eum excepturi numquam similique aut ratione. Reiciendis voluptatem quia recusandae accusamus. Et autem et aut aut assumenda explicabo ut et. Non aspernatur praesentium et.','Quam dolores maxime at maxime eius accusantium. Et et enim quam ut placeat quod non. Expedita mollitia aut eveniet harum qui quibusdam. Ex expedita sunt doloremque quasi molestias. Id hic consectetur accusantium. Eum mollitia alias non et porro occaecati aut. Dicta maxime qui at itaque mollitia sed hic. Architecto non veniam ut aperiam culpa. Qui est expedita est dolor omnis possimus qui. Eius in illo nihil est ut suscipit saepe est. Et temporibus sint est perspiciatis distinctio magnam rem.','1281 Mauricio Spur\nMcCulloughfort, IA 04679-2318','[\"properties\\/12.jpg\",\"properties\\/7.jpg\",\"properties\\/5.jpg\",\"properties\\/3.jpg\",\"properties\\/2.jpg\",\"properties\\/9.jpg\",\"properties\\/4.jpg\",\"properties\\/8.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',1,2,6,71,830,882000.00,NULL,1,0,1,'month','renting',6,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-03-04',0,1,'2025-06-21 01:06:15','2025-06-21 01:06:15','43.220049','-76.478449',NULL,98413,1,1,'DLDBMN',NULL),(57,'Cherry Blossom Estates','sale','Aut quaerat tempore fugit qui perspiciatis omnis. In minus voluptas quo est iusto. Ab deserunt qui quia ipsa et veritatis tempore non. Modi ad modi qui ut.','Molestiae nobis animi cupiditate id dolore ex. Repellendus consequatur eligendi voluptatem ipsam quae qui corrupti. Sed cumque dolores tempora officiis voluptatum est officiis. Delectus possimus ab aliquid sit recusandae error. Inventore ut et architecto esse eaque. Accusamus consequatur earum quis temporibus sit ab. Voluptas in ut quam placeat aut totam. Voluptas quo officia ea. Neque ut eum facilis magni id quia. Possimus sequi non repudiandae ut quia ea repudiandae magni. Quasi labore quidem dolore. Voluptas maxime quidem animi deleniti.','6825 Hartmann Key Apt. 746\nArjunport, WA 54654','[\"properties\\/4.jpg\",\"properties\\/2.jpg\",\"properties\\/3.jpg\",\"properties\\/11.jpg\",\"properties\\/8.jpg\",\"properties\\/6.jpg\",\"properties\\/10.jpg\",\"properties\\/9.jpg\",\"properties\\/1.jpg\",\"properties\\/7.jpg\",\"properties\\/12.jpg\",\"properties\\/5.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',3,1,3,84,560,653100.00,NULL,1,0,4,'month','selling',6,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-11-26',0,1,'2025-06-21 01:06:15','2025-06-21 01:06:15','43.833725','-75.094471',NULL,92893,4,4,'7821QR',NULL),(58,'Windsor Park','sale','Est dignissimos quia magni earum vitae quia. Est et velit mollitia non expedita. Mollitia ut soluta ipsum non. Corporis voluptatem voluptas inventore repellat.','Quisquam pariatur eos rerum non. Laudantium inventore quia et necessitatibus accusantium. Aut culpa et ipsum. Provident atque iusto veritatis sit placeat. Atque reiciendis voluptate illo ut ut illo excepturi. Vel ut aut sed cum porro. Veniam esse facere autem et. Est quo sed sunt enim vero. Harum recusandae magnam illo illum molestiae aspernatur placeat.','591 Mueller Hills\nMaggiehaven, SD 55692','[\"properties\\/9.jpg\",\"properties\\/4.jpg\",\"properties\\/5.jpg\",\"properties\\/3.jpg\",\"properties\\/11.jpg\",\"properties\\/6.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',7,1,10,79,890,891200.00,NULL,1,0,6,'month','selling',4,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-10-23',0,1,'2025-06-21 01:06:15','2025-06-21 01:06:15','43.917195','-75.140262',NULL,24012,6,6,'IMJXUF',NULL),(59,'Seaside Villas','rent','Corrupti asperiores vero ut exercitationem. Consectetur architecto delectus et voluptatem. Et aliquid numquam voluptatum cupiditate.','Consequatur temporibus minima et non eius doloribus dicta. Fuga vel aut praesentium natus. Aliquid repudiandae nostrum delectus et est. Minima at sunt consequatur voluptatibus in ab. Et ab sed perspiciatis labore minima voluptas commodi. Deleniti at dolore ex nemo. Aut unde dolorem aut provident consequuntur eos molestiae. Perspiciatis labore necessitatibus quos vel. Reprehenderit vel ducimus est sunt.','836 Mueller Mountains\nEast Jessebury, VA 32927-8291','[\"properties\\/11.jpg\",\"properties\\/2.jpg\",\"properties\\/6.jpg\",\"properties\\/5.jpg\",\"properties\\/9.jpg\",\"properties\\/10.jpg\",\"properties\\/8.jpg\",\"properties\\/4.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',5,9,3,11,500,30500.00,NULL,0,0,5,'month','renting',1,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-05-15',0,1,'2025-06-21 01:06:15','2025-06-21 01:06:15','43.878827','-75.045795',NULL,94663,5,5,'I15AE9',NULL),(60,'Mountain View Retreat','sale','Occaecati occaecati consectetur qui dolorem dolores. Minus ipsum repellendus est voluptatibus vero veritatis ut. Omnis aut impedit maiores perspiciatis cupiditate autem. Explicabo quisquam atque cum itaque aut.','Sapiente eum ut vero voluptatibus reiciendis eos. Consequuntur minima numquam suscipit alias odit nemo. Aut in animi et rerum. Sint consequuntur aut impedit animi. Est eligendi quaerat commodi. Est repellat enim sed corporis quisquam rem. Nesciunt qui impedit et quia itaque neque laborum id.','24887 Waters Coves Apt. 239\nColefort, MN 73722-1684','[\"properties\\/4.jpg\",\"properties\\/9.jpg\",\"properties\\/5.jpg\",\"properties\\/6.jpg\",\"properties\\/3.jpg\",\"properties\\/1.jpg\",\"properties\\/10.jpg\",\"properties\\/12.jpg\",\"properties\\/11.jpg\",\"properties\\/8.jpg\",\"properties\\/2.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',12,5,1,94,100,419700.00,NULL,1,0,4,'month','selling',5,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2026-04-18',0,1,'2025-06-21 01:06:15','2025-06-21 01:06:15','43.317184','-75.777083',NULL,72535,4,4,'K9HFL2',NULL),(61,'Amberwood Apartments','rent','Ut et sit rerum qui quo. Qui voluptatem optio unde illo est vero. Quia quasi neque et dolor veritatis. Est quasi quibusdam quibusdam est.','Necessitatibus dolores debitis est quaerat ratione. Alias qui ipsam cum aut. Qui ut inventore excepturi vel quis expedita. Maiores doloribus tenetur veniam non quidem voluptatum at. Atque et nisi numquam similique reiciendis reiciendis. Mollitia non optio vitae debitis. Perspiciatis vel et quos inventore iure cum. Sequi ut commodi eaque aut qui commodi. Est eaque quia et eaque magni.','1405 Hegmann Ford Suite 599\nWest Sisterfurt, AL 97565-0746','[\"properties\\/8.jpg\",\"properties\\/11.jpg\",\"properties\\/7.jpg\",\"properties\\/6.jpg\",\"properties\\/10.jpg\",\"properties\\/3.jpg\",\"properties\\/1.jpg\",\"properties\\/4.jpg\",\"properties\\/9.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',15,4,5,51,850,509300.00,NULL,1,0,5,'month','renting',5,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-08-30',0,1,'2025-06-21 01:06:16','2025-06-21 01:06:16','43.941128','-74.975199',NULL,43067,5,5,'5QLNOF',NULL);
/*!40000 ALTER TABLE `re_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_properties_translations`
--

DROP TABLE IF EXISTS `re_properties_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_properties_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_properties_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `floor_plans` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`re_properties_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_properties_translations`
--

LOCK TABLES `re_properties_translations` WRITE;
/*!40000 ALTER TABLE `re_properties_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_properties_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_property_categories`
--

DROP TABLE IF EXISTS `re_property_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_property_categories` (
  `property_id` bigint unsigned NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`property_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_property_categories`
--

LOCK TABLES `re_property_categories` WRITE;
/*!40000 ALTER TABLE `re_property_categories` DISABLE KEYS */;
INSERT INTO `re_property_categories` VALUES (1,2),(1,3),(1,6),(2,4),(3,3),(4,1),(4,5),(5,2),(5,4),(5,6),(6,1),(6,4),(6,6),(7,1),(7,5),(8,4),(8,6),(9,2),(10,3),(11,2),(11,4),(11,5),(12,1),(12,2),(12,3),(13,2),(14,2),(14,5),(15,1),(16,5),(17,4),(18,2),(19,3),(19,4),(20,3),(21,1),(21,4),(21,6),(22,3),(22,5),(23,3),(24,5),(25,5),(26,4),(26,6),(27,1),(27,6),(28,2),(28,3),(28,5),(29,1),(29,2),(29,4),(30,2),(30,6),(31,3),(32,4),(33,1),(33,4),(33,6),(34,5),(35,3),(35,6),(36,3),(36,5),(37,1),(37,2),(37,4),(38,1),(38,3),(39,2),(39,3),(40,1),(40,4),(40,6),(41,2),(41,3),(41,4),(42,3),(42,6),(43,3),(43,4),(44,1),(44,3),(44,6),(45,1),(45,2),(45,4),(46,1),(46,5),(47,5),(48,1),(48,5),(49,5),(50,1),(51,6),(52,2),(52,3),(52,4),(53,5),(53,6),(54,6),(55,2),(55,5),(56,3),(57,3),(57,6),(58,3),(58,5),(59,5),(59,6),(60,2),(60,3),(60,4),(61,1),(61,4);
/*!40000 ALTER TABLE `re_property_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_property_features`
--

DROP TABLE IF EXISTS `re_property_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_property_features` (
  `property_id` bigint unsigned NOT NULL,
  `feature_id` bigint unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_property_features`
--

LOCK TABLES `re_property_features` WRITE;
/*!40000 ALTER TABLE `re_property_features` DISABLE KEYS */;
INSERT INTO `re_property_features` VALUES (1,1),(1,2),(1,4),(1,6),(1,7),(1,8),(1,9),(1,12),(2,1),(2,2),(2,4),(2,5),(2,7),(2,9),(2,10),(2,12),(3,4),(3,5),(3,6),(3,7),(3,11),(4,2),(4,5),(4,6),(4,7),(4,9),(4,11),(4,12),(5,1),(5,2),(5,3),(5,4),(5,5),(5,6),(5,7),(5,8),(5,9),(5,10),(5,11),(6,2),(6,4),(6,5),(6,7),(6,8),(6,9),(6,10),(6,11),(6,12),(7,1),(7,2),(7,5),(7,6),(7,7),(7,8),(7,12),(8,1),(8,3),(8,4),(8,6),(8,8),(8,9),(8,10),(8,11),(8,12),(9,3),(9,4),(9,5),(9,6),(9,7),(9,9),(9,10),(9,11),(10,2),(10,4),(10,9),(10,11),(10,12),(11,2),(11,7),(11,8),(11,9),(11,10),(11,12),(12,1),(12,2),(12,4),(12,8),(12,9),(12,11),(12,12),(13,2),(13,3),(13,5),(13,9),(13,10),(14,1),(14,4),(14,6),(14,7),(14,9),(14,10),(14,11),(15,1),(15,4),(15,5),(15,7),(15,8),(15,9),(15,10),(15,11),(15,12),(16,4),(16,6),(16,8),(16,9),(17,3),(17,4),(17,5),(17,6),(17,7),(17,8),(17,9),(17,10),(17,11),(18,1),(18,2),(18,3),(18,4),(18,6),(18,7),(18,8),(18,9),(18,10),(18,11),(18,12),(19,3),(19,5),(19,6),(19,7),(19,10),(19,11),(20,1),(20,2),(20,3),(20,4),(20,5),(20,6),(20,7),(20,8),(20,9),(20,10),(20,11),(20,12),(21,1),(21,2),(21,3),(21,4),(21,6),(21,8),(21,9),(21,11),(22,2),(22,3),(22,4),(22,5),(22,7),(22,8),(22,10),(22,11),(22,12),(23,1),(23,4),(23,6),(23,7),(24,1),(24,3),(24,4),(24,7),(24,8),(24,10),(25,3),(25,5),(25,6),(25,7),(25,9),(25,12),(26,2),(26,3),(26,4),(26,5),(26,7),(26,8),(26,11),(26,12),(27,1),(27,2),(27,3),(27,4),(27,5),(27,6),(27,7),(27,9),(27,10),(27,11),(28,8),(28,9),(28,10),(28,11),(29,1),(29,2),(29,3),(29,5),(29,6),(29,7),(29,8),(29,9),(29,10),(29,11),(29,12),(30,1),(30,5),(30,7),(30,8),(30,10),(30,12),(31,3),(31,4),(31,6),(31,8),(31,9),(31,10),(31,11),(31,12),(32,1),(32,2),(32,3),(32,5),(32,6),(32,7),(32,8),(32,9),(32,10),(32,12),(33,2),(33,3),(33,5),(33,8),(34,2),(34,4),(34,7),(34,9),(34,10),(34,12),(35,1),(35,2),(35,3),(35,9),(35,11),(35,12),(36,1),(36,3),(36,4),(36,5),(36,8),(36,10),(36,12),(37,1),(37,2),(37,3),(37,4),(37,5),(37,6),(37,7),(37,8),(37,9),(37,10),(37,11),(37,12),(38,1),(38,2),(38,3),(38,4),(38,5),(38,6),(38,7),(38,8),(38,9),(38,10),(38,11),(38,12),(39,1),(39,2),(39,4),(39,5),(39,6),(39,7),(39,8),(39,9),(39,10),(39,11),(39,12),(40,1),(40,3),(40,5),(40,6),(40,7),(40,8),(40,9),(40,10),(40,11),(40,12),(41,2),(41,3),(41,5),(41,10),(41,11),(42,1),(42,2),(42,3),(42,4),(42,5),(42,6),(42,7),(42,9),(42,10),(42,11),(42,12),(43,4),(43,5),(43,6),(43,11),(43,12),(44,4),(44,7),(44,11),(44,12),(45,5),(45,6),(45,8),(45,9),(45,10),(45,12),(46,1),(46,2),(46,3),(46,4),(46,5),(46,6),(46,7),(46,8),(46,9),(46,10),(46,11),(46,12),(47,1),(47,2),(47,3),(47,4),(47,5),(47,6),(47,7),(47,8),(47,9),(47,10),(47,11),(47,12),(48,1),(48,2),(48,3),(48,5),(48,8),(48,10),(48,11),(49,1),(49,2),(49,3),(49,5),(49,6),(49,7),(49,8),(49,9),(49,10),(49,11),(49,12),(50,2),(50,3),(50,4),(50,6),(50,7),(50,8),(50,9),(50,12),(51,3),(51,5),(51,10),(51,12),(52,1),(52,2),(52,3),(52,4),(52,5),(52,7),(52,8),(52,9),(52,10),(52,11),(53,2),(53,4),(53,5),(53,6),(53,7),(53,8),(53,9),(53,10),(53,11),(54,1),(54,2),(54,3),(54,5),(54,6),(54,7),(54,8),(54,10),(54,11),(54,12),(55,1),(55,3),(55,4),(55,5),(55,6),(55,7),(55,8),(55,9),(55,10),(56,1),(56,2),(56,3),(56,5),(56,6),(56,7),(56,8),(56,9),(56,10),(56,11),(57,4),(57,5),(57,9),(57,10),(57,11),(57,12),(58,1),(58,2),(58,3),(58,4),(58,5),(58,6),(58,7),(58,9),(58,10),(58,11),(58,12),(59,1),(59,2),(59,3),(59,5),(59,6),(59,8),(59,10),(59,11),(59,12),(60,1),(60,3),(60,4),(60,5),(60,6),(60,7),(60,8),(60,9),(61,1),(61,2),(61,3),(61,4),(61,5),(61,6),(61,7),(61,9),(61,10),(61,11);
/*!40000 ALTER TABLE `re_property_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_reviews`
--

DROP TABLE IF EXISTS `re_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `re_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `account_id` bigint unsigned NOT NULL,
  `reviewable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviewable_id` bigint unsigned NOT NULL,
  `star` tinyint NOT NULL,
  `content` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'approved',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `reviews_unique` (`account_id`,`reviewable_id`,`reviewable_type`),
  KEY `re_reviews_reviewable_type_reviewable_id_index` (`reviewable_type`,`reviewable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1221 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_reviews`
--

LOCK TABLES `re_reviews` WRITE;
/*!40000 ALTER TABLE `re_reviews` DISABLE KEYS */;
INSERT INTO `re_reviews` VALUES (1,6,'Botble\\RealEstate\\Models\\Property',32,3,'This time Alice waited till the eyes appeared, and then sat upon.','approved','2025-06-19 01:06:24','2025-06-21 01:06:24'),(2,6,'Botble\\RealEstate\\Models\\Project',10,5,'And then, turning to Alice for.','approved','2025-04-20 01:06:24','2025-06-21 01:06:24'),(3,2,'Botble\\RealEstate\\Models\\Property',4,2,'Cat. \'I\'d nearly forgotten to ask.\'.','approved','2025-05-18 01:06:24','2025-06-21 01:06:24'),(4,4,'Botble\\RealEstate\\Models\\Project',1,3,'King eagerly, and he went on again: \'Twenty-four hours, I THINK; or is it directed to?\' said one of the crowd below, and there was a little faster?\" said a sleepy voice behind her. \'Collar that Dormouse,\' the Queen had only one who had got to.','approved','2025-05-28 01:06:24','2025-06-21 01:06:24'),(5,4,'Botble\\RealEstate\\Models\\Property',9,5,'Down, down, down. Would the fall NEVER come to the Knave. The Knave of Hearts, she made out what she was terribly frightened all the while, till at last in the direction it pointed to, without trying to make herself useful, and looking at the Queen, and Alice heard it muttering to.','approved','2025-03-07 01:06:24','2025-06-21 01:06:24'),(6,8,'Botble\\RealEstate\\Models\\Project',15,3,'IS the same size for ten minutes together!\' \'Can\'t remember WHAT things?\' said the King. \'When did you ever saw. How she longed to get through was more and more sounds of broken glass, from which she had to ask them what the flame of a muchness?\'.','approved','2025-04-09 01:06:24','2025-06-21 01:06:24'),(7,7,'Botble\\RealEstate\\Models\\Property',22,3,'King. \'Nothing whatever,\' said Alice. \'Well, then,\' the Cat said, waving its right paw round, \'lives a Hatter: and in THAT direction,\' waving the other players, and shouting \'Off with her head!\' Alice glanced rather anxiously at the end.\' \'If you please, sir--\' The Rabbit.','approved','2025-04-16 01:06:24','2025-06-21 01:06:24'),(8,10,'Botble\\RealEstate\\Models\\Project',9,1,'I want to go! Let me see: four times seven is--oh dear! I wish I hadn\'t mentioned Dinah!\' she said to the rose-tree, she went to him,\' said Alice sharply, for she had plenty of time as she spoke. Alice did not quite like the largest.','approved','2025-05-06 01:06:24','2025-06-21 01:06:24'),(9,1,'Botble\\RealEstate\\Models\\Property',43,5,'May it won\'t be raving mad after all! I almost think I could, if I like being that person, I\'ll come up: if not, I\'ll stay down here! It\'ll be no chance of her sharp little chin into Alice\'s shoulder as he could think of what sort it was).','approved','2025-04-21 01:06:24','2025-06-21 01:06:24'),(10,12,'Botble\\RealEstate\\Models\\Project',8,2,'Alice could see this, as she went on in the distance would take the roof off.\' After a time she went hunting about, and called out, \'First witness!\' The first witness was the matter worse.','approved','2025-06-12 01:06:24','2025-06-21 01:06:24'),(11,4,'Botble\\RealEstate\\Models\\Property',19,1,'And when I got up and said, \'So you did, old fellow!\' said.','approved','2025-05-25 01:06:24','2025-06-21 01:06:24'),(12,10,'Botble\\RealEstate\\Models\\Project',18,2,'Gryphon, with a round face, and was going a.','approved','2025-03-21 01:06:24','2025-06-21 01:06:24'),(13,12,'Botble\\RealEstate\\Models\\Property',40,2,'However, at last she stretched her arms folded, frowning like a tunnel for some way, and nothing seems to grin, How neatly spread his claws, And welcome little fishes in With gently smiling.','approved','2025-06-16 01:06:24','2025-06-21 01:06:24'),(14,7,'Botble\\RealEstate\\Models\\Project',10,3,'King was the fan and gloves, and, as a last resource, she put one arm out of sight: then it chuckled. \'What fun!\' said the Hatter, \'you wouldn\'t talk about her any more if you\'d rather not.\' \'We indeed!\' cried the Mock Turtle replied in an undertone.','approved','2025-04-08 01:06:24','2025-06-21 01:06:24'),(15,3,'Botble\\RealEstate\\Models\\Property',50,1,'She had not a moment that it was not even get her head pressing against the ceiling, and had just begun \'Well, of all her fancy, that: he hasn\'t got no business there, at any rate, the Dormouse shook itself, and was going on, as she could, and waited till she too.','approved','2025-03-30 01:06:24','2025-06-21 01:06:24'),(16,6,'Botble\\RealEstate\\Models\\Project',12,4,'Caterpillar, just as I\'d taken the highest tree in the distance, and she felt that she never knew whether it would be as well go back, and barking hoarsely all the other bit. Her chin was pressed so closely.','approved','2025-04-27 01:06:24','2025-06-21 01:06:24'),(17,6,'Botble\\RealEstate\\Models\\Property',12,1,'Mock Turtle had just succeeded in bringing herself down to look through into the Dormouse\'s place, and Alice looked down at her rather inquisitively, and seemed not to lie down on their hands and feet at the end.\' \'If you do. I\'ll set Dinah at you!\' There was.','approved','2025-04-10 01:06:24','2025-06-21 01:06:24'),(18,8,'Botble\\RealEstate\\Models\\Project',18,5,'Lory, as soon as she couldn\'t answer either question, it didn\'t sound at all.','approved','2025-05-08 01:06:24','2025-06-21 01:06:24'),(19,3,'Botble\\RealEstate\\Models\\Property',37,2,'I got up very sulkily and crossed over to herself, as usual. \'Come, there\'s no name signed at the Queen, but she got up very carefully, nibbling first at one and then a great hurry; \'this paper has just been picked up.\' \'What\'s in it?\'.','approved','2025-03-21 01:06:24','2025-06-21 01:06:24'),(20,5,'Botble\\RealEstate\\Models\\Project',12,3,'Then they all looked puzzled.) \'He must have got altered.\' \'It is a long breath, and said \'No, never\') \'--so you can find it.\' And she began again. \'I should.','approved','2025-05-13 01:06:24','2025-06-21 01:06:24'),(21,8,'Botble\\RealEstate\\Models\\Property',34,2,'Alice to herself. \'I dare say you\'re wondering why I don\'t keep the same age as herself, to see.','approved','2025-04-05 01:06:24','2025-06-21 01:06:24'),(22,8,'Botble\\RealEstate\\Models\\Project',9,4,'Alice. \'I mean what I say,\' the Mock Turtle in a coaxing tone, and added with a smile. There was a.','approved','2025-05-30 01:06:24','2025-06-21 01:06:24'),(23,8,'Botble\\RealEstate\\Models\\Property',8,2,'Alice to herself. \'I dare say there may be ONE.\' \'One, indeed!\' said Alice, and she went down on one knee as he shook his head mournfully. \'Not I!\' said the King, \'or I\'ll have you executed, whether you\'re a little startled.','approved','2025-03-09 01:06:24','2025-06-21 01:06:24'),(24,3,'Botble\\RealEstate\\Models\\Project',1,2,'She had quite forgotten the Duchess sang the second time round, she came up to the Knave. The Knave did so, and giving it something out of their wits!\' So she went on, \'if you don\'t know where Dinn may be,\'.','approved','2025-06-14 01:06:24','2025-06-21 01:06:24'),(25,5,'Botble\\RealEstate\\Models\\Property',6,1,'King repeated angrily, \'or I\'ll have you executed on the Duchess\'s knee, while plates and dishes crashed around it--once more the pig-baby was sneezing on the stairs. Alice.','approved','2025-05-22 01:06:24','2025-06-21 01:06:24'),(26,4,'Botble\\RealEstate\\Models\\Project',7,2,'Alice a good deal on where you want to get.','approved','2025-02-27 01:06:24','2025-06-21 01:06:24'),(27,12,'Botble\\RealEstate\\Models\\Property',25,3,'There seemed to be treated with respect. \'Cheshire Puss,\' she began, in rather a hard word, I will just explain to you to death.\"\' \'You are old, Father William,\' the young Crab, a little queer, won\'t you?\' \'Not a bit,\' said the Mouse, turning to Alice a little faster?\" said a sleepy.','approved','2025-04-01 01:06:24','2025-06-21 01:06:24'),(28,9,'Botble\\RealEstate\\Models\\Project',18,1,'King said, with a teacup in one.','approved','2025-05-27 01:06:24','2025-06-21 01:06:24'),(29,11,'Botble\\RealEstate\\Models\\Property',59,1,'Alice. \'It goes on, you know,\' said the Caterpillar. Alice folded her hands, and began:-- \'You are old,\' said the Mouse, who seemed to listen, the whole party look so grave and.','approved','2025-03-17 01:06:24','2025-06-21 01:06:24'),(30,4,'Botble\\RealEstate\\Models\\Project',9,2,'Gryphon. \'Do you take me for a good character, But said I could let you out, you know.\' He was an old woman--but then--always to have no idea what Latitude or Longitude either, but thought they were nice grand words to say.) Presently she began nursing her child again, singing a sort of.','approved','2025-05-03 01:06:24','2025-06-21 01:06:24'),(31,2,'Botble\\RealEstate\\Models\\Property',38,3,'Mock Turtle drew a long argument with the words did not at all for any lesson-books!\' And so it was as much as serpents do, you know.\' Alice had got burnt, and eaten up by two guinea-pigs, who were all talking together: she made some tarts, All.','approved','2025-05-25 01:06:24','2025-06-21 01:06:24'),(32,12,'Botble\\RealEstate\\Models\\Project',1,3,'I can do no more, whatever happens. What WILL become of it; then Alice, thinking it was in managing her flamingo: she succeeded in curving it down \'important,\' and some \'unimportant.\' Alice could see her after the others. \'Are their heads down and began talking to herself, rather.','approved','2025-02-21 01:06:24','2025-06-21 01:06:24'),(33,3,'Botble\\RealEstate\\Models\\Property',54,1,'I\'d hardly finished the goose, with the bones and the executioner ran wildly up and beg for its dinner, and all sorts of things, and she, oh! she knows such a dreadful time.\' So Alice began in a rather offended tone, and she sat still and said anxiously to.','approved','2025-03-08 01:06:24','2025-06-21 01:06:24'),(34,7,'Botble\\RealEstate\\Models\\Project',7,2,'March Hare went on. \'I do,\' Alice hastily replied; \'only one doesn\'t like changing so often, you know.\' He was an old Turtle--we used to do:-- \'How doth the little magic bottle had now had its full effect, and she felt.','approved','2025-06-05 01:06:24','2025-06-21 01:06:24'),(35,3,'Botble\\RealEstate\\Models\\Property',7,3,'CHAPTER II. The Pool of Tears \'Curiouser and curiouser!\' cried Alice hastily, afraid.','approved','2025-06-06 01:06:24','2025-06-21 01:06:24'),(36,8,'Botble\\RealEstate\\Models\\Project',11,3,'Alice quietly said, just as if nothing had happened. \'How am I to do?\' said Alice. \'Oh, don\'t talk about her any more questions about it, and then they wouldn\'t.','approved','2025-03-29 01:06:24','2025-06-21 01:06:24'),(37,3,'Botble\\RealEstate\\Models\\Property',48,1,'MORE than nothing.\' \'Nobody asked YOUR opinion,\' said Alice. \'Oh, don\'t bother ME,\' said the Cat; and this was her turn or not. So she began nibbling at the jury-box, and saw that, in her pocket, and pulled out a new pair of boots every Christmas.\' And.','approved','2025-04-11 01:06:24','2025-06-21 01:06:24'),(38,5,'Botble\\RealEstate\\Models\\Project',9,5,'I had to be a lesson to you how the game was in a large pigeon had flown into her eyes--and still as she could. \'The Dormouse is asleep again,\' said the Mock Turtle drew a long and a sad tale!\' said the Gryphon. \'It\'s all his fancy, that: they never.','approved','2025-03-21 01:06:24','2025-06-21 01:06:24'),(39,2,'Botble\\RealEstate\\Models\\Property',17,2,'Puss,\' she began, in rather a handsome pig, I think.\' And she began fancying the sort of a procession,\' thought she, \'if people.','approved','2025-03-18 01:06:24','2025-06-21 01:06:24'),(40,7,'Botble\\RealEstate\\Models\\Project',15,1,'I hadn\'t cried so much!\' Alas! it was very hot, she kept fanning herself all the arches are gone from this morning,\' said Alice very humbly: \'you had got its head down, and was coming back to the tarts on the floor, as it was growing.','approved','2025-04-02 01:06:24','2025-06-21 01:06:24'),(41,11,'Botble\\RealEstate\\Models\\Property',47,2,'Was kindly permitted to pocket the spoon: While the Owl had.','approved','2025-03-02 01:06:24','2025-06-21 01:06:24'),(42,5,'Botble\\RealEstate\\Models\\Project',10,1,'Do cats eat bats?\' and sometimes, \'Do bats eat cats?\' for, you see, as they were trying to explain the paper. \'If there\'s no harm in trying.\' So she began very cautiously: \'But I don\'t care which happens!\' She ate a little sharp bark just over her head to feel which way she.','approved','2025-06-15 01:06:24','2025-06-21 01:06:24'),(43,11,'Botble\\RealEstate\\Models\\Property',46,1,'Alice; \'but a grin without a great hurry to change them--\' when she got up, and reduced the answer to it?\' said the.','approved','2025-04-12 01:06:24','2025-06-21 01:06:24'),(44,9,'Botble\\RealEstate\\Models\\Project',5,5,'Hatter; \'so I should understand that better,\' Alice said with a bound into the open air. \'IF I.','approved','2025-03-22 01:06:24','2025-06-21 01:06:24'),(45,9,'Botble\\RealEstate\\Models\\Property',40,2,'Alice crouched down among the party.','approved','2025-03-27 01:06:24','2025-06-21 01:06:24'),(46,12,'Botble\\RealEstate\\Models\\Project',9,1,'I ought to have lessons to learn! Oh, I shouldn\'t want YOURS: I don\'t know what \"it\" means.\' \'I know SOMETHING interesting is sure to happen,\' she said to herself, being rather proud of it: \'No room! No room!\' they cried out when they met.','approved','2025-05-04 01:06:24','2025-06-21 01:06:24'),(47,2,'Botble\\RealEstate\\Models\\Property',35,5,'I look like one, but the Mouse heard this, it turned round and look up in a great hurry. \'You did!\' said the Lory. Alice replied in an offended tone, and she hurried.','approved','2025-06-14 01:06:24','2025-06-21 01:06:24'),(48,7,'Botble\\RealEstate\\Models\\Project',17,4,'At last the Dodo replied very politely, \'if I had not got into it), and handed them round as prizes. There was nothing on it (as she had a wink of sleep these three weeks!\' \'I\'m very sorry you\'ve been annoyed,\' said Alice, who was gently brushing away some dead.','approved','2025-06-09 01:06:24','2025-06-21 01:06:24'),(49,9,'Botble\\RealEstate\\Models\\Property',47,1,'Rabbit hastily interrupted. \'There\'s a great hurry to change the subject of.','approved','2025-06-11 01:06:24','2025-06-21 01:06:24'),(50,3,'Botble\\RealEstate\\Models\\Project',9,2,'Alice said with some difficulty, as it is.\' \'I quite forgot how to get in at the time they had a wink of sleep these three little.','approved','2025-04-21 01:06:24','2025-06-21 01:06:24'),(51,11,'Botble\\RealEstate\\Models\\Property',45,3,'Dormouse began in a languid, sleepy voice. \'Who are YOU?\' Which brought them back again to the voice of thunder, and people began running about in a great letter, nearly as she spoke; \'either you or your head must be off, then!\' said the King, who had been.','approved','2025-03-23 01:06:24','2025-06-21 01:06:24'),(52,12,'Botble\\RealEstate\\Models\\Project',16,3,'Alice thought to herself. At this the whole party at once and put back into.','approved','2025-06-20 01:06:24','2025-06-21 01:06:24'),(53,1,'Botble\\RealEstate\\Models\\Property',59,4,'That he met in the distance, screaming with passion. She had not long to doubt, for the rest of the treat. When.','approved','2025-03-28 01:06:24','2025-06-21 01:06:24'),(54,6,'Botble\\RealEstate\\Models\\Project',11,3,'VERY tired of being all alone here!\' As she said aloud. \'I must be Mabel after all, and I could let you out, you know.\' \'I DON\'T know,\' said Alice to find herself still in existence; \'and now for the Dormouse,\' thought.','approved','2025-04-14 01:06:24','2025-06-21 01:06:24'),(55,9,'Botble\\RealEstate\\Models\\Property',59,3,'Time as well go back, and barking hoarsely all the rest, Between yourself and me.\' \'That\'s the reason they\'re called lessons,\' the Gryphon hastily. \'Go on with the bread-and-butter getting so far off). \'Oh, my poor little thing.','approved','2025-05-16 01:06:24','2025-06-21 01:06:24'),(56,1,'Botble\\RealEstate\\Models\\Project',12,5,'I wish you would seem to put it right; \'not that it was the BEST.','approved','2025-02-27 01:06:24','2025-06-21 01:06:24'),(57,7,'Botble\\RealEstate\\Models\\Property',49,2,'Yet you turned a corner, \'Oh my ears and whiskers, how late it\'s getting!\' She was looking at the stick, and tumbled head over heels in its sleep \'Twinkle.','approved','2025-04-28 01:06:24','2025-06-21 01:06:24'),(58,2,'Botble\\RealEstate\\Models\\Project',14,3,'WHAT?\' said the Gryphon, \'she wants for.','approved','2025-04-14 01:06:24','2025-06-21 01:06:24'),(59,10,'Botble\\RealEstate\\Models\\Property',59,2,'Caterpillar The Caterpillar and Alice was soon submitted to by the whole pack rose up into a pig, my dear,\' said Alice, in a great many teeth, so she took courage, and went on again:-- \'You.','approved','2025-05-06 01:06:24','2025-06-21 01:06:24'),(60,11,'Botble\\RealEstate\\Models\\Project',1,4,'No, it\'ll never do to ask: perhaps I shall have to go down the hall. After.','approved','2025-05-19 01:06:24','2025-06-21 01:06:24'),(61,12,'Botble\\RealEstate\\Models\\Property',28,3,'Queen put on one knee. \'I\'m a poor man,\' the Hatter grumbled: \'you shouldn\'t have put it right; \'not that it was an old Turtle--we used to do:-- \'How doth the little passage: and.','approved','2025-06-03 01:06:24','2025-06-21 01:06:24'),(62,6,'Botble\\RealEstate\\Models\\Project',8,1,'Hatter, \'or you\'ll be telling me next that you think you\'re changed, do you?\' \'I\'m afraid I can\'t be Mabel, for I know who I WAS when I breathe\"!\' \'It IS a long time together.\' \'Which is just the case with MINE,\' said the Duck. \'Found IT,\' the Mouse to tell him. \'A nice muddle their.','approved','2025-06-13 01:06:24','2025-06-21 01:06:24'),(63,12,'Botble\\RealEstate\\Models\\Property',13,5,'This question the Dodo solemnly, rising.','approved','2025-05-16 01:06:24','2025-06-21 01:06:24'),(64,9,'Botble\\RealEstate\\Models\\Project',3,2,'King, and he went on, \'you throw the--\' \'The lobsters!\' shouted the Gryphon, and the other paw, \'lives a March Hare. The Hatter looked at the Footman\'s head: it just at present--at least I mean what I say,\' the Mock Turtle, and said to herself; \'his eyes are.','approved','2025-05-23 01:06:24','2025-06-21 01:06:24'),(65,11,'Botble\\RealEstate\\Models\\Property',61,5,'Gryphon added \'Come, let\'s try the whole pack of cards.','approved','2025-04-22 01:06:24','2025-06-21 01:06:24'),(66,12,'Botble\\RealEstate\\Models\\Project',10,4,'Alice hastily replied; \'only one doesn\'t like changing so often, of course had to fall upon Alice, as she did not dare to laugh; and, as she could. \'No,\' said Alice. \'Why?\' \'IT DOES THE BOOTS AND SHOES.\' the Gryphon went on planning to herself \'That\'s quite enough--I hope I.','approved','2025-06-01 01:06:24','2025-06-21 01:06:24'),(67,10,'Botble\\RealEstate\\Models\\Property',37,3,'White Rabbit; \'in fact, there\'s nothing written on the Duchess\'s cook. She carried the pepper-box in her life; it was labelled.','approved','2025-04-06 01:06:24','2025-06-21 01:06:24'),(68,9,'Botble\\RealEstate\\Models\\Project',15,5,'I\'LL soon make you grow taller, and the Dormouse began in a very curious to see the earth takes twenty-four hours to turn round on its axis--\' \'Talking of axes,\' said the King, and the King put on his flappers, \'--Mystery.','approved','2025-04-16 01:06:24','2025-06-21 01:06:24'),(69,2,'Botble\\RealEstate\\Models\\Property',49,4,'King; and the words \'DRINK ME\' beautifully printed on it but tea. \'I don\'t much care where--\' said Alice. \'Of course they were\', said the Hatter went on in the sea, some children digging in the pool of tears which she had gone through.','approved','2025-03-10 01:06:24','2025-06-21 01:06:24'),(70,10,'Botble\\RealEstate\\Models\\Project',7,4,'I\'d taken the highest tree in front of the table, but it said nothing. \'Perhaps it doesn\'t matter a bit,\' said the King, and the White Rabbit blew three blasts on the song, perhaps?\' \'I\'ve heard something splashing about in the sea, though you.','approved','2025-03-08 01:06:24','2025-06-21 01:06:24'),(71,3,'Botble\\RealEstate\\Models\\Property',22,2,'Ugh, Serpent!\' \'But I\'m NOT a serpent!\' said Alice as he fumbled over the verses to himself: \'\"WE KNOW IT TO BE TRUE--\" that\'s the jury-box,\' thought Alice, and, after folding his arms and legs in all directions, \'just like a steam-engine when she.','approved','2025-04-23 01:06:24','2025-06-21 01:06:24'),(72,11,'Botble\\RealEstate\\Models\\Project',3,1,'Alice thought she might as well wait, as she went slowly after it: \'I never was so long that they.','approved','2025-06-03 01:06:24','2025-06-21 01:06:24'),(73,8,'Botble\\RealEstate\\Models\\Property',24,5,'I never heard before, \'Sure then I\'m here! Digging for apples, indeed!\' said the King. \'Nothing whatever,\' said Alice.','approved','2025-04-12 01:06:24','2025-06-21 01:06:24'),(75,10,'Botble\\RealEstate\\Models\\Property',6,1,'I will just explain to you to set them free, Exactly as we needn\'t try to find her way through the air! Do.','approved','2025-04-07 01:06:24','2025-06-21 01:06:24'),(76,9,'Botble\\RealEstate\\Models\\Project',11,4,'Mock Turtle in the wood, \'is to grow larger again, and all the jelly-fish out of sight. Alice remained looking thoughtfully at the March Hare: she thought it would be four thousand miles down, I think--\' (she was so ordered about.','approved','2025-03-12 01:06:24','2025-06-21 01:06:24'),(78,9,'Botble\\RealEstate\\Models\\Project',16,1,'Down, down, down. There was a little bird as soon as she could, for the Duchess sang the second time round, she came suddenly upon an open place, with a little scream, half of fright and half believed herself in Wonderland, though she felt a little ledge of rock, and, as she did not get.','approved','2025-04-24 01:06:24','2025-06-21 01:06:24'),(79,9,'Botble\\RealEstate\\Models\\Property',57,2,'Ma!\' said the Mock Turtle sighed deeply, and began, in a loud, indignant voice, but she gained courage as she stood still where she was, and waited. When the pie was all finished, the Owl, as a boon, Was kindly permitted to pocket.','approved','2025-03-28 01:06:24','2025-06-21 01:06:24'),(80,11,'Botble\\RealEstate\\Models\\Project',7,5,'She\'ll get me executed, as sure as ferrets are ferrets!.','approved','2025-02-25 01:06:24','2025-06-21 01:06:24'),(81,6,'Botble\\RealEstate\\Models\\Property',42,3,'March Hare. \'Yes, please do!\' but the Gryphon remarked: \'because they lessen from day to such stuff? Be off, or I\'ll kick you down stairs!\' \'That is not said right,\' said the.','approved','2025-05-16 01:06:24','2025-06-21 01:06:24'),(84,5,'Botble\\RealEstate\\Models\\Project',16,1,'Alice was thoroughly puzzled. \'Does the boots and shoes!\' she repeated in a great hurry; \'this paper has just been reading about; and when she went on, taking first one side and up the little.','approved','2025-04-23 01:06:24','2025-06-21 01:06:24'),(85,4,'Botble\\RealEstate\\Models\\Property',16,1,'Waiting in a tone of great relief. \'Call the next witness. It quite makes my forehead ache!\' Alice watched the White Rabbit, trotting slowly back to the Duchess: \'and the moral of that is--\"Oh, \'tis.','approved','2025-04-16 01:06:24','2025-06-21 01:06:24'),(86,3,'Botble\\RealEstate\\Models\\Project',5,5,'Hatter went on, \'--likely to win, that it\'s hardly worth while finishing the game.\'.','approved','2025-05-25 01:06:24','2025-06-21 01:06:24'),(87,12,'Botble\\RealEstate\\Models\\Property',4,4,'As they walked off together, Alice heard the Queen\'s ears--\' the.','approved','2025-05-01 01:06:24','2025-06-21 01:06:24'),(88,12,'Botble\\RealEstate\\Models\\Project',4,5,'And have grown most uncommonly fat; Yet you balanced.','approved','2025-05-06 01:06:24','2025-06-21 01:06:24'),(89,2,'Botble\\RealEstate\\Models\\Property',45,4,'I am in the air. Even the Duchess sneezed occasionally; and as it left no mark on the ground near the looking-glass.','approved','2025-04-15 01:06:24','2025-06-21 01:06:24'),(90,12,'Botble\\RealEstate\\Models\\Project',18,3,'THAT\'S a good deal to come once a week: HE taught us Drawling, Stretching, and Fainting in Coils.\' \'What was that?\' inquired Alice. \'Reeling and Writhing, of course, to.','approved','2025-05-22 01:06:24','2025-06-21 01:06:24'),(91,10,'Botble\\RealEstate\\Models\\Property',10,3,'I didn\'t know that you\'re mad?\' \'To begin with,\' said the.','approved','2025-06-11 01:06:24','2025-06-21 01:06:24'),(92,5,'Botble\\RealEstate\\Models\\Project',1,3,'Queen said severely \'Who is it I can\'t quite follow it as you might catch a bat, and that\'s very like having a game of play with a yelp of delight, and rushed at the White Rabbit: it was too dark to see if he would deny.','approved','2025-03-12 01:06:24','2025-06-21 01:06:24'),(93,10,'Botble\\RealEstate\\Models\\Property',2,3,'I\'ll eat it,\' said the Gryphon: and it put the Dormouse say?\' one of them can explain it,\' said the Hatter; \'so I should like to have any rules in particular; at least, if there are, nobody attends to them--and you\'ve no idea.','approved','2025-04-19 01:06:24','2025-06-21 01:06:24'),(94,12,'Botble\\RealEstate\\Models\\Project',6,3,'Queen\'s ears--\' the Rabbit asked. \'No, I didn\'t,\' said Alice: \'besides, that\'s not a moment like a thunderstorm. \'A fine day, your Majesty!\' the soldiers did. After these came the guests, mostly Kings and Queens, and among them Alice.','approved','2025-03-26 01:06:24','2025-06-21 01:06:24'),(95,10,'Botble\\RealEstate\\Models\\Property',36,5,'VERY nearly at the sudden change, but she could even make out at the Gryphon at the sides of it; then Alice, thinking it was the BEST butter,\' the March Hare. \'He denies it,\' said Alice very humbly: \'you had got its head to feel which way I.','approved','2025-05-16 01:06:24','2025-06-21 01:06:24'),(96,1,'Botble\\RealEstate\\Models\\Project',11,1,'Alice had begun to think about stopping herself before she came in with the grin, which remained some time after the others. \'We must burn the house.','approved','2025-03-22 01:06:24','2025-06-21 01:06:24'),(98,9,'Botble\\RealEstate\\Models\\Project',10,1,'Alice, \'or perhaps they won\'t walk the.','approved','2025-04-30 01:06:24','2025-06-21 01:06:24'),(99,4,'Botble\\RealEstate\\Models\\Property',13,1,'Rabbit was still in existence; \'and now for the moment she appeared on the spot.\' This did not at all for any lesson-books!\' And so it was too dark to see it quite plainly through the wood. \'It\'s the oldest rule in the.','approved','2025-05-01 01:06:24','2025-06-21 01:06:24'),(100,6,'Botble\\RealEstate\\Models\\Project',2,5,'March--just before HE went mad, you know--\' (pointing with his head!\"\' \'How dreadfully.','approved','2025-05-26 01:06:24','2025-06-21 01:06:24'),(101,2,'Botble\\RealEstate\\Models\\Property',6,1,'Dodo solemnly, rising to its children, \'Come away, my dears! It\'s high time you were or might have been a RED rose-tree, and we put a white one in by.','approved','2025-05-01 01:06:24','2025-06-21 01:06:24'),(102,2,'Botble\\RealEstate\\Models\\Project',7,5,'Alice. \'Only a thimble,\' said Alice in a long, low hall, which was lit up by two guinea-pigs, who were all in bed!\' On various pretexts they all crowded together at one corner of it: \'No room! No room!\' they cried out when they met in the sea, \'and in that case I can go back by railway,\' she.','approved','2025-04-25 01:06:24','2025-06-21 01:06:24'),(103,1,'Botble\\RealEstate\\Models\\Property',58,3,'It\'s enough to get in?\' \'There might be some sense in your pocket?\' he went on just as she could guess, she was beginning to get an opportunity of adding.','approved','2025-03-01 01:06:24','2025-06-21 01:06:24'),(104,11,'Botble\\RealEstate\\Models\\Project',10,3,'Alice. \'And be quick about it,\' said the Gryphon, \'that they WOULD go with the edge of her going, though she knew that it would make with the Gryphon. \'We can do without lobsters, you know. Please, Ma\'am.','approved','2025-06-17 01:06:24','2025-06-21 01:06:24'),(105,8,'Botble\\RealEstate\\Models\\Property',27,3,'There were doors all round the thistle again; then the other, looking uneasily at the White Rabbit, who said in a shrill, passionate voice. \'Would YOU like cats if you.','approved','2025-03-31 01:06:24','2025-06-21 01:06:24'),(106,3,'Botble\\RealEstate\\Models\\Project',16,3,'Alice. \'Well, then,\' the Gryphon never learnt it.\' \'Hadn\'t time,\' said the Hatter. He had been wandering, when a sharp hiss made her next remark. \'Then the eleventh day must have been changed several times since then.\' \'What do you want to go! Let me think: was I the same.','approved','2025-06-17 01:06:24','2025-06-21 01:06:24'),(107,11,'Botble\\RealEstate\\Models\\Property',52,2,'I learn music.\' \'Ah! that accounts for it,\' said Five, in a bit.\' \'Perhaps it doesn\'t matter a bit,\' she thought at first she thought it had some kind of thing that would happen: \'\"Miss Alice! Come here.','approved','2025-06-15 01:06:24','2025-06-21 01:06:24'),(109,1,'Botble\\RealEstate\\Models\\Property',54,2,'Five. \'I heard the Queen\'s shrill cries to the puppy; whereupon the puppy jumped into the way out of his Normans--\" How are you getting on now, my dear?\' it continued, turning to the Hatter. \'I told you butter wouldn\'t suit the works!\' he added in a low trembling voice, \'Let us.','approved','2025-03-26 01:06:24','2025-06-21 01:06:24'),(111,10,'Botble\\RealEstate\\Models\\Property',45,4,'How neatly spread his claws, And welcome little fishes in With gently smiling jaws!\' \'I\'m sure I\'m not Ada,\' she said, \'for her hair goes in such long curly brown hair! And it\'ll fetch things when you come and join the dance. \'\"What.','approved','2025-05-14 01:06:24','2025-06-21 01:06:24'),(112,3,'Botble\\RealEstate\\Models\\Project',13,2,'I\'ll never go THERE again!\' said Alice to herself. \'Shy, they seem to have the experiment tried. \'Very true,\' said the King said, turning to Alice. \'What sort of knot, and then raised himself upon tiptoe, put his mouth close to the baby, and not to be seen--everything seemed to be no chance of.','approved','2025-06-12 01:06:24','2025-06-21 01:06:24'),(113,9,'Botble\\RealEstate\\Models\\Property',26,2,'I meant,\' the King said, turning to the baby, it was very provoking to find herself still in existence; \'and now for the hedgehogs; and in a great hurry; \'this paper has just been picked up.\' \'What\'s in it?\' said the Hatter, with.','approved','2025-04-16 01:06:24','2025-06-21 01:06:24'),(114,4,'Botble\\RealEstate\\Models\\Project',13,5,'Mock Turtle had just begun to dream that she began looking at the top with its tongue.','approved','2025-03-14 01:06:24','2025-06-21 01:06:24'),(115,1,'Botble\\RealEstate\\Models\\Property',7,1,'She was walking by the Queen till she shook the house, and have next to no toys to play croquet.\' The Frog-Footman repeated, in the trial one way of keeping up the fan and two or three of the cakes, and was just in.','approved','2025-05-06 01:06:24','2025-06-21 01:06:24'),(117,3,'Botble\\RealEstate\\Models\\Property',58,1,'They had not attended to this last remark, \'it\'s a vegetable. It.','approved','2025-03-01 01:06:24','2025-06-21 01:06:24'),(118,7,'Botble\\RealEstate\\Models\\Project',11,2,'Alice. \'Of course you know what to uglify is, you know. Which shall sing?\' \'Oh, YOU sing,\' said the Dormouse; \'--well in.\' This answer so confused poor Alice, and she tried hard to whistle to it; but she.','approved','2025-05-30 01:06:24','2025-06-21 01:06:24'),(119,1,'Botble\\RealEstate\\Models\\Property',40,1,'MINE,\' said the Duchess: \'what a clear way you go,\' said the March Hare. \'He denies it,\' said Alice. \'I\'m glad I\'ve seen that done,\' thought Alice. \'I\'ve tried every way, and the Hatter and the happy.','approved','2025-06-07 01:06:24','2025-06-21 01:06:24'),(121,9,'Botble\\RealEstate\\Models\\Property',58,5,'Dormouse had closed its eyes were getting so thin--and the twinkling of the table, but it is.\' \'Then you should say \"With what porpoise?\"\' \'Don\'t you mean by that?\' said the White Rabbit returning.','approved','2025-04-22 01:06:24','2025-06-21 01:06:24'),(122,2,'Botble\\RealEstate\\Models\\Project',4,3,'Mock Turtle, and to her feet in a tone of great curiosity. \'Soles and eels, of course,\'.','approved','2025-03-19 01:06:24','2025-06-21 01:06:24'),(123,3,'Botble\\RealEstate\\Models\\Property',53,3,'Alice. \'Reeling and Writhing, of course, to begin at HIS time of life. The King\'s argument was, that anything that had fluttered down from the change: and Alice looked very anxiously into.','approved','2025-05-06 01:06:24','2025-06-21 01:06:24'),(125,6,'Botble\\RealEstate\\Models\\Property',9,3,'So they got thrown out to her chin in salt water. Her first idea was that you couldn\'t cut.','approved','2025-05-09 01:06:24','2025-06-21 01:06:24'),(126,7,'Botble\\RealEstate\\Models\\Project',3,3,'King, \'that only makes the matter on, What would become of it; so, after hunting all about it!\' and he says it\'s so useful, it\'s worth a hundred pounds! He says it kills all the things I used to call him Tortoise, if he doesn\'t begin.\'.','approved','2025-05-06 01:06:24','2025-06-21 01:06:24'),(127,11,'Botble\\RealEstate\\Models\\Property',7,3,'This time there could be NO mistake about it: it.','approved','2025-05-02 01:06:24','2025-06-21 01:06:24'),(128,12,'Botble\\RealEstate\\Models\\Project',15,4,'There was not a moment that it ought to be sure.','approved','2025-04-05 01:06:24','2025-06-21 01:06:24'),(129,11,'Botble\\RealEstate\\Models\\Property',39,1,'Dinn may be,\' said the Duchess, \'chop off her knowledge, as there was a dispute going on between the executioner, the King, \'or I\'ll have you got in your knocking,\' the Footman went on saying to herself, and shouted.','approved','2025-03-01 01:06:24','2025-06-21 01:06:24'),(130,10,'Botble\\RealEstate\\Models\\Project',17,5,'Who Stole the Tarts? The King turned pale, and shut his note-book hastily. \'Consider your verdict,\' he said to herself, in a low, hurried tone. He looked anxiously over his shoulder as she passed; it was labelled \'ORANGE MARMALADE\', but to open them again.','approved','2025-02-28 01:06:24','2025-06-21 01:06:24'),(131,10,'Botble\\RealEstate\\Models\\Property',34,3,'Queen, in a helpless sort of thing never happened, and now here I am in the sand with wooden spades, then a voice of thunder, and people began running about in a trembling voice to a farmer, you know, this sort of way to hear her try and repeat something now. Tell her to begin.\' He looked.','approved','2025-03-14 01:06:24','2025-06-21 01:06:24'),(132,3,'Botble\\RealEstate\\Models\\Project',11,3,'There seemed to be lost, as she.','approved','2025-04-04 01:06:24','2025-06-21 01:06:24'),(133,2,'Botble\\RealEstate\\Models\\Property',43,4,'Would not, could not, could not, would not join the dance. \'\"What matters it how far we go?\" his scaly friend replied. \"There is another shore, you know, upon the other ladder?--Why, I hadn\'t drunk quite so much!\' Alas! it was sneezing on the second time round, she came upon a little more.','approved','2025-04-08 01:06:24','2025-06-21 01:06:24'),(134,9,'Botble\\RealEstate\\Models\\Project',7,4,'Hatter. This piece of evidence.','approved','2025-06-21 01:06:24','2025-06-21 01:06:24'),(135,9,'Botble\\RealEstate\\Models\\Property',52,1,'Dormouse sulkily remarked, \'If you knew Time as well go back, and barking hoarsely all the way wherever she wanted much to know, but the Dormouse say?\' one of the court. All this time with one of them bowed low. \'Would you tell me,\' said Alice, timidly; \'some of the gloves, and she did.','approved','2025-03-17 01:06:24','2025-06-21 01:06:24'),(136,9,'Botble\\RealEstate\\Models\\Project',1,4,'Alice; \'it\'s laid for a minute, nurse! But I\'ve got to the general conclusion, that wherever you go to on the trumpet, and then quietly marched off after the rest of.','approved','2025-06-11 01:06:24','2025-06-21 01:06:24'),(137,7,'Botble\\RealEstate\\Models\\Property',18,4,'By the time it all came different!\' Alice replied very gravely. \'What else have you executed.\' The miserable Hatter dropped his.','approved','2025-04-14 01:06:24','2025-06-21 01:06:24'),(138,12,'Botble\\RealEstate\\Models\\Project',12,1,'Queen, and in another moment that it was a dispute going on shrinking rapidly: she soon made out what it meant till now.\' \'If that\'s all I can remember feeling a little before.','approved','2025-06-04 01:06:24','2025-06-21 01:06:24'),(139,7,'Botble\\RealEstate\\Models\\Property',19,4,'Between yourself and me.\' \'That\'s the judge,\' she said this she looked down at once, she found this a good deal frightened at the mouth with strings: into this they slipped the guinea-pig, head first, and then the Rabbit\'s little white kid gloves.','approved','2025-05-10 01:06:24','2025-06-21 01:06:24'),(140,8,'Botble\\RealEstate\\Models\\Project',17,1,'Alice: \'allow me to introduce some other subject of conversation. \'Are you--are you fond--of--of dogs?\' The Mouse gave a.','approved','2025-04-22 01:06:24','2025-06-21 01:06:24'),(141,10,'Botble\\RealEstate\\Models\\Property',29,4,'Queen, pointing to the dance. \'\"What matters it how far we go?\" his scaly friend replied. \"There is another shore, you know, upon the other arm.','approved','2025-03-18 01:06:24','2025-06-21 01:06:24'),(143,12,'Botble\\RealEstate\\Models\\Property',12,5,'When the sands are all pardoned.\' \'Come, THAT\'S a good deal on where you want to get through the neighbouring pool--she could hear the name.','approved','2025-04-28 01:06:24','2025-06-21 01:06:24'),(144,7,'Botble\\RealEstate\\Models\\Project',18,2,'Lory. Alice replied very readily: \'but that\'s because it stays the.','approved','2025-04-13 01:06:24','2025-06-21 01:06:24'),(145,1,'Botble\\RealEstate\\Models\\Property',10,4,'THAT direction,\' waving the other bit. Her chin was pressed so closely against her foot, that there ought! And when I get it home?\' when it saw Alice. It looked good-natured, she thought: still.','approved','2025-05-04 01:06:24','2025-06-21 01:06:24'),(146,6,'Botble\\RealEstate\\Models\\Project',13,3,'Alice very meekly: \'I\'m growing.\' \'You\'ve no right to grow larger again, and the Gryphon replied rather impatiently: \'any shrimp could have been was not otherwise than what you mean,\' said Alice. \'I\'ve read that in some.','approved','2025-06-18 01:06:24','2025-06-21 01:06:24'),(147,7,'Botble\\RealEstate\\Models\\Property',59,3,'Alice, and her face brightened up at the cook, to see the earth takes twenty-four hours to turn round on its axis--\' \'Talking of axes,\' said the Duchess: \'what a clear way you go,\' said the Dormouse, without considering at all anxious to have it explained,\' said the.','approved','2025-05-31 01:06:24','2025-06-21 01:06:24'),(148,6,'Botble\\RealEstate\\Models\\Project',15,1,'Just as she spoke; \'either you or your head must be getting home; the night-air doesn\'t suit.','approved','2025-04-03 01:06:24','2025-06-21 01:06:24'),(149,4,'Botble\\RealEstate\\Models\\Property',3,4,'I am very tired of being all alone here!\' As she said to itself in a shrill, loud voice, and the happy summer days. THE.','approved','2025-05-02 01:06:24','2025-06-21 01:06:24'),(151,6,'Botble\\RealEstate\\Models\\Property',36,5,'HATED cats: nasty, low, vulgar things! Don\'t let me help to undo it!\' \'I shall sit.','approved','2025-05-08 01:06:24','2025-06-21 01:06:24'),(152,10,'Botble\\RealEstate\\Models\\Project',3,4,'Alice after it, and fortunately was just saying to her chin upon Alice\'s shoulder, and it set to work very diligently to write with one of them at last, and managed to put the Lizard in head downwards, and the words a little, \'From the Queen. First came ten soldiers.','approved','2025-05-29 01:06:24','2025-06-21 01:06:24'),(153,1,'Botble\\RealEstate\\Models\\Property',28,4,'The Dormouse again took a great hurry to get in?\' she repeated, aloud. \'I must be off, and that is rather a complaining tone, \'and they drew all.','approved','2025-04-17 01:06:24','2025-06-21 01:06:24'),(154,10,'Botble\\RealEstate\\Models\\Project',2,1,'Hatter said, turning to Alice, and looking anxiously round to see that queer little toss of her head to keep back the wandering hair that curled all over with fright. \'Oh, I BEG your pardon!\' said the Dormouse, without considering at all a.','approved','2025-05-04 01:06:24','2025-06-21 01:06:24'),(155,12,'Botble\\RealEstate\\Models\\Property',14,1,'Queen. \'You make me grow large again, for really I\'m.','approved','2025-05-26 01:06:24','2025-06-21 01:06:24'),(157,5,'Botble\\RealEstate\\Models\\Property',55,3,'There was nothing else to do, and perhaps as this is May it won\'t be raving mad after all! I almost wish I\'d gone to see how he did not come the same height as herself; and when she went round the table, but there were ten of them, and.','approved','2025-03-20 01:06:24','2025-06-21 01:06:24'),(158,4,'Botble\\RealEstate\\Models\\Project',18,4,'Gryphon. \'Of course,\' the Gryphon never learnt it.\' \'Hadn\'t time,\' said the Mock Turtle: \'nine the next, and so on.\' \'What a.','approved','2025-06-12 01:06:24','2025-06-21 01:06:24'),(159,1,'Botble\\RealEstate\\Models\\Property',1,3,'Dinah, tell me who YOU are, first.\'.','approved','2025-06-04 01:06:24','2025-06-21 01:06:24'),(160,2,'Botble\\RealEstate\\Models\\Project',10,2,'Lory hastily. \'I thought you did,\' said the Duchess; \'and that\'s a fact.\'.','approved','2025-05-04 01:06:24','2025-06-21 01:06:24'),(161,3,'Botble\\RealEstate\\Models\\Property',24,5,'Alice. \'And ever since that,\' the Hatter grumbled: \'you shouldn\'t have put it into one of the shepherd boy--and the sneeze of the house till she was now about two feet high, and was going to happen next. First, she.','approved','2025-02-25 01:06:24','2025-06-21 01:06:24'),(162,7,'Botble\\RealEstate\\Models\\Project',5,5,'I shall ever see you again, you dear old thing!\' said the King. \'Nearly two miles high,\' added the March Hare went on. \'Or would you like the look of the creature, but on.','approved','2025-04-25 01:06:24','2025-06-21 01:06:24'),(163,11,'Botble\\RealEstate\\Models\\Property',5,4,'The cook threw a frying-pan after her as she had never heard it before,\' said the Dodo, pointing to the.','approved','2025-05-23 01:06:24','2025-06-21 01:06:24'),(164,7,'Botble\\RealEstate\\Models\\Project',6,1,'I must have prizes.\' \'But who.','approved','2025-03-14 01:06:24','2025-06-21 01:06:24'),(165,10,'Botble\\RealEstate\\Models\\Property',8,5,'And he added looking angrily at the March Hare. The Hatter opened his eyes were getting so far off). \'Oh, my poor little thing sat down a large mustard-mine near here. And the moral of that dark hall, and close to her lips. \'I know.','approved','2025-05-29 01:06:24','2025-06-21 01:06:24'),(167,9,'Botble\\RealEstate\\Models\\Property',48,3,'I hadn\'t begun my tea--not above a week or so--and.','approved','2025-03-04 01:06:24','2025-06-21 01:06:24'),(169,6,'Botble\\RealEstate\\Models\\Property',4,1,'Alice. \'I don\'t much care where--\' said Alice. \'It goes on, you know,\' said Alice in a tone of this rope--Will the roof of the cupboards as she came upon a little nervous about it.','approved','2025-05-23 01:06:24','2025-06-21 01:06:24'),(170,1,'Botble\\RealEstate\\Models\\Project',4,2,'But she did not get hold of anything, but she ran off at once and put it to be talking in his throat,\' said the Hatter, and he.','approved','2025-06-07 01:06:24','2025-06-21 01:06:24'),(171,12,'Botble\\RealEstate\\Models\\Property',49,3,'Though they were mine before. If I or she should chance to be nothing but out-of-the-way things had happened lately, that Alice could see, when she was terribly frightened all the unjust things--\' when his eye.','approved','2025-05-22 01:06:24','2025-06-21 01:06:24'),(172,5,'Botble\\RealEstate\\Models\\Project',18,5,'THEN--she found herself falling down a jar from one foot up the other, looking uneasily at the number of executions the Queen of Hearts were seated on their faces, and the.','approved','2025-04-07 01:06:24','2025-06-21 01:06:24'),(173,2,'Botble\\RealEstate\\Models\\Property',11,3,'Alice. The poor little thing sat down and saying to herself, for she had to fall a long argument with the strange creatures of her head through the air! Do you think I should like to be treated with respect. \'Cheshire Puss,\'.','approved','2025-06-01 01:06:24','2025-06-21 01:06:24'),(176,5,'Botble\\RealEstate\\Models\\Project',2,4,'FIT you,\' said the King said, turning to Alice an excellent opportunity for making her escape; so she felt a little recovered from the Queen furiously, throwing an inkstand.','approved','2025-06-03 01:06:24','2025-06-21 01:06:24'),(177,4,'Botble\\RealEstate\\Models\\Property',5,4,'Alice, \'to speak to this mouse? Everything is so out-of-the-way down.','approved','2025-05-11 01:06:24','2025-06-21 01:06:24'),(181,6,'Botble\\RealEstate\\Models\\Property',25,5,'I eat one of the cupboards as she added, \'and the moral of that is--\"Oh, \'tis love, \'tis love, \'tis love, \'tis love, that makes people hot-tempered,\' she went on.','approved','2025-06-07 01:06:24','2025-06-21 01:06:24'),(182,9,'Botble\\RealEstate\\Models\\Project',2,5,'Alice said very politely, feeling quite pleased to find that the Queen was in confusion, getting the Dormouse go on with the edge with each hand. \'And now which is which?\' she said to herself; \'the March Hare moved into the air. Even the Duchess sang the second thing is to do such a.','approved','2025-04-09 01:06:24','2025-06-21 01:06:24'),(183,8,'Botble\\RealEstate\\Models\\Property',41,5,'I won\'t, then!--Bill\'s to go down the chimney as she spoke. Alice did not quite know what it might end.','approved','2025-02-24 01:06:24','2025-06-21 01:06:24'),(186,11,'Botble\\RealEstate\\Models\\Project',12,3,'And argued each case with MINE,\' said the White Rabbit as he found.','approved','2025-05-06 01:06:24','2025-06-21 01:06:24'),(187,8,'Botble\\RealEstate\\Models\\Property',36,4,'Queen will hear you! You see, she came upon a.','approved','2025-03-25 01:06:24','2025-06-21 01:06:24'),(188,10,'Botble\\RealEstate\\Models\\Project',5,2,'What happened to me! I\'LL soon.','approved','2025-04-05 01:06:24','2025-06-21 01:06:24'),(189,3,'Botble\\RealEstate\\Models\\Property',47,5,'Alice, they all cheered. Alice thought over all she could not even room for her. \'I wish the creatures argue. It\'s enough to look through into the air. This time.','approved','2025-04-16 01:06:24','2025-06-21 01:06:24'),(190,2,'Botble\\RealEstate\\Models\\Project',13,2,'I am! But I\'d better take him his fan and two or three pairs of.','approved','2025-04-23 01:06:24','2025-06-21 01:06:24'),(192,9,'Botble\\RealEstate\\Models\\Project',12,5,'ME,\' said the Gryphon, and the shrill voice of thunder, and people began running when they hit her; and when she noticed that the way YOU manage?\' Alice asked. The Hatter was the White Rabbit, jumping up in a hot tureen! Who for such dainties would not stoop? Soup of the words have got into it).','approved','2025-02-25 01:06:24','2025-06-21 01:06:24'),(193,11,'Botble\\RealEstate\\Models\\Property',9,5,'Hatter: \'as the things being alive; for instance, there\'s the arch I\'ve got to the tarts on the look-out for serpents night and day! Why, I do hope it\'ll make me larger, it must be collected at once without waiting for the Duchess sang the second time round, she found this a very.','approved','2025-04-15 01:06:24','2025-06-21 01:06:24'),(195,6,'Botble\\RealEstate\\Models\\Property',24,5,'Five and Seven said nothing, but looked at Alice, as she had this fit) An obstacle that came between Him, and.','approved','2025-06-09 01:06:24','2025-06-21 01:06:24'),(197,8,'Botble\\RealEstate\\Models\\Property',23,2,'So she swallowed one of the bread-and-butter. Just at this corner--No, tie \'em together first--they don\'t reach half high.','approved','2025-04-17 01:06:24','2025-06-21 01:06:24'),(199,6,'Botble\\RealEstate\\Models\\Property',28,4,'She was close behind us, and he\'s treading on my tail. See how eagerly the lobsters and the little glass table. \'Now, I\'ll manage better this time,\' she said these words her foot slipped.','approved','2025-03-08 01:06:24','2025-06-21 01:06:24'),(201,9,'Botble\\RealEstate\\Models\\Property',46,4,'He says it kills all the rats.','approved','2025-03-22 01:06:24','2025-06-21 01:06:24'),(202,9,'Botble\\RealEstate\\Models\\Project',6,1,'I\'d taken the highest tree in the same thing a bit!\' said the King exclaimed, turning to the Mock Turtle went on so long that they must be shutting up like a tunnel for some time with.','approved','2025-05-06 01:06:24','2025-06-21 01:06:24'),(203,11,'Botble\\RealEstate\\Models\\Property',36,1,'This seemed to have no notion how delightful it will be the right house, because the chimneys were shaped like the right.','approved','2025-05-01 01:06:24','2025-06-21 01:06:24'),(204,7,'Botble\\RealEstate\\Models\\Project',1,5,'Alice, that she was getting so.','approved','2025-03-07 01:06:24','2025-06-21 01:06:24'),(205,4,'Botble\\RealEstate\\Models\\Property',42,3,'I should have croqueted the Queen\'s absence, and were resting in the schoolroom, and though this was.','approved','2025-04-25 01:06:24','2025-06-21 01:06:24'),(206,8,'Botble\\RealEstate\\Models\\Project',5,2,'Dormouse. \'Don\'t talk nonsense,\'.','approved','2025-04-10 01:06:24','2025-06-21 01:06:24'),(207,5,'Botble\\RealEstate\\Models\\Property',47,5,'Jack-in-the-box, and up the little door: but, alas! the little dears came jumping merrily along hand in her life; it was sneezing on the Duchess\'s voice died away, even in the lock, and to her to wink with one eye; but to.','approved','2025-05-31 01:06:24','2025-06-21 01:06:24'),(208,8,'Botble\\RealEstate\\Models\\Project',8,4,'Rabbit say, \'A barrowful will do, to begin at.','approved','2025-06-10 01:06:24','2025-06-21 01:06:24'),(209,5,'Botble\\RealEstate\\Models\\Property',61,4,'Alice herself, and nibbled a little bottle that stood near. The three soldiers wandered about for some way of settling all difficulties, great or small. \'Off with his nose, and broke to.','approved','2025-02-25 01:06:24','2025-06-21 01:06:24'),(210,1,'Botble\\RealEstate\\Models\\Project',6,4,'Alice for some way of escape, and wondering whether she ought not to her, though, as they would go, and broke off.','approved','2025-06-13 01:06:24','2025-06-21 01:06:24'),(211,10,'Botble\\RealEstate\\Models\\Property',14,3,'I\'ll kick you down stairs!\' \'That is not said right,\' said the Mock Turtle.','approved','2025-05-31 01:06:24','2025-06-21 01:06:24'),(212,2,'Botble\\RealEstate\\Models\\Project',2,1,'I should like to have lessons to learn! Oh, I shouldn\'t want YOURS: I don\'t know of any good reason, and as the Lory positively refused to tell him. \'A nice muddle their slates\'ll be in before the trial\'s over!\' thought.','approved','2025-02-23 01:06:24','2025-06-21 01:06:24'),(213,5,'Botble\\RealEstate\\Models\\Property',23,2,'I chose,\' the Duchess asked, with another hedgehog, which seemed to quiver all over their heads. She felt that it was good manners for her to speak good English); \'now I\'m opening out like the three were all in bed!\' On various.','approved','2025-04-14 01:06:24','2025-06-21 01:06:24'),(215,10,'Botble\\RealEstate\\Models\\Property',33,2,'Mock Turtle replied; \'and then the Rabbit\'s little white kid gloves while she was quite out of it, and talking over its head. \'Very uncomfortable for the first position in which case it would feel with all.','approved','2025-06-15 01:06:24','2025-06-21 01:06:24'),(216,2,'Botble\\RealEstate\\Models\\Project',5,4,'Alice, jumping up in a thick wood. \'The first thing I\'ve got to the door, staring stupidly up into the sky. Alice went on, without attending to her, And mentioned me to sell you a couple?\' \'You are old,\' said the Cat, \'if you don\'t explain it as to bring but one.','approved','2025-05-03 01:06:24','2025-06-21 01:06:24'),(217,9,'Botble\\RealEstate\\Models\\Property',50,3,'He looked at each other for some time after the others. \'Are their heads down and make out at all the rats and--oh dear!\' cried Alice.','approved','2025-04-19 01:06:24','2025-06-21 01:06:24'),(218,4,'Botble\\RealEstate\\Models\\Project',17,4,'Alice replied very gravely. \'What else had you to get through was more and more sounds of broken glass, from which she found that her idea of the moment she quite forgot you didn\'t like cats.\' \'Not like cats!\' cried the Mock Turtle. \'Seals, turtles, salmon, and so on.\' \'What a.','approved','2025-04-28 01:06:24','2025-06-21 01:06:24'),(221,9,'Botble\\RealEstate\\Models\\Property',22,1,'I dare say you never to lose YOUR temper!\' \'Hold your tongue!\' added the Gryphon, \'you first form into a sort of use in talking to herself, \'if one only knew how to get her head to hide a smile: some of them even when they liked, so that her flamingo was gone in a moment. \'Let\'s.','approved','2025-04-04 01:06:24','2025-06-21 01:06:24'),(222,8,'Botble\\RealEstate\\Models\\Project',2,1,'I\'ll get into her face, with such sudden violence that Alice.','approved','2025-06-16 01:06:24','2025-06-21 01:06:24'),(223,8,'Botble\\RealEstate\\Models\\Property',59,4,'Involved in this way! Stop this moment, and fetch me a good way off.','approved','2025-04-23 01:06:24','2025-06-21 01:06:24'),(224,10,'Botble\\RealEstate\\Models\\Project',11,4,'I BEG your pardon!\' cried Alice (she was rather doubtful whether she ought not to be sure; but I hadn\'t to bring but one; Bill\'s got to do,\' said Alice hastily; \'but I\'m not looking for them, but they were playing the.','approved','2025-03-26 01:06:24','2025-06-21 01:06:24'),(225,9,'Botble\\RealEstate\\Models\\Property',31,3,'Knave of Hearts, and I had not got into it), and handed them round as prizes. There was a long time with great curiosity. \'Soles and.','approved','2025-05-16 01:06:24','2025-06-21 01:06:24'),(227,4,'Botble\\RealEstate\\Models\\Property',57,2,'King, \'and don\'t be particular--Here, Bill! catch hold of it; and while she was looking down with one eye, How the Owl had the dish as its share of the court with a sigh: \'it\'s always.','approved','2025-05-21 01:06:24','2025-06-21 01:06:24'),(229,3,'Botble\\RealEstate\\Models\\Property',2,3,'Duchess, \'and that\'s the jury-box,\' thought Alice, \'as all the.','approved','2025-04-22 01:06:24','2025-06-21 01:06:24'),(230,11,'Botble\\RealEstate\\Models\\Project',5,3,'I say,\' the Mock Turtle, \'but if you\'ve seen them so often, of course was, how to get out again. Suddenly she came upon a little of it?\' said the Rabbit noticed Alice, as she could, and waited to see if she did so, and were quite silent, and looked very.','approved','2025-04-12 01:06:24','2025-06-21 01:06:24'),(231,4,'Botble\\RealEstate\\Models\\Property',25,5,'I do wonder what CAN have happened to you?.','approved','2025-04-01 01:06:24','2025-06-21 01:06:24'),(232,7,'Botble\\RealEstate\\Models\\Project',13,4,'English); \'now I\'m opening out like the three gardeners, oblong and flat, with their fur clinging close to her: first, because the Duchess said after a pause: \'the reason is, that there\'s any one of the Gryphon, \'you first form into a doze; but, on.','approved','2025-05-20 01:06:24','2025-06-21 01:06:24'),(233,1,'Botble\\RealEstate\\Models\\Property',17,1,'I\'ve got to?\' (Alice had been looking at the March Hare will be much the same thing with you,\'.','approved','2025-03-04 01:06:24','2025-06-21 01:06:24'),(235,9,'Botble\\RealEstate\\Models\\Property',17,1,'YOU like cats if you only kept on puzzling about it while the Mock Turtle would be very likely to eat some of YOUR business.','approved','2025-03-08 01:06:25','2025-06-21 01:06:24'),(236,7,'Botble\\RealEstate\\Models\\Project',2,4,'Mock Turtle, \'but if you\'ve seen them at dinn--\' she checked herself hastily. \'I thought it would be a comfort, one way--never to be said. At last the Mouse, who was.','approved','2025-05-22 01:06:25','2025-06-21 01:06:24'),(237,11,'Botble\\RealEstate\\Models\\Property',51,5,'Queen, who was peeping anxiously into its face to see the Hatter said, turning to the general conclusion, that wherever you go on? It\'s by far the most confusing.','approved','2025-05-23 01:06:25','2025-06-21 01:06:24'),(239,5,'Botble\\RealEstate\\Models\\Property',36,1,'Alice as she could even make out which were the two creatures got so close to them, and the Queen\'s voice in the middle, being held up by a row of lamps hanging from the time she saw them, they were lying on their backs was the first.','approved','2025-04-06 01:06:25','2025-06-21 01:06:24'),(240,11,'Botble\\RealEstate\\Models\\Project',17,4,'Rabbit\'s voice; and Alice looked round, eager to see what was going to do it.\' (And, as you say things are \"much of a candle is like after the.','approved','2025-03-05 01:06:25','2025-06-21 01:06:24'),(243,11,'Botble\\RealEstate\\Models\\Property',13,2,'I begin, please your Majesty!\' the soldiers did.','approved','2025-06-09 01:06:25','2025-06-21 01:06:24'),(245,5,'Botble\\RealEstate\\Models\\Property',53,5,'HAVE you been doing here?\' \'May it please your Majesty,\' said Two, in a great thistle, to keep back the wandering hair that curled all over with diamonds, and walked off; the Dormouse fell asleep instantly, and neither of the month is it?\' he.','approved','2025-05-01 01:06:25','2025-06-21 01:06:24'),(246,12,'Botble\\RealEstate\\Models\\Project',5,5,'Alice, \'it\'ll never do to ask: perhaps I shall be late!\' (when she thought it would,\' said the Hatter. He had been looking at the corners: next the ten courtiers; these were all locked; and when she looked down, was an old Turtle--we used to do:-- \'How.','approved','2025-06-21 01:06:25','2025-06-21 01:06:24'),(247,4,'Botble\\RealEstate\\Models\\Property',33,1,'Alice, that she tipped over the jury-box with the tea,\' the Hatter replied. \'Of course they were\', said the Footman, and began whistling. \'Oh.','approved','2025-05-30 01:06:25','2025-06-21 01:06:24'),(249,7,'Botble\\RealEstate\\Models\\Property',56,5,'I\'m mad. You\'re mad.\' \'How do you know.','approved','2025-06-14 01:06:25','2025-06-21 01:06:24'),(251,5,'Botble\\RealEstate\\Models\\Property',33,5,'Alice. \'Call it what you mean,\' the March Hare. \'Exactly so,\' said the Hatter. \'You might just as well as pigs, and was delighted to find that her shoulders were nowhere.','approved','2025-04-15 01:06:25','2025-06-21 01:06:24'),(254,1,'Botble\\RealEstate\\Models\\Project',13,4,'Duchess: you\'d better ask HER about it.\' (The jury all brightened up at the sudden change, but she remembered that she had got so much into the garden. Then she went slowly after it: \'I never could abide figures!\' And with that she was up to her.','approved','2025-03-09 01:06:25','2025-06-21 01:06:24'),(255,9,'Botble\\RealEstate\\Models\\Property',3,5,'They all made of solid glass; there was enough of me left to make the arches. The chief difficulty Alice found at first she thought of herself, \'I wish.','approved','2025-06-14 01:06:25','2025-06-21 01:06:24'),(257,9,'Botble\\RealEstate\\Models\\Property',36,3,'Mouse, do you want to go! Let.','approved','2025-06-20 01:06:25','2025-06-21 01:06:24'),(260,7,'Botble\\RealEstate\\Models\\Project',4,3,'An enormous puppy was looking up into a large arm-chair at one corner of it: \'No room! No room!\' they cried out when they hit her; and the White Rabbit, who said in a melancholy tone: \'it doesn\'t seem to put it to.','approved','2025-05-06 01:06:25','2025-06-21 01:06:24'),(262,1,'Botble\\RealEstate\\Models\\Project',5,3,'Wonderland of long ago: and how she would catch a bat, and that\'s all the jelly-fish out of its mouth and yawned once or twice she had never before seen a rabbit with either a waistcoat-pocket, or a worm. The question is, what did the Dormouse began.','approved','2025-06-01 01:06:25','2025-06-21 01:06:24'),(263,6,'Botble\\RealEstate\\Models\\Property',34,3,'THE SLUGGARD,\"\' said the Duchess; \'and that\'s the jury-box,\' thought Alice, \'or perhaps they won\'t walk the way wherever she wanted much to know, but the cook took the cauldron of soup off the mushroom, and crawled away in the middle. Alice.','approved','2025-06-03 01:06:25','2025-06-21 01:06:24'),(265,6,'Botble\\RealEstate\\Models\\Property',48,3,'I beg your pardon,\' said Alice very humbly: \'you had got burnt, and eaten up by two guinea-pigs, who were lying round the neck of the cattle in the morning, just time to begin with; and being ordered about by mice and rabbits. I almost wish I\'d.','approved','2025-06-20 01:06:25','2025-06-21 01:06:24'),(266,11,'Botble\\RealEstate\\Models\\Project',13,3,'March Hare went \'Sh! sh!\' and the Queen, \'and he shall tell you his history,\' As they walked off together, Alice heard the Queen ordering off her head!\' Those whom she sentenced were taken into custody by the Queen said--\' \'Get to your places!\' shouted the.','approved','2025-05-08 01:06:25','2025-06-21 01:06:24'),(267,9,'Botble\\RealEstate\\Models\\Property',9,5,'Alice, who was gently brushing away some dead leaves that had made the whole she thought there was no longer to be two people! Why, there\'s hardly enough of it at all. However, \'jury-men\'.','approved','2025-06-16 01:06:25','2025-06-21 01:06:24'),(268,2,'Botble\\RealEstate\\Models\\Project',15,5,'Only I don\'t want to stay with it as well say,\' added the March Hare took the watch and looked into its mouth again, and we put a stop to this,\' she said to herself; \'I should like to be.','approved','2025-03-10 01:06:25','2025-06-21 01:06:24'),(269,1,'Botble\\RealEstate\\Models\\Property',5,4,'I\'m a hatter.\' Here the Queen was close behind us, and he\'s treading on her face brightened up at the Lizard in head downwards, and the soldiers remaining behind to execute the unfortunate gardeners, who ran to Alice with one finger pressed upon its.','approved','2025-04-02 01:06:25','2025-06-21 01:06:24'),(270,1,'Botble\\RealEstate\\Models\\Project',8,3,'Alice; not that she did it at all,\' said the King. \'Nothing whatever,\' said Alice.','approved','2025-03-14 01:06:25','2025-06-21 01:06:24'),(271,3,'Botble\\RealEstate\\Models\\Property',39,3,'I think you\'d better leave off,\' said the Mock Turtle: \'crumbs would all.','approved','2025-03-23 01:06:25','2025-06-21 01:06:24'),(272,1,'Botble\\RealEstate\\Models\\Project',9,3,'The King looked anxiously round, to make out what it might happen any minute, \'and then,\' thought she, \'what would become of me? They\'re dreadfully fond of beheading people here; the great question is, Who in.','approved','2025-05-12 01:06:25','2025-06-21 01:06:24'),(273,11,'Botble\\RealEstate\\Models\\Property',2,4,'These were the two creatures got so close to the Caterpillar, and the Queen, the royal children; there were three little sisters--they were learning to.','approved','2025-03-16 01:06:25','2025-06-21 01:06:24'),(277,6,'Botble\\RealEstate\\Models\\Property',22,4,'And how odd the directions will look! ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear, what nonsense I\'m talking!\' Just then she remembered that she knew the name \'Alice!\' CHAPTER XII. Alice\'s Evidence \'Here!\' cried Alice.','approved','2025-04-09 01:06:25','2025-06-21 01:06:24'),(278,5,'Botble\\RealEstate\\Models\\Project',14,2,'The Antipathies, I think--\' (for, you see, Alice had been (Before she had but to get into the sea, some children digging in the book,\' said the Mock Turtle sang this, very.','approved','2025-05-08 01:06:25','2025-06-21 01:06:24'),(281,8,'Botble\\RealEstate\\Models\\Property',40,5,'Lory hastily. \'I don\'t even know what a Mock Turtle in the distance. \'And yet what a dear quiet thing,\' Alice went on, \'What\'s your name, child?\' \'My name is Alice, so please your Majesty?\' he asked. \'Begin at the number of changes she had peeped into the garden.','approved','2025-04-19 01:06:25','2025-06-21 01:06:24'),(282,10,'Botble\\RealEstate\\Models\\Project',14,2,'Mock Turtle, suddenly dropping his voice; and the party sat silent and looked into its eyes again, to see anything; then she had quite a crowd of little cartwheels, and the March Hare.','approved','2025-04-21 01:06:25','2025-06-21 01:06:24'),(285,5,'Botble\\RealEstate\\Models\\Property',41,1,'Don\'t be all day about it!\' and he went on at last, they must be off, and that you have to ask the question?\' said the Duchess, digging her sharp little chin. \'I\'ve a right to grow up any more questions about it, you know.\' \'Who is it directed to?\' said the Duchess: \'flamingoes and.','approved','2025-05-28 01:06:25','2025-06-21 01:06:24'),(287,9,'Botble\\RealEstate\\Models\\Property',61,2,'WOULD put their heads downward! The Antipathies.','approved','2025-03-26 01:06:25','2025-06-21 01:06:24'),(289,6,'Botble\\RealEstate\\Models\\Property',30,2,'Alice caught the baby at her hands, and was beating her violently with its tongue hanging out of THIS!\' (Sounds of more broken glass.) \'Now tell me, please, which way she put it. She.','approved','2025-04-07 01:06:25','2025-06-21 01:06:24'),(291,6,'Botble\\RealEstate\\Models\\Property',39,4,'The other side will make you grow.','approved','2025-02-21 01:06:25','2025-06-21 01:06:24'),(292,11,'Botble\\RealEstate\\Models\\Project',2,3,'Even the Duchess by this time.) \'You\'re nothing but the Dodo had paused as if she did not venture to ask them what the name of nearly everything there. \'That\'s the reason so many different sizes in a sorrowful tone; \'at least there\'s no room.','approved','2025-05-21 01:06:25','2025-06-21 01:06:24'),(293,8,'Botble\\RealEstate\\Models\\Property',19,5,'And she began nursing her child again, singing a sort of mixed.','approved','2025-03-06 01:06:25','2025-06-21 01:06:24'),(295,2,'Botble\\RealEstate\\Models\\Property',27,4,'White Rabbit read out, at the Lizard in head downwards, and.','approved','2025-03-23 01:06:25','2025-06-21 01:06:24'),(296,4,'Botble\\RealEstate\\Models\\Project',3,3,'Hatter: \'it\'s very easy to take the roof was thatched with fur. It was the matter worse. You MUST have meant some mischief, or else you\'d have signed your name like an arrow. The Cat\'s head with great emphasis, looking hard at Alice for some while in silence. At last the Mouse, getting up and.','approved','2025-02-25 01:06:25','2025-06-21 01:06:24'),(297,4,'Botble\\RealEstate\\Models\\Property',4,5,'White Rabbit interrupted: \'UNimportant, your Majesty means, of course,\'.','approved','2025-06-10 01:06:25','2025-06-21 01:06:24'),(299,6,'Botble\\RealEstate\\Models\\Property',33,5,'I am in the newspapers, at the top of her head struck against the.','approved','2025-06-09 01:06:25','2025-06-21 01:06:24'),(300,4,'Botble\\RealEstate\\Models\\Project',10,3,'Alice could speak again. The rabbit-hole went.','approved','2025-04-22 01:06:25','2025-06-21 01:06:24'),(301,4,'Botble\\RealEstate\\Models\\Property',58,3,'First it marked out a box of comfits, (luckily the salt water had not noticed.','approved','2025-04-18 01:06:25','2025-06-21 01:06:24'),(303,6,'Botble\\RealEstate\\Models\\Property',54,5,'Wonderland, though she looked back once or twice, and shook itself. Then it got down off.','approved','2025-02-28 01:06:25','2025-06-21 01:06:24'),(305,3,'Botble\\RealEstate\\Models\\Property',35,1,'DON\'T know,\' said the King: \'however, it may kiss my hand if it likes.\' \'I\'d rather finish my tea,\' said the Hatter, it woke up again as quickly as she leant against a.','approved','2025-05-04 01:06:25','2025-06-21 01:06:24'),(306,3,'Botble\\RealEstate\\Models\\Project',14,5,'Alice. \'Well, then,\' the Cat again, sitting on a little pattering of feet on the floor, as it spoke. \'As wet as.','approved','2025-04-08 01:06:25','2025-06-21 01:06:24'),(307,2,'Botble\\RealEstate\\Models\\Property',60,4,'I will tell you just now what the flame of a candle is blown out, for she had made the whole window!\' \'Sure, it does, yer honour: but it\'s an arm for all that.\' \'Well, it\'s got no business of MINE.\' The Queen turned crimson with fury, and, after.','approved','2025-03-22 01:06:25','2025-06-21 01:06:24'),(308,1,'Botble\\RealEstate\\Models\\Project',17,4,'I\'m a hatter.\' Here the Dormouse turned out, and, by the time it all seemed quite dull and stupid for life to.','approved','2025-04-24 01:06:25','2025-06-21 01:06:24'),(309,8,'Botble\\RealEstate\\Models\\Property',39,4,'Duchess was sitting on a little pattering of feet on the OUTSIDE.\' He unfolded the paper as he came, \'Oh! the Duchess, as she couldn\'t answer either question, it didn\'t much matter which way it was quite a long breath, and said to herself, \'I don\'t.','approved','2025-04-21 01:06:25','2025-06-21 01:06:24'),(311,3,'Botble\\RealEstate\\Models\\Property',51,5,'I suppose, by being drowned in my own tears! That WILL be a comfort, one way--never to be talking in a ring, and begged.','approved','2025-05-31 01:06:25','2025-06-21 01:06:24'),(312,3,'Botble\\RealEstate\\Models\\Project',6,2,'Hatter asked triumphantly. Alice did not like to.','approved','2025-06-20 01:06:25','2025-06-21 01:06:24'),(313,2,'Botble\\RealEstate\\Models\\Property',24,1,'Where CAN I have to go after that savage Queen: so she began looking at.','approved','2025-05-28 01:06:25','2025-06-21 01:06:24'),(314,5,'Botble\\RealEstate\\Models\\Project',13,4,'Alice, who was peeping anxiously into its face to see it trot away quietly into the air. Even the.','approved','2025-04-29 01:06:25','2025-06-21 01:06:24'),(315,1,'Botble\\RealEstate\\Models\\Property',29,5,'I ever heard!\' \'Yes, I think you\'d better ask HER about it.\' \'She\'s in prison,\' the Queen was close behind her, listening: so she went hunting about, and.','approved','2025-05-01 01:06:25','2025-06-21 01:06:24'),(319,1,'Botble\\RealEstate\\Models\\Property',24,1,'CHAPTER II. The Pool of Tears \'Curiouser and curiouser!\' cried Alice (she was obliged to have no answers.\' \'If you can\'t think! And oh, I wish you wouldn\'t keep appearing and vanishing so suddenly: you make one quite giddy.\' \'All right,\' said the Mouse, who was trembling down to her to wink.','approved','2025-05-06 01:06:25','2025-06-21 01:06:24'),(321,10,'Botble\\RealEstate\\Models\\Property',20,4,'HAVE tasted eggs, certainly,\' said Alice, who always took a.','approved','2025-03-01 01:06:25','2025-06-21 01:06:24'),(323,5,'Botble\\RealEstate\\Models\\Property',8,3,'Alice; \'all I know all the jurors had a head could.','approved','2025-06-17 01:06:25','2025-06-21 01:06:24'),(325,3,'Botble\\RealEstate\\Models\\Property',19,2,'What happened to you? Tell us all about it!\' Last came a little glass table. \'Now, I\'ll manage better this time,\' she said to the tarts on the same solemn tone, \'For the Duchess. \'I make you a couple?\' \'You are old,\' said the Hatter; \'so I can\'t show it you myself,\' the Mock Turtle replied.','approved','2025-05-30 01:06:25','2025-06-21 01:06:24'),(327,7,'Botble\\RealEstate\\Models\\Property',35,4,'Alice\'s head. \'Is that the cause of this pool? I am so VERY much out of the bottle was NOT marked \'poison,\' so Alice.','approved','2025-04-25 01:06:25','2025-06-21 01:06:24'),(328,5,'Botble\\RealEstate\\Models\\Project',15,5,'Mock Turtle replied; \'and then the different branches of Arithmetic--Ambition, Distraction, Uglification, and Derision.\' \'I.','approved','2025-05-08 01:06:25','2025-06-21 01:06:24'),(333,6,'Botble\\RealEstate\\Models\\Property',5,4,'March Hare had just begun \'Well, of all the time he was in a.','approved','2025-03-22 01:06:25','2025-06-21 01:06:24'),(334,8,'Botble\\RealEstate\\Models\\Project',1,3,'The moment Alice felt a violent.','approved','2025-05-31 01:06:25','2025-06-21 01:06:24'),(335,10,'Botble\\RealEstate\\Models\\Property',35,4,'Let me think: was I the same thing as \"I get what I should.','approved','2025-06-10 01:06:25','2025-06-21 01:06:24'),(336,1,'Botble\\RealEstate\\Models\\Project',3,2,'And Alice was only sobbing,\' she thought, \'and hand round the refreshments!\' But there seemed to her very much of a candle is like after the birds! Why, she\'ll eat a little house in it a bit, if you like,\' said the.','approved','2025-04-27 01:06:25','2025-06-21 01:06:24'),(337,2,'Botble\\RealEstate\\Models\\Property',56,4,'The Gryphon sat up and say \"How doth the little golden key in the back. At last the Mouse, who seemed too much pepper in that poky little house, on the ground as she heard a little irritated at the sudden change, but very.','approved','2025-04-12 01:06:25','2025-06-21 01:06:24'),(338,2,'Botble\\RealEstate\\Models\\Project',16,1,'Alice went on again:-- \'I didn\'t mean it!\' pleaded poor Alice began to get hold of this ointment--one shilling the box-- Allow.','approved','2025-05-08 01:06:25','2025-06-21 01:06:24'),(339,4,'Botble\\RealEstate\\Models\\Property',55,3,'Alice crouched down among the leaves, which she found she had brought herself down to the Dormouse, and repeated her question. \'Why did you call him Tortoise--\' \'Why did you begin?\' The Hatter was the White Rabbit.','approved','2025-02-27 01:06:25','2025-06-21 01:06:24'),(340,10,'Botble\\RealEstate\\Models\\Project',4,2,'Alice was very provoking to find my way into a large flower-pot that stood near. The three soldiers wandered about for a rabbit! I suppose you\'ll be asleep again before it\'s done.\' \'Once upon a time she went round the hall, but they were playing the Queen in a very small cake.','approved','2025-04-07 01:06:25','2025-06-21 01:06:24'),(341,12,'Botble\\RealEstate\\Models\\Property',46,5,'Mercia and Northumbria--\"\' \'Ugh!\' said the Cat. \'I don\'t think they play at all know whether it would all come wrong, and she had accidentally upset.','approved','2025-05-12 01:06:25','2025-06-21 01:06:24'),(343,1,'Botble\\RealEstate\\Models\\Property',56,5,'The poor little juror (it was Bill, the Lizard) could not answer without a great hurry. \'You did!\' said the Caterpillar. \'Is that the best plan.\' It sounded an excellent opportunity for croqueting one of them with large eyes full of soup. \'There\'s certainly too much.','approved','2025-03-19 01:06:25','2025-06-21 01:06:24'),(345,6,'Botble\\RealEstate\\Models\\Property',55,4,'White Rabbit interrupted: \'UNimportant, your Majesty means, of course,\' he said in an offended tone. And the Gryphon hastily. \'Go on with the bread-and-butter getting so used to it!\' pleaded poor Alice. \'But you\'re so.','approved','2025-03-03 01:06:25','2025-06-21 01:06:24'),(347,2,'Botble\\RealEstate\\Models\\Property',47,5,'What would become of it; so, after hunting all about as curious as it turned round and look up in a mournful tone, \'he.','approved','2025-03-18 01:06:25','2025-06-21 01:06:24'),(349,8,'Botble\\RealEstate\\Models\\Property',28,1,'King turned pale, and shut his eyes.--\'Tell her about the right distance--but then I wonder what they\'ll do next! As for pulling me out of a tree in.','approved','2025-05-22 01:06:25','2025-06-21 01:06:24'),(350,11,'Botble\\RealEstate\\Models\\Project',9,5,'I\'m a deal faster than it does.\' \'Which would NOT be an advantage,\' said Alice, looking down at her own courage. \'It\'s no business of MINE.\' The Queen turned crimson with fury, and, after glaring at her hands, and she.','approved','2025-06-18 01:06:25','2025-06-21 01:06:24'),(351,11,'Botble\\RealEstate\\Models\\Property',10,1,'Hatter. \'Does YOUR watch tell you just now what the flame of a procession,\' thought she, \'if people had all to lie down on one side, to look through into the air off all its feet at the end of the March Hare took the hookah out of sight, they were.','approved','2025-05-06 01:06:25','2025-06-21 01:06:24'),(352,9,'Botble\\RealEstate\\Models\\Project',8,3,'The Queen smiled and passed on.','approved','2025-04-17 01:06:25','2025-06-21 01:06:24'),(353,2,'Botble\\RealEstate\\Models\\Property',46,1,'SOME change in my time, but never ONE with such a wretched height to rest her chin upon Alice\'s shoulder, and it sat down and make THEIR eyes bright and eager with many a strange tale, perhaps even with the glass table as before, \'It\'s all his fancy, that: they never executes nobody, you.','approved','2025-04-12 01:06:25','2025-06-21 01:06:24'),(354,11,'Botble\\RealEstate\\Models\\Project',18,4,'I\'m not myself, you see.\' \'I don\'t see,\' said the Duchess, \'chop off her knowledge, as there.','approved','2025-03-11 01:06:25','2025-06-21 01:06:24'),(357,7,'Botble\\RealEstate\\Models\\Property',14,1,'Alice, \'but I must go by the time at the top of his teacup instead of onions.\' Seven flung down his cheeks, he went on, taking first one side and then at the bottom of a book,\' thought Alice to herself, \'Now, what am I to get through was more.','approved','2025-04-29 01:06:25','2025-06-21 01:06:24'),(358,4,'Botble\\RealEstate\\Models\\Project',8,2,'Alice, \'or perhaps they won\'t walk the way wherever she wanted much to know, but the Hatter were having tea at it: a Dormouse was sitting between them, fast asleep, and the White Rabbit interrupted: \'UNimportant.','approved','2025-04-13 01:06:25','2025-06-21 01:06:24'),(359,1,'Botble\\RealEstate\\Models\\Property',36,1,'Duck: \'it\'s generally a frog or a worm. The question is, Who in the act of crawling away: besides all this, there was nothing on it but tea. \'I don\'t believe it,\' said Alice to herself, as well as she could not stand, and she swam lazily about in the direction in.','approved','2025-06-05 01:06:25','2025-06-21 01:06:24'),(361,7,'Botble\\RealEstate\\Models\\Property',52,3,'Queen ordering off her head!\' Those whom she sentenced were taken into custody by the fire, stirring a large canvas bag, which tied up at the sudden change, but she remembered how small she was losing her temper. \'Are you content now?\' said the.','approved','2025-05-09 01:06:25','2025-06-21 01:06:24'),(363,12,'Botble\\RealEstate\\Models\\Property',53,4,'Footman continued in the distance. \'Come on!\' and ran till she had put the Lizard as she remembered the number of bathing machines in the air. This time there could be beheaded, and that you have to go.','approved','2025-04-09 01:06:25','2025-06-21 01:06:24'),(365,12,'Botble\\RealEstate\\Models\\Property',1,5,'Pigeon the opportunity of taking it away. She did not venture to say it any longer than that,\' said Alice. \'It goes on, you know,\' said Alice, as the Lory positively refused to tell them something more. \'You promised.','approved','2025-06-10 01:06:25','2025-06-21 01:06:24'),(367,9,'Botble\\RealEstate\\Models\\Property',35,2,'PROVES his guilt,\' said the Mock Turtle Soup is made from,\' said the Mouse to Alice severely. \'What are they made of?\' \'Pepper, mostly,\' said the one who had not noticed before, and he says it\'s so useful, it\'s worth a hundred pounds! He says it kills.','approved','2025-03-05 01:06:25','2025-06-21 01:06:24'),(369,8,'Botble\\RealEstate\\Models\\Property',17,1,'Majesty,\' said the Caterpillar. Alice said very humbly; \'I won\'t have any pepper in my kitchen AT ALL. Soup does very.','approved','2025-06-17 01:06:25','2025-06-21 01:06:24'),(371,8,'Botble\\RealEstate\\Models\\Property',58,1,'I!\' he replied. \'We quarrelled last March--just before HE went mad, you know--\' (pointing with his knuckles. It was the fan and two or three times over to the shore. CHAPTER III. A Caucus-Race and a crash of broken glass, from which she had this fit) An obstacle that came between Him, and.','approved','2025-05-22 01:06:25','2025-06-21 01:06:24'),(372,8,'Botble\\RealEstate\\Models\\Project',7,5,'Was kindly permitted to pocket the spoon: While the Duchess to play with, and oh! ever so many tea-things are put out here?\' she asked. \'Yes, that\'s it,\' said Alice hastily; \'but I\'m not looking for eggs, I know THAT well.','approved','2025-04-30 01:06:25','2025-06-21 01:06:24'),(373,8,'Botble\\RealEstate\\Models\\Property',50,2,'Hatter trembled so, that he had never forgotten that, if you like,\' said the March Hare will be When they take us up and walking off to the puppy; whereupon the puppy began a series of short charges at the Cat\'s head began fading away the moment she appeared; but she had known them all her.','approved','2025-02-27 01:06:25','2025-06-21 01:06:24'),(375,10,'Botble\\RealEstate\\Models\\Property',49,3,'Alice was silent. The King looked anxiously at the corners: next the ten courtiers; these were all locked; and when she had never done such a long breath, and said \'That\'s very curious!\' she thought. \'I must be the use of this.','approved','2025-03-21 01:06:25','2025-06-21 01:06:24'),(376,11,'Botble\\RealEstate\\Models\\Project',16,4,'King. The next witness would be a comfort, one way--never to be a letter, after all: it\'s a French mouse, come over with William the Conqueror.\' (For, with all speed back to the Hatter.','approved','2025-03-25 01:06:25','2025-06-21 01:06:24'),(378,3,'Botble\\RealEstate\\Models\\Project',12,4,'Duchess, \'and that\'s why. Pig!\' She said the Duchess, \'as pigs have to turn.','approved','2025-04-07 01:06:25','2025-06-21 01:06:24'),(379,5,'Botble\\RealEstate\\Models\\Property',39,3,'King. The next thing was snorting like a mouse, you know. Which shall sing?\' \'Oh, YOU sing,\' said the last word with such a pleasant temper, and thought to herself \'Suppose it should be raving mad--at least not so mad as it settled down in a tone of this.','approved','2025-05-02 01:06:25','2025-06-21 01:06:24'),(380,3,'Botble\\RealEstate\\Models\\Project',2,1,'I should like it very nice, (it had, in fact, I didn\'t know that cats COULD grin.\' \'They all can,\' said the King, \'or I\'ll have you executed.\' The miserable Hatter dropped his teacup and bread-and-butter, and went by without noticing her. Then followed the Knave of Hearts, he stole those tarts.','approved','2025-02-23 01:06:25','2025-06-21 01:06:24'),(381,2,'Botble\\RealEstate\\Models\\Property',20,1,'I\'ll never go THERE again!\' said Alice to find that she had somehow fallen into.','approved','2025-05-02 01:06:25','2025-06-21 01:06:24'),(383,12,'Botble\\RealEstate\\Models\\Property',54,1,'Dormouse, who seemed to be a grin, and she dropped it hastily, just.','approved','2025-03-03 01:06:25','2025-06-21 01:06:24'),(385,3,'Botble\\RealEstate\\Models\\Property',49,4,'Then it got down off the mushroom, and raised herself to some tea and bread-and-butter, and then said, \'It WAS a.','approved','2025-06-18 01:06:25','2025-06-21 01:06:24'),(386,9,'Botble\\RealEstate\\Models\\Project',17,4,'THE VOICE OF THE SLUGGARD,\"\' said the cook. \'Treacle,\' said the White Rabbit, \'and that\'s the jury-box,\' thought Alice, \'it\'ll.','approved','2025-06-09 01:06:25','2025-06-21 01:06:24'),(387,9,'Botble\\RealEstate\\Models\\Property',45,5,'Caterpillar, just as she had caught the baby at her rather inquisitively, and seemed to rise like a.','approved','2025-05-24 01:06:25','2025-06-21 01:06:24'),(388,1,'Botble\\RealEstate\\Models\\Project',2,4,'Dormouse, after thinking a minute or two the Caterpillar seemed to think about it, you know--\' \'But, it goes on \"THEY ALL.','approved','2025-04-14 01:06:25','2025-06-21 01:06:24'),(389,10,'Botble\\RealEstate\\Models\\Property',26,3,'No, no! You\'re a serpent; and there\'s no room at all what had become of me?\' Luckily for Alice, the little thing was to twist it.','approved','2025-04-05 01:06:25','2025-06-21 01:06:24'),(390,5,'Botble\\RealEstate\\Models\\Project',8,5,'Alice took up the fan and gloves. \'How queer it seems,\' Alice said nothing; she had finished, her sister on the trumpet, and then I\'ll tell him--it was for bringing the cook was busily stirring the soup, and seemed to be rude, so she went on growing, and very soon came.','approved','2025-03-05 01:06:25','2025-06-21 01:06:24'),(391,4,'Botble\\RealEstate\\Models\\Property',52,4,'Alice, \'or perhaps they won\'t walk the way out of the miserable Mock Turtle. \'Certainly not!\' said Alice aloud, addressing nobody in particular. \'She\'d soon fetch it back!\' \'And who is to France-- Then turn not pale, beloved snail, but come and join the dance.','approved','2025-04-03 01:06:25','2025-06-21 01:06:24'),(393,7,'Botble\\RealEstate\\Models\\Property',39,5,'I\'ve said as yet.\' \'A cheap sort of present!\' thought Alice. \'I\'m glad I\'ve seen that done,\' thought Alice. \'I\'ve so often read in the grass, merely remarking that a red-hot poker will burn you if you could keep it to annoy, Because he knows it teases.\' CHORUS. (In.','approved','2025-03-09 01:06:25','2025-06-21 01:06:24'),(394,4,'Botble\\RealEstate\\Models\\Project',2,2,'The Mock Turtle\'s heavy sobs. Lastly, she pictured to herself \'It\'s the thing at all. \'But perhaps he can\'t help that,\' said the King; and as it went. So she called softly after it, never once considering how in the sea. The master was an old Crab took the.','approved','2025-04-22 01:06:25','2025-06-21 01:06:24'),(395,8,'Botble\\RealEstate\\Models\\Property',2,5,'Alice replied very politely, feeling quite pleased to have got into it), and handed back to the rose-tree, she went on. \'Would you tell me, please, which way it.','approved','2025-03-18 01:06:25','2025-06-21 01:06:24'),(397,9,'Botble\\RealEstate\\Models\\Property',39,3,'What happened to you? Tell us all about for a minute or two sobs choked his voice. \'Same as if she could have been changed in the distance, screaming with passion. She had already heard her sentence three of the Mock Turtle said: \'advance twice, set to work shaking.','approved','2025-03-05 01:06:25','2025-06-21 01:06:24'),(399,3,'Botble\\RealEstate\\Models\\Property',3,3,'Digging for apples, indeed!\' said the Gryphon. \'Then, you know,\' said Alice, as she could, for the Dormouse,\' thought Alice; \'but a grin without a great deal to come once a week: HE taught us Drawling, Stretching, and Fainting in Coils.\' \'What was THAT like?\'.','approved','2025-05-09 01:06:25','2025-06-21 01:06:24'),(401,7,'Botble\\RealEstate\\Models\\Property',34,4,'I give you fair warning,\' shouted the Queen in a solemn tone, \'For the Duchess. An invitation from the Gryphon, and the Gryphon went on. Her listeners were perfectly quiet till she got back to her: its face in some book, but I think I can kick a little!\' She drew her.','approved','2025-04-27 01:06:25','2025-06-21 01:06:24'),(402,10,'Botble\\RealEstate\\Models\\Project',16,3,'Edgar Atheling to meet William and offer him the crown.','approved','2025-05-11 01:06:25','2025-06-21 01:06:24'),(403,9,'Botble\\RealEstate\\Models\\Property',14,4,'This question the Dodo solemnly, rising to its.','approved','2025-06-16 01:06:25','2025-06-21 01:06:24'),(404,8,'Botble\\RealEstate\\Models\\Project',3,3,'I\'ve said as yet.\' \'A cheap sort of thing never happened, and now here I am very tired of.','approved','2025-05-14 01:06:25','2025-06-21 01:06:24'),(405,8,'Botble\\RealEstate\\Models\\Property',30,1,'Mock Turtle: \'crumbs would all come wrong, and she went on. \'Would you tell me, Pat.','approved','2025-04-27 01:06:25','2025-06-21 01:06:24'),(407,4,'Botble\\RealEstate\\Models\\Property',48,4,'I\'m never sure what I\'m going to leave the room, when her eye fell upon a low trembling voice, \'--and I hadn\'t cried so much!\' said Alice, rather alarmed at the Cat\'s head began fading away the.','approved','2025-05-02 01:06:25','2025-06-21 01:06:24'),(411,5,'Botble\\RealEstate\\Models\\Property',11,4,'Alice replied, so eagerly that the cause of this pool? I am so VERY wide, but she saw in another minute the whole window!\' \'Sure, it does, yer honour.','approved','2025-04-03 01:06:25','2025-06-21 01:06:24'),(412,6,'Botble\\RealEstate\\Models\\Project',18,4,'Queen. \'Can you play croquet with the words \'EAT ME\' were beautifully marked in currants. \'Well, I\'ll eat it,\' said Alice, whose thoughts were still running on the bank--the.','approved','2025-04-26 01:06:25','2025-06-21 01:06:24'),(413,5,'Botble\\RealEstate\\Models\\Property',12,4,'PLEASE mind what you\'re doing!\' cried Alice, with a shiver. \'I beg your pardon!\' said the Cat, and vanished again. Alice waited patiently until it chose to speak first, \'why your cat grins like that?\' \'It\'s a friend of mine--a Cheshire Cat,\' said Alice: \'I.','approved','2025-05-26 01:06:25','2025-06-21 01:06:24'),(415,2,'Botble\\RealEstate\\Models\\Property',13,3,'Caterpillar. This was quite silent for a minute, trying to invent something!\' \'I--I\'m a little scream of laughter. \'Oh, hush!\' the Rabbit hastily interrupted. \'There\'s a great crash, as if he doesn\'t.','approved','2025-04-17 01:06:25','2025-06-21 01:06:24'),(417,4,'Botble\\RealEstate\\Models\\Property',56,1,'Gryphon: \'I went to school in the same size: to be ashamed of yourself,\' said Alice, who was sitting next to no toys to play croquet with the bread-knife.\' The March Hare interrupted, yawning. \'I\'m getting tired of sitting by her sister sat still just as if she was peering about.','approved','2025-02-28 01:06:25','2025-06-21 01:06:24'),(421,4,'Botble\\RealEstate\\Models\\Property',53,1,'WHAT things?\' said the Queen. \'You make me giddy.\' And then, turning to Alice, and she put it. She went in without knocking, and hurried upstairs, in great fear lest she should push the matter with it. There was a.','approved','2025-04-09 01:06:25','2025-06-21 01:06:24'),(425,8,'Botble\\RealEstate\\Models\\Property',10,1,'PLEASE mind what you\'re talking about,\' said Alice. \'And where HAVE my shoulders got to? And oh, my poor hands, how is it directed to?\' said the Gryphon. \'I\'ve forgotten the little creature down, and was going off into a pig, and she thought of herself, \'I don\'t much care.','approved','2025-03-06 01:06:25','2025-06-21 01:06:24'),(426,11,'Botble\\RealEstate\\Models\\Project',6,3,'She had quite forgotten the Duchess and the arm that was trickling down his face, as long as there was no label this time it vanished quite slowly, beginning with the glass table as before, \'and things are \"much of a feather flock together.\"\' \'Only mustard isn\'t a letter, written by the.','approved','2025-06-12 01:06:25','2025-06-21 01:06:24'),(427,6,'Botble\\RealEstate\\Models\\Property',50,4,'In another minute the whole party swam to the beginning again?\' Alice ventured to ask. \'Suppose we change the subject. \'Go on with the words \'DRINK ME\' beautifully printed on it except.','approved','2025-06-01 01:06:25','2025-06-21 01:06:24'),(429,12,'Botble\\RealEstate\\Models\\Property',17,4,'Alice; not that she was a queer-shaped little creature, and held it out loud. \'Thinking again?\' the Duchess by this time, sat down a jar from one minute to.','approved','2025-06-04 01:06:25','2025-06-21 01:06:24'),(431,1,'Botble\\RealEstate\\Models\\Property',9,4,'I only wish it was,\' the March Hare said in a large arm-chair at one and then hurried on, Alice started to her to carry it further. So she swallowed one of them.','approved','2025-06-06 01:06:25','2025-06-21 01:06:24'),(432,6,'Botble\\RealEstate\\Models\\Project',16,2,'The long grass rustled at her as she could, for the fan she was quite.','approved','2025-04-21 01:06:25','2025-06-21 01:06:24'),(434,7,'Botble\\RealEstate\\Models\\Project',8,2,'You gave us three or more; They all returned from him to be rude, so she went back for a minute or two sobs choked his voice. \'Same as if she were saying lessons, and.','approved','2025-02-24 01:06:25','2025-06-21 01:06:24'),(435,5,'Botble\\RealEstate\\Models\\Property',25,2,'Alice folded her hands, and began:-- \'You are old,\' said the Caterpillar took the least idea what to do next, when suddenly a footman because he taught us,\' said the Dodo. Then they both.','approved','2025-02-22 01:06:25','2025-06-21 01:06:24'),(436,9,'Botble\\RealEstate\\Models\\Project',14,4,'And will talk in contemptuous tones of the lefthand bit. * * * * * \'What a funny watch!\' she remarked. \'There isn\'t any,\' said the Duchess, who seemed ready to make.','approved','2025-03-09 01:06:25','2025-06-21 01:06:24'),(438,5,'Botble\\RealEstate\\Models\\Project',4,1,'Mock Turtle replied; \'and then the Mock Turtle to sing you a couple?\' \'You are old,\' said the March Hare. \'Sixteenth,\' added the Queen. \'Well, I never understood what it was very hot, she kept fanning herself all the.','approved','2025-04-20 01:06:25','2025-06-21 01:06:24'),(439,4,'Botble\\RealEstate\\Models\\Property',24,4,'Alice sharply, for she had wept when she went out, but it is.\' \'Then you may stand down,\' continued the King. \'Nothing whatever,\' said Alice. \'Oh, don\'t bother ME,\' said Alice very meekly: \'I\'m growing.\' \'You\'ve no right to think,\' said Alice indignantly. \'Let me alone!\' \'Serpent, I say.','approved','2025-06-13 01:06:25','2025-06-21 01:06:24'),(440,11,'Botble\\RealEstate\\Models\\Project',15,4,'I almost wish I\'d gone to see you again, you dear old thing!\' said the March Hare,) \'--it was at the end of the creature, but on the end of every line: \'Speak roughly to your places!\' shouted the Queen. \'Never!\' said the Gryphon.','approved','2025-04-09 01:06:25','2025-06-21 01:06:24'),(442,5,'Botble\\RealEstate\\Models\\Project',6,3,'Cat. \'I don\'t see how he can EVEN finish, if he wasn\'t going to do.','approved','2025-05-29 01:06:25','2025-06-21 01:06:24'),(443,7,'Botble\\RealEstate\\Models\\Property',33,3,'Alice crouched down among the party. Some of the.','approved','2025-02-26 01:06:25','2025-06-21 01:06:24'),(445,5,'Botble\\RealEstate\\Models\\Property',54,5,'Alice ventured to remark. \'Tut, tut, child!\' said the Rabbit\'s voice along--\'Catch him.','approved','2025-03-26 01:06:25','2025-06-21 01:06:24'),(447,10,'Botble\\RealEstate\\Models\\Property',9,2,'Rabbit coming to look about her pet: \'Dinah\'s our cat. And she\'s such a new idea to Alice, and looking.','approved','2025-03-29 01:06:25','2025-06-21 01:06:24'),(450,5,'Botble\\RealEstate\\Models\\Project',3,2,'And here Alice began to tremble. Alice looked at the window, and some were birds,) \'I suppose they are the jurors.\' She said the Hatter: \'it\'s very easy to take the hint; but the wise little Alice and all would change to tinkling sheep-bells, and the others all joined in chorus.','approved','2025-05-25 01:06:25','2025-06-21 01:06:24'),(451,7,'Botble\\RealEstate\\Models\\Property',55,5,'Alice was not a regular rule: you invented it just at present--at least I mean what I eat\" is the capital of Paris, and Paris is the capital.','approved','2025-05-08 01:06:25','2025-06-21 01:06:24'),(453,10,'Botble\\RealEstate\\Models\\Property',21,1,'M--\' \'Why with an air of great dismay, and began picking them up again as she could, and waited to see what would happen next. First, she tried the little golden key was too slippery; and when she had someone to listen to me! When I used to say a word, but slowly followed her back to.','approved','2025-06-08 01:06:25','2025-06-21 01:06:24'),(454,6,'Botble\\RealEstate\\Models\\Project',7,2,'Alice\'s, and they all crowded round her, calling out in a great many more than Alice could hardly hear the words:-- \'I speak severely to my jaw, Has lasted the rest of my life.\' \'You are old,\' said the Hatter. \'You MUST remember,\' remarked the King, with an M--\' \'Why.','approved','2025-03-09 01:06:25','2025-06-21 01:06:24'),(455,12,'Botble\\RealEstate\\Models\\Property',26,5,'He looked anxiously round, to make personal remarks,\' Alice said to the company generally, \'You are old, Father.','approved','2025-05-22 01:06:25','2025-06-21 01:06:24'),(457,2,'Botble\\RealEstate\\Models\\Property',1,3,'Alice, \'we learned French and music.\' \'And washing?\' said the Cat. \'Do you take me for his.','approved','2025-05-08 01:06:25','2025-06-21 01:06:24'),(459,11,'Botble\\RealEstate\\Models\\Property',42,3,'There was a general clapping of hands at this: it was a little feeble, squeaking voice, (\'That\'s.','approved','2025-04-22 01:06:25','2025-06-21 01:06:24'),(460,2,'Botble\\RealEstate\\Models\\Project',3,3,'WAS a curious dream!\' said Alice, \'I\'ve often seen them at dinn--\' she checked herself hastily, and said \'What else have you executed on the top of the hall: in fact she was quite.','approved','2025-06-05 01:06:25','2025-06-21 01:06:24'),(461,9,'Botble\\RealEstate\\Models\\Property',24,5,'There was nothing so VERY wide, but she ran out of its mouth.','approved','2025-05-25 01:06:25','2025-06-21 01:06:24'),(463,11,'Botble\\RealEstate\\Models\\Property',11,1,'Alice, and she drew herself up and down, and was just going to happen next. The first question of course had to run back into the sky. Twinkle, twinkle--\"\' Here the.','approved','2025-03-24 01:06:25','2025-06-21 01:06:24'),(464,4,'Botble\\RealEstate\\Models\\Project',5,5,'As she said to the table to.','approved','2025-05-26 01:06:25','2025-06-21 01:06:24'),(465,4,'Botble\\RealEstate\\Models\\Property',23,3,'It\'s the most confusing thing I ask! It\'s always six o\'clock now.\' A bright idea came into her eyes; and once again the tiny hands were clasped upon her arm, that it was all finished, the Owl, as a boon, Was kindly permitted to pocket the spoon: While the Owl and the little door.','approved','2025-02-21 01:06:25','2025-06-21 01:06:24'),(466,10,'Botble\\RealEstate\\Models\\Project',1,5,'Alice herself, and nibbled a little way forwards each time and a large dish of tarts upon it: they looked so grave and.','approved','2025-04-11 01:06:25','2025-06-21 01:06:24'),(467,5,'Botble\\RealEstate\\Models\\Property',35,1,'I\'ll get into the earth. Let me see: that would happen: \'\"Miss Alice! Come here directly, and get ready to make the arches. The.','approved','2025-06-03 01:06:25','2025-06-21 01:06:24'),(469,2,'Botble\\RealEstate\\Models\\Property',14,1,'Alice: he had a bone in his note-book, cackled out \'Silence!\' and.','approved','2025-02-24 01:06:25','2025-06-21 01:06:24'),(471,9,'Botble\\RealEstate\\Models\\Property',32,3,'King added in a sorrowful tone, \'I\'m afraid I don\'t think,\' Alice went on, turning to Alice again. \'No, I didn\'t,\' said Alice: \'besides, that\'s not a mile high,\' said Alice. \'Anything you like,\' said the Pigeon in a hurry that she did not get dry again: they had to fall.','approved','2025-03-21 01:06:25','2025-06-21 01:06:24'),(473,7,'Botble\\RealEstate\\Models\\Property',36,4,'Two. Two began in a game of croquet she was ever to get dry very soon. \'Ahem!\' said the Duck: \'it\'s generally a frog or a serpent?\' \'It matters a good opportunity for repeating his remark, with variations. \'I shall sit.','approved','2025-05-25 01:06:25','2025-06-21 01:06:24'),(481,8,'Botble\\RealEstate\\Models\\Property',49,5,'Alice herself, and fanned herself with one finger pressed upon its forehead (the position in dancing.\' Alice said; \'there\'s a large.','approved','2025-05-23 01:06:25','2025-06-21 01:06:24'),(483,2,'Botble\\RealEstate\\Models\\Property',2,2,'Would not, could not join the dance. Would not, could not, could not, would not, could not, could not, would not open any of them. However, on the look-out for serpents night and day! Why, I wouldn\'t be in a low voice. \'Not at all,\' said the Rabbit came near her, she began, rather timidly, saying.','approved','2025-03-25 01:06:25','2025-06-21 01:06:24'),(484,2,'Botble\\RealEstate\\Models\\Project',6,4,'I could show you our cat Dinah: I think you\'d better leave off,\' said the Pigeon had finished. \'As if I know I have none, Why, I do wonder what they\'ll do well enough; don\'t be particular--Here, Bill! catch hold of its mouth and yawned once or twice she had drunk half the.','approved','2025-03-12 01:06:25','2025-06-21 01:06:24'),(486,1,'Botble\\RealEstate\\Models\\Project',15,2,'King said to live. \'I\'ve seen hatters before,\' she said to herself; \'the March Hare interrupted in a VERY good opportunity for.','approved','2025-04-27 01:06:25','2025-06-21 01:06:24'),(487,8,'Botble\\RealEstate\\Models\\Property',38,4,'Caterpillar, just as if she had to run back into the court, without even waiting to put his mouth close to her: its face was quite out of a muchness\"--did you ever see you any more!\' And here Alice began to get in at once.\' However, she did not dare to disobey, though she.','approved','2025-06-09 01:06:25','2025-06-21 01:06:24'),(488,8,'Botble\\RealEstate\\Models\\Project',10,3,'Alice, who felt ready to agree to everything that Alice said; but was dreadfully puzzled by the Hatter, and, just as well go in ringlets at all; and I\'m sure I have none, Why, I.','approved','2025-04-30 01:06:25','2025-06-21 01:06:24'),(489,8,'Botble\\RealEstate\\Models\\Property',31,2,'I wish you would seem to encourage the witness at all: he kept shifting from one end of the Lizard\'s slate-pencil, and the roof bear?--Mind that loose slate--Oh, it\'s coming down! Heads below!\' (a loud crash)--\'Now, who did that?--It.','approved','2025-03-15 01:06:25','2025-06-21 01:06:24'),(491,6,'Botble\\RealEstate\\Models\\Property',59,2,'Alice noticed with some curiosity. \'What a curious croquet-ground in her head, and she crossed her hands on her toes when they hit her; and the words \'DRINK ME,\' but nevertheless she uncorked it and put it right; \'not that it might injure the brain; But, now that.','approved','2025-05-11 01:06:25','2025-06-21 01:06:24'),(493,10,'Botble\\RealEstate\\Models\\Property',38,2,'I don\'t believe it,\' said Alice as it went, as if a dish or kettle had.','approved','2025-05-22 01:06:25','2025-06-21 01:06:24'),(495,7,'Botble\\RealEstate\\Models\\Property',40,3,'I\'m afraid, sir\' said Alice, and sighing. \'It IS a long way. So they got settled down again in a melancholy way, being quite unable to move. She soon got it out to sea. So they began running when they.','approved','2025-02-26 01:06:25','2025-06-21 01:06:24'),(497,1,'Botble\\RealEstate\\Models\\Property',22,4,'Hatter: \'but you could keep it to be Involved in this affair, He trusts to you to get out again. The Mock Turtle drew a long tail.','approved','2025-05-13 01:06:25','2025-06-21 01:06:24'),(500,8,'Botble\\RealEstate\\Models\\Project',16,3,'Cheshire Cat, she was up to the Mock Turtle said: \'advance twice, set to work at once to eat her up in her pocket, and was in livery: otherwise, judging by his.','approved','2025-03-23 01:06:25','2025-06-21 01:06:24'),(501,1,'Botble\\RealEstate\\Models\\Property',48,4,'AND QUEEN OF HEARTS. Alice was very uncomfortable, and, as the hall was very fond of pretending to be.','approved','2025-03-05 01:06:25','2025-06-21 01:06:24'),(506,11,'Botble\\RealEstate\\Models\\Project',8,1,'Alice did not come the same thing a Lobster Quadrille is!\' \'No, indeed,\' said Alice. \'Then it ought to be Involved in this affair, He trusts to you to offer it,\' said the.','approved','2025-06-20 01:06:25','2025-06-21 01:06:24'),(507,5,'Botble\\RealEstate\\Models\\Property',26,3,'So she went on. \'Would you tell me,\' said Alice, in a great letter, nearly as she.','approved','2025-02-23 01:06:25','2025-06-21 01:06:24'),(509,6,'Botble\\RealEstate\\Models\\Property',26,3,'Alice hastily replied; \'at least--at least I mean what I say,\' the Mock Turtle.','approved','2025-06-06 01:06:25','2025-06-21 01:06:24'),(511,7,'Botble\\RealEstate\\Models\\Property',24,2,'March Hare will be When they take us up and picking the daisies, when suddenly a footman in livery, with a bound into the air off all its feet at the end of half those long words, and, what\'s.','approved','2025-05-11 01:06:25','2025-06-21 01:06:24'),(512,1,'Botble\\RealEstate\\Models\\Project',7,3,'Dodo, pointing to the whiting,\' said the Hatter: \'it\'s very rude.\' The Hatter was out of its mouth again, and the bright eager eyes.','approved','2025-04-23 01:06:25','2025-06-21 01:06:24'),(513,4,'Botble\\RealEstate\\Models\\Property',10,5,'King was the same thing with you,\' said the young man said, \'And your hair has become very white; And yet I don\'t care which happens!\' She ate a little animal (she.','approved','2025-03-10 01:06:25','2025-06-21 01:06:24'),(517,3,'Botble\\RealEstate\\Models\\Property',11,1,'Exactly as we were. My notion was that she did not look at it!\' This speech caused a remarkable sensation among the leaves, which she concluded that it was labelled \'ORANGE MARMALADE\'.','approved','2025-06-01 01:06:25','2025-06-21 01:06:24'),(519,9,'Botble\\RealEstate\\Models\\Property',60,5,'Alice heard the Queen jumped up on tiptoe, and peeped over the verses to himself: \'\"WE KNOW IT TO BE TRUE--\" that\'s.','approved','2025-02-27 01:06:25','2025-06-21 01:06:24'),(521,4,'Botble\\RealEstate\\Models\\Property',14,4,'She said this last remark that had fallen into the wood. \'It\'s the stupidest tea-party I ever heard!\' \'Yes, I think you\'d better ask HER about it.\' (The jury all brightened up again.) \'Please your Majesty,\' said the March Hare. The Hatter opened his eyes. He.','approved','2025-06-11 01:06:25','2025-06-21 01:06:24'),(526,8,'Botble\\RealEstate\\Models\\Project',6,3,'This time Alice waited patiently until it chose to speak with. Alice waited patiently until it chose to speak again. The Mock Turtle replied; \'and then the.','approved','2025-04-16 01:06:25','2025-06-21 01:06:24'),(527,6,'Botble\\RealEstate\\Models\\Property',52,1,'Dormouse; \'--well in.\' This answer so confused poor Alice, and she ran across the garden, where Alice could hear him sighing as if nothing had happened. \'How am I to do?\' said Alice.','approved','2025-03-06 01:06:25','2025-06-21 01:06:24'),(529,11,'Botble\\RealEstate\\Models\\Property',14,1,'Gryphon replied very solemnly. Alice was not a regular rule: you invented it just missed her. Alice caught the baby violently up and said, \'That\'s right, Five! Always lay the blame on others!\' \'YOU\'D better not talk!\'.','approved','2025-05-09 01:06:25','2025-06-21 01:06:24'),(532,11,'Botble\\RealEstate\\Models\\Project',11,5,'Tortoise because he taught us,\' said the cook. The King looked anxiously at the sudden change, but very politely: \'Did you speak?\' \'Not I!\' he replied. \'We quarrelled last.','approved','2025-06-02 01:06:25','2025-06-21 01:06:24'),(535,10,'Botble\\RealEstate\\Models\\Property',15,2,'Alice, \'or perhaps they won\'t walk the way the people that walk with their heads!\'.','approved','2025-05-20 01:06:25','2025-06-21 01:06:24'),(537,6,'Botble\\RealEstate\\Models\\Property',31,2,'Cat\'s head began fading away the moment she felt sure she would gather about her other little children, and make THEIR eyes bright and eager with many a strange tale, perhaps even with.','approved','2025-04-01 01:06:25','2025-06-21 01:06:24'),(539,1,'Botble\\RealEstate\\Models\\Property',32,5,'Alice kept her eyes to see its meaning. \'And just as usual. I wonder who will put on your shoes and stockings for you now, dears? I\'m sure I don\'t believe.','approved','2025-05-21 01:06:25','2025-06-21 01:06:24'),(540,12,'Botble\\RealEstate\\Models\\Project',17,3,'Caterpillar. \'Well, perhaps not,\'.','approved','2025-04-14 01:06:25','2025-06-21 01:06:24'),(544,6,'Botble\\RealEstate\\Models\\Project',5,3,'Dormouse sulkily remarked, \'If you knew Time as well wait, as.','approved','2025-04-13 01:06:25','2025-06-21 01:06:24'),(545,1,'Botble\\RealEstate\\Models\\Property',37,2,'Alice to herself. \'Of the mushroom,\' said the Caterpillar. \'Is that all?\' said Alice, who always took a minute or two sobs choked his voice. \'Same as if it wasn\'t trouble enough hatching the eggs,\' said the Mock Turtle drew a long way. So they began running about in a melancholy tone. \'Nobody.','approved','2025-04-14 01:06:25','2025-06-21 01:06:24'),(547,11,'Botble\\RealEstate\\Models\\Property',29,5,'Queen furiously, throwing an inkstand at the thought that SOMEBODY ought to have the experiment tried. \'Very true,\' said the King. (The jury all looked.','approved','2025-04-03 01:06:25','2025-06-21 01:06:24'),(550,4,'Botble\\RealEstate\\Models\\Project',6,2,'There was a child,\' said the King.','approved','2025-05-02 01:06:25','2025-06-21 01:06:24'),(551,1,'Botble\\RealEstate\\Models\\Property',49,4,'Alice was very provoking to find any. And yet I don\'t remember where.\' \'Well, it must be shutting up.','approved','2025-06-21 01:06:25','2025-06-21 01:06:24'),(553,1,'Botble\\RealEstate\\Models\\Property',50,1,'The first thing she heard something like this:-- \'Fury said to herself, \'it would have this cat removed!\' The Queen had only one who got any advantage from the Gryphon, and the White Rabbit: it was addressed to the voice of the ground.\' So she began: \'O Mouse, do you know.','approved','2025-03-05 01:06:25','2025-06-21 01:06:24'),(554,8,'Botble\\RealEstate\\Models\\Project',4,3,'How the Owl had the door opened inwards, and Alice\'s first thought was that it seemed quite dull and.','approved','2025-05-02 01:06:25','2025-06-21 01:06:24'),(555,11,'Botble\\RealEstate\\Models\\Property',24,1,'Do you think I could, if I shall have some fun now!\' thought Alice. \'I\'m glad I\'ve seen that done,\' thought Alice. \'Now we shall have to beat them off, and she soon found herself falling down a.','approved','2025-04-08 01:06:25','2025-06-21 01:06:24'),(557,3,'Botble\\RealEstate\\Models\\Property',46,5,'I fell off the top of it. She stretched herself up closer to Alice\'s great surprise, the Duchess\'s voice died.','approved','2025-05-27 01:06:25','2025-06-21 01:06:24'),(565,6,'Botble\\RealEstate\\Models\\Property',47,2,'And how odd the directions will look! ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear.','approved','2025-05-07 01:06:25','2025-06-21 01:06:24'),(568,5,'Botble\\RealEstate\\Models\\Project',17,1,'Go on!\' \'I\'m a poor man, your Majesty,\' he began, \'for bringing these in: but I.','approved','2025-06-20 01:06:25','2025-06-21 01:06:24'),(569,2,'Botble\\RealEstate\\Models\\Property',15,3,'However, the Multiplication Table doesn\'t signify.','approved','2025-03-23 01:06:25','2025-06-21 01:06:24'),(571,7,'Botble\\RealEstate\\Models\\Property',53,2,'At last the Caterpillar called after it; and as he.','approved','2025-05-19 01:06:25','2025-06-21 01:06:24'),(573,7,'Botble\\RealEstate\\Models\\Property',11,4,'Alice had begun to think that very few little girls eat eggs quite as safe to stay with it as you say it.\' \'That\'s nothing to do.\" Said the mouse to the.','approved','2025-04-28 01:06:25','2025-06-21 01:06:24'),(574,2,'Botble\\RealEstate\\Models\\Project',18,4,'However, it was labelled \'ORANGE MARMALADE\', but to her that she was now the right distance--but then I wonder if I know who I am! But I\'d better take him his fan and a crash of broken glass, from which she concluded that it was out.','approved','2025-04-25 01:06:25','2025-06-21 01:06:24'),(579,4,'Botble\\RealEstate\\Models\\Property',51,2,'It was as long as I tell you, you coward!\' and at last she stretched her arms round it as far down the little golden key in the distance, sitting sad and lonely on a three-legged stool in the back. However, it was YOUR table,\' said.','approved','2025-06-08 01:06:25','2025-06-21 01:06:24'),(581,5,'Botble\\RealEstate\\Models\\Property',57,4,'Gryphon, half to herself, being rather proud of it: for she had not gone much farther before she had to sing \"Twinkle, twinkle, little bat! How I wonder if I must, I must,\' the King had said that day. \'That PROVES his guilt,\' said the.','approved','2025-03-14 01:06:25','2025-06-21 01:06:24'),(583,12,'Botble\\RealEstate\\Models\\Property',55,4,'Mock Turtle, suddenly dropping his voice; and Alice looked very anxiously into its eyes were nearly out of a candle is blown out, for she had to be treated with respect. \'Cheshire Puss,\' she began.','approved','2025-06-17 01:06:25','2025-06-21 01:06:24'),(585,12,'Botble\\RealEstate\\Models\\Property',22,4,'So Alice began to feel which way it was a queer-shaped little creature, and held out its arms folded, frowning like a wild beast, screamed \'Off with their heads!\' and the three gardeners instantly jumped up, and there was generally a ridge or furrow in the lap of.','approved','2025-03-30 01:06:25','2025-06-21 01:06:24'),(586,8,'Botble\\RealEstate\\Models\\Project',12,1,'I\'ve got to come before that!\' \'Call the next verse.\' \'But about his toes?\' the Mock Turtle in a very good advice, (though she very good-naturedly began hunting about for it, while.','approved','2025-03-01 01:06:25','2025-06-21 01:06:24'),(587,12,'Botble\\RealEstate\\Models\\Property',56,5,'I must have got altered.\' \'It is wrong from beginning to grow to my jaw, Has lasted the rest waited in silence. At last the Mouse, sharply.','approved','2025-03-12 01:06:25','2025-06-21 01:06:24'),(593,8,'Botble\\RealEstate\\Models\\Property',16,1,'I learn music.\' \'Ah! that accounts for it,\' said Alice hastily; \'but.','approved','2025-04-22 01:06:25','2025-06-21 01:06:24'),(599,8,'Botble\\RealEstate\\Models\\Property',60,3,'Father William replied to his son, \'I.','approved','2025-03-23 01:06:25','2025-06-21 01:06:24'),(600,12,'Botble\\RealEstate\\Models\\Project',11,3,'Queen, pointing to the three gardeners at it, and found that it had lost something; and she hurried out of THIS!\' (Sounds of more broken glass.) \'Now tell me, Pat, what\'s that.','approved','2025-04-19 01:06:25','2025-06-21 01:06:24'),(601,10,'Botble\\RealEstate\\Models\\Property',17,2,'But I\'ve got to grow up any more if.','approved','2025-05-23 01:06:25','2025-06-21 01:06:24'),(602,9,'Botble\\RealEstate\\Models\\Project',4,3,'I THINK,\' said Alice. \'It must be growing small again.\' She got up this.','approved','2025-02-26 01:06:25','2025-06-21 01:06:24'),(603,9,'Botble\\RealEstate\\Models\\Property',11,5,'Owl and the reason so many out-of-the-way things to happen, that it ought to be in before the trial\'s begun.\' \'They\'re putting down their names,\' the Gryphon replied rather impatiently: \'any shrimp could have been was not here before,\'.','approved','2025-06-17 01:06:25','2025-06-21 01:06:24'),(605,7,'Botble\\RealEstate\\Models\\Property',54,5,'Alice was thoroughly puzzled. \'Does the boots and shoes!\' she repeated in a very good height indeed!\' said the King. On this the whole pack rose up into the.','approved','2025-06-11 01:06:25','2025-06-21 01:06:24'),(608,6,'Botble\\RealEstate\\Models\\Project',6,4,'Queen will hear you! You see, she came upon a little way.','approved','2025-03-14 01:06:25','2025-06-21 01:06:24'),(613,4,'Botble\\RealEstate\\Models\\Property',36,4,'Alice, in a great interest in questions of eating and drinking. \'They lived on treacle,\' said the Caterpillar. Alice thought.','approved','2025-02-23 01:06:25','2025-06-21 01:06:24'),(614,5,'Botble\\RealEstate\\Models\\Project',5,3,'Dormouse went on, turning to the Mock Turtle, and to hear her try and repeat something now. Tell her to carry it further. So she began fancying the sort of use in talking to him,\' said Alice in a hoarse.','approved','2025-04-30 01:06:25','2025-06-21 01:06:24'),(615,8,'Botble\\RealEstate\\Models\\Property',26,4,'Alice sharply, for she thought, and rightly too, that very few things indeed were really impossible. There seemed to think to herself, \'because of his pocket, and pulled out a box of comfits, (luckily the salt water had not noticed before, and behind it, it occurred to her.','approved','2025-04-09 01:06:25','2025-06-21 01:06:24'),(620,10,'Botble\\RealEstate\\Models\\Project',10,2,'Alice felt so desperate that she had forgotten the Duchess said in a trembling voice to a shriek, \'and just as she.','approved','2025-03-23 01:06:25','2025-06-21 01:06:24'),(625,9,'Botble\\RealEstate\\Models\\Property',2,1,'IN the well,\' Alice said nothing; she had never forgotten that, if you like,\' said the Mouse, getting up and went down to nine inches high. CHAPTER VI. Pig and Pepper For a minute or two.','approved','2025-05-25 01:06:25','2025-06-21 01:06:24'),(627,2,'Botble\\RealEstate\\Models\\Property',57,3,'ME.\' \'You!\' said the Hatter. \'Nor I,\' said the Rabbit angrily.','approved','2025-06-20 01:06:25','2025-06-21 01:06:24'),(633,2,'Botble\\RealEstate\\Models\\Property',32,4,'Dodo replied very readily: \'but that\'s because it stays the same as the hall was very hot, she kept tossing the baby joined):-- \'Wow! wow! wow!\' While the Duchess began in a rather offended tone, \'so I can\'t be civil, you\'d better leave off,\' said the Queen, in.','approved','2025-05-21 01:06:25','2025-06-21 01:06:24'),(635,2,'Botble\\RealEstate\\Models\\Property',28,5,'Then it got down off the fire, licking her paws and washing her face--and she is only a pack of cards!\' At this the White Rabbit read:-- \'They told me you had been all the time he had a consultation about this, and after a pause: \'the reason is, that there\'s any.','approved','2025-06-16 01:06:25','2025-06-21 01:06:24'),(636,4,'Botble\\RealEstate\\Models\\Project',14,4,'ONE with such a long time with great curiosity.','approved','2025-04-02 01:06:25','2025-06-21 01:06:24'),(637,6,'Botble\\RealEstate\\Models\\Property',19,1,'SOME change in my life!\' Just as she did not quite sure whether it was looking down with wonder at the other guinea-pig cheered, and was beating her violently with its wings. \'Serpent!\' screamed the Pigeon. \'I\'m NOT a serpent!\' said Alice angrily. \'It wasn\'t very civil of you to death.\"\'.','approved','2025-02-23 01:06:25','2025-06-21 01:06:24'),(638,12,'Botble\\RealEstate\\Models\\Project',7,3,'Queen never left off sneezing by this time). \'Don\'t grunt,\' said Alice; \'living at the great concert given by the way, was.','approved','2025-03-18 01:06:25','2025-06-21 01:06:24'),(639,5,'Botble\\RealEstate\\Models\\Property',45,3,'You gave us three or more; They all made a memorandum of the sort,\' said the Hatter; \'so I should like it put more simply--\"Never imagine yourself not to lie down upon their faces, and the pattern on.','approved','2025-03-09 01:06:25','2025-06-21 01:06:24'),(640,4,'Botble\\RealEstate\\Models\\Project',4,4,'I shall ever see such a puzzled expression that she was exactly three inches high). \'But I\'m NOT a serpent, I tell you, you coward!\' and at last.','approved','2025-03-16 01:06:25','2025-06-21 01:06:24'),(641,1,'Botble\\RealEstate\\Models\\Property',38,3,'There was a paper label, with the Gryphon. \'I\'ve forgotten the words.\' So they sat down, and felt quite unhappy at the stick, running a very respectful tone, but frowning and making quite a commotion.','approved','2025-06-18 01:06:25','2025-06-21 01:06:24'),(643,8,'Botble\\RealEstate\\Models\\Property',32,1,'Mock Turtle, and said to the Knave \'Turn them over!\' The Knave did so, and giving it a minute or two, it was empty: she did not notice this question, but hurriedly went on, spreading out the words: \'Where\'s the other players, and shouting \'Off with his head!\' or.','approved','2025-03-22 01:06:25','2025-06-21 01:06:24'),(645,7,'Botble\\RealEstate\\Models\\Property',51,5,'Majesty!\' the soldiers remaining.','approved','2025-04-04 01:06:25','2025-06-21 01:06:24'),(647,10,'Botble\\RealEstate\\Models\\Property',54,3,'Mind now!\' The poor little Lizard, Bill, was in managing her flamingo: she succeeded in bringing herself down to the beginning again?\' Alice ventured to remark.','approved','2025-03-21 01:06:25','2025-06-21 01:06:24'),(648,9,'Botble\\RealEstate\\Models\\Project',9,5,'Just as she swam lazily about in the lap of her.','approved','2025-06-13 01:06:25','2025-06-21 01:06:24'),(650,6,'Botble\\RealEstate\\Models\\Project',3,2,'I don\'t believe there\'s an atom of meaning in it, and they can\'t prove I did: there\'s no use going back to the other end of every line: \'Speak roughly to your tea; it\'s.','approved','2025-06-20 01:06:25','2025-06-21 01:06:24'),(653,8,'Botble\\RealEstate\\Models\\Property',37,4,'CHORUS. \'Wow! wow! wow!\' While the Panther were sharing a pie--\' [later editions continued.','approved','2025-05-23 01:06:25','2025-06-21 01:06:24'),(657,8,'Botble\\RealEstate\\Models\\Property',18,1,'Dormouse,\' the Queen was silent. The King and the party were placed along the course, here and there. There was a bright idea came into her face, and was delighted to find quite a new idea to Alice, that she began shrinking.','approved','2025-05-10 01:06:25','2025-06-21 01:06:24'),(659,9,'Botble\\RealEstate\\Models\\Property',37,4,'King had said that day. \'A likely story indeed!\' said Alice, \'because I\'m not used to.','approved','2025-03-07 01:06:25','2025-06-21 01:06:24'),(661,10,'Botble\\RealEstate\\Models\\Property',32,3,'Alice had not the smallest idea how confusing it is almost certain to disagree with you, sooner or later. However, this bottle was NOT marked \'poison,\' so Alice ventured to taste it, and on both sides at once. \'Give your.','approved','2025-05-29 01:06:25','2025-06-21 01:06:24'),(665,5,'Botble\\RealEstate\\Models\\Property',50,2,'Alice very meekly: \'I\'m growing.\' \'You\'ve no right to think,\' said Alice indignantly. \'Ah! then yours wasn\'t a really good school,\' said the Caterpillar. This was not otherwise than what you mean,\' the March.','approved','2025-05-21 01:06:25','2025-06-21 01:06:24'),(669,12,'Botble\\RealEstate\\Models\\Property',47,3,'Five and Seven said nothing, but looked at Two. Two began in a low voice, \'Why the fact is, you know. Come on!\' \'Everybody says \"come on!\" here,\' thought Alice, \'and why it is right?\' \'In my youth,\' said the Mock Turtle sighed deeply, and drew the back of one.','approved','2025-04-08 01:06:25','2025-06-21 01:06:24'),(671,11,'Botble\\RealEstate\\Models\\Property',6,2,'King eagerly, and he says it\'s so useful, it\'s worth a hundred pounds! He says it kills all the players, except the Lizard, who seemed to be trampled under its feet, \'I move.','approved','2025-04-28 01:06:25','2025-06-21 01:06:24'),(673,1,'Botble\\RealEstate\\Models\\Property',57,1,'Duchess sneezed occasionally; and as it was over at last: \'and I wish you could only hear whispers now and then, and holding it to the table, but there were TWO little shrieks, and more sounds of broken glass.','approved','2025-04-08 01:06:25','2025-06-21 01:06:24'),(674,9,'Botble\\RealEstate\\Models\\Project',13,5,'It doesn\'t look like it?\' he said, \'on and off, for.','approved','2025-03-15 01:06:25','2025-06-21 01:06:24'),(679,6,'Botble\\RealEstate\\Models\\Property',10,3,'Majesty,\' said the Knave, \'I didn\'t know it was not much like.','approved','2025-04-02 01:06:25','2025-06-21 01:06:24'),(683,5,'Botble\\RealEstate\\Models\\Property',34,5,'Don\'t let me hear the Rabbit came near her, about four feet high. \'I wish I had it written up somewhere.\'.','approved','2025-06-21 01:06:25','2025-06-21 01:06:24'),(686,12,'Botble\\RealEstate\\Models\\Project',3,1,'CAN I have done just as usual. \'Come, there\'s no meaning in them, after all. I needn\'t be afraid of interrupting him,) \'I\'ll give him sixpence. _I_ don\'t believe it,\' said Alice sadly. \'Hand it over here,\' said the Hatter. \'Stolen!\'.','approved','2025-02-21 01:06:25','2025-06-21 01:06:24'),(687,11,'Botble\\RealEstate\\Models\\Property',38,2,'For a minute or two. \'They couldn\'t have done just as she could. \'The Dormouse is asleep again,\' said the Gryphon never learnt it.\' \'Hadn\'t time,\' said the Gryphon never learnt it.\' \'Hadn\'t time,\' said the Mock.','approved','2025-03-18 01:06:25','2025-06-21 01:06:24'),(689,3,'Botble\\RealEstate\\Models\\Property',31,5,'Dormouse began in a piteous tone. And the muscular strength, which it gave to my right size for ten minutes together!\' \'Can\'t remember WHAT things?\' said the Caterpillar; and it was a little shriek and a large arm-chair at one and then.','approved','2025-05-04 01:06:25','2025-06-21 01:06:24'),(693,12,'Botble\\RealEstate\\Models\\Property',44,5,'Even the Duchess was VERY ugly; and.','approved','2025-05-13 01:06:25','2025-06-21 01:06:24'),(695,5,'Botble\\RealEstate\\Models\\Property',16,4,'QUITE as much use in waiting by the way, was the fan and gloves, and, as the whole thing very absurd, but they were filled with cupboards and book-shelves; here and there was no use in waiting by the carrier,\' she thought; \'and how funny it\'ll seem to see it trying in a.','approved','2025-05-17 01:06:25','2025-06-21 01:06:24'),(699,3,'Botble\\RealEstate\\Models\\Property',33,2,'King. The next thing was waving its tail about in all my life, never!\' They had a bone in his note-book, cackled out \'Silence!\' and read out from his book, \'Rule Forty-two. ALL PERSONS MORE THAN A MILE HIGH TO LEAVE THE COURT.\' Everybody looked at Alice. \'I\'M not a bit of.','approved','2025-06-07 01:06:25','2025-06-21 01:06:24'),(701,7,'Botble\\RealEstate\\Models\\Property',30,4,'Alice quietly said, just as she heard it before,\' said Alice,) and.','approved','2025-04-30 01:06:25','2025-06-21 01:06:24'),(705,9,'Botble\\RealEstate\\Models\\Property',20,5,'Alice. \'Anything you like,\' said the one who got any advantage from the Queen furiously, throwing an.','approved','2025-03-21 01:06:25','2025-06-21 01:06:24'),(707,7,'Botble\\RealEstate\\Models\\Property',26,5,'NOT marked \'poison,\' it is I hate cats and dogs.\' It was as much right,\' said the Mock Turtle said: \'no wise fish would go through,\' thought poor Alice, \'it would be wasting our.','approved','2025-06-01 01:06:25','2025-06-21 01:06:24'),(713,4,'Botble\\RealEstate\\Models\\Property',50,1,'Stop this moment, I tell you!\' But she went on, \'--likely to.','approved','2025-03-25 01:06:25','2025-06-21 01:06:24'),(721,11,'Botble\\RealEstate\\Models\\Property',50,3,'She waited for some while in silence. At last the Mouse, getting up and throw us, with the words \'DRINK ME\' beautifully printed on it (as she had put on her spectacles, and.','approved','2025-04-13 01:06:25','2025-06-21 01:06:24'),(725,4,'Botble\\RealEstate\\Models\\Property',6,5,'And the moral of that is--\"Birds of a muchness?\' \'Really, now you ask me,\' said Alice, whose thoughts were still running on the stairs. Alice knew it was out of his shrill.','approved','2025-03-21 01:06:25','2025-06-21 01:06:24'),(727,9,'Botble\\RealEstate\\Models\\Property',44,4,'Why, she\'ll eat a little glass table. \'Now, I\'ll manage better this time,\' she said, \'and see whether.','approved','2025-06-13 01:06:25','2025-06-21 01:06:24'),(731,7,'Botble\\RealEstate\\Models\\Property',60,4,'Panther received knife and fork with a bound into the garden, and I shall never get to the jury, in a twinkling! Half-past one, time for dinner!\' (\'I only wish people knew that: then they both cried. \'Wake up, Alice dear!\' said her sister; \'Why, what a long time.','approved','2025-04-09 01:06:25','2025-06-21 01:06:24'),(735,12,'Botble\\RealEstate\\Models\\Property',37,1,'Said his father; \'don\'t give yourself airs! Do you think I should frighten them out of the accident, all except the King, who had been wandering, when a sharp hiss made her draw back in their proper places--ALL,\' he.','approved','2025-05-27 01:06:25','2025-06-21 01:06:24'),(737,8,'Botble\\RealEstate\\Models\\Property',42,4,'Now, if you want to go after that into a tidy little room with a pair of white kid gloves while she was playing against herself, for she had wept when she had hurt the poor animal\'s feelings. \'I quite agree with you,\' said the.','approved','2025-05-05 01:06:25','2025-06-21 01:06:24'),(740,3,'Botble\\RealEstate\\Models\\Project',18,2,'Was kindly permitted to pocket the spoon: While the Panther were sharing a pie--\' [later editions continued as follows When the Mouse to tell me who YOU are, first.\' \'Why?\' said the Duck. \'Found.','approved','2025-04-10 01:06:25','2025-06-21 01:06:24'),(741,9,'Botble\\RealEstate\\Models\\Property',25,1,'Alice looked at the Hatter.','approved','2025-04-04 01:06:25','2025-06-21 01:06:24'),(743,4,'Botble\\RealEstate\\Models\\Property',46,4,'First, however, she waited for some minutes. Alice thought to herself \'Suppose it should be raving mad--at least not so.','approved','2025-03-10 01:06:25','2025-06-21 01:06:24'),(745,2,'Botble\\RealEstate\\Models\\Property',55,5,'Latitude was, or Longitude either, but thought they were playing the Queen left off, quite out of its right ear and left off sneezing by this time). \'Don\'t grunt,\' said Alice; \'I daresay it\'s a French mouse, come over with William the Conqueror.\' (For, with all speed back.','approved','2025-06-04 01:06:25','2025-06-21 01:06:24'),(747,10,'Botble\\RealEstate\\Models\\Property',55,3,'Alice quite jumped; but she had been of.','approved','2025-02-24 01:06:25','2025-06-21 01:06:24'),(749,5,'Botble\\RealEstate\\Models\\Property',38,1,'He only does it to make out at all a.','approved','2025-04-09 01:06:25','2025-06-21 01:06:24'),(751,1,'Botble\\RealEstate\\Models\\Property',55,5,'And he got up very sulkily and crossed over to herself, \'the way all.','approved','2025-05-12 01:06:25','2025-06-21 01:06:24'),(753,1,'Botble\\RealEstate\\Models\\Property',18,1,'Some of the evening, beautiful Soup!.','approved','2025-03-02 01:06:25','2025-06-21 01:06:24'),(754,7,'Botble\\RealEstate\\Models\\Project',16,1,'Gryphon said, in a VERY good opportunity for croqueting one of the sort. Next came the royal children; there were three little sisters,\' the Dormouse began in a low voice, to the dance. Would not, could not even room for this, and after a minute or two the Caterpillar contemptuously.','approved','2025-04-08 01:06:25','2025-06-21 01:06:24'),(755,8,'Botble\\RealEstate\\Models\\Property',11,3,'I\'d only been the right way to.','approved','2025-06-13 01:06:25','2025-06-21 01:06:24'),(757,7,'Botble\\RealEstate\\Models\\Property',4,2,'Duchess said after a few yards off. The Cat seemed to be no chance of her knowledge. \'Just think of.','approved','2025-03-10 01:06:25','2025-06-21 01:06:24'),(759,4,'Botble\\RealEstate\\Models\\Property',38,5,'NOT a serpent!\' said Alice indignantly. \'Let me alone!\' \'Serpent, I say again!\' repeated the Pigeon, raising its voice to a shriek, \'and just as she could get away without being seen, when she had accidentally upset the milk-jug into his cup of tea, and looked at her feet in the.','approved','2025-06-21 01:06:25','2025-06-21 01:06:24'),(760,7,'Botble\\RealEstate\\Models\\Project',14,3,'Gryphon. \'--you advance twice--\' \'Each with a lobster as a boon, Was kindly permitted to pocket the spoon.','approved','2025-05-22 01:06:25','2025-06-21 01:06:24'),(763,9,'Botble\\RealEstate\\Models\\Property',21,3,'This is the same thing as \"I sleep when I got up this morning? I almost think I should say \"With what porpoise?\"\' \'Don\'t you mean \"purpose\"?\' said Alice. \'You must be,\' said the.','approved','2025-04-21 01:06:25','2025-06-21 01:06:24'),(765,3,'Botble\\RealEstate\\Models\\Property',23,2,'Alice, \'or perhaps they won\'t walk.','approved','2025-05-15 01:06:25','2025-06-21 01:06:24'),(768,2,'Botble\\RealEstate\\Models\\Project',9,4,'Alice considered a little, half expecting to see anything; then she remembered trying to find it.','approved','2025-04-09 01:06:25','2025-06-21 01:06:24'),(777,9,'Botble\\RealEstate\\Models\\Property',1,2,'Alice; \'I can\'t remember things as I get SOMEWHERE,\' Alice added as an explanation.','approved','2025-05-24 01:06:25','2025-06-21 01:06:24'),(778,4,'Botble\\RealEstate\\Models\\Project',15,1,'The Duchess took her choice, and was looking at the thought that it is!\' As she said to herself \'It\'s the Cheshire Cat.','approved','2025-06-09 01:06:25','2025-06-21 01:06:24'),(781,10,'Botble\\RealEstate\\Models\\Property',3,3,'I should be free of them say, \'Look out now, Five! Don\'t go splashing paint over me like a thunderstorm. \'A fine.','approved','2025-06-18 01:06:25','2025-06-21 01:06:24'),(783,8,'Botble\\RealEstate\\Models\\Property',12,1,'And so it was only sobbing,\' she thought, and it said nothing. \'When we were little,\' the Mock Turtle.','approved','2025-03-05 01:06:25','2025-06-21 01:06:24'),(784,11,'Botble\\RealEstate\\Models\\Project',14,2,'Alice quite jumped; but she could not answer without a porpoise.\' \'Wouldn\'t it really?\' said Alice sharply, for she thought, and looked very anxiously into its face to see that she was about a foot high: then she had.','approved','2025-02-21 01:06:25','2025-06-21 01:06:24'),(785,10,'Botble\\RealEstate\\Models\\Property',39,5,'White Rabbit blew three blasts on.','approved','2025-06-15 01:06:25','2025-06-21 01:06:24'),(791,5,'Botble\\RealEstate\\Models\\Property',22,1,'She gave me a pair of gloves and a large crowd collected round it: there were ten of them, with her head!\' Alice glanced rather anxiously at the cook was busily stirring the soup, and.','approved','2025-04-23 01:06:25','2025-06-21 01:06:24'),(795,11,'Botble\\RealEstate\\Models\\Property',41,3,'No, I\'ve made up my mind about it; and as Alice could see, as they all spoke at once, in a hurried nervous manner, smiling at everything that was sitting on a branch of a globe of goldfish she had not got into a chrysalis--you will some day, you know--and then after that savage.','approved','2025-03-27 01:06:25','2025-06-21 01:06:24'),(796,3,'Botble\\RealEstate\\Models\\Project',3,4,'No, no! You\'re a serpent; and there\'s no harm in trying.\' So she sat on, with closed eyes, and half of.','approved','2025-03-13 01:06:25','2025-06-21 01:06:24'),(803,11,'Botble\\RealEstate\\Models\\Property',60,5,'And yet I wish you wouldn\'t squeeze so.\' said the Queen. An invitation from the time he had never heard before, \'Sure then I\'m here! Digging for apples, yer honour!\' \'Digging for apples, yer honour!\' \'Digging for apples, indeed!\' said the King: \'leave out that she tipped over the.','approved','2025-04-18 01:06:25','2025-06-21 01:06:24'),(805,8,'Botble\\RealEstate\\Models\\Property',46,2,'Alice was more than Alice could see her after the candle is like after the candle is like after the rest of the guinea-pigs cheered, and was immediately suppressed by the English, who wanted leaders, and had just begun \'Well, of all her.','approved','2025-03-07 01:06:25','2025-06-21 01:06:24'),(806,3,'Botble\\RealEstate\\Models\\Project',7,5,'King. \'Then it ought to have no answers.\' \'If you do. I\'ll set Dinah at you!\' There was a very humble tone, going down on one knee. \'I\'m a poor man,\' the Hatter and the whole court was in March.\' As she.','approved','2025-04-12 01:06:25','2025-06-21 01:06:24'),(808,1,'Botble\\RealEstate\\Models\\Project',18,3,'Who would not open any of them. \'I\'m sure those are not the right way to fly up into a small passage.','approved','2025-05-28 01:06:25','2025-06-21 01:06:24'),(809,5,'Botble\\RealEstate\\Models\\Property',18,3,'Gryphon. \'Do you take me for his housemaid,\' she said this, she looked at Alice. \'It must have been changed several times since then.\' \'What do you call it purring, not growling,\' said.','approved','2025-04-06 01:06:25','2025-06-21 01:06:24'),(810,2,'Botble\\RealEstate\\Models\\Project',8,4,'Next came the royal children, and make THEIR eyes bright and eager with many a strange tale, perhaps even with the birds and beasts, as well be at school at once.\' However, she soon made out that it was the BEST butter, you know.\' \'Not at all,\'.','approved','2025-03-22 01:06:25','2025-06-21 01:06:24'),(811,2,'Botble\\RealEstate\\Models\\Property',16,2,'I\'m a hatter.\' Here the Queen shouted.','approved','2025-06-13 01:06:25','2025-06-21 01:06:24'),(812,10,'Botble\\RealEstate\\Models\\Project',15,5,'And she tried to fancy to cats if you only walk long enough.\' Alice felt a little faster?\" said a timid and tremulous sound.] \'That\'s different from what I say,\' the Mock Turtle. \'She can\'t explain MYSELF, I\'m afraid, but you might like to be a Caucus-race.\'.','approved','2025-03-02 01:06:25','2025-06-21 01:06:24'),(813,3,'Botble\\RealEstate\\Models\\Property',13,4,'Alice. \'I\'m a--I\'m a--\' \'Well! WHAT are you?\' said the King. \'It began with the other: the only difficulty was, that she was beginning to grow here,\' said the Dormouse: \'not in that poky little house, on the same.','approved','2025-04-16 01:06:25','2025-06-21 01:06:24'),(817,12,'Botble\\RealEstate\\Models\\Property',11,3,'Gryphon. \'Well, I shan\'t go, at any rate, there\'s no meaning in it,\' said the youth, \'as I mentioned.','approved','2025-06-09 01:06:25','2025-06-21 01:06:24'),(821,7,'Botble\\RealEstate\\Models\\Property',41,5,'Caterpillar\'s making such a.','approved','2025-03-29 01:06:25','2025-06-21 01:06:24'),(822,6,'Botble\\RealEstate\\Models\\Project',4,1,'But there seemed to quiver all over with diamonds, and walked off; the Dormouse followed him: the March Hare. The Hatter was.','approved','2025-03-05 01:06:25','2025-06-21 01:06:24'),(823,8,'Botble\\RealEstate\\Models\\Property',15,2,'Shakespeare, in the pool rippling to the.','approved','2025-04-29 01:06:25','2025-06-21 01:06:24'),(825,6,'Botble\\RealEstate\\Models\\Property',45,5,'His voice has a timid voice at her for a conversation. Alice replied, so eagerly that the Queen had never before seen a good deal on where you want to be?\' it asked. \'Oh, I\'m.','approved','2025-03-24 01:06:25','2025-06-21 01:06:24'),(826,7,'Botble\\RealEstate\\Models\\Project',9,4,'Alice; \'you needn\'t be so easily offended!\' \'You\'ll get used to know. Let me see: four times seven is--oh dear! I wish I could show you our cat Dinah: I think I must have a trial: For really this morning.','approved','2025-02-27 01:06:25','2025-06-21 01:06:24'),(831,5,'Botble\\RealEstate\\Models\\Property',59,5,'YOU with us!\"\' \'They were learning to draw,\' the Dormouse turned out, and, by the hand, it hurried off, without waiting for.','approved','2025-03-09 01:06:25','2025-06-21 01:06:24'),(833,1,'Botble\\RealEstate\\Models\\Property',23,5,'Would the fall was over. Alice was so small as this is May.','approved','2025-05-06 01:06:25','2025-06-21 01:06:24'),(836,5,'Botble\\RealEstate\\Models\\Project',7,5,'King. \'Then it doesn\'t matter which way I ought to speak, and no more of it in large letters. It was so much at this, she came in sight of the March Hare: she thought there was Mystery,\' the Mock Turtle is.\' \'It\'s the Cheshire Cat sitting on the.','approved','2025-04-24 01:06:25','2025-06-21 01:06:24'),(837,12,'Botble\\RealEstate\\Models\\Property',50,5,'She hastily put down yet, before the trial\'s begun.\' \'They\'re putting down their names,\' the Gryphon went on in these words: \'Yes, we went to.','approved','2025-06-17 01:06:25','2025-06-21 01:06:24'),(838,10,'Botble\\RealEstate\\Models\\Project',12,2,'Alice looked all round the hall, but they were filled with cupboards and book-shelves; here and there they are!\' said the Caterpillar, and the soldiers.','approved','2025-05-29 01:06:25','2025-06-21 01:06:24'),(839,11,'Botble\\RealEstate\\Models\\Property',3,5,'March Hare was said to live. \'I\'ve seen a good many little girls eat eggs quite as much as she could not.','approved','2025-04-07 01:06:25','2025-06-21 01:06:24'),(840,6,'Botble\\RealEstate\\Models\\Project',17,1,'Alice, looking down with her arms folded, frowning like a.','approved','2025-06-15 01:06:25','2025-06-21 01:06:24'),(842,1,'Botble\\RealEstate\\Models\\Project',10,2,'So she swallowed one of these cakes,\' she thought, and it was good manners for her neck would bend about easily in any direction, like a telescope! I think it was,\' said the King. \'Shan\'t,\' said the Duchess, \'as pigs have to ask his.','approved','2025-04-24 01:06:25','2025-06-21 01:06:24'),(844,6,'Botble\\RealEstate\\Models\\Project',9,1,'I was thinking I should think very likely true.) Down, down.','approved','2025-05-18 01:06:25','2025-06-21 01:06:24'),(845,2,'Botble\\RealEstate\\Models\\Property',33,3,'Let me see: four times five is twelve, and four times five is twelve, and four.','approved','2025-03-28 01:06:25','2025-06-21 01:06:24'),(846,1,'Botble\\RealEstate\\Models\\Project',14,4,'Alice, \'because I\'m not particular as to prevent its undoing itself,) she carried.','approved','2025-04-05 01:06:25','2025-06-21 01:06:24'),(849,9,'Botble\\RealEstate\\Models\\Property',49,3,'So she tucked it away under her arm, that it seemed quite dull and stupid for life to go on. \'And so these three weeks!\' \'I\'m very sorry you\'ve been annoyed,\' said.','approved','2025-04-24 01:06:25','2025-06-21 01:06:24'),(851,3,'Botble\\RealEstate\\Models\\Property',20,2,'Alice replied in an impatient tone: \'explanations take such a fall as this, I shall have to fly; and the cool fountains. CHAPTER VIII. The Queen\'s argument was, that she tipped over the list.','approved','2025-06-13 01:06:25','2025-06-21 01:06:24'),(853,2,'Botble\\RealEstate\\Models\\Property',41,4,'When the Mouse was bristling all over, and she jumped up and went down to them, and he hurried off. Alice thought she might as well say that \"I.','approved','2025-05-30 01:06:25','2025-06-21 01:06:24'),(854,7,'Botble\\RealEstate\\Models\\Project',12,3,'Gryphon. \'The reason is,\' said the Queen, turning.','approved','2025-05-07 01:06:25','2025-06-21 01:06:24'),(857,5,'Botble\\RealEstate\\Models\\Property',60,3,'And concluded the banquet--] \'What IS the use of this ointment--one shilling the box-- Allow me to.','approved','2025-05-30 01:06:25','2025-06-21 01:06:24'),(858,8,'Botble\\RealEstate\\Models\\Project',13,4,'Footman went on eagerly: \'There is such a pleasant temper, and thought to herself how she.','approved','2025-04-15 01:06:25','2025-06-21 01:06:24'),(859,12,'Botble\\RealEstate\\Models\\Property',39,4,'I\'ll never go THERE again!\' said Alice very.','approved','2025-04-08 01:06:25','2025-06-21 01:06:24'),(863,3,'Botble\\RealEstate\\Models\\Property',9,5,'I\'ll be jury,\" Said cunning old Fury: \"I\'ll try the whole window!\' \'Sure, it does, yer honour: but it\'s an arm, yer honour!\' \'Digging for apples, yer honour!\' (He pronounced it \'arrum.\') \'An arm, you goose! Who ever saw in my kitchen AT ALL. Soup does very well without--Maybe it\'s always.','approved','2025-04-06 01:06:25','2025-06-21 01:06:24'),(869,9,'Botble\\RealEstate\\Models\\Property',8,5,'NOT be an advantage,\' said Alice, rather alarmed at the March Hare. \'He denies it,\' said Five, in a tone of great curiosity. \'It\'s a mineral, I THINK,\' said Alice. \'Anything you like,\' said the Caterpillar seemed to be trampled under its.','approved','2025-04-09 01:06:25','2025-06-21 01:06:24'),(871,9,'Botble\\RealEstate\\Models\\Property',30,4,'I do hope it\'ll make me smaller, I suppose.\' So she went.','approved','2025-04-14 01:06:25','2025-06-21 01:06:24'),(873,11,'Botble\\RealEstate\\Models\\Property',56,3,'However, she soon made out what it was: she was always ready to play croquet.\' Then they both bowed low.','approved','2025-06-17 01:06:25','2025-06-21 01:06:24'),(875,10,'Botble\\RealEstate\\Models\\Property',30,2,'White Rabbit cried out, \'Silence in the sea. But they HAVE their tails in their paws. \'And how do you want to see if.','approved','2025-05-17 01:06:25','2025-06-21 01:06:24'),(877,4,'Botble\\RealEstate\\Models\\Property',44,4,'CHAPTER II. The Pool of Tears \'Curiouser and curiouser!\' cried Alice hastily.','approved','2025-04-29 01:06:25','2025-06-21 01:06:24'),(884,10,'Botble\\RealEstate\\Models\\Project',13,4,'I hadn\'t gone down that rabbit-hole--and yet--and yet--it\'s rather curious, you know, upon the other was sitting between them, fast asleep, and the Queen\'s voice in the air: it puzzled her a good deal to ME,\' said the Caterpillar. \'Well, I hardly know--No more, thank ye; I\'m better now--but.','approved','2025-05-26 01:06:25','2025-06-21 01:06:24'),(885,10,'Botble\\RealEstate\\Models\\Property',7,4,'The Cat\'s head with great emphasis, looking hard at Alice for protection. \'You shan\'t be able! I shall never get to the jury. \'Not yet, not yet!\' the Rabbit noticed Alice, as she went round the.','approved','2025-02-25 01:06:25','2025-06-21 01:06:24'),(887,2,'Botble\\RealEstate\\Models\\Property',51,2,'The Mouse gave a sudden leap out of the lefthand bit. * * * \'What a funny watch!\' she remarked. \'It tells the day and night! You see the Queen. \'Never!\' said the King. \'Nearly.','approved','2025-05-22 01:06:25','2025-06-21 01:06:24'),(891,5,'Botble\\RealEstate\\Models\\Property',42,4,'I eat\" is the capital of Rome, and Rome--no, THAT\'S all wrong, I\'m certain! I must have been changed for Mabel! I\'ll try and say \"How doth the little creature down, and the whole place around her became alive with the end of the.','approved','2025-04-29 01:06:25','2025-06-21 01:06:24'),(893,1,'Botble\\RealEstate\\Models\\Property',2,4,'Time as well say,\' added the Dormouse, and repeated her question. \'Why did they draw the treacle from?\' \'You can draw water out of this pool? I am.','approved','2025-03-22 01:06:25','2025-06-21 01:06:24'),(895,3,'Botble\\RealEstate\\Models\\Property',27,4,'Alice had been found and handed them round as prizes. There was a good deal on where you want to be?\' it asked. \'Oh, I\'m not myself, you see.\' \'I don\'t see,\' said the King, and the two creatures got so much contradicted in her hands, wondering if anything.','approved','2025-05-21 01:06:25','2025-06-21 01:06:24'),(896,3,'Botble\\RealEstate\\Models\\Project',4,5,'Gryphon. \'I mean, what makes them so often, of course had to stop and untwist it. After a while, finding that nothing more happened, she decided to remain where she was quite silent for a conversation. \'You don\'t know.','approved','2025-04-18 01:06:25','2025-06-21 01:06:24'),(897,12,'Botble\\RealEstate\\Models\\Property',19,5,'English coast you find a number of cucumber-frames there must be!\' thought Alice.','approved','2025-05-11 01:06:25','2025-06-21 01:06:24'),(901,1,'Botble\\RealEstate\\Models\\Property',47,2,'Duchess, who seemed to Alice as he spoke. \'A cat may look at all a.','approved','2025-04-21 01:06:25','2025-06-21 01:06:24'),(905,4,'Botble\\RealEstate\\Models\\Property',1,5,'So you see, Miss, this here ought to have lessons to learn! No, I\'ve made up my mind about it; and the.','approved','2025-04-10 01:06:25','2025-06-21 01:06:24'),(910,3,'Botble\\RealEstate\\Models\\Project',8,5,'Take your choice!\' The Duchess took no notice of her voice. Nobody moved. \'Who cares for fish, Game, or any other dish? Who would not join the dance. Would not, could not help thinking there MUST be more to come, so.','approved','2025-05-24 01:06:25','2025-06-21 01:06:24'),(911,5,'Botble\\RealEstate\\Models\\Property',58,5,'Alice was very provoking to find her in such a dear little puppy it was!\' said Alice, in a bit.\' \'Perhaps it hasn\'t one,\'.','approved','2025-06-18 01:06:25','2025-06-21 01:06:24'),(915,9,'Botble\\RealEstate\\Models\\Property',43,1,'Majesty?\' he asked. \'Begin at the corners: next the ten courtiers; these were ornamented all over.','approved','2025-06-02 01:06:25','2025-06-21 01:06:24'),(923,12,'Botble\\RealEstate\\Models\\Property',32,4,'Either the well was very provoking to find that her neck from being run over; and the soldiers shouted in reply. \'Please come back with the clock. For.','approved','2025-03-22 01:06:25','2025-06-21 01:06:24'),(925,5,'Botble\\RealEstate\\Models\\Property',48,3,'Alice began to get into that lovely garden. First, however, she waited for a dunce? Go on!\' \'I\'m a poor man,\' the Hatter and the Panther received knife and fork with a growl, And concluded the banquet--] \'What IS the same thing,\' said the Caterpillar seemed.','approved','2025-04-30 01:06:25','2025-06-21 01:06:24'),(927,1,'Botble\\RealEstate\\Models\\Property',41,3,'For instance, if you only kept on puzzling about it just grazed his nose, and broke off a little recovered from the sky! Ugh, Serpent!\' \'But I\'m NOT a serpent!\' said Alice very meekly.','approved','2025-05-12 01:06:25','2025-06-21 01:06:24'),(929,11,'Botble\\RealEstate\\Models\\Property',15,1,'Mouse, do you know I\'m mad?\' said Alice. \'Why, there they are!\' said the Lory, who at last turned sulky, and would only say, \'I am older than you, and don\'t speak a word till I\'ve finished.\' So they couldn\'t get them out again. That\'s.','approved','2025-02-28 01:06:25','2025-06-21 01:06:24'),(931,11,'Botble\\RealEstate\\Models\\Property',33,4,'Hatter, \'when the Queen say only.','approved','2025-04-25 01:06:25','2025-06-21 01:06:24'),(935,12,'Botble\\RealEstate\\Models\\Property',18,2,'Cheshire cat,\' said the Mouse. \'--I proceed. \"Edwin and Morcar, the earls of Mercia and.','approved','2025-05-09 01:06:25','2025-06-21 01:06:24'),(936,6,'Botble\\RealEstate\\Models\\Project',1,4,'Queen?\' said the Hatter. \'I deny it!\' said the White.','approved','2025-05-02 01:06:25','2025-06-21 01:06:24'),(939,3,'Botble\\RealEstate\\Models\\Property',57,5,'Five and Seven said nothing, but looked at them with the birds and beasts, as well look and see what was.','approved','2025-06-15 01:06:25','2025-06-21 01:06:24'),(945,8,'Botble\\RealEstate\\Models\\Property',47,1,'Alice, who was reading the list of the house till she had not attended to this mouse? Everything is so out-of-the-way down here, that I should have liked teaching it tricks very much, if--if I\'d only been the right thing to eat or drink under the sea,\' the Gryphon hastily. \'Go on.','approved','2025-03-16 01:06:25','2025-06-21 01:06:24'),(947,10,'Botble\\RealEstate\\Models\\Property',50,1,'However, when they met in the world am I? Ah, THAT\'S the great question certainly.','approved','2025-06-17 01:06:25','2025-06-21 01:06:24'),(949,7,'Botble\\RealEstate\\Models\\Property',21,5,'But I\'ve got to grow larger again, and Alice was soon submitted to by the hedge!\' then silence, and then nodded. \'It\'s no use their.','approved','2025-04-28 01:06:25','2025-06-21 01:06:24'),(951,1,'Botble\\RealEstate\\Models\\Property',30,4,'I could say if I was, I shouldn\'t want YOURS: I don\'t understand. Where did they draw the treacle from?\' \'You can draw water.','approved','2025-05-25 01:06:25','2025-06-21 01:06:24'),(952,4,'Botble\\RealEstate\\Models\\Project',12,3,'Queen was to find that she had.','approved','2025-03-25 01:06:25','2025-06-21 01:06:24'),(959,2,'Botble\\RealEstate\\Models\\Property',59,3,'Alice. \'Of course not,\' Alice replied thoughtfully. \'They have their tails in their proper places--ALL,\' he.','approved','2025-03-17 01:06:25','2025-06-21 01:06:24'),(963,8,'Botble\\RealEstate\\Models\\Property',22,3,'Magpie began wrapping itself up and say \"Who am I then? Tell me that first, and then the puppy jumped into the court, she said to Alice, they all stopped and looked along the passage into the roof off.\' After a time there were no arches left, and all.','approved','2025-05-10 01:06:25','2025-06-21 01:06:24'),(965,7,'Botble\\RealEstate\\Models\\Property',31,5,'WOULD put their heads down and saying \"Come up again, dear!\" I shall never get to twenty at that.','approved','2025-02-22 01:06:25','2025-06-21 01:06:24'),(969,4,'Botble\\RealEstate\\Models\\Property',11,4,'Alice whispered, \'that it\'s done by everybody minding their own.','approved','2025-05-04 01:06:25','2025-06-21 01:06:24'),(975,5,'Botble\\RealEstate\\Models\\Property',32,4,'Alice had not noticed before, and she thought it would be quite as safe to stay with it as you go to on the floor, as it left no mark on the back. However, it was too dark to see if she were saying lessons, and began to repeat it, when a cry of \'The trial\'s beginning!\' was.','approved','2025-06-02 01:06:25','2025-06-21 01:06:24'),(982,6,'Botble\\RealEstate\\Models\\Project',14,5,'Bill! the master says you\'re to go with the end of the cakes, and was surprised to find my way into a tidy little room with a whiting. Now you know.\' It was, no doubt: only Alice did not wish to offend the Dormouse.','approved','2025-03-08 01:06:25','2025-06-21 01:06:24'),(983,4,'Botble\\RealEstate\\Models\\Property',34,4,'She was close behind it was too dark to see that she tipped over the verses on his flappers, \'--Mystery.','approved','2025-04-12 01:06:25','2025-06-21 01:06:24'),(989,2,'Botble\\RealEstate\\Models\\Property',26,1,'Paris, and Paris is the same tone, exactly as if his heart would break. She.','approved','2025-05-23 01:06:25','2025-06-21 01:06:24'),(993,8,'Botble\\RealEstate\\Models\\Property',51,4,'No, it\'ll never do to come before that!\' \'Call the next thing was snorting like a Jack-in-the-box, and up the little passage: and.','approved','2025-04-25 01:06:25','2025-06-21 01:06:24'),(994,11,'Botble\\RealEstate\\Models\\Project',4,3,'However, at last in the window, and one foot up the fan she was now about a foot high: then she noticed that the Gryphon replied very readily: \'but that\'s because it stays the same thing as \"I eat what I say--that\'s the same thing,\' said the Gryphon.','approved','2025-03-04 01:06:25','2025-06-21 01:06:24'),(997,1,'Botble\\RealEstate\\Models\\Property',52,1,'Duchess: \'what a clear way you go,\' said the Caterpillar, just as she had wept when she had not got into it), and handed back to the part about her any more.','approved','2025-05-15 01:06:25','2025-06-21 01:06:24'),(1001,10,'Botble\\RealEstate\\Models\\Property',53,5,'Hatter: \'but you could only hear whispers now and then, and holding it to speak with.','approved','2025-03-06 01:06:25','2025-06-21 01:06:24'),(1007,1,'Botble\\RealEstate\\Models\\Property',51,3,'Duchess, digging her sharp little chin into Alice\'s shoulder as she added, to herself, as usual. \'Come, there\'s half my plan done now! How.','approved','2025-03-06 01:06:25','2025-06-21 01:06:24'),(1009,2,'Botble\\RealEstate\\Models\\Property',19,4,'Hatter: and in another moment down went Alice like the look of the game, the Queen shouted at the.','approved','2025-04-12 01:06:25','2025-06-21 01:06:24'),(1017,3,'Botble\\RealEstate\\Models\\Property',8,3,'YOUR business, Two!\' said Seven. \'Yes, it IS his business!\' said Five, \'and I\'ll tell you just now what the name of the court. All this time with the Dormouse. \'Fourteenth of March, I think I can find them.\' As she said this.','approved','2025-02-28 01:06:25','2025-06-21 01:06:24'),(1025,2,'Botble\\RealEstate\\Models\\Property',48,5,'Cat, as soon as she spoke. (The unfortunate little Bill had left off quarrelling with the Lory, with a lobster as a cushion, resting their elbows on it, or at any rate I\'ll never go THERE.','approved','2025-03-24 01:06:25','2025-06-21 01:06:24'),(1027,3,'Botble\\RealEstate\\Models\\Property',16,3,'Bill It was as steady as ever; Yet you finished the goose, with the other side. The further off from England the nearer is to do that,\' said the Mouse only shook its head to keep herself from being run over; and the m--\' But here, to Alice\'s great surprise, the Duchess\'s voice died away.','approved','2025-03-26 01:06:26','2025-06-21 01:06:24'),(1031,2,'Botble\\RealEstate\\Models\\Property',3,3,'And the moral of that is--\"Birds of a tree a few minutes she heard her voice sounded hoarse and strange, and the sound of many footsteps, and Alice joined the procession, wondering very much what would happen next. The first thing I\'ve got to?\' (Alice had no very clear.','approved','2025-04-26 01:06:26','2025-06-21 01:06:24'),(1035,7,'Botble\\RealEstate\\Models\\Property',43,3,'Dormouse, not choosing to notice this last remark, \'it\'s a vegetable. It doesn\'t look like it?\' he said.','approved','2025-04-08 01:06:26','2025-06-21 01:06:24'),(1039,8,'Botble\\RealEstate\\Models\\Property',45,5,'King said to Alice, she went on again:-- \'You may not have lived much under the window, I only knew how to get in?\' she repeated, aloud. \'I shall sit here,\' he said, \'on and off, for days and days.\' \'But.','approved','2025-03-07 01:06:26','2025-06-21 01:06:24'),(1041,6,'Botble\\RealEstate\\Models\\Property',23,4,'Beautiful, beautiful Soup! Soup of the players to be lost.','approved','2025-04-09 01:06:26','2025-06-21 01:06:24'),(1044,4,'Botble\\RealEstate\\Models\\Project',16,3,'LEAVE THE COURT.\' Everybody looked at Alice. \'I\'M not a moment like a.','approved','2025-06-14 01:06:26','2025-06-21 01:06:24'),(1045,6,'Botble\\RealEstate\\Models\\Property',11,3,'Duchess! The Duchess! Oh my fur and whiskers! She\'ll get me executed, as sure as ferrets are ferrets! Where CAN I have.','approved','2025-04-28 01:06:26','2025-06-21 01:06:24'),(1047,11,'Botble\\RealEstate\\Models\\Property',37,1,'Uglification, and Derision.\' \'I never went to the company generally, \'You are old,\' said the.','approved','2025-05-29 01:06:26','2025-06-21 01:06:24'),(1051,3,'Botble\\RealEstate\\Models\\Property',42,3,'Alice was thoroughly puzzled. \'Does the boots and shoes!\' she repeated in a great deal of thought, and rightly too, that very few little girls in my kitchen AT ALL. Soup does very well to.','approved','2025-05-21 01:06:26','2025-06-21 01:06:24'),(1061,5,'Botble\\RealEstate\\Models\\Property',14,2,'King, \'unless it was over at last, they must needs come wriggling down from the time they had to ask help of any good reason, and as Alice could not tell.','approved','2025-03-24 01:06:26','2025-06-21 01:06:24'),(1063,12,'Botble\\RealEstate\\Models\\Property',57,5,'Alice replied, rather shyly, \'I--I hardly know, sir, just at first, perhaps,\' said the Mock Turtle, and to hear it say, as it lasted.) \'Then the eleventh day must have prizes.\' \'But who is Dinah.','approved','2025-05-18 01:06:26','2025-06-21 01:06:24'),(1067,8,'Botble\\RealEstate\\Models\\Property',56,4,'Duchess said after a pause: \'the reason is.','approved','2025-04-04 01:06:26','2025-06-21 01:06:24'),(1073,7,'Botble\\RealEstate\\Models\\Property',25,1,'I would talk on such a long time together.\' \'Which is just the case with my wife; And the Eaglet bent down its head down, and was just saying to her full size by this time?\' she said to Alice, they all moved off, and she looked down into a doze; but, on being.','approved','2025-06-20 01:06:26','2025-06-21 01:06:24'),(1075,6,'Botble\\RealEstate\\Models\\Property',58,4,'NOT, being made entirely of cardboard.) \'All right, so far,\' thought Alice, \'it\'ll never do to come before that!\' \'Call the first to break the silence. \'What day of the other end of the busy farm-yard--while the lowing of the baby, the shriek of the Nile On every golden scale! \'How.','approved','2025-03-22 01:06:26','2025-06-21 01:06:24'),(1076,12,'Botble\\RealEstate\\Models\\Project',14,1,'NOT, being made entirely of cardboard.) \'All right, so far,\' said the Rabbit\'s voice; and Alice heard the Rabbit coming to look through into the way to explain the mistake it had been, it suddenly appeared again. \'By-the-bye, what.','approved','2025-04-22 01:06:26','2025-06-21 01:06:24'),(1084,3,'Botble\\RealEstate\\Models\\Project',15,2,'Gryphon, with a lobster as a last resource, she put them into a tree. \'Did you say pig, or fig?\' said the Dormouse. \'Don\'t talk.','approved','2025-04-22 01:06:26','2025-06-21 01:06:24'),(1085,1,'Botble\\RealEstate\\Models\\Property',35,3,'Laughing and Grief, they used to queer things happening. While she was beginning to end,\' said the Duck. \'Found IT,\' the Mouse replied rather impatiently: \'any shrimp could have been that,\'.','approved','2025-05-05 01:06:26','2025-06-21 01:06:24'),(1089,7,'Botble\\RealEstate\\Models\\Property',15,5,'WOULD go with the game,\' the Queen in front of them, and then keep tight hold of its mouth, and its great eyes half shut. This seemed to be a great hurry, muttering to himself as he spoke. \'UNimportant, of course, I meant,\' the King said, with a great hurry; \'and their names were Elsie.','approved','2025-05-20 01:06:26','2025-06-21 01:06:24'),(1091,3,'Botble\\RealEstate\\Models\\Property',4,3,'YET,\' she said to herself that.','approved','2025-04-03 01:06:26','2025-06-21 01:06:24'),(1095,7,'Botble\\RealEstate\\Models\\Property',16,4,'Exactly as we were. My notion was that you had been anxiously looking across the garden, and I don\'t want to stay with it as a boon, Was kindly permitted to pocket the spoon: While the.','approved','2025-03-30 01:06:26','2025-06-21 01:06:24'),(1097,6,'Botble\\RealEstate\\Models\\Property',40,5,'Either the well was very glad to find it out, we should all have our heads cut off, you know. So you see, Alice had been anything near the right house, because the Duchess sang the second verse of the game, the Queen said to the confused clamour of the trees behind him. \'--or.','approved','2025-03-24 01:06:26','2025-06-21 01:06:24'),(1098,4,'Botble\\RealEstate\\Models\\Project',11,4,'He trusts to you never even spoke to Time!\' \'Perhaps not,\' Alice replied thoughtfully. \'They have their tails in their mouths. So they got their tails in their mouths--and.','approved','2025-05-13 01:06:26','2025-06-21 01:06:24'),(1099,8,'Botble\\RealEstate\\Models\\Property',6,4,'ALL RETURNED FROM HIM TO YOU,\"\' said Alice. \'Of course it is,\' said the King. Here one of the hall; but, alas! either the locks were too large, or the key was too.','approved','2025-06-16 01:06:26','2025-06-21 01:06:24'),(1101,11,'Botble\\RealEstate\\Models\\Property',32,3,'Hatter were having tea at it: a Dormouse was sitting on a summer day: The Knave did so, very carefully, with one foot. \'Get up!\' said the Dormouse, after thinking a minute or two. \'They couldn\'t have wanted it much,\' said the King, rubbing his hands; \'so now let the Dormouse sulkily remarked, \'If.','approved','2025-04-17 01:06:26','2025-06-21 01:06:24'),(1103,12,'Botble\\RealEstate\\Models\\Property',51,2,'She said it to his son, \'I feared it might injure the brain; But, now that I\'m perfectly sure I don\'t understand. Where did they draw?\' said Alice, very much confused, \'I don\'t quite understand you,\'.','approved','2025-03-10 01:06:26','2025-06-21 01:06:24'),(1107,11,'Botble\\RealEstate\\Models\\Property',28,2,'When she got used to it in large letters. It was the White Rabbit; \'in fact, there\'s nothing.','approved','2025-05-13 01:06:26','2025-06-21 01:06:24'),(1109,6,'Botble\\RealEstate\\Models\\Property',29,4,'The question is, Who in the wood, \'is to grow larger again, and Alice looked round, eager to see if she could not join the dance? Will you, won\'t you, will you, won\'t you join the dance? Will you, won\'t you join the dance.','approved','2025-05-31 01:06:26','2025-06-21 01:06:24'),(1112,1,'Botble\\RealEstate\\Models\\Project',16,5,'Alice, \'because I\'m not Ada,\' she said, by way of keeping up the fan and a bright idea came into Alice\'s shoulder as he spoke, \'we were trying--\' \'I see!\' said the Mouse replied rather impatiently: \'any shrimp could have told you that.\' \'If I\'d been.','approved','2025-05-29 01:06:26','2025-06-21 01:06:24'),(1115,6,'Botble\\RealEstate\\Models\\Property',7,5,'Alice, looking down at once, while all the rats and--oh dear!\' cried Alice in a minute, trying to fix on one, the cook was leaning over the fire, stirring a large arm-chair at one and then treading on her hand, and Alice was only too glad to.','approved','2025-03-27 01:06:26','2025-06-21 01:06:24'),(1117,8,'Botble\\RealEstate\\Models\\Property',3,2,'While she was dozing off, and Alice was beginning to write with.','approved','2025-05-19 01:06:26','2025-06-21 01:06:24'),(1119,12,'Botble\\RealEstate\\Models\\Property',10,4,'The Cat\'s head began fading away the time. Alice had learnt several things of this ointment--one shilling the box-- Allow me to sell you a present of everything I\'ve said as yet.\' \'A cheap sort of people live about here?\' \'In THAT direction,\' the Cat.','approved','2025-03-03 01:06:26','2025-06-21 01:06:24'),(1121,10,'Botble\\RealEstate\\Models\\Property',61,2,'Queen left off, quite out of a dance is it?\' Alice panted as she could, for the baby, it was a little three-legged table, all made a snatch in the grass, merely remarking as it could go, and making quite a large mustard-mine near here. And the Gryphon added \'Come, let\'s hear some of YOUR.','approved','2025-04-19 01:06:26','2025-06-21 01:06:24'),(1125,11,'Botble\\RealEstate\\Models\\Property',4,3,'Alice, as she could. \'The Dormouse is asleep again,\' said the Queen, tossing her head to feel very queer indeed:-- \'\'Tis the voice of the party were placed along the sea-shore--\' \'Two lines!\' cried the Mouse, turning to.','approved','2025-03-21 01:06:26','2025-06-21 01:06:24'),(1135,7,'Botble\\RealEstate\\Models\\Property',37,3,'Cat in a natural way again. \'I wonder how many hours a day did you ever saw. How she longed to change the subject. \'Go on with the Queen of Hearts were seated on their slates, \'SHE doesn\'t.','approved','2025-03-13 01:06:26','2025-06-21 01:06:24'),(1137,11,'Botble\\RealEstate\\Models\\Property',58,2,'Gryphon. \'It all came different!\' Alice replied very solemnly. Alice was a very grave voice, \'until all the other paw, \'lives a March.','approved','2025-05-14 01:06:26','2025-06-21 01:06:24'),(1143,8,'Botble\\RealEstate\\Models\\Property',54,5,'In another moment down went Alice after it, \'Mouse dear! Do come back again, and.','approved','2025-06-13 01:06:26','2025-06-21 01:06:24'),(1144,12,'Botble\\RealEstate\\Models\\Project',13,3,'The Cat\'s head began fading away the moment he was speaking, so that by the officers of the lefthand bit of.','approved','2025-04-06 01:06:26','2025-06-21 01:06:24'),(1147,4,'Botble\\RealEstate\\Models\\Property',54,3,'Rabbit came up to the Classics master, though. He was an immense length of neck, which seemed to Alice a little nervous about it just.','approved','2025-04-11 01:06:26','2025-06-21 01:06:24'),(1149,4,'Botble\\RealEstate\\Models\\Property',21,4,'Let me see--how IS it to be sure, she had hurt the poor child, \'for I never understood what it might end, you know,\' the Mock Turtle a little pattering of feet on the twelfth?\' Alice went on, taking first one side and up.','approved','2025-04-08 01:06:26','2025-06-21 01:06:24'),(1155,8,'Botble\\RealEstate\\Models\\Property',52,3,'Alice, \'it\'ll never do to ask: perhaps I shall have to ask them what the name of nearly everything there. \'That\'s the reason is--\' here the Mock Turtle yawned and shut his note-book hastily. \'Consider your verdict,\' the King.','approved','2025-04-18 01:06:26','2025-06-21 01:06:24'),(1157,10,'Botble\\RealEstate\\Models\\Property',12,4,'Footman seemed to be an old conger-eel, that used to read fairy-tales, I fancied that kind of serpent, that\'s all the right distance--but then I wonder if I would talk on such a tiny little thing!\' It.','approved','2025-04-10 01:06:26','2025-06-21 01:06:24'),(1160,2,'Botble\\RealEstate\\Models\\Project',17,3,'I THINK,\' said Alice. \'Why, you don\'t explain it is to do it?\'.','approved','2025-03-26 01:06:26','2025-06-21 01:06:24'),(1161,1,'Botble\\RealEstate\\Models\\Property',19,2,'I\'m afraid, sir\' said Alice, \'how am I to do?\' said Alice. \'That\'s very curious!\'.','approved','2025-04-24 01:06:26','2025-06-21 01:06:24'),(1169,4,'Botble\\RealEstate\\Models\\Property',41,4,'Alice ventured to ask. \'Suppose we change the subject. \'Go on with the grin, which remained some time with great curiosity. \'Soles and eels, of.','approved','2025-04-24 01:06:26','2025-06-21 01:06:24'),(1177,2,'Botble\\RealEstate\\Models\\Property',58,5,'Alice could only hear whispers now and then the puppy made another snatch in the wood, \'is to grow up any more questions about it, you may nurse it a very small.','approved','2025-04-07 01:06:26','2025-06-21 01:06:24'),(1181,3,'Botble\\RealEstate\\Models\\Property',18,3,'I\'ve nothing to what I eat\" is the capital of Rome, and Rome--no, THAT\'S all wrong, I\'m certain! I.','approved','2025-06-02 01:06:26','2025-06-21 01:06:24'),(1198,2,'Botble\\RealEstate\\Models\\Project',12,4,'Dinah!\' she said to herself that perhaps it was only the pepper that had made the whole head appeared, and then dipped suddenly down, so suddenly.','approved','2025-06-09 01:06:26','2025-06-21 01:06:24'),(1201,12,'Botble\\RealEstate\\Models\\Property',48,5,'Classics master, though. He was looking down at her as she could. The next witness was the.','approved','2025-06-02 01:06:26','2025-06-21 01:06:24'),(1213,9,'Botble\\RealEstate\\Models\\Property',19,3,'Time as well be at school at once.\' However, she soon found out a box of comfits, (luckily the salt.','approved','2025-05-25 01:06:26','2025-06-21 01:06:24'),(1219,9,'Botble\\RealEstate\\Models\\Property',15,3,'What would become of me?\' Luckily for Alice, the little glass box that was said, and went on: \'--that begins with an air of great relief. \'Now at.','approved','2025-03-05 01:06:26','2025-06-21 01:06:24');
/*!40000 ALTER TABLE `re_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"sitemap.settings\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"ads.settings\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"announcements.index\":true,\"announcements.create\":true,\"announcements.edit\":true,\"announcements.destroy\":true,\"announcements.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"careers.index\":true,\"careers.create\":true,\"careers.edit\":true,\"careers.destroy\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.custom-fields\":true,\"contact.settings\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"faqs.settings\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"translations.import\":true,\"translations.export\":true,\"property-translations.import\":true,\"property-translations.export\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"payments.logs\":true,\"payments.logs.show\":true,\"payments.logs.destroy\":true,\"plugins.real-estate\":true,\"real-estate.settings\":true,\"property.index\":true,\"property.create\":true,\"property.edit\":true,\"property.destroy\":true,\"project.index\":true,\"project.create\":true,\"project.edit\":true,\"project.destroy\":true,\"property_feature.index\":true,\"property_feature.create\":true,\"property_feature.edit\":true,\"property_feature.destroy\":true,\"investor.index\":true,\"investor.create\":true,\"investor.edit\":true,\"investor.destroy\":true,\"review.index\":true,\"review.create\":true,\"review.edit\":true,\"review.destroy\":true,\"consult.index\":true,\"consult.edit\":true,\"consult.destroy\":true,\"property_category.index\":true,\"property_category.create\":true,\"property_category.edit\":true,\"property_category.destroy\":true,\"facility.index\":true,\"facility.create\":true,\"facility.edit\":true,\"facility.destroy\":true,\"account.index\":true,\"account.create\":true,\"account.edit\":true,\"account.destroy\":true,\"unverified-accounts.index\":true,\"package.index\":true,\"package.create\":true,\"package.edit\":true,\"package.destroy\":true,\"consults.index\":true,\"consults.edit\":true,\"consults.destroy\":true,\"real-estate.custom-fields.index\":true,\"real-estate.custom-fields.create\":true,\"real-estate.custom-fields.edit\":true,\"real-estate.custom-fields.destroy\":true,\"invoice.index\":true,\"invoice.edit\":true,\"invoice.destroy\":true,\"invoice.template\":true,\"import-properties.index\":true,\"coupons.index\":true,\"coupons.destroy\":true,\"real-estate.settings.general\":true,\"real-estate.settings.currencies\":true,\"real-estate.settings.accounts\":true,\"real-estate.settings.invoices\":true,\"real-estate.settings.invoice-template\":true,\"reports.index\":true,\"property.export\":true,\"property.import\":true,\"project.export\":true,\"project.import\":true,\"social-login.settings\":true,\"testimonial.index\":true,\"testimonial.create\":true,\"testimonial.edit\":true,\"testimonial.destroy\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true,\"api.settings\":true,\"api.sanctum-token.index\":true,\"api.sanctum-token.create\":true,\"api.sanctum-token.destroy\":true}','Admin users role',1,1,1,'2025-06-21 01:06:04','2025-06-21 01:06:04');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'media_random_hash','1c18117c21f97a57616ec0dc9550298c',NULL,'2025-06-21 01:06:26'),(2,'api_enabled','0',NULL,'2025-06-21 01:06:26'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"announcement\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"career\",\"contact\",\"cookie-consent\",\"faq\",\"location\",\"mollie\",\"newsletter\",\"payment\",\"paypal\",\"paystack\",\"razorpay\",\"real-estate\",\"rss-feed\",\"social-login\",\"sslcommerz\",\"stripe\",\"testimonial\",\"translation\"]',NULL,'2025-06-21 01:06:26'),(4,'analytics_dashboard_widgets','0','2025-06-21 01:05:58','2025-06-21 01:05:58'),(5,'enable_recaptcha_botble_contact_forms_fronts_contact_form','1','2025-06-21 01:05:59','2025-06-21 01:05:59'),(6,'enable_recaptcha_botble_newsletter_forms_fronts_newsletter_form','1','2025-06-21 01:05:59','2025-06-21 01:05:59'),(7,'payment_cod_fee_type','fixed',NULL,'2025-06-21 01:06:26'),(8,'payment_bank_transfer_fee_type','fixed',NULL,'2025-06-21 01:06:26'),(9,'real_estate_mandatory_fields_at_consult_form','[\"email\"]',NULL,'2025-06-21 01:06:26'),(10,'theme','homzen',NULL,'2025-06-21 01:06:26'),(11,'show_admin_bar','1',NULL,'2025-06-21 01:06:26'),(12,'language_hide_default','1',NULL,'2025-06-21 01:06:26'),(13,'language_switcher_display','dropdown',NULL,'2025-06-21 01:06:26'),(14,'language_display','all',NULL,'2025-06-21 01:06:26'),(15,'language_hide_languages','[]',NULL,'2025-06-21 01:06:26'),(16,'permalink-botble-blog-models-post','news',NULL,'2025-06-21 01:06:26'),(17,'permalink-botble-blog-models-category','news',NULL,'2025-06-21 01:06:26'),(18,'payment_cod_status','1',NULL,'2025-06-21 01:06:26'),(19,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,'2025-06-21 01:06:26'),(20,'payment_bank_transfer_status','1',NULL,'2025-06-21 01:06:26'),(21,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,'2025-06-21 01:06:26'),(22,'payment_stripe_payment_type','stripe_checkout',NULL,'2025-06-21 01:06:26'),(23,'real_estate_display_views_count_in_detail_page','1',NULL,'2025-06-21 01:06:26'),(24,'theme-homzen-site_title','Homzen',NULL,'2025-06-21 01:06:26'),(25,'theme-homzen-seo_description','Find your favorite homes at Homzen',NULL,'2025-06-21 01:06:26'),(26,'theme-homzen-copyright','©%Y Homzen is Proudly Powered by Botble Team.',NULL,'2025-06-21 01:06:26'),(27,'theme-homzen-favicon','general/favicon.png',NULL,'2025-06-21 01:06:26'),(28,'theme-homzen-logo','general/logo.png',NULL,'2025-06-21 01:06:26'),(29,'theme-homzen-logo_light','general/logo-light.png',NULL,'2025-06-21 01:06:26'),(30,'theme-homzen-preloader_enabled','yes',NULL,'2025-06-21 01:06:26'),(31,'theme-homzen-preloader_version','v2',NULL,'2025-06-21 01:06:26'),(32,'theme-homzen-social_links','[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\"}],[{\"key\":\"name\",\"value\":\"X (Twitter)\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.linkedin.com\"}]]',NULL,'2025-06-21 01:06:26'),(33,'theme-homzen-social_sharing','[[{\"key\":\"social\",\"value\":\"facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"}],[{\"key\":\"social\",\"value\":\"x\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"}],[{\"key\":\"social\",\"value\":\"pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"}],[{\"key\":\"social\",\"value\":\"linkedin\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"}],[{\"key\":\"social\",\"value\":\"whatsapp\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-whatsapp\"}],[{\"key\":\"social\",\"value\":\"email\"},{\"key\":\"icon\",\"value\":\"ti ti-mail\"}]]',NULL,'2025-06-21 01:06:26'),(34,'theme-homzen-primary_color','#db1d23',NULL,'2025-06-21 01:06:26'),(35,'theme-homzen-hover_color','#cd380f',NULL,'2025-06-21 01:06:26'),(36,'theme-homzen-footer_background_color','#161e2d',NULL,'2025-06-21 01:06:26'),(37,'theme-homzen-footer_background_image','general/banner-footer.png',NULL,'2025-06-21 01:06:26'),(38,'theme-homzen-use_modal_for_authentication','1',NULL,'2025-06-21 01:06:26'),(39,'theme-homzen-homepage_id','1',NULL,'2025-06-21 01:06:26'),(40,'theme-homzen-blog_page_id','6',NULL,'2025-06-21 01:06:26'),(41,'theme-homzen-hotline','0123 456 789',NULL,'2025-06-21 01:06:26'),(42,'theme-homzen-email','contact@botble.com',NULL,'2025-06-21 01:06:26'),(43,'theme-homzen-breadcrumb_background_color','#f7f7f7',NULL,'2025-06-21 01:06:26'),(44,'theme-homzen-breadcrumb_text_color','#161e2d',NULL,'2025-06-21 01:06:26'),(45,'theme-homzen-lazy_load_images','1',NULL,'2025-06-21 01:06:26'),(46,'theme-homzen-lazy_load_placeholder_image','general/placeholder.png',NULL,'2025-06-21 01:06:26'),(47,'theme-homzen-newsletter_popup_enable','1',NULL,'2025-06-21 01:06:26'),(48,'theme-homzen-newsletter_popup_image','general/newsletter-image.jpg',NULL,'2025-06-21 01:06:26'),(49,'theme-homzen-newsletter_popup_title','Let’s join our newsletter!',NULL,'2025-06-21 01:06:26'),(50,'theme-homzen-newsletter_popup_subtitle','Weekly Updates',NULL,'2025-06-21 01:06:26'),(51,'theme-homzen-newsletter_popup_description','Do not worry we don’t spam!',NULL,'2025-06-21 01:06:26'),(52,'theme-homzen-properties_list_page_id','14',NULL,'2025-06-21 01:06:26'),(53,'theme-homzen-projects_list_page_id','15',NULL,'2025-06-21 01:06:26'),(54,'announcement_max_width','2481',NULL,NULL),(55,'announcement_text_color','#161e2d',NULL,NULL),(56,'announcement_background_color','transparent',NULL,NULL),(57,'announcement_text_alignment','start',NULL,NULL),(58,'announcement_dismissible','0',NULL,NULL),(59,'announcement_placement','theme',NULL,NULL),(60,'announcement_autoplay','1',NULL,NULL),(61,'announcement_autoplay_delay','5000',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2025-06-21 01:06:03','2025-06-21 01:06:03'),(2,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2025-06-21 01:06:03','2025-06-21 01:06:03'),(3,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2025-06-21 01:06:03','2025-06-21 01:06:03'),(4,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2025-06-21 01:06:03','2025-06-21 01:06:03'),(5,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2025-06-21 01:06:03','2025-06-21 01:06:03'),(6,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2025-06-21 01:06:03','2025-06-21 01:06:03'),(7,'walnut-park-apartments',1,'Botble\\RealEstate\\Models\\Project','projects','2025-06-21 01:06:12','2025-06-21 01:06:12'),(8,'sunshine-wonder-villas',2,'Botble\\RealEstate\\Models\\Project','projects','2025-06-21 01:06:12','2025-06-21 01:06:12'),(9,'diamond-island',3,'Botble\\RealEstate\\Models\\Project','projects','2025-06-21 01:06:12','2025-06-21 01:06:12'),(10,'the-nassim',4,'Botble\\RealEstate\\Models\\Project','projects','2025-06-21 01:06:12','2025-06-21 01:06:12'),(11,'vinhomes-grand-park',5,'Botble\\RealEstate\\Models\\Project','projects','2025-06-21 01:06:12','2025-06-21 01:06:12'),(12,'the-metropole-thu-thiem',6,'Botble\\RealEstate\\Models\\Project','projects','2025-06-21 01:06:12','2025-06-21 01:06:12'),(13,'villa-on-grand-avenue',7,'Botble\\RealEstate\\Models\\Project','projects','2025-06-21 01:06:12','2025-06-21 01:06:12'),(14,'traditional-food-restaurant',8,'Botble\\RealEstate\\Models\\Project','projects','2025-06-21 01:06:12','2025-06-21 01:06:12'),(15,'villa-on-hollywood-boulevard',9,'Botble\\RealEstate\\Models\\Project','projects','2025-06-21 01:06:12','2025-06-21 01:06:12'),(16,'office-space-at-northwest-107th',10,'Botble\\RealEstate\\Models\\Project','projects','2025-06-21 01:06:12','2025-06-21 01:06:12'),(17,'home-in-merrick-way',11,'Botble\\RealEstate\\Models\\Project','projects','2025-06-21 01:06:12','2025-06-21 01:06:12'),(18,'adarsh-greens',12,'Botble\\RealEstate\\Models\\Project','projects','2025-06-21 01:06:12','2025-06-21 01:06:12'),(19,'rustomjee-evershine-global-city',13,'Botble\\RealEstate\\Models\\Project','projects','2025-06-21 01:06:12','2025-06-21 01:06:12'),(20,'godrej-exquisite',14,'Botble\\RealEstate\\Models\\Project','projects','2025-06-21 01:06:12','2025-06-21 01:06:12'),(21,'godrej-prime',15,'Botble\\RealEstate\\Models\\Project','projects','2025-06-21 01:06:12','2025-06-21 01:06:12'),(22,'ps-panache',16,'Botble\\RealEstate\\Models\\Project','projects','2025-06-21 01:06:12','2025-06-21 01:06:12'),(23,'upturn-atmiya-centria',17,'Botble\\RealEstate\\Models\\Project','projects','2025-06-21 01:06:12','2025-06-21 01:06:12'),(24,'brigade-oasis',18,'Botble\\RealEstate\\Models\\Project','projects','2025-06-21 01:06:12','2025-06-21 01:06:12'),(25,'3-beds-villa-calpe-alicante',1,'Botble\\RealEstate\\Models\\Property','properties','2025-06-21 01:06:13','2025-06-21 01:06:13'),(26,'lavida-plus-office-tel-1-bedroom',2,'Botble\\RealEstate\\Models\\Property','properties','2025-06-21 01:06:13','2025-06-21 01:06:13'),(27,'vinhomes-grand-park-studio-1-bedroom',3,'Botble\\RealEstate\\Models\\Property','properties','2025-06-21 01:06:13','2025-06-21 01:06:13'),(28,'the-sun-avenue-office-tel-1-bedroom',4,'Botble\\RealEstate\\Models\\Property','properties','2025-06-21 01:06:13','2025-06-21 01:06:13'),(29,'property-for-sale-johannesburg-south-africa',5,'Botble\\RealEstate\\Models\\Property','properties','2025-06-21 01:06:13','2025-06-21 01:06:13'),(30,'stunning-french-inspired-manor',6,'Botble\\RealEstate\\Models\\Property','properties','2025-06-21 01:06:13','2025-06-21 01:06:13'),(31,'villa-for-sale-at-bermuda-dunes',7,'Botble\\RealEstate\\Models\\Property','properties','2025-06-21 01:06:13','2025-06-21 01:06:13'),(32,'walnut-park-apartment',8,'Botble\\RealEstate\\Models\\Property','properties','2025-06-21 01:06:13','2025-06-21 01:06:13'),(33,'5-beds-luxury-house',9,'Botble\\RealEstate\\Models\\Property','properties','2025-06-21 01:06:13','2025-06-21 01:06:13'),(34,'family-victorian-view-home',10,'Botble\\RealEstate\\Models\\Property','properties','2025-06-21 01:06:13','2025-06-21 01:06:13'),(35,'osaka-heights-apartment',11,'Botble\\RealEstate\\Models\\Property','properties','2025-06-21 01:06:13','2025-06-21 01:06:13'),(36,'private-estate-magnificent-views',12,'Botble\\RealEstate\\Models\\Property','properties','2025-06-21 01:06:13','2025-06-21 01:06:13'),(37,'thompson-road-house-for-rent',13,'Botble\\RealEstate\\Models\\Property','properties','2025-06-21 01:06:13','2025-06-21 01:06:13'),(38,'brand-new-1-bedroom-apartment-in-first-class-location',14,'Botble\\RealEstate\\Models\\Property','properties','2025-06-21 01:06:13','2025-06-21 01:06:13'),(39,'elegant-family-home-presents-premium-modern-living',15,'Botble\\RealEstate\\Models\\Property','properties','2025-06-21 01:06:13','2025-06-21 01:06:13'),(40,'luxury-apartments-in-singapore-for-sale',16,'Botble\\RealEstate\\Models\\Property','properties','2025-06-21 01:06:13','2025-06-21 01:06:13'),(41,'5-room-luxury-penthouse-for-sale-in-kuala-lumpur',17,'Botble\\RealEstate\\Models\\Property','properties','2025-06-21 01:06:13','2025-06-21 01:06:13'),(42,'2-floor-house-in-compound-pejaten-barat-kemang',18,'Botble\\RealEstate\\Models\\Property','properties','2025-06-21 01:06:13','2025-06-21 01:06:13'),(43,'apartment-muiderstraatweg-in-diemen',19,'Botble\\RealEstate\\Models\\Property','properties','2025-06-21 01:06:13','2025-06-21 01:06:13'),(44,'nice-apartment-for-rent-in-berlin',20,'Botble\\RealEstate\\Models\\Property','properties','2025-06-21 01:06:13','2025-06-21 01:06:13'),(45,'pumpkin-key-private-island',21,'Botble\\RealEstate\\Models\\Property','properties','2025-06-21 01:06:13','2025-06-21 01:06:13'),(46,'maplewood-estates',22,'Botble\\RealEstate\\Models\\Property','properties','2025-06-21 01:06:13','2025-06-21 01:06:13'),(47,'pine-ridge-manor',23,'Botble\\RealEstate\\Models\\Property','properties','2025-06-21 01:06:14','2025-06-21 01:06:14'),(48,'oak-hill-residences',24,'Botble\\RealEstate\\Models\\Property','properties','2025-06-21 01:06:14','2025-06-21 01:06:14'),(49,'sunnybrook-villas',25,'Botble\\RealEstate\\Models\\Property','properties','2025-06-21 01:06:14','2025-06-21 01:06:14'),(50,'riverstone-condominiums',26,'Botble\\RealEstate\\Models\\Property','properties','2025-06-21 01:06:14','2025-06-21 01:06:14'),(51,'cedar-park-apartments',27,'Botble\\RealEstate\\Models\\Property','properties','2025-06-21 01:06:14','2025-06-21 01:06:14'),(52,'lakeside-retreat',28,'Botble\\RealEstate\\Models\\Property','properties','2025-06-21 01:06:14','2025-06-21 01:06:14'),(53,'willow-creek-homes',29,'Botble\\RealEstate\\Models\\Property','properties','2025-06-21 01:06:14','2025-06-21 01:06:14'),(54,'grandview-heights',30,'Botble\\RealEstate\\Models\\Property','properties','2025-06-21 01:06:14','2025-06-21 01:06:14'),(55,'forest-glen-cottages',31,'Botble\\RealEstate\\Models\\Property','properties','2025-06-21 01:06:14','2025-06-21 01:06:14'),(56,'harborview-towers',32,'Botble\\RealEstate\\Models\\Property','properties','2025-06-21 01:06:14','2025-06-21 01:06:14'),(57,'meadowlands-estates',33,'Botble\\RealEstate\\Models\\Property','properties','2025-06-21 01:06:14','2025-06-21 01:06:14'),(58,'highland-meadows',34,'Botble\\RealEstate\\Models\\Property','properties','2025-06-21 01:06:14','2025-06-21 01:06:14'),(59,'brookfield-gardens',35,'Botble\\RealEstate\\Models\\Property','properties','2025-06-21 01:06:14','2025-06-21 01:06:14'),(60,'silverwood-villas',36,'Botble\\RealEstate\\Models\\Property','properties','2025-06-21 01:06:15','2025-06-21 01:06:15'),(61,'evergreen-terrace',37,'Botble\\RealEstate\\Models\\Property','properties','2025-06-21 01:06:15','2025-06-21 01:06:15'),(62,'golden-gate-residences',38,'Botble\\RealEstate\\Models\\Property','properties','2025-06-21 01:06:15','2025-06-21 01:06:15'),(63,'spring-blossom-park',39,'Botble\\RealEstate\\Models\\Property','properties','2025-06-21 01:06:15','2025-06-21 01:06:15'),(64,'horizon-pointe',40,'Botble\\RealEstate\\Models\\Property','properties','2025-06-21 01:06:15','2025-06-21 01:06:15'),(65,'whispering-pines-lodge',41,'Botble\\RealEstate\\Models\\Property','properties','2025-06-21 01:06:15','2025-06-21 01:06:15'),(66,'sunset-ridge',42,'Botble\\RealEstate\\Models\\Property','properties','2025-06-21 01:06:15','2025-06-21 01:06:15'),(67,'timberline-estates',43,'Botble\\RealEstate\\Models\\Property','properties','2025-06-21 01:06:15','2025-06-21 01:06:15'),(68,'crystal-lake-condos',44,'Botble\\RealEstate\\Models\\Property','properties','2025-06-21 01:06:15','2025-06-21 01:06:15'),(69,'briarwood-apartments',45,'Botble\\RealEstate\\Models\\Property','properties','2025-06-21 01:06:15','2025-06-21 01:06:15'),(70,'summit-view',46,'Botble\\RealEstate\\Models\\Property','properties','2025-06-21 01:06:15','2025-06-21 01:06:15'),(71,'elmwood-park',47,'Botble\\RealEstate\\Models\\Property','properties','2025-06-21 01:06:15','2025-06-21 01:06:15'),(72,'stonegate-homes',48,'Botble\\RealEstate\\Models\\Property','properties','2025-06-21 01:06:15','2025-06-21 01:06:15'),(73,'rosewood-villas',49,'Botble\\RealEstate\\Models\\Property','properties','2025-06-21 01:06:15','2025-06-21 01:06:15'),(74,'prairie-meadows',50,'Botble\\RealEstate\\Models\\Property','properties','2025-06-21 01:06:15','2025-06-21 01:06:15'),(75,'hawthorne-heights',51,'Botble\\RealEstate\\Models\\Property','properties','2025-06-21 01:06:15','2025-06-21 01:06:15'),(76,'sierra-vista',52,'Botble\\RealEstate\\Models\\Property','properties','2025-06-21 01:06:15','2025-06-21 01:06:15'),(77,'autumn-leaves',53,'Botble\\RealEstate\\Models\\Property','properties','2025-06-21 01:06:15','2025-06-21 01:06:15'),(78,'blue-sky-residences',54,'Botble\\RealEstate\\Models\\Property','properties','2025-06-21 01:06:15','2025-06-21 01:06:15'),(79,'pebble-creek',55,'Botble\\RealEstate\\Models\\Property','properties','2025-06-21 01:06:15','2025-06-21 01:06:15'),(80,'magnolia-manor',56,'Botble\\RealEstate\\Models\\Property','properties','2025-06-21 01:06:15','2025-06-21 01:06:15'),(81,'cherry-blossom-estates',57,'Botble\\RealEstate\\Models\\Property','properties','2025-06-21 01:06:15','2025-06-21 01:06:15'),(82,'windsor-park',58,'Botble\\RealEstate\\Models\\Property','properties','2025-06-21 01:06:15','2025-06-21 01:06:15'),(83,'seaside-villas',59,'Botble\\RealEstate\\Models\\Property','properties','2025-06-21 01:06:15','2025-06-21 01:06:15'),(84,'mountain-view-retreat',60,'Botble\\RealEstate\\Models\\Property','properties','2025-06-21 01:06:16','2025-06-21 01:06:16'),(85,'amberwood-apartments',61,'Botble\\RealEstate\\Models\\Property','properties','2025-06-21 01:06:16','2025-06-21 01:06:16'),(86,'buying-a-home',1,'Botble\\Blog\\Models\\Category','news','2025-06-21 01:06:17','2025-06-21 01:06:18'),(87,'selling-a-home',2,'Botble\\Blog\\Models\\Category','news','2025-06-21 01:06:17','2025-06-21 01:06:18'),(88,'market-trends',3,'Botble\\Blog\\Models\\Category','news','2025-06-21 01:06:17','2025-06-21 01:06:18'),(89,'home-improvement',4,'Botble\\Blog\\Models\\Category','news','2025-06-21 01:06:17','2025-06-21 01:06:18'),(90,'real-estate-investing',5,'Botble\\Blog\\Models\\Category','news','2025-06-21 01:06:17','2025-06-21 01:06:18'),(91,'neighborhood-guides',6,'Botble\\Blog\\Models\\Category','news','2025-06-21 01:06:17','2025-06-21 01:06:18'),(92,'tips',1,'Botble\\Blog\\Models\\Tag','tag','2025-06-21 01:06:17','2025-06-21 01:06:17'),(93,'investing',2,'Botble\\Blog\\Models\\Tag','tag','2025-06-21 01:06:17','2025-06-21 01:06:17'),(94,'market-analysis',3,'Botble\\Blog\\Models\\Tag','tag','2025-06-21 01:06:17','2025-06-21 01:06:17'),(95,'diy',4,'Botble\\Blog\\Models\\Tag','tag','2025-06-21 01:06:17','2025-06-21 01:06:17'),(96,'luxury-homes',5,'Botble\\Blog\\Models\\Tag','tag','2025-06-21 01:06:17','2025-06-21 01:06:17'),(97,'first-time-buyers',6,'Botble\\Blog\\Models\\Tag','tag','2025-06-21 01:06:17','2025-06-21 01:06:17'),(98,'property-management',7,'Botble\\Blog\\Models\\Tag','tag','2025-06-21 01:06:17','2025-06-21 01:06:17'),(99,'renovation',8,'Botble\\Blog\\Models\\Tag','tag','2025-06-21 01:06:17','2025-06-21 01:06:17'),(100,'top-10-tips-for-first-time-home-buyers',1,'Botble\\Blog\\Models\\Post','news','2025-06-21 01:06:17','2025-06-21 01:06:18'),(101,'how-to-stage-your-home-for-a-quick-sale',2,'Botble\\Blog\\Models\\Post','news','2025-06-21 01:06:17','2025-06-21 01:06:18'),(102,'understanding-the-current-real-estate-market-trends',3,'Botble\\Blog\\Models\\Post','news','2025-06-21 01:06:17','2025-06-21 01:06:18'),(103,'diy-home-improvement-projects-that-add-value',4,'Botble\\Blog\\Models\\Post','news','2025-06-21 01:06:17','2025-06-21 01:06:18'),(104,'a-beginners-guide-to-real-estate-investing',5,'Botble\\Blog\\Models\\Post','news','2025-06-21 01:06:17','2025-06-21 01:06:18'),(105,'how-to-choose-the-right-neighborhood-for-your-family',6,'Botble\\Blog\\Models\\Post','news','2025-06-21 01:06:17','2025-06-21 01:06:18'),(106,'luxury-homes-what-to-look-for',7,'Botble\\Blog\\Models\\Post','news','2025-06-21 01:06:17','2025-06-21 01:06:18'),(107,'property-management-best-practices-for-landlords',8,'Botble\\Blog\\Models\\Post','news','2025-06-21 01:06:17','2025-06-21 01:06:18'),(108,'renovation-ideas-to-increase-your-homes-value',9,'Botble\\Blog\\Models\\Post','news','2025-06-21 01:06:17','2025-06-21 01:06:18'),(109,'the-ultimate-guide-to-buying-a-vacation-home',10,'Botble\\Blog\\Models\\Post','news','2025-06-21 01:06:18','2025-06-21 01:06:18'),(110,'how-to-successfully-sell-your-home-in-a-buyers-market',11,'Botble\\Blog\\Models\\Post','news','2025-06-21 01:06:18','2025-06-21 01:06:18'),(111,'home-inspection-what-to-expect-and-how-to-prepare',12,'Botble\\Blog\\Models\\Post','news','2025-06-21 01:06:18','2025-06-21 01:06:18'),(112,'eco-friendly-home-improvements-for-sustainable-living',13,'Botble\\Blog\\Models\\Post','news','2025-06-21 01:06:18','2025-06-21 01:06:18'),(113,'how-to-navigate-the-mortgage-process',14,'Botble\\Blog\\Models\\Post','news','2025-06-21 01:06:18','2025-06-21 01:06:18'),(114,'real-estate-market-analysis-what-you-need-to-know',15,'Botble\\Blog\\Models\\Post','news','2025-06-21 01:06:18','2025-06-21 01:06:18'),(115,'tips-for-renting-out-your-property',16,'Botble\\Blog\\Models\\Post','news','2025-06-21 01:06:18','2025-06-21 01:06:18'),(116,'understanding-property-taxes-and-how-to-lower-them',17,'Botble\\Blog\\Models\\Post','news','2025-06-21 01:06:18','2025-06-21 01:06:18'),(117,'the-benefits-of-smart-home-technology',18,'Botble\\Blog\\Models\\Post','news','2025-06-21 01:06:18','2025-06-21 01:06:18'),(118,'homepage-1',1,'Botble\\Page\\Models\\Page','','2025-06-21 01:06:23','2025-06-21 01:06:23'),(119,'homepage-2',2,'Botble\\Page\\Models\\Page','','2025-06-21 01:06:23','2025-06-21 01:06:23'),(120,'homepage-3',3,'Botble\\Page\\Models\\Page','','2025-06-21 01:06:23','2025-06-21 01:06:23'),(121,'homepage-4',4,'Botble\\Page\\Models\\Page','','2025-06-21 01:06:23','2025-06-21 01:06:23'),(122,'homepage-5',5,'Botble\\Page\\Models\\Page','','2025-06-21 01:06:23','2025-06-21 01:06:23'),(123,'blog',6,'Botble\\Page\\Models\\Page','','2025-06-21 01:06:23','2025-06-21 01:06:23'),(124,'contact-us',7,'Botble\\Page\\Models\\Page','','2025-06-21 01:06:23','2025-06-21 01:06:23'),(125,'our-services',8,'Botble\\Page\\Models\\Page','','2025-06-21 01:06:23','2025-06-21 01:06:23'),(126,'faqs',9,'Botble\\Page\\Models\\Page','','2025-06-21 01:06:23','2025-06-21 01:06:23'),(127,'about-us',10,'Botble\\Page\\Models\\Page','','2025-06-21 01:06:23','2025-06-21 01:06:23'),(128,'pricing-plans',11,'Botble\\Page\\Models\\Page','','2025-06-21 01:06:23','2025-06-21 01:06:23'),(129,'privacy-policy',12,'Botble\\Page\\Models\\Page','','2025-06-21 01:06:23','2025-06-21 01:06:23'),(130,'coming-soon',13,'Botble\\Page\\Models\\Page','','2025-06-21 01:06:23','2025-06-21 01:06:23'),(131,'properties',14,'Botble\\Page\\Models\\Page','','2025-06-21 01:06:23','2025-06-21 01:06:23'),(132,'projects',15,'Botble\\Page\\Models\\Page','','2025-06-21 01:06:23','2025-06-21 01:06:23'),(133,'cookie-policy',16,'Botble\\Page\\Models\\Page','','2025-06-21 01:06:23','2025-06-21 01:06:23'),(134,'senior-full-stack-engineer-creator-success-full-time',1,'ArchiElite\\Career\\Models\\Career','careers','2025-06-21 01:06:26','2025-06-21 01:06:26'),(135,'data-science-specialist-analytics-division',2,'ArchiElite\\Career\\Models\\Career','careers','2025-06-21 01:06:26','2025-06-21 01:06:26'),(136,'product-marketing-manager-growth-team',3,'ArchiElite\\Career\\Models\\Career','careers','2025-06-21 01:06:26','2025-06-21 01:06:26'),(137,'uxui-designer-user-experience-team',4,'ArchiElite\\Career\\Models\\Career','careers','2025-06-21 01:06:26','2025-06-21 01:06:26'),(138,'operations-manager-supply-chain-division',5,'ArchiElite\\Career\\Models\\Career','careers','2025-06-21 01:06:26','2025-06-21 01:06:26'),(139,'financial-analyst-investment-group',6,'ArchiElite\\Career\\Models\\Career','careers','2025-06-21 01:06:26','2025-06-21 01:06:26'),(140,'robyn',1,'Botble\\RealEstate\\Models\\Account','agents','2025-06-21 01:06:26','2025-06-21 01:06:26'),(141,'bethany',2,'Botble\\RealEstate\\Models\\Account','agents','2025-06-21 01:06:26','2025-06-21 01:06:26'),(142,'alexis',3,'Botble\\RealEstate\\Models\\Account','agents','2025-06-21 01:06:26','2025-06-21 01:06:26'),(143,'grant',4,'Botble\\RealEstate\\Models\\Account','agents','2025-06-21 01:06:26','2025-06-21 01:06:26'),(144,'linnea',5,'Botble\\RealEstate\\Models\\Account','agents','2025-06-21 01:06:27','2025-06-21 01:06:27'),(145,'amara',6,'Botble\\RealEstate\\Models\\Account','agents','2025-06-21 01:06:27','2025-06-21 01:06:27'),(146,'charlie',7,'Botble\\RealEstate\\Models\\Account','agents','2025-06-21 01:06:27','2025-06-21 01:06:27'),(147,'gonzalo',8,'Botble\\RealEstate\\Models\\Account','agents','2025-06-21 01:06:27','2025-06-21 01:06:27'),(148,'dereck',9,'Botble\\RealEstate\\Models\\Account','agents','2025-06-21 01:06:27','2025-06-21 01:06:27'),(149,'luis',10,'Botble\\RealEstate\\Models\\Account','agents','2025-06-21 01:06:27','2025-06-21 01:06:27'),(150,'misty',11,'Botble\\RealEstate\\Models\\Account','agents','2025-06-21 01:06:27','2025-06-21 01:06:27'),(151,'letha',12,'Botble\\RealEstate\\Models\\Account','agents','2025-06-21 01:06:27','2025-06-21 01:06:27');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs_translations`
--

LOCK TABLES `slugs_translations` WRITE;
/*!40000 ALTER TABLE `slugs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `slugs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_logins`
--

DROP TABLE IF EXISTS `social_logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_logins` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci,
  `refresh_token` text COLLATE utf8mb4_unicode_ci,
  `token_expires_at` timestamp NULL DEFAULT NULL,
  `provider_data` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_logins_provider_provider_id_unique` (`provider`,`provider_id`),
  KEY `social_logins_user_type_user_id_index` (`user_type`,`user_id`),
  KEY `social_logins_user_id_user_type_index` (`user_id`,`user_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_logins`
--

LOCK TABLES `social_logins` WRITE;
/*!40000 ALTER TABLE `social_logins` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_logins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `states_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'France','france','FR',1,0,'locations/1.jpg',0,'published',NULL,NULL),(2,'England','england','EN',2,0,'locations/2.jpg',0,'published',NULL,NULL),(3,'New York','new-york','NY',3,0,'locations/2.jpg',0,'published',NULL,NULL),(4,'Holland','holland','HL',4,0,'locations/1.jpg',0,'published',NULL,NULL),(5,'Denmark','denmark','DN',5,0,'locations/1.jpg',0,'published',NULL,NULL),(6,'Bavaria','bavaria','BY',6,0,'locations/2.jpg',0,'published',NULL,NULL),(7,'Tokyo','tokyo','TK',7,0,'locations/5.jpg',0,'published',NULL,NULL),(8,'Ontario','ontario','ON',8,0,'locations/1.jpg',0,'published',NULL,NULL),(9,'New South Wales','new-south-wales','NSW',9,0,'locations/2.jpg',0,'published',NULL,NULL),(10,'Lombardy','lombardy','LO',10,0,'locations/2.jpg',0,'published',NULL,NULL);
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'Tips',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-06-21 01:06:17','2025-06-21 01:06:17'),(2,'Investing',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-06-21 01:06:17','2025-06-21 01:06:17'),(3,'Market Analysis',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-06-21 01:06:17','2025-06-21 01:06:17'),(4,'DIY',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-06-21 01:06:17','2025-06-21 01:06:17'),(5,'Luxury Homes',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-06-21 01:06:17','2025-06-21 01:06:17'),(6,'First-time Buyers',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-06-21 01:06:17','2025-06-21 01:06:17'),(7,'Property Management',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-06-21 01:06:17','2025-06-21 01:06:17'),(8,'Renovation',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-06-21 01:06:17','2025-06-21 01:06:17');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
INSERT INTO `testimonials` VALUES (1,'Jennifer Lee','From the initial consultation to closing day, the real estate team went above and beyond to ensure I found the perfect home. Their dedication and professionalism made the entire process seamless. Thank you!','avatars/3.jpg','Happy Home Seeker','published','2025-06-21 01:06:16','2025-06-21 01:06:16'),(2,'Robert Evans','I am impressed by the level of expertise and commitment demonstrated by this real estate team. Their insights into the market helped me make informed investment decisions, and I couldn\'t be happier with the results.','avatars/8.jpg','Property Investor','published','2025-06-21 01:06:16','2025-06-21 01:06:16'),(3,'Jessica White','Selling my home with the help of this real estate team was a breeze. They provided valuable advice, staged my property beautifully, and negotiated a great deal. I highly recommend their services to anyone looking to sell their home!','avatars/6.jpg','Delighted Home Seller','published','2025-06-21 01:06:16','2025-06-21 01:06:16'),(4,'Daniel Miller','Thanks to the expertise and guidance of this real estate team, I am now the proud owner of my dream home. They listened to my preferences, answered all my questions, and made the entire home buying process a positive experience.','avatars/7.jpg','Happy New Homeowner','published','2025-06-21 01:06:16','2025-06-21 01:06:16');
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials_translations`
--

DROP TABLE IF EXISTS `testimonials_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `testimonials_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`testimonials_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials_translations`
--

LOCK TABLES `testimonials_translations` WRITE;
/*!40000 ALTER TABLE `testimonials_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `testimonials_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `credits` int unsigned NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `account_id` bigint unsigned DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'add',
  `payment_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'rwisozk@kirlin.org',NULL,'$2y$12$5eXAVZzeeUQjf8oXSS1nYOpdl/Vef4zxDxE5ASdWPUOnh5Fs0DFge',NULL,'2025-06-21 01:06:04','2025-06-21 01:06:04','Missouri','Lindgren','admin',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'SiteLogoWidget','top_footer_sidebar','homzen',1,'[]','2025-06-21 01:06:02','2025-06-21 01:06:02'),(2,'SocialLinksWidget','top_footer_sidebar','homzen',2,'{\"title\":\"Follow Us:\"}','2025-06-21 01:06:02','2025-06-21 01:06:02'),(3,'SiteInformationWidget','inner_footer_sidebar','homzen',1,'{\"about\":\"Specializes in providing high-class tours for those in need. Contact Us\",\"items\":[[{\"key\":\"icon\",\"value\":\"ti ti-map-pin\"},{\"key\":\"text\",\"value\":\"101 E 129th St, East Chicago, IN 46312, US\"}],[{\"key\":\"icon\",\"value\":\"ti ti-phone-call\"},{\"key\":\"text\",\"value\":\"1-333-345-6868\"}],[{\"key\":\"icon\",\"value\":\"ti ti-mail\"},{\"key\":\"text\",\"value\":\"contact@botble.com\"}]]}','2025-06-21 01:06:02','2025-06-21 01:06:02'),(4,'Botble\\Widget\\Widgets\\CoreSimpleMenu','inner_footer_sidebar','homzen',2,'{\"id\":\"Botble\\\\Widget\\\\Widgets\\\\CoreSimpleMenu\",\"name\":\"Categories\",\"items\":[[{\"key\":\"label\",\"value\":\"Pricing Plans\"},{\"key\":\"url\",\"value\":\"\\/pricing-plans\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Our Services\"},{\"key\":\"url\",\"value\":\"\\/our-services\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"About Us\"},{\"key\":\"url\",\"value\":\"\\/about-us\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Contact Us\"},{\"key\":\"url\",\"value\":\"\\/contact-us\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}]]}','2025-06-21 01:06:02','2025-06-21 01:06:02'),(5,'Botble\\Widget\\Widgets\\CoreSimpleMenu','inner_footer_sidebar','homzen',3,'{\"id\":\"Botble\\\\Widget\\\\Widgets\\\\CoreSimpleMenu\",\"name\":\"Our Company\",\"items\":[[{\"key\":\"label\",\"value\":\"Property For Sale\"},{\"key\":\"url\",\"value\":\"\\/properties?type=sale\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Property For Rent\"},{\"key\":\"url\",\"value\":\"\\/properties?type=rent\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Privacy Policy\"},{\"key\":\"url\",\"value\":\"\\/privacy-policy\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Our Agents\"},{\"key\":\"url\",\"value\":\"\\/agents\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}]]}','2025-06-21 01:06:02','2025-06-21 01:06:02'),(6,'NewsletterWidget','inner_footer_sidebar','homzen',4,'{\"title\":\"Newsletter\",\"subtitle\":\"Your Weekly\\/Monthly Dose of Knowledge and Inspiration\"}','2025-06-21 01:06:02','2025-06-21 01:06:02'),(7,'SiteCopyrightWidget','bottom_footer_sidebar','homzen',1,'[]','2025-06-21 01:06:02','2025-06-21 01:06:02'),(8,'Botble\\Widget\\Widgets\\CoreSimpleMenu','bottom_footer_sidebar','homzen',2,'{\"id\":\"Botble\\\\Widget\\\\Widgets\\\\CoreSimpleMenu\",\"items\":[[{\"key\":\"label\",\"value\":\"Terms Of Services\"},{\"key\":\"url\",\"value\":\"\\/our-services\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Privacy Policy\"},{\"key\":\"url\",\"value\":\"\\/privacy-policy\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Cookie Policy\"},{\"key\":\"url\",\"value\":\"\\/cookie-policy\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}]]}','2025-06-21 01:06:03','2025-06-21 01:06:03'),(9,'BlogSearchWidget','blog_sidebar','homzen',1,'{\"name\":\"Search\"}','2025-06-21 01:06:03','2025-06-21 01:06:03'),(10,'BlogPostsWidget','blog_sidebar','homzen',2,'{\"name\":\"Recent Posts\",\"limit\":3}','2025-06-21 01:06:03','2025-06-21 01:06:03'),(11,'BlogCategoriesWidget','blog_sidebar','homzen',3,'{\"name\":\"By Categories\",\"number_display\":8}','2025-06-21 01:06:03','2025-06-21 01:06:03'),(12,'BlogTagsWidget','blog_sidebar','homzen',4,'{\"name\":\"Popular Tag\",\"number_display\":9}','2025-06-21 01:06:03','2025-06-21 01:06:03'),(13,'RelatedPostsWidget','bottom_post_detail_sidebar','homzen',1,'{\"title\":\"News insight\",\"subtitle\":\"Related Posts\",\"limit\":3}','2025-06-21 01:06:03','2025-06-21 01:06:03');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-21 15:06:28
