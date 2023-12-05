-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2023 at 08:45 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `techdata`
--

-- --------------------------------------------------------

--
-- Table structure for table `casingcoolers`
--

CREATE TABLE `casingcoolers` (
  `CoolerID` int(11) NOT NULL,
  `Brand` varchar(50) DEFAULT NULL,
  `Model` varchar(50) DEFAULT NULL,
  `NoiseLevel` decimal(4,2) DEFAULT NULL,
  `AirFlow` int(11) DEFAULT NULL,
  `CoolerType` varchar(20) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `Warranty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `casingcoolers`
--

INSERT INTO `casingcoolers` (`CoolerID`, `Brand`, `Model`, `NoiseLevel`, `AirFlow`, `CoolerType`, `price`, `Warranty`) VALUES
(1, 'Noctua', 'NH-D15', 24.60, 82, 'Air', 12000.00, 2),
(2, 'Corsair', 'H100i RGB Platinum', 37.00, 75, 'Liquid', 9500.00, 3),
(3, 'Cooler Master', 'Hyper 212 RGB', 26.00, 57, 'Air', 6000.00, 5),
(4, 'NZXT', 'Kraken X63', 36.00, 98, 'Liquid', 11000.00, 3),
(5, 'Arctic', 'Freezer 34 eSports DUO', 0.50, 54, 'Air', 2500.00, 2),
(6, 'Deepcool', 'GAMMAXX 400', 28.10, 74, 'Air', 3500.00, 3),
(7, 'be quiet!', 'Dark Rock Pro 4', 24.30, 50, 'Air', 9000.00, 2),
(8, 'Thermaltake', 'Water 3.0 360 ARGB Sync', 32.40, 79, 'Liquid', 13000.00, 5),
(9, 'Scythe', 'NINJA 5', 22.80, 67, 'Air', 7500.00, 3),
(10, 'EKWB', 'EK-AIO 360 D-RGB', 30.40, 77, 'Liquid', 14000.00, 2),
(11, 'Noctua', 'NH-U12S', 22.40, 55, 'Air', 5500.00, 3),
(12, 'Cooler Master', 'MasterLiquid ML240R RGB', 30.00, 66, 'Liquid', 9800.00, 5),
(13, 'ARCTIC', 'Liquid Freezer II 240', 24.50, 56, 'Liquid', 10500.00, 2),
(14, 'Fractal Design', 'Celsius+ S36 Prisma', 32.20, 87, 'Liquid', 12500.00, 3),
(15, 'ID-COOLING', 'AURAFLOW X 240', 32.50, 74, 'Liquid', 8500.00, 2),
(16, 'Thermalright', 'Le Grand Macho RT', 23.50, 73, 'Air', 8000.00, 5),
(17, 'EVGA', 'CLC 280', 39.50, 113, 'Liquid', 10500.00, 3),
(18, 'Noctua', 'NH-U14S', 24.60, 82, 'Air', 6500.00, 2),
(19, 'Cooler Master', 'MasterAir MA410M', 31.00, 53, 'Air', 5800.00, 3),
(20, 'NZXT', 'Kraken Z73', 33.00, 98, 'Liquid', 15000.00, 2),
(21, 'be quiet!', 'Dark Rock 4', 21.40, 60, 'Air', 7000.00, 5),
(22, 'Corsair', 'iCUE H150i Elite Capellix', 37.00, 75, 'Liquid', 14500.00, 3),
(23, 'ID-COOLING', 'ZOOMFLOW 240X SNOW', 28.00, 62, 'Liquid', 7800.00, 2),
(24, 'Arctic', 'Freezer 50', 24.50, 56, 'Air', 6500.00, 3),
(25, 'Thermaltake', 'Riing Silent 12 Pro', 20.10, 53, 'Air', 4500.00, 2);

-- --------------------------------------------------------

--
-- Table structure for table `gpus`
--

CREATE TABLE `gpus` (
  `GPU_ID` int(11) NOT NULL,
  `Brand` varchar(50) DEFAULT NULL,
  `Model` varchar(50) DEFAULT NULL,
  `Chip` varchar(50) DEFAULT NULL,
  `Memory` varchar(20) DEFAULT NULL,
  `GPU_Clock` float DEFAULT NULL,
  `Memory_Clock` float DEFAULT NULL,
  `Warranty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gpus`
--

INSERT INTO `gpus` (`GPU_ID`, `Brand`, `Model`, `Chip`, `Memory`, `GPU_Clock`, `Memory_Clock`, `Warranty`) VALUES
(1, 'NVIDIA', 'GeForce RTX 3080', 'GA102', '10GB GDDR6X', 1440, 19000, 3),
(2, 'AMD', 'Radeon RX 6800 XT', 'Navi 21', '16GB GDDR6', 2015, 16000, 2),
(3, 'NVIDIA', 'GeForce RTX 3070', 'GA104', '8GB GDDR6', 1500, 14000, 4),
(4, 'AMD', 'Radeon RX 6700 XT', 'Navi 22', '12GB GDDR6', 2424, 16000, 3),
(5, 'NVIDIA', 'GeForce RTX 3060 Ti', 'GA104', '8GB GDDR6', 1410, 14000, 2),
(6, 'AMD', 'Radeon RX 6600 XT', 'Navi 23', '8GB GDDR6', 2359, 16000, 3),
(7, 'NVIDIA', 'GeForce RTX 2080 Ti', 'TU102', '11GB GDDR6', 1545, 14000, 2),
(8, 'AMD', 'Radeon RX 6700', 'Navi 22', '6GB GDDR6', 2424, 16000, 4),
(9, 'NVIDIA', 'GeForce GTX 1660 Super', 'TU116', '6GB GDDR5', 1530, 14000, 3),
(10, 'AMD', 'Radeon RX 5600 XT', 'Navi 10', '6GB GDDR6', 1375, 12000, 2),
(11, 'NVIDIA', 'GeForce RTX 3060', 'GA106', '12GB GDDR6', 1320, 15000, 3),
(12, 'AMD', 'Radeon RX 5500 XT', 'Navi 14', '8GB GDDR6', 1845, 14000, 2),
(13, 'NVIDIA', 'GeForce GTX 1080 Ti', 'GP102', '11GB GDDR5X', 1481, 11000, 4),
(14, 'AMD', 'Radeon RX 5700 XT', 'Navi 10', '8GB GDDR6', 1605, 14000, 2),
(15, 'NVIDIA', 'GeForce GTX 1660', 'TU116', '6GB GDDR5', 1530, 14000, 3),
(16, 'AMD', 'Radeon RX 590', 'Polaris 30', '8GB GDDR5', 1469, 8000, 2),
(17, 'AMD', 'Radeon RX Vega 56', 'Vega 10', '8GB HBM2', 1156, 1600, 4),
(18, 'NVIDIA', 'GeForce RTX 3090', 'GA102', '24GB GDDR6X', 1695, 19500, 3),
(19, 'AMD', 'Radeon RX 6900 XT', 'Navi 21', '16GB GDDR6', 2015, 16000, 2),
(20, 'NVIDIA', 'GeForce RTX 3080 Ti', 'GA102', '12GB GDDR6X', 1665, 19000, 3),
(21, 'AMD', 'Radeon RX 6800', 'Navi 21', '16GB GDDR6', 1815, 16000, 4),
(22, 'NVIDIA', 'GeForce RTX 3070 Ti', 'GA104', '8GB GDDR6X', 1575, 19000, 2),
(23, 'AMD', 'Radeon RX 6700', 'Navi 22', '12GB GDDR6', 2424, 16000, 3),
(24, 'NVIDIA', 'GeForce RTX 3060', 'GA106', '12GB GDDR6', 1320, 15000, 2),
(25, 'AMD', 'Radeon RX 6500 XT', 'Navi 24', '4GB GDDR6', 1815, 14000, 4),
(26, 'NVIDIA', 'GeForce GTX 1050 Ti', 'GP107', '4GB GDDR5', 1290, 7000, NULL),
(27, 'AMD', 'Radeon RX 550', 'Polaris 12', '2GB GDDR5', 1183, 7000, NULL),
(28, 'NVIDIA', 'GeForce GTX 1660 Ti', 'TU116', '6GB GDDR5', 1500, 12000, NULL),
(29, 'AMD', 'Radeon RX 6700 XT', 'Navi 22', '12GB GDDR6', 2424, 16000, NULL),
(30, 'NVIDIA', 'GeForce RTX 3050 Ti', 'GA107', '4GB GDDR6', 1710, 14000, NULL),
(31, 'AMD', 'Radeon RX 6600', 'Navi 23', '8GB GDDR6', 2359, 16000, NULL),
(32, 'NVIDIA', 'GeForce GTX 1660 Super', 'TU116', '6GB GDDR5', 1530, 14000, NULL),
(33, 'AMD', 'Radeon RX 5500 XT', 'Navi 14', '8GB GDDR6', 1845, 14000, NULL),
(34, 'NVIDIA', 'GeForce RTX 2080 Super', 'TU104', '8GB GDDR6', 1650, 15500, NULL),
(35, 'AMD', 'Radeon RX 5600 XT', 'Navi 10', '6GB GDDR6', 1375, 12000, NULL),
(36, 'NVIDIA', 'GeForce GTX 1050', 'GP107', '2GB GDDR5', 1354, 7000, NULL),
(37, 'AMD', 'Radeon RX 5300', 'Navi 14', '3GB GDDR5', 1448, 14000, NULL),
(38, 'NVIDIA', 'GeForce GTX 1660', 'TU116', '6GB GDDR5', 1530, 14000, NULL),
(39, 'AMD', 'Radeon RX 560', 'Polaris 21', '4GB GDDR5', 1275, 7000, NULL),
(40, 'NVIDIA', 'GeForce GT 1030', 'GP108', '2GB GDDR5', 1468, 6000, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `laptops`
--

CREATE TABLE `laptops` (
  `LaptopID` int(11) NOT NULL,
  `Model` varchar(50) DEFAULT NULL,
  `Storage` varchar(20) DEFAULT NULL,
  `Processor` varchar(30) DEFAULT NULL,
  `RAM` int(11) DEFAULT NULL,
  `Dimension` varchar(20) DEFAULT NULL,
  `Display` varchar(20) DEFAULT NULL,
  `Battery` varchar(20) DEFAULT NULL,
  `LaptopType` varchar(20) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `Warranty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `laptops`
--

INSERT INTO `laptops` (`LaptopID`, `Model`, `Storage`, `Processor`, `RAM`, `Dimension`, `Display`, `Battery`, `LaptopType`, `price`, `Warranty`) VALUES
(1, 'Dell XPS 13', '512GB SSD', 'Intel Core i7', 16, '11.9\" x 7.8\" x 0.6\"', '13.3\" FHD', '52 Whr', 'Ultrabook', 120000.00, 2),
(2, 'MacBook Air', '256GB SSD', 'Apple M1', 8, '11.9\" x 8.4\" x 0.6\"', '13.3\" Retina', '49.9 Whr', 'Ultrabook', 110000.00, 3),
(3, 'HP Spectre x360', '1TB SSD', 'Intel Core i7', 16, '12.1\" x 7.7\" x 0.7\"', '13.3\" FHD', '60.9 Whr', '2-in-1 Convertible', 130000.00, 2),
(4, 'Lenovo ThinkPad X1 Carbon', '512GB SSD', 'Intel Core i7', 16, '12.7\" x 8.6\" x 0.6\"', '14\" FHD', '51 Whr', 'Business', 125000.00, 4),
(5, 'Asus ROG Zephyrus G14', '1TB SSD', 'AMD Ryzen 9', 32, '12.8\" x 8.7\" x 0.7\"', '14\" QHD', '76 Whr', 'Gaming', 140000.00, 3),
(6, 'Acer Swift 3', '512GB SSD', 'AMD Ryzen 7', 16, '12.7\" x 8.6\" x 0.6\"', '14\" FHD', '48 Whr', 'Ultrabook', 90000.00, 2),
(7, 'Microsoft Surface Laptop 4', '256GB SSD', 'Intel Core i5', 8, '12.1\" x 8.8\" x 0.6\"', '13.5\" PixelSense', '47.4 Whr', 'Ultrabook', 105000.00, 3),
(8, 'Dell Inspiron 15 5000', '1TB HDD', 'Intel Core i5', 8, '14.0\" x 9.2\" x 0.7\"', '15.6\" FHD', '42 Whr', 'Laptop', 75000.00, 4),
(9, 'LG Gram 17', '512GB SSD', 'Intel Core i7', 16, '15\" x 10.3\" x 0.7\"', '17\" WQXGA', '80 Whr', 'Ultrabook', 150000.00, 2),
(10, 'Razer Blade 15', '1TB SSD', 'Intel Core i7', 16, '13.9\" x 9.3\" x 0.7\"', '15.6\" FHD', '65 Whr', 'Gaming', 145000.00, 3),
(11, 'HP Envy x360', '512GB SSD', 'AMD Ryzen 5', 8, '14.1\" x 9.1\" x 0.7\"', '15.6\" FHD', '51 Whr', '2-in-1 Convertible', 95000.00, 2),
(12, 'Dell G3 15', '512GB SSD', 'Intel Core i5', 8, '14.4\" x 10\" x 0.9\"', '15.6\" FHD', '51 Whr', 'Gaming', 85000.00, 2),
(13, 'Acer Predator Helios 300', '512GB SSD', 'Intel Core i7', 16, '14.3\" x 10\" x 0.9\"', '15.6\" FHD', '59 Whr', 'Gaming', 135000.00, 2),
(14, 'Microsoft Surface Pro 7', '256GB SSD', 'Intel Core i5', 8, '11.5\" x 7.9\" x 0.3\"', '12.3\" PixelSense', '43.2 Whr', '2-in-1 Tablet', 100000.00, 2),
(15, 'Lenovo Legion 5', '512GB SSD', 'AMD Ryzen 7', 16, '14.3\" x 10.2\" x 1\"', '15.6\" FHD', '60 Whr', 'Gaming', 110000.00, 2),
(16, 'MSI GS66 Stealth', '1TB SSD', 'Intel Core i9', 32, '15.6\" x 10.6\" x 0.7\"', '15.6\" FHD', '99 Whr', 'Gaming', 160000.00, 2),
(17, 'MSI Prestige 14', '512GB SSD', 'Intel Core i7', 16, '12.6\" x 8.5\" x 0.6\"', '14\" UHD', '52 Whr', 'Creator', 115000.00, 2),
(18, 'MSI Modern 14', '512GB SSD', 'Intel Core i5', 8, '12.7\" x 8.7\" x 0.6\"', '14\" FHD', '50 Whr', 'Business', 95000.00, 2),
(19, 'ASUS VivoBook S15', '512GB SSD', 'Intel Core i5', 8, '14.1\" x 9.1\" x 0.7\"', '15.6\" FHD', '47 Whr', 'Ultrabook', 80000.00, 2),
(20, 'ASUS VivoBook Flip 14', '256GB SSD', 'AMD Ryzen 7', 16, '12.9\" x 8.9\" x 0.7\"', '14\" FHD Touchscreen', '54 Whr', '2-in-1 Convertible', 92000.00, 2),
(21, 'MacBook Pro 13-inch', '512GB SSD', 'Apple M1 Pro', 16, '12.4\" x 8.7\" x 0.6\"', '13.3\" Retina', '58 Whr', 'Professional', 130000.00, 2),
(22, 'MacBook Pro 16-inch', '1TB SSD', 'Intel Core i9', 32, '14.1\" x 9.7\" x 0.7\"', '16\" Retina', '100 Whr', 'Professional', 180000.00, 2),
(23, 'HP Elite Dragonfly', '512GB SSD', 'Intel Core i5', 16, '11.9\" x 7.8\" x 0.6\"', '13.3\" FHD', '38 Whr', 'Ultrabook', 135000.00, 2),
(24, 'Lenovo Yoga C940', '1TB SSD', 'Intel Core i7', 16, '12.6\" x 8.5\" x 0.6\"', '14\" UHD', '60 Whr', '2-in-1 Convertible', 140000.00, 2),
(25, 'Acer Aspire 5', '256GB SSD', 'AMD Ryzen 5', 8, '14.3\" x 9.5\" x 0.7\"', '15.6\" FHD', '48 Whr', 'Laptop', 70000.00, 2);

-- --------------------------------------------------------

--
-- Table structure for table `monitors`
--

CREATE TABLE `monitors` (
  `Model` varchar(50) DEFAULT NULL,
  `Dimension` varchar(20) DEFAULT NULL,
  `AudioFeature` varchar(50) DEFAULT NULL,
  `Resolution` varchar(20) DEFAULT NULL,
  `Display` varchar(20) DEFAULT NULL,
  `RefreshRate` int(11) DEFAULT NULL,
  `AspectRatio` varchar(10) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `Warranty` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `monitors`
--

INSERT INTO `monitors` (`Model`, `Dimension`, `AudioFeature`, `Resolution`, `Display`, `RefreshRate`, `AspectRatio`, `price`, `Warranty`) VALUES
('Dell U2419H', '21.2\" x 12.7\" x 1.7\"', 'Built-in speakers', '1920 x 1080', 'LED', 60, '16:9', 18000.00, '3 years'),
('ASUS VG279Q', '24.1\" x 14.3\" x 2.0\"', 'Stereo speakers, Audio Jack', '1920 x 1080', 'IPS', 144, '16:9', 25000.00, '3 years'),
('Samsung Odyssey G7', '32.2\" x 17.8\" x 4.4\"', '2 x 5W speakers', '2560 x 1440', 'QLED', 240, '16:9', 60000.00, '3 years'),
('LG 27UK650-W', '24.1\" x 16.7\" x 8.0\"', 'Built-in speakers', '3840 x 2160', 'IPS', 60, '16:9', 35000.00, '3 years'),
('Acer Predator X34', '32.2\" x 14.8\" x 4.1\"', 'DTS Sound, 2 x 7W speakers', '3440 x 1440', 'Curved LED', 120, '21:9', 90000.00, '3 years'),
('ViewSonic VX3276-2K-MHD', '28.1\" x 19.4\" x 7.3\"', 'Dual speakers', '2560 x 1440', 'IPS', 75, '16:9', 28000.00, '3 years'),
('AOC CQ32G1', '28.1\" x 20.6\" x 9.1\"', '2 x 2W speakers', '2560 x 1440', 'Curved LED', 144, '16:9', 40000.00, '3 years'),
('BenQ EX3501R', '32.8\" x 19.5\" x 8.4\"', '2.1 channel speakers', '3440 x 1440', 'Curved LED', 100, '21:9', 75000.00, '3 years'),
('HP Pavilion 22cwa', '19.6\" x 15.1\" x 8.4\"', 'No built-in speakers', '1920 x 1080', 'IPS', 60, '16:9', 12000.00, '3 years'),
('Dell S2719DGF', '24.1\" x 15.5\" x 7.3\"', 'No built-in speakers', '2560 x 1440', 'LED', 155, '16:9', 32000.00, '3 years'),
('ASUS ROG Swift PG279Q', '27.0\" x 14.4\" x 2.0\"', '2 x 2W speakers', '2560 x 1440', 'IPS', 165, '16:9', 45000.00, '3 years'),
('MSI Optix MAG271CQR', '28.6\" x 20.7\" x 8.9\"', '2 x 5W speakers', '2560 x 1440', 'Curved LED', 144, '16:9', 38000.00, '3 years'),
('Dell Alienware AW3418DW', '32.0\" x 14.2\" x 4.6\"', 'No built-in speakers', '3440 x 1440', 'Curved LED', 120, '21:9', 100000.00, '3 years'),
('ViewSonic XG2402', '22.3\" x 17.1\" x 9.4\"', 'No built-in speakers', '1920 x 1080', 'TN', 144, '16:9', 22000.00, '3 years'),
('LG 34WK650-W', '32.5\" x 14.6\" x 1.8\"', '2 x 5W speakers', '2560 x 1080', 'IPS', 75, '21:9', 42000.00, '3 years'),
('Dell S2419HGF', '21.9\" x 12.4\" x 2.5\"', '2 x 2W speakers', '1920 x 1080', 'LED', 144, '16:9', 20000.00, '3 years'),
('ASUS TUF Gaming VG27AQ', '24.4\" x 21.3\" x 8.3\"', '2 x 2W speakers', '2560 x 1440', 'IPS', 165, '16:9', 35000.00, '3 years'),
('Samsung CRG9', '47.4\" x 15.0\" x 20.7', 'No built-in speakers', '5120 x 1440', 'Curved QLED', 120, '32:9', 120000.00, '3 years'),
('AOC CQ32G2E', '28.7\" x 20.9\" x 8.0\"', '2 x 2W speakers', '2560 x 1440', 'Curved LED', 144, '16:9', 45000.00, '3 years'),
('BenQ PD3200U', '29.1\" x 19.1\" x 8.4\"', '2 x 5W speakers', '3840 x 2160', 'IPS', 60, '16:9', 50000.00, '3 years');

-- --------------------------------------------------------

--
-- Table structure for table `motherboards`
--

CREATE TABLE `motherboards` (
  `MotherboardID` int(11) NOT NULL,
  `Model` varchar(50) DEFAULT NULL,
  `SocketType` varchar(20) DEFAULT NULL,
  `FormFactor` varchar(20) DEFAULT NULL,
  `RAMSlots` int(11) DEFAULT NULL,
  `Chipset` varchar(30) DEFAULT NULL,
  `Ports` varchar(50) DEFAULT NULL,
  `ExtraFeatures` varchar(100) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `Warranty` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `motherboards`
--

INSERT INTO `motherboards` (`MotherboardID`, `Model`, `SocketType`, `FormFactor`, `RAMSlots`, `Chipset`, `Ports`, `ExtraFeatures`, `price`, `Warranty`) VALUES
(1, 'ASUS ROG Strix B450-F Gaming', 'AM4', 'ATX', 4, 'AMD B450', 'USB 3.1, HDMI, DisplayPort, M.2', 'RGB Lighting, PCIe 3.0', 20000.00, '5 years'),
(2, 'Gigabyte Z390 AORUS PRO', 'LGA 1151', 'ATX', 4, 'Intel Z390', 'USB 3.1, HDMI, DisplayPort, M.2', 'Wi-Fi, RGB Fusion', 35000.00, '5 years'),
(3, 'MSI B450 TOMAHAWK MAX', 'AM4', 'ATX', 4, 'AMD B450', 'USB 3.1, HDMI, DVI-D, M.2', 'Audio Boost, DDR4 Boost', 15000.00, '5 years'),
(4, 'ASRock B550 Phantom Gaming 4', 'AM4', 'ATX', 4, 'AMD B550', 'USB 3.2, HDMI, DisplayPort, M.2', 'Steel Slot, 2.5 Gigabit LAN', 25000.00, '5 years'),
(5, 'ASUS Prime Z390-A', 'LGA 1151', 'ATX', 4, 'Intel Z390', 'USB 3.1, HDMI, DisplayPort, M.2', 'Fan Xpert 4, Aura Sync', 30000.00, '5 years'),
(6, 'Gigabyte B550 AORUS Elite', 'AM4', 'ATX', 4, 'AMD B550', 'USB 3.2, HDMI, DisplayPort, PCIe 4.0', 'Smart Fan 5, Q-Flash Plus', 20000.00, '5 years'),
(7, 'MSI MAG B550 TOMAHAWK', 'AM4', 'ATX', 4, 'AMD B550', 'USB 3.2, HDMI, DisplayPort, PCIe 4.0', 'Pre-installed I/O Shield, Mystic Light', 28000.00, '5 years'),
(8, 'ASRock H470 Steel Legend', 'LGA 1200', 'ATX', 4, 'Intel H470', 'USB 3.2, HDMI, DisplayPort, PCIe 3.0', 'Steel Slot, Polychrome RGB', 25000.00, '5 years'),
(9, 'ASUS TUF B450-PLUS Gaming', 'AM4', 'ATX', 4, 'AMD B450', 'USB 3.1, HDMI, DVI-D, M.2', 'TUF Protection, Fan Xpert 2+', 18000.00, '5 years'),
(10, 'Gigabyte X570 AORUS Elite', 'AM4', 'ATX', 4, 'AMD X570', 'USB 3.2, HDMI, DisplayPort, PCIe 4.0', '12+2 Phases Digital VRM, RGB Fusion', 30000.00, '5 years'),
(11, 'MSI MPG Z490 Gaming Edge WiFi', 'LGA 1200', 'ATX', 4, 'Intel Z490', 'USB 3.2, HDMI, DisplayPort, PCIe 3.0', 'Wi-Fi 6, Mystic Light', 35000.00, '5 years'),
(12, 'ASRock B450M PRO4', 'AM4', 'Micro ATX', 4, 'AMD B450', 'USB 3.1, HDMI, DVI-D, M.2', 'ELNA Audio Caps, Polychrome RGB', 12000.00, '5 years'),
(13, 'ASUS ROG Crosshair VIII Hero', 'AM4', 'ATX', 4, 'AMD X570', 'USB 3.2, HDMI, DisplayPort, PCIe 4.0', 'Wi-Fi 6, Aura Sync', 45000.00, '5 years'),
(14, 'Gigabyte B365M DS3H', 'LGA 1151', 'Micro ATX', 4, 'Intel B365', 'USB 3.1, HDMI, DVI-D, PCIe 3.0', 'Ultra Durable, Smart Fan 5', 15000.00, '5 years'),
(15, 'MSI B450 Gaming Plus MAX', 'AM4', 'ATX', 4, 'AMD B450', 'USB 3.1, HDMI, DVI-D, PCIe 3.0', 'Audio Boost, DDR4 Boost', 18000.00, '5 years'),
(16, 'ASUS ROG Crosshair VII Hero', 'AM4', 'ATX', 4, 'AMD X470', 'USB 3.1, HDMI, DisplayPort, PCIe 3.0', 'Wi-Fi 5, Aura Sync', 40000.00, '5 years'),
(17, 'Gigabyte B450 AORUS M', 'AM4', 'Micro ATX', 4, 'AMD B450', 'USB 3.1, HDMI, DVI-D, M.2', 'RGB Fusion, Smart Fan 5', 12000.00, '5 years'),
(18, 'MSI MPG B550 Gaming Edge WiFi', 'AM4', 'ATX', 4, 'AMD B550', 'USB 3.2, HDMI, DisplayPort, PCIe 4.0', 'Wi-Fi 6, Mystic Light', 35000.00, '5 years'),
(19, 'ASRock Z490 Phantom Gaming 4', 'LGA 1200', 'ATX', 4, 'Intel Z490', 'USB 3.2, HDMI, DisplayPort, PCIe 3.0', 'Steel Legend, Polychrome RGB', 30000.00, '5 years'),
(20, 'ASUS Prime X570-P', 'AM4', 'ATX', 4, 'AMD X570', 'USB 3.2, HDMI, DisplayPort, PCIe 4.0', 'Fan Xpert 4, Aura Sync', 25000.00, '5 years'),
(21, 'Gigabyte H410M H', 'LGA 1200', 'Micro ATX', 2, 'Intel H410', 'USB 3.2, HDMI, PCIe 3.0', 'Ultra Durable, Smart Fan 5', 12000.00, '5 years'),
(22, 'MSI MAG B460 TOMAHAWK', 'LGA 1200', 'ATX', 4, 'Intel B460', 'USB 3.2, HDMI, DisplayPort, PCIe 3.0', 'Pre-installed I/O Shield, Mystic Light', 30000.00, '5 years'),
(23, 'ASRock B365 Phantom Gaming 4', 'LGA 1151', 'ATX', 4, 'Intel B365', 'USB 3.1, HDMI, DisplayPort, PCIe 3.0', 'Steel Slot, Polychrome RGB', 15000.00, '5 years'),
(24, 'ASUS TUF B360M-PLUS Gaming S', 'LGA 1151', 'Micro ATX', 4, 'Intel B360', 'USB 3.1, HDMI, DisplayPort, PCIe 3.0', 'TUF Protection, Fan Xpert 2+', 18000.00, '5 years'),
(25, 'Gigabyte X299 AORUS Ultra Gaming', 'LGA 2066', 'ATX', 8, 'Intel X299', 'USB 3.1, HDMI, DisplayPort, PCIe 3.0', 'RGB Fusion, Smart Fan 5', 45000.00, '5 years');

-- --------------------------------------------------------

--
-- Table structure for table `powersupplies`
--

CREATE TABLE `powersupplies` (
  `PowerSupplyID` int(11) NOT NULL,
  `Model` varchar(50) DEFAULT NULL,
  `TotalWatt` int(11) DEFAULT NULL,
  `Certification` varchar(20) DEFAULT NULL,
  `Efficiency` varchar(20) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `Warranty` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `powersupplies`
--

INSERT INTO `powersupplies` (`PowerSupplyID`, `Model`, `TotalWatt`, `Certification`, `Efficiency`, `price`, `Warranty`) VALUES
(1, 'Corsair RM750x', 750, '80 PLUS Gold', '92%', 15000.00, '5 years'),
(2, 'EVGA SuperNOVA 650 G5', 650, '80 PLUS Gold', '90%', 12000.00, '5 years'),
(3, 'Seasonic Focus GX-850', 850, '80 PLUS Gold', '90%', 18000.00, '5 years'),
(4, 'Thermaltake Toughpower Grand RGB 850W', 850, '80 PLUS Gold', '90%', 20000.00, '5 years'),
(5, 'be quiet! Straight Power 11 650W', 650, '80 PLUS Gold', '93%', 14000.00, '5 years'),
(6, 'NZXT C750', 750, '80 PLUS Gold', '90%', 16000.00, '5 years'),
(7, 'Cooler Master MWE Gold 750', 750, '80 PLUS Gold', '90%', 13000.00, '5 years'),
(8, 'SilverStone Strider Platinum 1000W', 1000, '80 PLUS Platinum', '90%', 25000.00, '5 years'),
(9, 'Antec Earthwatts Gold Pro 750W', 750, '80 PLUS Gold', '92%', 16000.00, '5 years'),
(10, 'Rosewill CAPSTONE 750M', 750, '80 PLUS Gold', '92%', 17000.00, '5 years'),
(11, 'Fractal Design Ion+ 860P', 860, '80 PLUS Platinum', '90%', 22000.00, '5 years'),
(12, 'Thermaltake Toughpower PF1 ARGB 1200W', 1200, '80 PLUS Platinum', '94%', 30000.00, '5 years'),
(13, 'Cooler Master MasterWatt 650', 650, '80 PLUS Bronze', '85%', 9000.00, '5 years'),
(14, 'EVGA SuperNOVA 850 T2', 850, '80 PLUS Titanium', '94%', 28000.00, '5 years'),
(15, 'FSP Dagger Pro 650W', 650, '80 PLUS Gold', '90%', 10000.00, '5 years'),
(16, 'EVGA SuperNOVA 750 G3', 750, '80 PLUS Gold', '90', 11000.00, '5 years'),
(17, 'Corsair CX550M', 550, '80 PLUS Bronze', '85', 8000.00, '5 years'),
(18, 'Seasonic Prime Ultra Titanium 850W', 850, '80 PLUS Titanium', '94', 35000.00, '5 years'),
(19, 'Thermaltake Smart RGB 700W', 700, '80 PLUS', '87', 9000.00, '5 years'),
(20, 'NZXT E850', 850, '80 PLUS Gold', '90', 18000.00, '5 years'),
(21, 'be quiet! Dark Power Pro 12 1200W', 1200, '80 PLUS Titanium', '94', 40000.00, '5 years'),
(22, 'Cooler Master MWE White V2 600', 600, '80 PLUS', '85', 7000.00, '5 years'),
(23, 'SilverStone SFX SX650-G', 650, '80 PLUS Gold', '90', 8000.00, '5 years'),
(24, 'Antec HCG750 Gold', 750, '80 PLUS Gold', '92', 10000.00, '5 years'),
(25, 'Rosewill Glacier Series 700M', 700, '80 PLUS Bronze', '85', 6000.00, '5 years');

-- --------------------------------------------------------

--
-- Table structure for table `processors`
--

CREATE TABLE `processors` (
  `ProcessorID` int(11) NOT NULL,
  `Brand` varchar(50) DEFAULT NULL,
  `Model` varchar(50) DEFAULT NULL,
  `Threads` int(11) DEFAULT NULL,
  `Cores` int(11) DEFAULT NULL,
  `CacheSize` varchar(20) DEFAULT NULL,
  `ClockSpeed` float DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `Warranty` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `processors`
--

INSERT INTO `processors` (`ProcessorID`, `Brand`, `Model`, `Threads`, `Cores`, `CacheSize`, `ClockSpeed`, `price`, `Warranty`) VALUES
(1, 'Intel', 'Core i9-11900K', 16, 8, '16MB', 3.5, 40000.00, '3 years'),
(2, 'AMD', 'Ryzen 9 5950X', 32, 16, '64MB', 3.4, 45000.00, '3 years'),
(3, 'Intel', 'Core i7-11700K', 16, 8, '16MB', 3.6, 35000.00, '3 years'),
(4, 'AMD', 'Ryzen 7 5800X', 16, 8, '32MB', 3.8, 38000.00, '3 years'),
(5, 'Intel', 'Core i5-11600K', 12, 6, '12MB', 3.9, 25000.00, '3 years'),
(6, 'AMD', 'Ryzen 5 5600X', 12, 6, '32MB', 3.7, 20000.00, '3 years'),
(7, 'Intel', 'Core i9-10900K', 20, 10, '20MB', 3.7, 30000.00, '3 years'),
(8, 'AMD', 'Ryzen 9 5900X', 24, 12, '64MB', 3.7, 42000.00, '3 years'),
(9, 'Intel', 'Core i7-10700K', 16, 8, '16MB', 3.8, 28000.00, '3 years'),
(10, 'AMD', 'Ryzen 7 3700X', 16, 8, '32MB', 3.6, 18000.00, '3 years'),
(11, 'Intel', 'Core i5-10600K', 12, 6, '12MB', 4.1, 20000.00, '3 years'),
(12, 'AMD', 'Ryzen 5 3600X', 12, 6, '32MB', 3.8, 15000.00, '3 years'),
(13, 'Intel', 'Core i9-9900K', 16, 8, '16MB', 3.6, 32000.00, '3 years'),
(14, 'AMD', 'Ryzen 9 3900X', 24, 12, '64MB', 3.8, 35000.00, '3 years'),
(15, 'Intel', 'Core i7-9700K', 8, 8, '12MB', 3.6, 25000.00, '3 years'),
(16, 'AMD', 'Ryzen 7 4700G', 16, 8, '16MB', 3.6, 16000.00, '3 years'),
(17, 'Intel', 'Core i7-12700K', 20, 10, '20MB', 4, 50000.00, '3 years'),
(18, 'AMD', 'Ryzen 9 6900X', 32, 16, '64MB', 4.2, 60000.00, '3 years'),
(19, 'Intel', 'Core i5-12600K', 16, 8, '16MB', 3.7, 28000.00, '3 years'),
(20, 'AMD', 'Ryzen 5 5500', 12, 6, '32MB', 3.5, 12000.00, '3 years'),
(21, 'Intel', 'Core i9-12900K', 24, 12, '24MB', 5.2, 80000.00, '3 years'),
(22, 'AMD', 'Ryzen 7 5800G', 16, 8, '32MB', 4, 22000.00, '3 years'),
(23, 'Intel', 'Core i7-11700F', 16, 8, '16MB', 4.4, 32000.00, '3 years'),
(24, 'AMD', 'Ryzen 5 5600G', 12, 6, '32MB', 3.9, 14000.00, '3 years'),
(25, 'Intel', 'Core i5-11400', 12, 6, '12MB', 2.6, 18000.00, '3 years');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productID`, `name`) VALUES
(1, 'Acer Predator Helios 300'),
(2, 'ASUS ROG Zephyrus G14'),
(3, 'Dell XPS 13'),
(4, 'HP Spectre x360'),
(5, 'Lenovo Legion Y540'),
(6, 'MacBook Air (M1, 2020)'),
(7, 'MSI GS65 Stealth'),
(8, 'Razer Blade 15'),
(9, 'Microsoft Surface Laptop 4'),
(10, 'LG Gram 17'),
(11, 'Dell Inspiron 14'),
(12, 'Acer Aspire 5'),
(13, 'Lenovo ThinkPad X1 Carbon'),
(14, 'ASUS VivoBook S15'),
(15, 'HP Pavilion Gaming'),
(16, 'Apple MacBook Pro (16-inch, 2019)'),
(17, 'Alienware m15 R4'),
(18, 'Gigabyte Aero 15 OLED'),
(19, 'Microsoft Surface Pro 7'),
(20, 'Lenovo Yoga C940'),
(21, 'Acer Swift 3'),
(22, 'Dell G3 15'),
(23, 'ASUS TUF Gaming A15'),
(24, 'MSI Prestige 14'),
(25, 'Huawei MateBook X Pro'),
(26, 'Dell U2419H'),
(27, 'ASUS VG279Q'),
(28, 'Samsung Odyssey G7'),
(29, 'LG 27UK650-W'),
(30, 'Acer Predator X34'),
(31, 'ViewSonic VX3276-2K-MHD'),
(32, 'AOC CQ32G1'),
(33, 'BenQ EX3501R'),
(34, 'HP Pavilion 22cwa'),
(35, 'Dell S2719DGF'),
(36, 'ASUS ROG Swift PG279Q'),
(37, 'MSI Optix MAG271CQR'),
(38, 'Dell Alienware AW3418DW'),
(39, 'ViewSonic XG2402'),
(40, 'LG 34WK650-W'),
(41, 'Dell S2419HGF'),
(42, 'ASUS TUF Gaming VG27AQ'),
(43, 'Samsung CRG9'),
(44, 'AOC CQ32G2E'),
(45, 'BenQ PD3200U'),
(46, 'NZXT Kraken X73'),
(47, 'Corsair iCUE H100i RGB Pro XT'),
(48, 'Noctua NH-D15'),
(49, 'Cooler Master Hyper 212 RGB'),
(50, 'ARCTIC Liquid Freezer II 240'),
(51, 'be quiet! Dark Rock Pro 4'),
(52, 'Deepcool Gammaxx 400'),
(53, 'Corsair H150i Elite Capellix'),
(54, 'NZXT Kraken Z73'),
(55, 'Scythe Mugen 5 Rev.B'),
(56, 'Thermaltake Water 3.0 ARGB'),
(57, 'NZXT Kraken X53'),
(58, 'Cooler Master MasterAir MA620M'),
(59, 'Noctua NH-U12S Redux-2'),
(60, 'Arctic Freezer 34 eSports Duo'),
(61, 'Corsair H115i RGB Platinum'),
(62, 'Cooler Master Hyper 212 Black Edition'),
(63, 'NZXT Kraken M22'),
(64, 'be quiet! Pure Rock 2'),
(65, 'Thermalright Macho Rev.B'),
(66, 'Corsair Vengeance LPX 16GB DDR4 3200MHz'),
(67, 'G.Skill Ripjaws V 32GB DDR4 3600MHz'),
(68, 'Crucial Ballistix 16GB DDR4 3200MHz'),
(69, 'Corsair Dominator Platinum RGB 64GB DDR4 3600MHz'),
(70, 'ADATA XPG Spectrix D60G 16GB DDR4 3200MHz'),
(71, 'Kingston HyperX Fury 8GB DDR4 2666MHz'),
(72, 'Team T-Force Delta RGB 32GB DDR4 3000MHz'),
(73, 'Patriot Viper Steel 16GB DDR4 3200MHz'),
(74, 'G.Skill Trident Z RGB 128GB DDR4 3600MHz'),
(75, 'Corsair Vengeance RGB Pro 64GB DDR4 3200MHz'),
(76, 'Crucial Ballistix RGB 32GB DDR4 3600MHz'),
(77, 'Team T-Force Vulcan Z 16GB DDR4 3200MHz'),
(78, 'HyperX Predator Black 32GB DDR4 3200MHz'),
(79, 'ADATA XPG Gammix D10 8GB DDR4 3000MHz'),
(80, 'Corsair Vengeance LPX 128GB DDR4 3200MHz'),
(81, 'G.Skill Trident Z Neo 64GB DDR4 3600MHz'),
(82, 'Crucial Ballistix MAX 32GB DDR4 4000MHz'),
(83, 'Patriot Viper 4 Blackout 16GB DDR4 3600MHz'),
(84, 'Team T-Force Xtreem ARGB 16GB DDR4 3600MHz'),
(85, 'Corsair Dominator Platinum RGB 32GB DDR4 3600MHz'),
(86, 'Samsung 970 EVO Plus 1TB NVMe SSD'),
(87, 'Crucial MX500 1TB SATA SSD'),
(88, 'Western Digital WD Black SN750 500GB NVMe SSD'),
(89, 'Seagate FireCuda 520 2TB NVMe SSD'),
(90, 'Kingston A2000 1TB NVMe SSD'),
(91, 'SanDisk Ultra 3D 2TB SATA SSD'),
(92, 'ADATA XPG SX8200 Pro 512GB NVMe SSD'),
(93, 'Toshiba X300 6TB SATA HDD'),
(94, 'Intel Optane 905P 960GB NVMe SSD'),
(95, 'Seagate Barracuda 4TB SATA HDD'),
(96, 'Corsair MP510 2TB NVMe SSD'),
(97, 'WD Blue 500GB SATA SSD'),
(98, 'Crucial P5 1TB NVMe SSD'),
(99, 'Samsung 860 EVO 2TB SATA SSD'),
(100, 'ADATA Ultimate SU800 1TB SATA SSD'),
(101, 'Crucial P2 500GB NVMe SSD'),
(102, 'Western Digital Blue SN550 1TB NVMe SSD'),
(103, 'Kingston KC600 1TB SATA SSD'),
(104, 'Samsung T7 1TB Portable SSD'),
(105, 'Seagate IronWolf Pro 8TB NAS HDD'),
(106, 'ADATA HD710 Pro 2TB Portable HDD'),
(107, 'SanDisk Extreme Pro 2TB Portable SSD'),
(108, 'Corsair MP400 4TB NVMe SSD'),
(109, 'Toshiba Canvio Basics 3TB External HDD'),
(110, 'Intel 660p 1TB NVMe SSD'),
(111, 'Corsair RM750x 750W 80 PLUS Gold'),
(112, 'EVGA SuperNOVA 650 G5 650W 80 PLUS Gold'),
(113, 'Seasonic Focus GX-850 850W 80 PLUS Gold'),
(114, 'Thermaltake Toughpower Grand RGB 850W 80 PLUS Gold'),
(115, 'be quiet! Straight Power 11 650W 80 PLUS Gold'),
(116, 'NZXT C750 750W 80 PLUS Gold'),
(117, 'Cooler Master MWE Gold 750 750W 80 PLUS Gold'),
(118, 'SilverStone Strider Platinum 1000W 80 PLUS Platinum'),
(119, 'Antec Earthwatts Gold Pro 750W 80 PLUS Gold'),
(120, 'Rosewill CAPSTONE 750M 750W 80 PLUS Gold'),
(121, 'Fractal Design Ion+ 860P 860W 80 PLUS Platinum'),
(122, 'Thermaltake Toughpower PF1 ARGB 1200W 80 PLUS Platinum'),
(123, 'Cooler Master MasterWatt 650 650W 80 PLUS Bronze'),
(124, 'EVGA SuperNOVA 850 T2 850W 80 PLUS Titanium'),
(125, 'FSP Dagger Pro 650W 80 PLUS Gold'),
(126, 'EVGA SuperNOVA 750 G3 750W 80 PLUS Gold'),
(127, 'Corsair CX550M 550W 80 PLUS Bronze'),
(128, 'Seasonic Prime Ultra Titanium 850W 80 PLUS Titanium'),
(129, 'Thermaltake Smart RGB 700W 80 PLUS'),
(130, 'NZXT E850 850W 80 PLUS Gold'),
(131, 'be quiet! Dark Power Pro 12 1200W 80 PLUS Titanium'),
(132, 'Cooler Master MWE White V2 600 80 PLUS'),
(133, 'SilverStone SFX SX650-G 650W 80 PLUS Gold'),
(134, 'Antec HCG750 Gold 750W 80 PLUS Gold'),
(135, 'Rosewill Glacier Series 700M 700W 80 PLUS Bronze'),
(136, 'NVIDIA GeForce RTX 3080'),
(137, 'AMD Radeon RX 6900 XT'),
(138, 'NVIDIA GeForce RTX 3070'),
(139, 'AMD Radeon RX 6800 XT'),
(140, 'NVIDIA GeForce RTX 3060 Ti'),
(141, 'AMD Radeon RX 6700 XT'),
(142, 'NVIDIA GeForce RTX 3090'),
(143, 'AMD Radeon RX 5900 XT'),
(144, 'NVIDIA GeForce RTX 2080 Ti'),
(145, 'AMD Radeon RX 6800'),
(146, 'NVIDIA GeForce RTX 2080 Super'),
(147, 'AMD Radeon RX 5700 XT'),
(148, 'NVIDIA GeForce RTX 3070 Ti'),
(149, 'AMD Radeon RX 6700'),
(150, 'NVIDIA GeForce GTX 1660 Ti'),
(151, 'AMD Radeon RX 6600 XT'),
(152, 'Intel Xe-HPG (DG2) Gaming GPU'),
(153, 'NVIDIA GeForce GTX 1080 Ti'),
(154, 'AMD Radeon RX 5700'),
(155, 'NVIDIA GeForce RTX 3060'),
(156, 'AMD Radeon RX 6500 XT'),
(157, 'NVIDIA GeForce GTX 1660 Super'),
(158, 'AMD Radeon RX 5600 XT'),
(159, 'NVIDIA GeForce RTX 3050 Ti'),
(160, 'AMD Radeon RX 5500 XT'),
(161, 'ASUS ROG Strix B450-F Gaming'),
(162, 'Gigabyte Z390 AORUS PRO'),
(163, 'MSI B450 TOMAHAWK MAX'),
(164, 'ASRock B550 Phantom Gaming 4'),
(165, 'ASUS Prime Z390-A'),
(166, 'Gigabyte B550 AORUS Elite'),
(167, 'MSI MAG B550 TOMAHAWK'),
(168, 'ASRock H470 Steel Legend'),
(169, 'ASUS TUF B450-PLUS Gaming'),
(170, 'Gigabyte X570 AORUS Elite'),
(171, 'MSI MPG Z490 Gaming Edge WiFi'),
(172, 'ASRock B450M PRO4'),
(173, 'ASUS ROG Crosshair VIII Hero'),
(174, 'Gigabyte B365M DS3H'),
(175, 'MSI B450 Gaming Plus MAX'),
(176, 'ASUS ROG Crosshair VII Hero'),
(177, 'Gigabyte B450 AORUS M'),
(178, 'MSI MPG B550 Gaming Edge WiFi'),
(179, 'ASRock Z490 Phantom Gaming 4'),
(180, 'ASUS Prime X570-P'),
(181, 'Gigabyte H410M H'),
(182, 'MSI MAG B460 TOMAHAWK'),
(183, 'ASRock B365 Phantom Gaming 4'),
(184, 'ASUS TUF B360M-PLUS Gaming S'),
(185, 'Intel Core i9-11900K'),
(186, 'AMD Ryzen 9 5950X'),
(187, 'Intel Core i7-11700K'),
(188, 'AMD Ryzen 7 5800X'),
(189, 'Intel Core i5-11600K'),
(190, 'AMD Ryzen 5 5600X'),
(191, 'Intel Core i9-10900K'),
(192, 'AMD Ryzen 9 5900X'),
(193, 'Intel Core i7-10700K'),
(194, 'AMD Ryzen 7 3700X'),
(195, 'Intel Core i5-10600K'),
(196, 'AMD Ryzen 5 3600X'),
(197, 'Intel Core i9-9900K'),
(198, 'AMD Ryzen 9 3900X'),
(199, 'Intel Core i7-9700K'),
(200, 'AMD Ryzen 7 4700G'),
(201, 'Intel Core i7-12700K'),
(202, 'AMD Ryzen 9 6900X'),
(203, 'Intel Core i5-12600K'),
(204, 'AMD Ryzen 5 5500'),
(205, 'Intel Core i9-12900K'),
(206, 'AMD Ryzen 7 5800G'),
(207, 'Intel Core i7-11700F'),
(208, 'AMD Ryzen 5 5600G'),
(209, 'Intel Core i5-11400');

-- --------------------------------------------------------

--
-- Table structure for table `ram`
--

CREATE TABLE `ram` (
  `RAM_ID` int(11) NOT NULL,
  `Model` varchar(100) NOT NULL,
  `Speed` int(11) DEFAULT NULL,
  `Storage` int(11) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `Warranty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ram`
--

INSERT INTO `ram` (`RAM_ID`, `Model`, `Speed`, `Storage`, `Price`, `Warranty`) VALUES
(1, 'Corsair Vengeance LPX 16GB (2 x 8GB) DDR4-3200', 3200, 16, 7649.15, 5),
(2, 'G.Skill Ripjaws V Series 16GB (2 x 8GB) DDR4-3600', 3600, 16, 8499.15, 5),
(3, 'Kingston HyperX Fury 16GB (2 x 8GB) DDR4-2666', 2666, 16, 6799.15, 3),
(4, 'Crucial Ballistix Sport LT 8GB DDR4-2400', 2400, 8, 4249.15, 3),
(5, 'Team T-FORCE DARK Z 32GB (2 x 16GB) DDR4-3200', 3200, 32, 11049.15, 5),
(6, 'ADATA XPG GAMMIX D30 16GB (2 x 8GB) DDR4-3000', 3000, 16, 8074.15, 4),
(7, 'Patriot Viper Steel 16GB (2 x 8GB) DDR4-4400', 4400, 16, 11049.15, 5),
(8, 'Corsair Dominator Platinum RGB 32GB (2 x 16GB) DDR4-3600', 3600, 32, 16149.15, 5),
(9, 'Crucial Ballistix MAX 32GB (2 x 16GB) DDR4-4000', 4000, 32, 14449.15, 5),
(10, 'G.Skill Trident Z Neo 64GB (2 x 32GB) DDR4-3600', 3600, 64, 27199.15, 5),
(11, 'HyperX Fury RGB 16GB (2 x 8GB) DDR4-3200', 3200, 16, 8899.15, 3),
(12, 'Team T-FORCE VULCAN Z 32GB (2 x 16GB) DDR4-3000', 3000, 32, 10199.15, 4),
(13, 'Patriot Viper 4 Blackout 16GB (2 x 8GB) DDR4-3200', 3200, 16, 7224.15, 5),
(14, 'Corsair Vengeance RGB Pro 64GB (2 x 32GB) DDR4-3200', 3200, 64, 25499.15, 5),
(15, 'G.Skill Ripjaws 5 Series 32GB (2 x 16GB) DDR4-3200', 3200, 32, 11474.15, 4),
(16, 'Kingston HyperX Predator RGB 16GB (2 x 8GB) DDR4-4000', 4000, 16, 12299.15, 5),
(17, 'Crucial Ballistix Elite 32GB (2 x 16GB) DDR4-3600', 3600, 32, 13599.15, 5),
(18, 'ADATA XPG SPECTRIX D41 16GB (2 x 8GB) DDR4-3200', 3200, 16, 9684.15, 4),
(19, 'Patriot Viper Steel Series 64GB (2 x 32GB) DDR4-3600', 3600, 64, 24649.15, 5),
(20, 'Corsair Vengeance LPX 8GB DDR4-2400', 2400, 8, 3644.15, 3),
(21, 'G.Skill Aegis 16GB (2 x 8GB) DDR4-3000', 3000, 16, 6799.15, 3),
(22, 'Team T-FORCE DARK Pro 32GB (2 x 16GB) DDR4-3200', 3200, 32, 11899.15, 5),
(23, 'Crucial Ballistix Sport LT 32GB (2 x 16GB) DDR4-3200', 3200, 32, 11049.15, 5),
(24, 'Kingston Hyper', 2666, 32, 11499.15, 4),
(25, 'Corsair Vengeance RGB Pro 32GB (2 x 16GB) DDR4-3200', 3200, 32, 14299.15, 5);

-- --------------------------------------------------------

--
-- Table structure for table `storagedevices`
--

CREATE TABLE `storagedevices` (
  `DeviceID` int(11) NOT NULL,
  `Brand` varchar(50) DEFAULT NULL,
  `Model` varchar(50) DEFAULT NULL,
  `ReadTime` int(11) DEFAULT NULL,
  `WriteTime` int(11) DEFAULT NULL,
  `StorageCapacity` varchar(20) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `Warranty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `storagedevices`
--

INSERT INTO `storagedevices` (`DeviceID`, `Brand`, `Model`, `ReadTime`, `WriteTime`, `StorageCapacity`, `price`, `Warranty`) VALUES
(1, 'Samsung', '970 EVO Plus', 3500, 3300, '1TB NVMe SSD', 25000.00, 5),
(2, 'Crucial', 'MX500', 560, 510, '1TB SATA SSD', 8000.00, 5),
(3, 'Western Digital', 'WD Black SN750', 3470, 3000, '500GB NVMe SSD', 12000.00, 5),
(4, 'Seagate', 'FireCuda 520', 5000, 4400, '2TB NVMe SSD', 35000.00, 5),
(5, 'Kingston', 'A2000', 2200, 2000, '1TB NVMe SSD', 15000.00, 5),
(6, 'SanDisk', 'Ultra 3D', 560, 530, '2TB SATA SSD', 20000.00, 5),
(7, 'ADATA', 'XPG SX8200 Pro', 3500, 3000, '512GB NVMe SSD', 18000.00, 5),
(8, 'Toshiba', 'X300', 205, 196, '6TB SATA HDD', 30000.00, 5),
(9, 'Intel', 'Optane 905P', 2600, 2200, '960GB NVMe SSD', 40000.00, 5),
(10, 'Seagate', 'Barracuda', 210, 580, '4TB SATA HDD', 10000.00, 5),
(11, 'Corsair', 'MP510', 3480, 3000, '2TB NVMe SSD', 30000.00, 5),
(12, 'WD', 'Blue', 545, 425, '500GB SATA SSD', 8000.00, 5),
(13, 'Crucial', 'P5', 3400, 3000, '1TB NVMe SSD', 15000.00, 5),
(14, 'Samsung', '860 EVO', 550, 520, '2TB SATA SSD', 25000.00, 5),
(15, 'ADATA', 'Ultimate SU800', 560, 520, '1TB SATA SSD', 10000.00, 5),
(16, 'Crucial', 'P2', 2400, 1400, '500GB NVMe SSD', 12000.00, 5),
(17, 'Western Digital', 'Blue SN550', 2400, 1750, '1TB NVMe SSD', 20000.00, 5),
(18, 'Kingston', 'KC600', 550, 520, '1TB SATA SSD', 8000.00, 5),
(19, 'Samsung', 'T7', 1050, 1000, '1TB Portable SSD', 18000.00, 5),
(20, 'Seagate', 'IronWolf Pro', 250, 220, '8TB NAS HDD', 30000.00, 5),
(21, 'ADATA', 'HD710 Pro', 140, 140, '2TB Portable HDD', 10000.00, 5),
(22, 'SanDisk', 'Extreme Pro', 1050, 1000, '2TB Portable SSD', 25000.00, 5),
(23, 'Corsair', 'MP400', 3480, 3000, '4TB NVMe SSD', 40000.00, 5),
(24, 'Toshiba', 'Canvio Basics', 110, 110, '3TB External HDD', 15000.00, 5),
(25, 'Intel', '660p', 1800, 1800, '1TB NVMe SSD', 12000.00, 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `casingcoolers`
--
ALTER TABLE `casingcoolers`
  ADD PRIMARY KEY (`CoolerID`);

--
-- Indexes for table `gpus`
--
ALTER TABLE `gpus`
  ADD PRIMARY KEY (`GPU_ID`);

--
-- Indexes for table `laptops`
--
ALTER TABLE `laptops`
  ADD PRIMARY KEY (`LaptopID`);

--
-- Indexes for table `motherboards`
--
ALTER TABLE `motherboards`
  ADD PRIMARY KEY (`MotherboardID`);

--
-- Indexes for table `powersupplies`
--
ALTER TABLE `powersupplies`
  ADD PRIMARY KEY (`PowerSupplyID`);

--
-- Indexes for table `processors`
--
ALTER TABLE `processors`
  ADD PRIMARY KEY (`ProcessorID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productID`);

--
-- Indexes for table `ram`
--
ALTER TABLE `ram`
  ADD PRIMARY KEY (`RAM_ID`);

--
-- Indexes for table `storagedevices`
--
ALTER TABLE `storagedevices`
  ADD PRIMARY KEY (`DeviceID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
