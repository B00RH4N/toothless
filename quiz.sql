-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2024 at 09:18 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `orderCode` int(11) NOT NULL,
  `orderDateTime` datetime DEFAULT NULL,
  `orderStatus` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`orderCode`, `orderDateTime`, `orderStatus`) VALUES
(1, '2024-01-04 14:09:33', 'Processing'),
(2, '2024-01-04 15:28:43', 'Processing');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productCode` int(11) NOT NULL,
  `productName` varchar(512) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `dailyStock` int(11) DEFAULT NULL,
  `productCategory` enum('Cookie','DessertBox','Pudding','Coffee','Milk','Pie') DEFAULT NULL,
  `productDescription` text NOT NULL,
  `productImage` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productCode`, `productName`, `productPrice`, `dailyStock`, `productCategory`, `productDescription`, `productImage`) VALUES
(1, 'Nolita', 69000, 9, 'DessertBox', 'ipsum dolor sit amet, consectetur adipiscing elit. Cras consequat ullamcorper orci, eget posuere turpis pellentesque eu. Fusce dignissim justo eu eros efficitur volutpat. Etiam commodo libero mauris, nec egestas risus lobortis eu. Morbi consectetur mauris mi, eu vulputate urna varius at.', 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/9f2edb23-6bb6-4130-b5ad-4cddd3dc418e_Go-Biz_20210615_111149.jpeg?auto=format'),
(2, 'The Chelsea', 52000, 10, 'Cookie', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras consequat ullamcorper orci, eget posuere turpis pellentesque eu. Fusce dignissim justo eu eros efficitur volutpat. Etiam commodo libero mauris, nec egestas risus lobortis eu. Morbi consectetur mauris mi, eu vulputate urna varius at.', 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/14c8dd34-3620-47a8-9d09-d26278eed044_Go-Biz_20210615_110031.jpeg?auto=format'),
(3, 'The Upper East Side', 60000, 7, 'Cookie', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras consequat ullamcorper orci, eget posuere turpis pellentesque eu. Fusce dignissim justo eu eros efficitur volutpat. Etiam commodo libero mauris, nec egestas risus lobortis eu. Morbi consectetur mauris mi, eu vulputate urna varius at.', 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/dd7723f6-2d25-4503-9936-46f5df2563c6_Go-Biz_20210615_111348.jpeg?auto=format'),
(4, 'The Hells Kitchen', 52000, 10, 'Cookie', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras consequat ullamcorper orci, eget posuere turpis pellentesque eu. Fusce dignissim justo eu eros efficitur volutpat. Etiam commodo libero mauris, nec egestas risus lobortis eu. Morbi consectetur mauris mi, eu vulputate urna varius at.', 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/0a22eb2a-36be-4788-9f37-062f018d2c72_Go-Biz_20210615_111103.jpeg?auto=format'),
(5, 'The Greenwich Village', 46000, 10, 'Cookie', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras consequat ullamcorper orci, eget posuere turpis pellentesque eu. Fusce dignissim justo eu eros efficitur volutpat. Etiam commodo libero mauris, nec egestas risus lobortis eu. Morbi consectetur mauris mi, eu vulputate urna varius at.', 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/915764bc-9945-4aa0-8754-15a6b5867185_Go-Biz_20210615_111503.jpeg?auto=format'),
(6, 'The Soho', 46000, 10, 'Cookie', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras consequat ullamcorper orci, eget posuere turpis pellentesque eu. Fusce dignissim justo eu eros efficitur volutpat. Etiam commodo libero mauris, nec egestas risus lobortis eu. Morbi consectetur mauris mi, eu vulputate urna varius at.', 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/07a8c3c8-c182-4139-87c8-f90f243affc4_Go-Biz_20210615_111426.jpeg?auto=format'),
(7, 'The East Village', 48000, 10, 'Cookie', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras consequat ullamcorper orci, eget posuere turpis pellentesque eu. Fusce dignissim justo eu eros efficitur volutpat. Etiam commodo libero mauris, nec egestas risus lobortis eu. Morbi consectetur mauris mi, eu vulputate urna varius at.', 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/9fbd5df3-e6c4-4b09-8830-6edd93aa2bcf_menu-item-image_1643168865336.jpg?auto=format'),
(8, 'The Flat Iron', 33000, 10, 'Cookie', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras consequat ullamcorper orci, eget posuere turpis pellentesque eu. Fusce dignissim justo eu eros efficitur volutpat. Etiam commodo libero mauris, nec egestas risus lobortis eu. Morbi consectetur mauris mi, eu vulputate urna varius at.', 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/84582121-61d0-4a4d-a4ce-765d0bfecfcd_Go-Biz_20231114_165111.jpeg?auto=format'),
(9, 'The Calico', 48000, 10, 'Cookie', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras consequat ullamcorper orci, eget posuere turpis pellentesque eu. Fusce dignissim justo eu eros efficitur volutpat. Etiam commodo libero mauris, nec egestas risus lobortis eu. Morbi consectetur mauris mi, eu vulputate urna varius at.', 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/9c0f7f5b-d2f9-4d9a-98a6-16c5a18388e3_Go-Biz_20230309_181025.jpeg?auto=format'),
(10, 'The Little Italy - Tiramisu Dessert Box', 60000, 5, 'DessertBox', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras consequat ullamcorper orci, eget posuere turpis pellentesque eu. Fusce dignissim justo eu eros efficitur volutpat. Etiam commodo libero mauris, nec egestas risus lobortis eu. Morbi consectetur mauris mi, eu vulputate urna varius at.', 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/f97b674a-7140-4505-8553-8c3b49c551d7_Go-Biz_20220823_085908.jpeg?auto=format'),
(11, 'The Broadway - Banana Pudding - Small', 35000, 15, 'Pudding', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras consequat ullamcorper orci, eget posuere turpis pellentesque eu. Fusce dignissim justo eu eros efficitur volutpat. Etiam commodo libero mauris, nec egestas risus lobortis eu. Morbi consectetur mauris mi, eu vulputate urna varius at.', 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/a1933c71-6edf-4e16-b7d6-bd5f86300dae_Go-Biz_20221115_151904.jpeg?auto=format'),
(12, 'The Staten Island Pudding - Confetti Cake - Small', 40000, 12, 'Pudding', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras consequat ullamcorper orci, eget posuere turpis pellentesque eu. Fusce dignissim justo eu eros efficitur volutpat. Etiam commodo libero mauris, nec egestas risus lobortis eu. Morbi consectetur mauris mi, eu vulputate urna varius at.', 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/3ae4c175-2af9-4289-9cbe-55be64308e85_Go-Biz_20221115_151622.jpeg?auto=format'),
(13, 'The Dumbo Cereal Milk', 48000, 20, 'Milk', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras consequat ullamcorper orci, eget posuere turpis pellentesque eu. Fusce dignissim justo eu eros efficitur volutpat. Etiam commodo libero mauris, nec egestas risus lobortis eu. Morbi consectetur mauris mi, eu vulputate urna varius at.', 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/342bab52-897f-49f8-8dcc-1ff09f8beca5_Go-Biz_20210615_111741.jpeg?auto=format'),
(14, 'The Bronx Coffee Cereal Milk', 54000, 20, 'Milk', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras consequat ullamcorper orci, eget posuere turpis pellentesque eu. Fusce dignissim justo eu eros efficitur volutpat. Etiam commodo libero mauris, nec egestas risus lobortis eu. Morbi consectetur mauris mi, eu vulputate urna varius at.', 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/df78aed5-94cd-42e8-85a9-1fe97cafcc28_Go-Biz_20210715_090328.jpeg?auto=format'),
(15, 'Big Chungus', 69000, 3, 'DessertBox', 'Lorem Ipsum', 'https://memeverse.com/cdn/shop/products/BigChungusMock_fc829ca1-4b33-4bc1-b184-6b8079cc97ed_1024x1024.png?v=1609081770'),
(16, 'Wilson Lo Sieento', 57000, 12, 'Pie', 'Lorem Ipsum dolor sit amet', 'https://i.kym-cdn.com/photos/images/newsfeed/002/701/047/09c.png');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userCode` int(11) NOT NULL,
  `password` varchar(512) DEFAULT NULL,
  `email` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userCode`, `password`, `email`) VALUES
(1, '$2y$12$w5p4BTUxgYrox0/Ik1w8eOB.GAwycl/WkWpTRuYEh2hQmCQqmJUxe', 'kimberlybremer@gmail.com'),
(2, '$2y$12$9Y03NoqMSI5d.Qck3Omul.9JjHeGuJyR5WFtjRB.lH0Wa.eGV6vdi', 'sashaalicia@gmail.com'),
(3, '$2y$12$X3Hb65t2d/OXSdzl5jakluV87LNXbyzZdoNcRky1tusk0tKnIiJOG', 'qiuzhang@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`orderCode`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productCode`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userCode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `orderCode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productCode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userCode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
