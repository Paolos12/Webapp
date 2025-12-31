-- Generated SQL to create and populate `elms_db` for the ELMS project
-- Based on SQL_Database_edoc.sql; database name replaced to `elms_db`.

CREATE DATABASE IF NOT EXISTS `elms_db`;
USE `elms_db`;

-- --------------------------------------------------------
-- Table structure and data from original dump
-- (all CREATE TABLE / INSERT statements follow)

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- --------------------------------------------------------
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `aemail` varchar(255) NOT NULL,
  `apassword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`aemail`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aemail`, `apassword`) VALUES
('admin@edoc.com', '123');

-- --------------------------------------------------------
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
CREATE TABLE IF NOT EXISTS `appointment` (
  `appoid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(10) DEFAULT NULL,
  `apponum` int(3) DEFAULT NULL,
  `scheduleid` int(10) DEFAULT NULL,
  `appodate` date DEFAULT NULL,
  PRIMARY KEY (`appoid`),
  KEY `pid` (`pid`),
  KEY `scheduleid` (`scheduleid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appoid`, `pid`, `apponum`, `scheduleid`, `appodate`) VALUES
(1, 1, 1, 1, '2022-06-03');

-- --------------------------------------------------------
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
CREATE TABLE IF NOT EXISTS `doctor` (
  `docid` int(11) NOT NULL AUTO_INCREMENT,
  `docemail` varchar(255) DEFAULT NULL,
  `docname` varchar(255) DEFAULT NULL,
  `docpassword` varchar(255) DEFAULT NULL,
  `docnic` varchar(15) DEFAULT NULL,
  `doctel` varchar(15) DEFAULT NULL,
  `specialties` int(2) DEFAULT NULL,
  PRIMARY KEY (`docid`),
  KEY `specialties` (`specialties`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`docid`, `docemail`, `docname`, `docpassword`, `docnic`, `doctel`, `specialties`) VALUES
(1, 'doctor@edoc.com', 'Test Doctor', '123', '000000000', '0110000000', 1);

-- --------------------------------------------------------
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
CREATE TABLE IF NOT EXISTS `patient` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pemail` varchar(255) DEFAULT NULL,
  `pname` varchar(255) DEFAULT NULL,
  `ppassword` varchar(255) DEFAULT NULL,
  `paddress` varchar(255) DEFAULT NULL,
  `pnic` varchar(15) DEFAULT NULL,
  `pdob` date DEFAULT NULL,
  `ptel` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table `patient`
--

INSERT INTO `patient` (`pid`, `pemail`, `pname`, `ppassword`, `paddress`, `pnic`, `pdob`, `ptel`) VALUES
(1, 'patient@edoc.com', 'Test Patient', '123', 'Sri Lanka', '0000000000', '2000-01-01', '0120000000'),
(2, 'emhashenudara@gmail.com', 'Hashen Udara', '123', 'Sri Lanka', '0110000000', '2022-06-03', '0700000000');

-- --------------------------------------------------------
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
CREATE TABLE IF NOT EXISTS `schedule` (
  `scheduleid` int(11) NOT NULL AUTO_INCREMENT,
  `docid` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `scheduledate` date DEFAULT NULL,
  `scheduletime` time DEFAULT NULL,
  `nop` int(4) DEFAULT NULL,
  PRIMARY KEY (`scheduleid`),
  KEY `docid` (`docid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`scheduleid`, `docid`, `title`, `scheduledate`, `scheduletime`, `nop`) VALUES
(1, '1', 'Test Session', '2050-01-01', '18:00:00', 50),
(2, '1', '1', '2022-06-10', '20:36:00', 1),
(3, '1', '12', '2022-06-10', '20:33:00', 1),
(4, '1', '1', '2022-06-10', '12:32:00', 1),
(5, '1', '1', '2022-06-10', '20:35:00', 1),
(6, '1', '12', '2022-06-10', '20:35:00', 1),
(7, '1', '1', '2022-06-24', '20:36:00', 1),
(8, '1', '12', '2022-06-10', '13:33:00', 1);

-- --------------------------------------------------------
-- Table structure for table `specialties`
--

DROP TABLE IF EXISTS `specialties`;
CREATE TABLE IF NOT EXISTS `specialties` (
  `id` int(2) NOT NULL,
  `sname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table `specialties`
--

INSERT INTO `specialties` (`id`, `sname`) VALUES
(1, 'Accident and emergency medicine'),
(2, 'Allergology'),
(3, 'Anaesthetics'),
(4, 'Biological hematology'),
(5, 'Cardiology'),
(6, 'Child psychiatry'),
(7, 'Clinical biology'),
(8, 'Clinical chemistry'),
(9, 'Clinical neurophysiology'),
(10, 'Clinical radiology'),
(11, 'Dental, oral and maxillo-facial surgery'),
(12, 'Dermato-venerology'),
(13, 'Dermatology'),
(14, 'Endocrinology'),
(15, 'Gastro-enterologic surgery'),
(16, 'Gastroenterology'),
(17, 'General hematology'),
(18, 'General Practice'),
(19, 'General surgery'),
(20, 'Geriatrics'),
(21, 'Immunology'),
(22, 'Infectious diseases'),
(23, 'Internal medicine'),
(24, 'Laboratory medicine'),
(25, 'Maxillo-facial surgery'),
(26, 'Microbiology'),
(27, 'Nephrology'),
(28, 'Neuro-psychiatry'),
(29, 'Neurology'),
(30, 'Neurosurgery'),
(31, 'Nuclear medicine'),
(32, 'Obstetrics and gynecology'),
(33, 'Occupational medicine'),
(34, 'Ophthalmology'),
(35, 'Orthopaedics'),
(36, 'Otorhinolaryngology'),
(37, 'Paediatric surgery'),
(38, 'Paediatrics'),
(39, 'Pathology'),
(40, 'Pharmacology'),
(41, 'Physical medicine and rehabilitation'),
(42, 'Plastic surgery'),
(43, 'Podiatric Medicine'),
(44, 'Podiatric Surgery'),
(45, 'Psychiatry'),
(46, 'Public health and Preventive Medicine'),
(47, 'Radiology'),
(48, 'Radiotherapy'),
(49, 'Respiratory medicine'),
(50, 'Rheumatology'),
(51, 'Stomatology'),
(52, 'Thoracic surgery'),
(53, 'Tropical medicine'),
(54, 'Urology'),
(55, 'Vascular surgery'),
(56, 'Venereology');

-- --------------------------------------------------------
-- Table structure for table `lab_technician`
--

DROP TABLE IF EXISTS `lab_technician`;
CREATE TABLE IF NOT EXISTS `lab_technician` (
  `tech_id` int(11) NOT NULL AUTO_INCREMENT,
  `tech_email` varchar(255) DEFAULT NULL,
  `tech_name` varchar(255) DEFAULT NULL,
  `tech_password` varchar(255) DEFAULT NULL,
  `tech_nic` varchar(15) DEFAULT NULL,
  `tech_tel` varchar(15) DEFAULT NULL,
  `specialization` varchar(100) DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT 'active',
  PRIMARY KEY (`tech_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
-- Table structure for table `lab_test_types`
--

DROP TABLE IF EXISTS `lab_test_types`;
CREATE TABLE IF NOT EXISTS `lab_test_types` (
  `test_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `test_name` varchar(255) NOT NULL,
  `description` text,
  `sample_type` varchar(100),
  `normal_range` text,
  `price` decimal(10,2),
  `turnaround_time` varchar(50),
  PRIMARY KEY (`test_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
-- Table structure for table `lab_requests`
--

DROP TABLE IF EXISTS `lab_requests`;
CREATE TABLE IF NOT EXISTS `lab_requests` (
  `request_id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(10) DEFAULT NULL,
  `doctor_id` int(10) DEFAULT NULL,
  `test_type_id` int(10) DEFAULT NULL,
  `request_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` enum('pending','sample_collected','testing','completed','rejected') DEFAULT 'pending',
  `priority` enum('routine','urgent','emergency') DEFAULT 'routine',
  `clinical_notes` text,
  `sample_collection_date` datetime DEFAULT NULL,
  PRIMARY KEY (`request_id`),
  KEY `patient_id` (`patient_id`),
  KEY `doctor_id` (`doctor_id`),
  KEY `test_type_id` (`test_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
-- Table structure for table `lab_results`
--

DROP TABLE IF EXISTS `lab_results`;
CREATE TABLE IF NOT EXISTS `lab_results` (
  `result_id` int(11) NOT NULL AUTO_INCREMENT,
  `request_id` int(10) DEFAULT NULL,
  `technician_id` int(10) DEFAULT NULL,
  `result_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `test_results` text,
  `reference_range` text,
  `comments` text,
  `report_file` varchar(255) DEFAULT NULL,
  `verified_by` int(10) DEFAULT NULL,
  `verified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`result_id`),
  KEY `request_id` (`request_id`),
  KEY `technician_id` (`technician_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
-- Table structure for table `sample_tracking`
--

DROP TABLE IF EXISTS `sample_tracking`;
CREATE TABLE IF NOT EXISTS `sample_tracking` (
  `tracking_id` int(11) NOT NULL AUTO_INCREMENT,
  `request_id` int(10) DEFAULT NULL,
  `status` enum('collected','received','processing','analyzed','verified') DEFAULT NULL,
  `timestamp` datetime DEFAULT CURRENT_TIMESTAMP,
  `location` varchar(100) DEFAULT NULL,
  `handled_by` int(10) DEFAULT NULL,
  `notes` text,
  PRIMARY KEY (`tracking_id`),
  KEY `request_id` (`request_id`),
  KEY `handled_by` (`handled_by`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
-- Table structure for table `lab_communications`
--

DROP TABLE IF EXISTS `lab_communications`;
CREATE TABLE IF NOT EXISTS `lab_communications` (
  `comm_id` int(11) NOT NULL AUTO_INCREMENT,
  `request_id` int(10) DEFAULT NULL,
  `sender_id` int(10) DEFAULT NULL,
  `sender_type` enum('doctor','technician') DEFAULT NULL,
  `message` text,
  `timestamp` datetime DEFAULT CURRENT_TIMESTAMP,
  `is_read` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`comm_id`),
  KEY `request_id` (`request_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
-- Table structure for table `test_result`
-- Stores lab test results and vital signs captured during analysis
--

DROP TABLE IF EXISTS `test_result`;
CREATE TABLE IF NOT EXISTS `test_result` (
  `result_id` int(11) NOT NULL AUTO_INCREMENT,
  `request_id` int(10) NOT NULL,
  `docid` int(10) DEFAULT NULL,
  `blood_pressure` varchar(20) DEFAULT NULL,
  `pulse_rate` varchar(20) DEFAULT NULL,
  `temperature` decimal(5,2) DEFAULT NULL,
  `weight` decimal(6,2) DEFAULT NULL,
  `height` decimal(5,2) DEFAULT NULL,
  `bmi` decimal(5,2) DEFAULT NULL,
  `test_results` text,
  `reference_range` text,
  `abnormal_values` text,
  `comments` text,
  `recommendations` text,
  `pdf_file` varchar(255) DEFAULT NULL,
  `result_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `verified_by` int(10) DEFAULT NULL,
  `verified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`result_id`),
  KEY `request_id` (`request_id`),
  KEY `docid` (`docid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
-- Table structure for table `lab_patient_data`
-- Stores vital signs and patient data collected during sample collection
--

DROP TABLE IF EXISTS `lab_patient_data`;
CREATE TABLE IF NOT EXISTS `lab_patient_data` (
  `data_id` int(11) NOT NULL AUTO_INCREMENT,
  `request_id` int(10) NOT NULL,
  `collection_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `fasting_status` varchar(50) DEFAULT NULL,
  `blood_pressure` varchar(20) DEFAULT NULL,
  `pulse_rate` varchar(20) DEFAULT NULL,
  `temperature` decimal(5,2) DEFAULT NULL,
  `weight` decimal(6,2) DEFAULT NULL,
  `height` decimal(5,2) DEFAULT NULL,
  `bmi` decimal(5,2) DEFAULT NULL,
  `sample_type` varchar(100) DEFAULT NULL,
  `sample_condition` varchar(50) DEFAULT NULL,
  `collection_notes` text,
  `collection_location` varchar(100) DEFAULT NULL,
  `collection_by` int(10) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `last_updated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`data_id`),
  KEY `request_id` (`request_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
-- Populate `lab_test_types` table with common laboratory tests
--

INSERT IGNORE INTO `lab_test_types` (`test_type_id`, `test_name`, `description`, `sample_type`, `normal_range`, `price`, `turnaround_time`) VALUES
(1, 'Complete Blood Count (CBC)', 'Full blood count including RBC, WBC, platelets', 'Blood', 'WBC: 4.5-11.0, RBC: 4.5-5.9M, HGB: 13.5-17.5', 500.00, '1-2 days'),
(2, 'Hemoglobin Test', 'Measures hemoglobin levels in blood', 'Blood', '13.5-17.5 g/dL', 300.00, '1 day'),
(3, 'Blood Glucose (Fasting)', 'Fasting blood sugar level', 'Blood', '70-100 mg/dL', 250.00, '1 day'),
(4, 'Blood Glucose (Random)', 'Random blood sugar level', 'Blood', '<140 mg/dL', 250.00, '1 day'),
(5, 'Liver Function Test (LFT)', 'Tests for liver enzymes and function', 'Blood', 'AST: 10-40, ALT: 7-56, Bilirubin: 0.1-1.2', 800.00, '2 days'),
(6, 'Kidney Function Test (KFT)', 'Tests for creatinine and BUN', 'Blood', 'Creatinine: 0.7-1.3, BUN: 7-20', 800.00, '2 days'),
(7, 'Lipid Profile', 'Total cholesterol, LDL, HDL, triglycerides', 'Blood', 'Total: <200, LDL: <100, HDL: >40', 1000.00, '1-2 days'),
(8, 'Thyroid Function Test (TSH)', 'Tests thyroid stimulating hormone levels', 'Blood', '0.4-4.0 mIU/L', 700.00, '2 days'),
(9, 'Urinalysis', 'Routine urine test', 'Urine', 'Clear, no protein/glucose', 200.00, '1 day'),
(10, 'Stool Test', 'Routine stool examination', 'Stool', 'Normal, no parasites/RBC', 300.00, '2 days');

-- --------------------------------------------------------
-- Ensure lab_requests has test_type column for JOIN compatibility
--

ALTER TABLE `lab_requests` ADD COLUMN IF NOT EXISTS `test_type` int(11) DEFAULT NULL;

-- --------------------------------------------------------
-- Table structure for table `webuser`
--

DROP TABLE IF EXISTS `webuser`;
CREATE TABLE IF NOT EXISTS `webuser` (
  `email` varchar(255) NOT NULL,
  `usertype` char(1) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table `webuser`
--

INSERT INTO `webuser` (`email`, `usertype`) VALUES
('admin@edoc.com', 'a'),
('doctor@edoc.com', 'd'),
('patient@edoc.com', 'p'),
('emhashenudara@gmail.com', 'p'),
('lab@edoc.com', 'l');

-- --------------------------------------------------------
-- Populate `lab_technician` table with a seeded test account
--

INSERT IGNORE INTO `lab_technician` (`tech_email`, `tech_name`, `tech_password`, `tech_nic`, `tech_tel`, `specialization`, `status`) VALUES
('lab@edoc.com', 'Test Lab Technician', '123', '000000001', '0770000001', 'General Laboratory', 'active');

-- Ensure patient has `age` and `gender` columns - some PHP pages expect these fields.
ALTER TABLE `patient` 
    ADD COLUMN IF NOT EXISTS `age` INT(3) DEFAULT NULL,
  ADD COLUMN IF NOT EXISTS `gender` VARCHAR(20) DEFAULT NULL,
  ADD COLUMN IF NOT EXISTS `contact` VARCHAR(30) DEFAULT NULL;

-- Populate `age` from `pdob` for seeded rows, and set a default gender where missing.
UPDATE `patient` SET `age` = TIMESTAMPDIFF(YEAR, `pdob`, CURDATE()) WHERE `pdob` IS NOT NULL;
UPDATE `patient` SET `gender` = 'Not specified' WHERE `gender` IS NULL;
-- Populate contact from existing `ptel` column if present
UPDATE `patient` SET `contact` = `ptel` WHERE `contact` IS NULL AND `ptel` IS NOT NULL;

-- Create a compatibility view `lab_request` (many project files query this singular name)
CREATE OR REPLACE VIEW `lab_request` AS
SELECT
  lr.request_id,
  lr.patient_id,
  lr.doctor_id AS docid,
  lr.test_type_id,
  lr.request_date,
  lr.status,
  lr.priority,
  lr.clinical_notes,
  lr.sample_collection_date,
  p.pname,
  p.age,
  p.gender,
  p.pemail,
  p.contact,
  d.docname,
  t.test_name
FROM lab_requests lr
LEFT JOIN patient p ON lr.patient_id = p.pid
LEFT JOIN doctor d ON lr.doctor_id = d.docid
LEFT JOIN lab_test_types t ON lr.test_type_id = t.test_type_id;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
