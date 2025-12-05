-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 05 ديسمبر 2025 الساعة 21:45
-- إصدار الخادم: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alamel-stor`
--

-- --------------------------------------------------------

--
-- بنية الجدول `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `adress` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `clients`
--

INSERT INTO `clients` (`id`, `name`, `mobile`, `adress`) VALUES
(1, 'Muhammed', '+977 780-154-65', 'sanaa'),
(2, 'ali', '+967 775-654-85', 'sanaa'),
(5, 'Anoor', '+967 785694532', 'Dhmar'),
(6, 'khalid', '+967 785649532', 'Taiz');

-- --------------------------------------------------------

--
-- بنية الجدول `transections`
--

CREATE TABLE `transections` (
  `id` int(11) NOT NULL,
  `income` varchar(6) NOT NULL,
  `expense` varchar(6) NOT NULL,
  `clientID` int(11) NOT NULL,
  `cash` tinyint(1) NOT NULL,
  `date` date NOT NULL,
  `notes` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `transections`
--

INSERT INTO `transections` (`id`, `income`, `expense`, `clientID`, `cash`, `date`, `notes`) VALUES
(2, '120000', '50000', 1, 1, '2025-12-05', 'تم شراء منتجات بمبلغ 120000 وتم بيع منها بمبلغ 50000 \r\nللعميل 1-Muhammed \r\nعملية الشراء 1 \r\n# الرقم عند عملية الدفع اذا كان 1 يعني انه تم الدفع كاش اذا كان 0 يعني انه قد يكون دين او حوالة او اذا كان 1.0 يعنيانه تم دفع نصف الملبغ فقط.'),
(3, '300000', '20000', 6, 0, '2025-12-06', 'تم شراء منتجات بمبلغ 120000 وتم بيع منها بمبلغ 50000 \r\nللعميل 1-Muhammed \r\nعملية الشراء 1 \r\n# الرقم عند عملية الدفع اذا كان 1 يعني انه تم الدفع كاش اذا كان 0 يعني انه قد يكون دين او حوالة او اذا كان 1.0 يعنيانه تم دفع نصف الملبغ فقط.'),
(4, '150000', '90000', 5, 1, '2025-12-06', 'تم شراء منتجات بمبلغ 120000 وتم بيع منها بمبلغ 50000 \r\nللعميل 1-Muhammed \r\nعملية الشراء 1 \r\n# الرقم عند عملية الدفع اذا كان 1 يعني انه تم الدفع كاش اذا كان 0 يعني انه قد يكون دين او حوالة او اذا كان 1.0 يعنيانه تم دفع نصف الملبغ فقط.'),
(5, '750000', '600000', 2, 1, '2025-12-07', 'تم شراء منتجات بمبلغ 120000 وتم بيع منها بمبلغ 50000 \r\nللعميل 1-Muhammed \r\nعملية الشراء 1 \r\n# الرقم عند عملية الدفع اذا كان 1 يعني انه تم الدفع كاش اذا كان 0 يعني انه قد يكون دين او حوالة او اذا كان 1.0 يعنيانه تم دفع نصف الملبغ فقط.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transections`
--
ALTER TABLE `transections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clients` (`clientID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `transections`
--
ALTER TABLE `transections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- قيود الجداول المُلقاة.
--

--
-- قيود الجداول `transections`
--
ALTER TABLE `transections`
  ADD CONSTRAINT `clients` FOREIGN KEY (`clientID`) REFERENCES `clients` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
