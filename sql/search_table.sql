-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2021 at 08:21 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flights`
--

-- --------------------------------------------------------

--
-- Table structure for table `search_table`
--

CREATE TABLE `search_table` (
  `ID` int(255) NOT NULL,
  `where_to` varchar(20) NOT NULL,
  `where_from` varchar(20) NOT NULL,
  `Flight_Name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `search_table`
--

INSERT INTO `search_table` (`ID`, `where_to`, `where_from`, `Flight_Name`) VALUES
(1, 'Mumbai(BOM)', 'Jaipur(JAI)', 'Air India'),
(2, 'Mumbai(BOM)', 'Jaipur(JAI)', 'Indigo'),
(3, 'Mumbai(BOM)', 'Jaipur(JAI)', 'Air Asia'),
(4, 'New Delhi(DEL)', 'Jaipur(JAI)', 'Spicejet'),
(5, 'New Delhi(DEL)', 'Jaipur(JAI)', 'Air India'),
(6, 'New Delhi(DEL)', 'Jaipur(JAI)', 'Indigo'),
(7, 'Goa(GOI)', 'Jaipur(JAI)', 'Indigo'),
(8, 'Goa(GOI)', 'Jaipur(JAI)', 'Spicejet'),
(9, 'Goa(GOI)', 'Jaipur(JAI)', 'Go First'),
(10, 'Pune(PNQ)', 'Jaipur(JAI)', 'Air Asia'),
(11, 'Pune(PNQ)', 'Jaipur(JAI)', 'Go First'),
(12, 'Pune(PNQ)', 'Jaipur(JAI)', 'Spicejet'),
(13, 'Kolkata(CCU)', 'Jaipur(JAI)', 'GoAir'),
(14, 'Kolkata(CCU)', 'Jaipur(JAI)', 'Air Asia'),
(15, 'Kolkata(CCU)', 'Jaipur(JAI)', 'Air India'),
(16, 'Banglore(BLR)', 'Jaipur(JAI)', 'Spicejet'),
(17, 'Banglore(BLR)', 'Jaipur(JAI)', 'Go First'),
(18, 'Banglore(BLR)', 'Jaipur(JAI)', 'Air India'),
(19, 'Chennai(MAA)', 'Jaipur(JAI)', 'Indigo'),
(20, 'Chennai(MAA)', 'Jaipur(JAI)', 'Vistara'),
(21, 'Chennai(MAA)', 'Jaipur(JAI)', 'Air Asia'),
(22, 'Jaipur(JAI)', 'Mumbai(BOM)', 'Air India'),
(23, 'Jaipur(JAI)', 'Mumbai(BOM)', 'Indigo'),
(24, 'Jaipur(JAI)', 'Mumbai(BOM)', 'Air Asia'),
(25, 'Jaipur(JAI)', 'New Delhi(DEL)', 'Spicejet'),
(26, 'Jaipur(JAI)', 'New Delhi(DEL)', 'Air India'),
(27, 'Jaipur(JAI)', 'New Delhi(DEL)', 'Indigo'),
(28, 'Jaipur(JAI)', 'Goa(GOI)', 'Indigo'),
(29, 'Jaipur(JAI)', 'Goa(GOI)', 'Spicejet'),
(30, 'Jaipur(JAI)', 'Goa(GOI)', 'Go First'),
(31, 'Jaipur(JAI)', 'Pune(PNQ)', 'Air Asia'),
(32, 'Jaipur(JAI)', 'Pune(PNQ)', 'Go First'),
(33, 'Jaipur(JAI)', 'Pune(PNQ)', 'Spicejet'),
(34, 'Jaipur(JAI)', 'Kolkata(CCU)', 'GoAir'),
(35, 'Jaipur(JAI)', 'Kolkata(CCU)', 'Air Asia'),
(36, 'Jaipur(JAI)', 'Kolkata(CCU)', 'Air India'),
(37, 'Jaipur(JAI)', 'Banglore(BLR)', 'Spicejet'),
(38, 'Jaipur(JAI)', 'Banglore(BLR)', 'Go First'),
(39, 'Jaipur(JAI)', 'Banglore(BLR)', 'Air India'),
(40, 'Jaipur(JAI)', 'Chennai(MAA)', 'Indigo'),
(41, 'Jaipur(JAI)', 'Chennai(MAA)', 'Vistara'),
(42, 'Jaipur(JAI)', 'Chennai(MAA)', 'Air Asia'),
(43, 'Jaipur(JAI)', 'Raipur(RPR)', 'Indigo'),
(44, 'Jaipur(JAI)', 'Raipur(RPR)', 'Indigo'),
(45, 'Jaipur(JAI)', 'Raipur(RPR)', 'Air India'),
(46, 'Mumbai(BOM)', 'Raipur(RPR)', 'Air Asia'),
(47, 'Mumbai(BOM)', 'Raipur(RPR)', 'Indigo'),
(48, 'Mumbai(BOM)', 'Raipur(RPR)', 'GoAir'),
(49, 'New Delhi(DEL)', 'Raipur(RPR)', 'Spicejet'),
(50, 'New Delhi(DEL)', 'Raipur(RPR)', 'Vistara'),
(51, 'New Delhi(DEL)', 'Raipur(RPR)', 'Air India'),
(52, 'Goa(GOI)', 'Raipur(RPR)', 'Spicejet'),
(53, 'Goa(GOI)', 'Raipur(RPR)', 'Air Asia'),
(54, 'Goa(GOI)', 'Raipur(RPR)', 'Indigo'),
(55, 'Pune(PNQ)', 'Raipur(RPR)', 'Air India'),
(56, 'Pune(PNQ)', 'Raipur(RPR)', 'Indigo'),
(57, 'Pune(PNQ)', 'Raipur(RPR)', 'Vistara'),
(58, 'Kolkata(CCU)', 'Raipur(RPR)', 'Soicejet'),
(59, 'Kolkata(CCU)', 'Raipur(RPR)', 'Air India'),
(60, 'Kolkata(CCU)', 'Raipur(RPR)', 'Indigo'),
(61, 'Banglore(BLR)', 'Raipur(RPR)', 'Air Asia'),
(62, 'Banglore(BLR)', 'Raipur(RPR)', 'Spicejet'),
(63, 'Banglore(BLR)', 'Raipur(RPR)', 'Indigo'),
(64, 'Banglore(BLR)', 'Mumbai(BOM)', 'Air India'),
(65, 'Banglore(BLR)', 'Mumbai(BOM)', 'Air Asia'),
(66, 'Banglore(BLR)', 'Mumbai(BOM)', 'Vistara'),
(67, 'Kolkata(CCU)', 'Mumbai(BOM)', 'Indigo'),
(68, 'Kolkata(CCU)', 'Mumbai(BOM)', 'Spicejet'),
(69, 'Kolkata(CCU)', 'Mumbai(BOM)', 'GoAir'),
(70, 'Goa(GOI)', 'Mumbai(BOM)', 'Go First'),
(71, 'Goa(GOI)', 'Mumbai(BOM)', 'Air India'),
(72, 'Goa(GOI)', 'Mumbai(BOM)', 'Vistara'),
(73, 'New Delhi(DEL)', 'Mumbai(BOM)', 'Indigo'),
(74, 'New Delhi(DEL)', 'Mumbai(BOM)', 'Air Asia'),
(75, 'New Delhi(DEL)', 'Mumbai(BOM)', 'Spicejet'),
(76, 'Pune(PNQ)', 'Mumbai(BOM)', 'Indigo'),
(78, 'Pune(PNQ)', 'Mumbai(BOM)', 'GoAir'),
(79, 'Pune(PNQ)', 'Mumbai(BOM)', 'Spicejet'),
(80, 'Chennai(MAA)', 'Mumbai(BOM)', 'Indigo'),
(81, 'Chennai(MAA)', 'Mumbai(BOM)', 'Spicejet'),
(82, 'Chennai(MAA)', 'Mumbai(BOM)', 'Air India'),
(83, 'Goa(GOI)', 'New Delhi(DEL)', 'Indigo'),
(84, 'Goa(GOI)', 'New Delhi(DEL)', 'Air Asia'),
(85, 'Goa(GOI)', 'New Delhi(DEL)', 'Air India'),
(86, 'Pune(PNQ)', 'New Delhi(DEL)', 'Indigo'),
(87, 'Pune(PNQ)', 'New Delhi(DEL)', 'Spicejet'),
(88, 'Pune(PNQ)', 'New Delhi(DEL)', 'GoAir'),
(89, 'Kolkata(CCU)', 'New Delhi(DEL)', 'Air India'),
(90, 'Kolkata(CCU)', 'New Delhi(DEL)', 'Air Asia'),
(91, 'Kolkata(CCU)', 'New Delhi(DEL)', 'Indigo'),
(92, 'Banglore(BLR)', 'New Delhi(DEL)', 'GoAir'),
(93, 'Banglore(BLR)', 'New Delhi(DEL)', 'Air India'),
(94, 'Banglore(BLR)', 'New Delhi(DEL)', 'Air Asia'),
(95, 'Surat(STV)', 'New Delhi(DEL)', 'Go First'),
(96, 'Surat(STV)', 'New Delhi(DEL)', 'GoAir'),
(97, 'Surat(STV)', 'New Delhi(DEL)', 'Air India'),
(98, 'Lucknow(LKO)', 'New Delhi(DEL)', 'Air Asia'),
(99, 'Lucknow(LKO)', 'New Delhi(DEL)', 'Indigo'),
(100, 'Lucknow(LKO)', 'New Delhi(DEL)', 'GoAir'),
(101, 'Raipur(RPR)', 'Jaipur(JAI)', 'Indigo'),
(102, 'Raipur(RPR)', 'Jaipur(JAI)', 'Spicejet'),
(103, 'Raipur(RPR)', 'Jaipur(JAI)', 'Air Asia'),
(104, 'Raipur(RPR)', 'New Delhi(DEL)', 'Air India'),
(105, 'Raipur(RPR)', 'New Delhi(DEL)', 'Indigo'),
(106, 'Raipur(RPR)', 'New Delhi(DEL)', 'GoAir'),
(107, 'Raipur(RPR)', 'Mumbai(BOM)', 'Spicejet'),
(108, 'Raipur(RPR)', 'Mumbai(BOM)', 'Air Asia'),
(109, 'Raipur(RPR)', 'Mumbai(BOM)', 'Indigo'),
(110, 'Raipur(RPR)', 'Pune(PNQ)', 'GoAir'),
(111, 'Raipur(RPR)', 'Pune(PNQ)', 'Air India'),
(112, 'Raipur(RPR)', 'Pune(PNQ)', 'Spicejet'),
(113, 'Raipur(RPR)', 'Goa(GOI)', 'Indigo'),
(114, 'Raipur(RPR)', 'Goa(GOI)', 'Air Asia'),
(115, 'Raipur(RPR)', 'Goa(GOI)', 'Spicejet'),
(116, 'Raipur(RPR)', 'Kolkata(CCU)', 'Indigo'),
(117, 'Raipur(RPR)', 'Kolkata(CCU)', 'Air India'),
(118, 'Raipur(RPR)', 'Kolkata(CCU)', 'Air Asia'),
(119, 'Raipur(RPR)', 'Banglore(BLR)', 'GoAir'),
(120, 'Raipur(RPR)', 'Banglore(BLR)', 'Spicejet'),
(130, 'Raipur(RPR)', 'Banglore(BLR)', 'Indigo'),
(131, 'Banglore(BLR)', 'Allahabad(IXD)', 'Indigo'),
(132, 'Banglore(BLR)', 'Allahabad(IXD)', 'Spicejet'),
(133, 'Banglore(BLR)', 'Allahabad(IXD)', 'Air India'),
(134, 'Kolkata(CCU)', 'Allahabad(IXD)', 'GoAir'),
(135, 'Kolkata(CCU)', 'Allahabad(IXD)', 'Air Asia'),
(136, 'Kolkata(CCU)', 'Allahabad(IXD)', 'Air India'),
(137, 'Goa(GOI)', 'Allahabad(IXD)', 'Spicejet'),
(138, 'Goa(GOI)', 'Allahabad(IXD)', 'GoAir'),
(139, 'Goa(GOI)', 'Allahabad(IXD)', 'Air Asia'),
(140, 'New Delhi(DEL)', 'Allahabad(IXD)', 'Go First'),
(141, 'New Delhi(DEL)', 'Allahabad(IXD)', 'Vistara'),
(142, 'New Delhi(DEL)', 'Allahabad(IXD)', 'Air Asia'),
(143, 'Mumbai(BOM)', 'Allahabad(IXD)', 'Vistara'),
(144, 'Mumbai(BOM)', 'Allahabad(IXD)', 'Air India'),
(145, 'Mumbai(BOM)', 'Allahabad(IXD)', 'GoAir'),
(146, 'Pune(PNQ)', 'Allahabad(IXD)', 'Air Asia'),
(147, 'Pune(PNQ)', 'Allahabad(IXD)', 'Indigo'),
(148, 'Pune(PNQ)', 'Allahabad(IXD)', 'Air India'),
(149, 'Chennai(MAA)', 'Allahabad(IXD)', 'Air Asia'),
(150, 'Chennai(MAA)', 'Allahabad(IXD)', 'GoAir'),
(151, 'Chennai(MAA)', 'Allahabad(IXD)', 'Spicejet'),
(176, 'Ahmedabad(AMD)', 'Mumbai(BOM)', 'Air India'),
(177, 'Ahmedabad(AMD)', 'Mumbai(BOM)', 'Indigo'),
(178, 'Ahmedabad(AMD)', 'Mumbai(BOM)', 'Air Asia'),
(179, 'Ahmedabad(AMD)', 'New Delhi(DEL)', 'Spicejet'),
(180, 'Ahmedabad(AMD)', 'New Delhi(DEL)', 'Air India'),
(181, 'Ahmedabad(AMD)', 'New Delhi(DEL)', 'Indigo'),
(182, 'Ahmedabad(AMD)', 'Goa(GOI)', 'Indigo'),
(183, 'Ahmedabad(AMD)', 'Goa(GOI)', 'Spicejet'),
(184, 'Ahmedabad(AMD)', 'Goa(GOI)', 'Go First'),
(185, 'Ahmedabad(AMD)', 'Pune(PNQ)', 'Air Asia'),
(186, 'Ahmedabad(AMD)', 'Pune(PNQ)', 'Go First'),
(187, 'Ahmedabad(AMD)', 'Pune(PNQ)', 'Spicejet'),
(188, 'Ahmedabad(AMD)', 'Kolkata(CCU)', 'GoAir'),
(189, 'Ahmedabad(AMD)', 'Kolkata(CCU)', 'Air Asia'),
(190, 'Ahmedabad(AMD)', 'Kolkata(CCU)', 'Air India'),
(191, 'Ahmedabad(AMD)', 'Banglore(BLR)', 'Spicejet'),
(192, 'Ahmedabad(AMD)', 'Banglore(BLR)', 'Go First'),
(193, 'Ahmedabad(AMD)', 'Banglore(BLR)', 'Air India'),
(194, 'Ahmedabad(AMD)', 'Chennai(MAA)', 'Indigo'),
(195, 'Ahmedabad(AMD)', 'Chennai(MAA)', 'Vistara'),
(196, 'Ahmedabad(AMD)', 'Chennai(MAA)', 'Air Asia'),
(197, 'Ahmedabad(AMD)', 'Raipur(RPR)', 'Indigo'),
(198, 'Ahmedabad(AMD)', 'Raipur(RPR)', 'Indigo'),
(199, 'Ahmedabad(AMD)', 'Raipur(RPR)', 'Air India');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
