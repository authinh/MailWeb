-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2017 at 12:14 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_music`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `addTime` datetime DEFAULT NULL,
  `alias` nvarchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bodyText` nvarchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `editTime` datetime DEFAULT NULL,
  `keywords` nvarchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` bit(1) NOT NULL,
  `title` nvarchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `id` int(11) NOT NULL,
  `URL` nvarchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `addTime` datetime DEFAULT NULL,
  `backgroundURL` nvarchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `name` nvarchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numView` int(11) NOT NULL,
  `rateID` int(11) NOT NULL,
  `roleName` nvarchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` bit(1) NOT NULL,
  `tag` nvarchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbImage` nvarchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` nvarchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upbyID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id`, `URL`, `addTime`, `backgroundURL`, `description`, `name`, `numView`, `rateID`, `roleName`, `status`, `tag`, `thumbImage`, `title`, `upbyID`) VALUES
(1, NULL, '2017-07-22 00:00:00', 'https://static.pexels.com/photos/481178/pexels-photo-481178.jpeg', 'nhạc thư giãn', 'nhac_chi_dan', 0, 0, NULL, b'1', NULL, 'https://images.pexels.com/photos/207569/pexels-photo-207569.jpeg?w=1260&h=750&auto=compress&cs=tinysrgb', 'thư giãn', 0),
(2, NULL, '2017-07-27 00:00:00', 'https://static.pexels.com/photos/87646/horsehead-nebula-dark-nebula-constellation-orion-87646.jpeg', 'du ngủ', 'sleep', 0, 0, NULL, b'1', NULL, 'https://static.pexels.com/photos/45242/wolf-torque-wolf-moon-cloud-45242.jpeg', 'Sleep', 0),
(4, NULL, '2017-07-27 00:00:00', 'https://static.pexels.com/photos/194511/pexels-photo-194511.jpeg', 'nhạc game', 'nhac_game', 0, 0, NULL, b'1', NULL, 'https://static.pexels.com/photos/163064/play-stone-network-networked-interactive-163064.jpeg', 'nhạc game', 0);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `backgroundURL` nvarchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `name` nvarchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tag` nvarchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` nvarchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL` nvarchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `backgroundURL`, `description`, `name`, `tag`, `title`, `URL`) VALUES
(1, 'https://static.pexels.com/photos/320007/pexels-photo-320007.jpeg', 'Khi nghỉ tuyệt đối tránh mọi thứ liên quan tới Internet, Facebook… có thể chúng sẽ kích thích sự hưng phấn của bạn, song bản chất vẫn làm bộ não thêm mệt mỏi (bạn có thể đọc thêm “bí quyết thư giãn” ở mục bài liên quan), hơn nữa khi mọi người xung quanh t', 'thu_gian', NULL, 'Thư Giãn', NULL),
(2, 'https://static.pexels.com/photos/243204/pexels-photo-243204.jpeg', 'Bạn bị điểm xấu? Bạn gặp thất bại? Hay bị gấu đá? Tóm lại là buồn như chuồn chuồn. Vậy khi buồn nên làm gì là tốt nhất? Không khó để bạn có thể tìm được nhiều cách khác nhau để giải khuây, để hết buồn, để chuồn chuồn bay đi. Còn tôi khuyên bạn: hãy ngồi im. Tại sao?\n\nCám ơn bạn. Blog được bảo vệ bản quyền bởi DCMA. Vui lòng ghi rõ nguồn và đặt link về bài viết gốc: https://fususu.com/khi-buon-nen-lam-gi/', 'tap_trung', NULL, 'Tâp Trung', NULL),
(3, 'https://static.pexels.com/photos/208664/pexels-photo-208664.jpeg', 'Tôi có một sở thích là làm ra những bức ảnh kèm châm ngôn cảm hứng để tặng mọi người. Bạn có thể download bộ 96 ảnh chọn lọc bên trên và theo dõi Page Fususu bên phải để cập nhật ảnh mới mỗi ngày (chú ý: sau khi like, hãy chọn see first).\n\nCám ơn bạn. Blog được bảo vệ bản quyền bởi DCMA. Vui lòng ghi rõ nguồn và đặt link về bài viết gốc: https://fususu.com/susu-card/', 'nghi_nho', NULL, 'Nghi Nhớ', NULL),
(4, 'https://static.pexels.com/photos/101523/pexels-photo-101523.jpeg', 'Ai cũng phải ngủ, song hình như không ai được dậy cách ngủ. Có lẽ thế mà nhiều người cảm thấy khó ngủ, mất ngủ. Chưa kể là cuộc sống ngày càng nhiều mối quan tâm và đôi khi thật khó mà nằm xuống để đánh một giấc ngon lành. Audio đặc biệt này sẽ giúp “thanh lọc tâm trí” trước khi đưa bạn vào một giấc ngủ tuyệt vời.\n\nCám ơn bạn. Blog được bảo vệ bản quyền bởi DCMA. Vui lòng ghi rõ nguồn và đặt link về bài viết gốc: https://fususu.com/bi-mat-ngu-ngon/', 'ngu', NULL, 'Ngủ', NULL),
(5, 'https://static.pexels.com/photos/486123/pexels-photo-486123.jpeg', 'Bạn đang tự ti? Bạn muốn tự tin? Đơn giản lắm, chỉ cần thêm một chữ N vào cuối “tự ti”, là sẽ “tự tiN”. Song từ chữ nghĩa tới thực tế là một hành trình dài. Hôm nay, bạn sẽ được bật mí quy trình 3N giúp bạn tiến nhanh hơn trên hành trình từ “tự ti” thành “tự tin”.\n\nCám ơn bạn. Blog được bảo vệ bản quyền bởi DCMA. Vui lòng ghi rõ nguồn và đặt link về bài viết gốc: https://fususu.com/tu-ti-tu-tin/', 'game', NULL, 'Game', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_album`
--

CREATE TABLE `category_album` (
  `id` int(11) NOT NULL,
  `albumID` int(11) NOT NULL,
  `categoryID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category_album`
--

INSERT INTO `category_album` (`id`, `albumID`, `categoryID`) VALUES
(1, 1, 1),
(2, 1, 1),
(3, 2, 2),
(4, 1, 2),
(5, 4, 2),
(6, 4, 2),
(7, 1, 1),
(8, 2, 1),
(9, 4, 1),
(10, 1, 4),
(11, 2, 4),
(12, 4, 4),
(13, 1, 5),
(14, 2, 5),
(15, 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `configName` nvarchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `configValue` nvarchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `module` nvarchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languge`
--

CREATE TABLE `languge` (
  `id` int(11) NOT NULL,
  `fileID` int(11) NOT NULL,
  `langKey` nvarchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `musics`
--

CREATE TABLE `musics` (
  `id` int(11) NOT NULL,
  `active` bit(1) NOT NULL,
  `bitRate` int(11) NOT NULL,
  `dateUp` datetime DEFAULT NULL,
  `link` nvarchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` nvarchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` float NOT NULL,
  `title` nvarchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `authorID` int(11) DEFAULT NULL,
  `singerID` int(11) DEFAULT NULL,
  `userbyID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `musics`
--

INSERT INTO `musics` (`id`, `active`, `bitRate`, `dateUp`, `link`, `name`, `size`, `title`, `authorID`, `singerID`, `userbyID`) VALUES
(7, b'1', 120, '2017-07-22 00:00:00', 'http://nhacpro.net/stream/tvet.mp3', '1234', 0, '1234', 1, 1, NULL),
(8, b'1', 120, '2017-07-22 00:00:00', 'http://nhacpro.net/stream/s1m3.mp3', 'co_duoc_khong_em', 0, 'có được không em', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `music_album`
--

CREATE TABLE `music_album` (
  `id` int(11) NOT NULL,
  `albumID` int(11) NOT NULL,
  `musicID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `id` int(11) NOT NULL,
  `fullName` nvarchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `introduction` nvarchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `job` nvarchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` nvarchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumb` nvarchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`id`, `fullName`, `introduction`, `job`, `name`, `thumb`) VALUES
(1, 'Chí Dân', 'là một ca sĩ', 'ca sĩ, nhạc sĩ', 'chi_dan', 'http://125.235.37.56/media01/53c62011a845f/2014/10/04/669a5d22-ae83-4319-b39e-751d8d2e98f2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `rate`
--

CREATE TABLE `rate` (
  `id` int(11) NOT NULL,
  `scose` float NOT NULL,
  `albumID` int(11) NOT NULL,
  `sessionID` nvarchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` nvarchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `onlTime` datetime DEFAULT NULL,
  `userID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `onlTime`, `userID`) VALUES
('f8cca2a87405fe9cc8a82e4a4b6716d', '2017-07-26 09:53:21', NULL),
('f7cb13ffcdbf6bcf4dcc79a4d02959e3', '2017-07-26 10:01:09', NULL),
('5bde4a376a339f8214b3e39ea667df03', '2017-07-26 10:01:10', NULL),
('ad8461933017baf5a27bdf5d59f7bd22', '2017-07-26 10:01:11', NULL),
('e71aaa1ada375b4f347c5496d9581667', '2017-07-26 10:01:11', NULL),
('ea2ffe63565de5af106680c6aa42f3df', '2017-07-26 10:01:11', NULL),
('f25f25022ee6d61489fadc1a7ab4b334', '2017-07-26 10:01:38', NULL),
('366a44a0571fa5d7e579086a41110ce4', '2017-07-26 10:01:39', NULL),
('69c5585f39a423d028cfd7cf46e58990', '2017-07-26 10:01:39', NULL),
('b649269c22ccd254742842ae5e6de8b7', '2017-07-26 10:01:39', NULL),
('21c1eb4dc5aa19b043d2671452efb8c6', '2017-07-26 10:01:59', NULL),
('9fd1a7daedc10cbf75e242acfee3b81b', '2017-07-26 10:01:59', NULL),
('e12c5a812ea1006b808a33e01549f34f', '2017-07-26 10:01:59', NULL),
('9c17ceba929130c4516e5757aae3ef7b', '2017-07-26 10:01:59', NULL),
('3e754853da00d2a6583dec09f3673dc1', '2017-07-26 10:01:59', NULL),
('f07482247e3a0baf510173c2f2573e1f', '2017-07-26 10:01:59', NULL),
('fe36678dc036308daeba863668bf476a', '2017-07-26 10:01:59', NULL),
('fac4b0b85fab271907bdee97828abacc', '2017-07-26 10:04:58', NULL),
('27ba74a274497955e76048ec58b036ed', '2017-07-26 10:04:58', NULL),
('e0680bd9d9d4a41376c82131880c32ba', '2017-07-26 10:04:58', NULL),
('33562308dd004da23876381a7045579c', '2017-07-26 10:04:58', NULL),
('eb09a3ef383a10292d1734543ad0bb51', '2017-07-26 10:04:58', NULL),
('1fce4d17124b9855e46eebe710806bff', '2017-07-26 10:04:58', NULL),
('3667d86da8a0e2cbdb8024f2c1de7818', '2017-07-26 10:04:58', NULL),
('677ac98f7b1c24cafbd086f96d470898', '2017-07-26 10:09:33', NULL),
('b54a88a568475dc2d8d1eb69f50b643a', '2017-07-26 10:09:34', NULL),
('19c6047220c50127f00451f1f878bd5e', '2017-07-26 10:09:34', NULL),
('c04d309a0b75b87ab1a10283178c2252', '2017-07-26 10:09:35', NULL),
('c239fcab5f7d65c8d70832d8edf6e7f4', '2017-07-26 10:09:35', NULL),
('257e874699c7e58e6a19d3d759c8708d', '2017-07-26 10:09:35', NULL),
('8a448d1e8ee7b0322c566bfb2b1221f9', '2017-07-26 10:09:35', NULL),
('6192474372b23b9c04231d4c2568f1c3', '2017-07-26 10:09:36', NULL),
('51738c8522a808f1160f409279caea8b', '2017-07-26 10:17:08', NULL),
('a516579e124b34ceb201daaf08b5ce80', '2017-07-26 10:17:08', NULL),
('717373ed5b3cede679bc5b45adfa05ea', '2017-07-26 10:17:09', NULL),
('39f85cd22ead74f477bb181272a78b14', '2017-07-26 10:17:10', NULL),
('61116ff0eb39f36e2c11c29d122011b0', '2017-07-26 10:17:10', NULL),
('18984ec8bcdbd8c65e895fb4558037cb', '2017-07-26 10:17:10', NULL),
('936df4f7f8d9e10df58b7c9706670750', '2017-07-26 10:17:10', NULL),
('2490c29c98348fccee8a55430071b75e', '2017-07-26 10:17:10', NULL),
('ec14106fb8eba7e46e741581e714f1c2', '2017-07-26 10:20:26', NULL),
('f8ad1dd9f1e09a02aaf5dadf252785df', '2017-07-26 10:20:26', NULL),
('d35cc8120eb2dd966e1960c53d95f5ed', '2017-07-26 10:20:27', NULL),
('f306e09f51152e02ce414b385119f423', '2017-07-26 10:20:27', NULL),
('50fc2319514ba1ff7b5a8c89f75870e7', '2017-07-26 10:20:27', NULL),
('f4101fa0b6307d2616e23b1de7a3314f', '2017-07-26 10:20:27', NULL),
('5845c136bfa166a20c09a9ed0e4593e', '2017-07-26 10:20:27', NULL),
('4c33773c0f37484e3c394b3240e9799b', '2017-07-26 10:26:49', NULL),
('8be3b0301104da301f1f4063d728d914', '2017-07-26 10:26:50', NULL),
('b3e8c77d4b1c4fabd5da03be63c46495', '2017-07-26 10:26:50', NULL),
('9b5d2aaaffa13f706b281a429c42ab40', '2017-07-26 10:26:50', NULL),
('56c3f0fee89d50e5ee51e0f116461707', '2017-07-26 10:26:50', NULL),
('3fd9d38e377a2c70e932974f9ffb9a9b', '2017-07-26 10:26:50', NULL),
('14f2938b4ec60bdac596f070670a9eef', '2017-07-26 10:26:50', NULL),
('fe63e58b83526994e6a3f3f8dbd7a43d', '2017-07-26 10:27:02', NULL),
('d1017314f9c93999d13ccf58fcd8deb6', '2017-07-26 10:27:02', NULL),
('10d9f5fed7935437c92e4e1c55f80c2d', '2017-07-26 10:27:02', NULL),
('bc186f4627a01f25967c31cb218c76c5', '2017-07-26 10:27:02', NULL),
('4db89280395384a94859034b8215f4e8', '2017-07-26 10:27:02', NULL),
('679d5f45a807150a7cd3f6b0bfe374bb', '2017-07-26 10:27:02', NULL),
('f16150e73c1567fc586be4923c0c73c1', '2017-07-26 10:27:03', NULL),
('122f5f418ab347113c4fefe95a4eba92', '2017-07-26 10:27:14', NULL),
('7e2395c2519f494143c80409e417a100', '2017-07-26 10:27:14', NULL),
('94e1a2a52007d0178800d82d96d7ffbe', '2017-07-26 10:27:15', NULL),
('8f6f99079648f0876680feb85ca50fff', '2017-07-26 10:27:15', NULL),
('cb63ba6f057a4f75347df89fba205447', '2017-07-26 10:27:15', NULL),
('94087413442e128f2bbcc697130efa3d', '2017-07-26 10:27:15', NULL),
('df23d13f8d417ff5031726efe706c4a1', '2017-07-26 10:27:15', NULL),
('c65e85c70812572cc7a298e8e5989752', '2017-07-26 10:27:28', NULL),
('ff44f8363fc434ca45c2bd2e322d757', '2017-07-26 10:27:28', NULL),
('bffa0caa1cbcf70e57a961886e8819e7', '2017-07-26 10:27:28', NULL),
('e1d29b2d52210589e61da16e463b918a', '2017-07-26 10:27:28', NULL),
('d313ed068355fa97f33dee6c34ca5f08', '2017-07-26 10:29:52', NULL),
('73053a1a1840e258c6afce9a2a17e06e', '2017-07-26 10:29:52', NULL),
('e84f9dd8f1148ecabfcfe06e6ce3e552', '2017-07-26 10:29:52', NULL),
('dda1539a553c09d2226a9bd48bb41a4f', '2017-07-26 10:29:52', NULL),
('c93f639c279169fc5520611da04e367b', '2017-07-26 10:34:29', NULL),
('96592c1bae18cac50447bd7c42c3bd9b', '2017-07-26 10:34:29', NULL),
('1f03261e72d114424f87df0508374a0a', '2017-07-26 10:34:29', NULL),
('6ab3bcc23d471f5741b55034e3b0440b', '2017-07-26 10:34:29', NULL),
('7a7e0f038e0a061d71d97ce5adab2f04', '2017-07-26 10:34:50', NULL),
('a42be36ea71cab94bc8f9bbf847cdff7', '2017-07-26 10:34:50', NULL),
('f65c3982df564b69e8761285d69474dc', '2017-07-26 10:34:50', NULL),
('b583a7a9783cac13e458d6026a1d8914', '2017-07-26 10:34:50', NULL),
('4233041b479214d6a6de907ce4a8ae42', '2017-07-26 10:35:23', NULL),
('d2f8683809d3d538a25844d5eaa38461', '2017-07-26 10:35:23', NULL),
('6493a673f66f8d3fbfadaf323cff1ab7', '2017-07-26 10:35:23', NULL),
('4047159fe334a91759ca6cedca9720f5', '2017-07-26 10:35:23', NULL),
('1bfaa67d00083d4abddd57c04df18c13', '2017-07-26 10:46:47', NULL),
('85f9ac5c9d91b3e4dda16c7b7422f00e', '2017-07-26 10:46:47', NULL),
('d41ccde9e33fdca11bb57454dc375fc5', '2017-07-26 10:46:48', NULL),
('833868d57929d9cdcdcefa67546aaae2', '2017-07-26 10:46:48', NULL),
('48bf8a7ef0967524b0dba1b7b71b08a', '2017-07-26 10:46:48', NULL),
('e69b8e1bb0357732cd917c49fe0865d', '2017-07-26 10:46:58', NULL),
('e4e21333a91720bff5645ac0879e0db0', '2017-07-26 10:46:58', NULL),
('8d4a15ead35fb081a4b5648a833bc085', '2017-07-26 10:46:58', NULL),
('e0891a6f28f1759ea22717fb8a089d4e', '2017-07-26 10:46:58', NULL),
('8011af177daf3e7c34df2eac322ac62', '2017-07-26 10:46:58', NULL),
('eff2e04712657160e45ec29448d6bf92', '2017-07-26 10:46:58', NULL),
('cb90445e991b4a338974df609989ed0c', '2017-07-26 10:46:58', NULL),
('651dae34182d2e97529127a9f29b6bfa', '2017-07-26 10:47:18', NULL),
('1330b563fd2a1dbb64296152cc3cdd0e', '2017-07-26 10:47:18', NULL),
('9daf6c29eb3d9c0b24a79e1de4241a47', '2017-07-26 10:47:18', NULL),
('c9849ea7e9090e7ca453e03c74062337', '2017-07-26 10:47:18', NULL),
('4fe5b3810f168edecef628d2463a0605', '2017-07-26 10:47:18', NULL),
('6469451c042ea9ce09df9a0c9b3854f4', '2017-07-26 10:47:18', NULL),
('b00a44c7924cdd84276368bd662e329d', '2017-07-26 10:47:19', NULL),
('119e37dc95837e811eaa93d39725b02b', '2017-07-26 10:47:32', NULL),
('f2cadc01a724876701d92cae4d327f39', '2017-07-26 10:47:32', NULL),
('ad46e8767a0c77f79f50f85bb21e56d5', '2017-07-26 10:47:32', NULL),
('c09bc7d51a017ff3fb4bdc118430eeeb', '2017-07-26 10:47:32', NULL),
('623bfbdbdb10324d0d6791210c5e3ba9', '2017-07-26 10:49:09', NULL),
('729f1907ca8aaebdceffd5a3ef39aeb9', '2017-07-26 10:49:09', NULL),
('cbff902e2401bf65c07aab6006acec41', '2017-07-26 10:49:10', NULL),
('bb8b28c91acef9fe4b6d91f33285e3da', '2017-07-26 10:49:10', NULL),
('ffde8e2715c615bd5422bc0e7c8c6bc2', '2017-07-26 10:50:41', NULL),
('2d3e41caf58143899022af472dfda3f5', '2017-07-26 16:59:11', NULL),
('94c4bd27847270742da004b0d2c05be', '2017-07-26 16:59:11', NULL),
('241c3e546fdce4f05fb177c72c3f664b', '2017-07-26 16:59:12', NULL),
('f51e4a29497e2306e9716be557912baa', '2017-07-26 16:59:12', NULL),
('87435b242ff40efb45d52eb5a2d80b8c', '2017-07-26 16:59:12', NULL),
('f55029b00d0db277c240da4b584a805c', '2017-07-26 16:59:12', NULL),
('dce46067a2c211c2790aecb800d189', '2017-07-26 16:59:12', NULL),
('966ac4858f3e9f63c88b41ede29444f0', '2017-07-26 16:59:12', NULL),
('ebc350fd7f515a4f52d6a9ce4f3ffd9', '2017-07-26 16:59:47', NULL),
('b9c95f74915d37f9009d7e67acaf634a', '2017-07-26 16:59:47', NULL),
('e6b40bb80fda397ceed82a7ec006c167', '2017-07-26 16:59:47', NULL),
('1957e130be0baa7bf59e45ecbdb23fb4', '2017-07-26 16:59:47', NULL),
('8da2c5a88ee87c76c570ae28b5b53eb8', '2017-07-26 16:59:47', NULL),
('6ca004b18a34a557fdc44a8e0968c20', '2017-07-26 16:59:47', NULL),
('6ffcb79efd5e0f7577644cef3710c3c6', '2017-07-26 16:59:47', NULL),
('90cff097fd19942b9e4c304701f088a5', '2017-07-26 17:04:06', NULL),
('9a5b31881805639be77bca5c2a58eaa6', '2017-07-26 17:04:07', NULL),
('4e45e58225bf855514fc7c5021863e14', '2017-07-26 17:04:07', NULL),
('53a6dac8b911819097fd2f6b8fa5beb5', '2017-07-26 17:04:08', NULL),
('e31cc84575afc11bf7b36f110599be13', '2017-07-26 17:04:08', NULL),
('7753a20a058465a2a7cb533557ded16d', '2017-07-26 17:04:08', NULL),
('e9ee3c77d22bde3a3e373a442850632f', '2017-07-26 17:04:08', NULL),
('3824b6685fc1c009953481eb7f352a20', '2017-07-26 17:04:08', NULL),
('60e9ae15bb29516b42e259fdfa680479', '2017-07-26 17:04:18', NULL),
('1634b8fe55258e62adfc7519a0fccbdd', '2017-07-26 17:04:19', NULL),
('4b568803a12dad0c9ad7a1413d96f201', '2017-07-26 17:04:19', NULL),
('4aebb5a483325557346e7b2d197ae550', '2017-07-26 17:04:19', NULL),
('e08df74d3fef2299c32860a88b6e91ba', '2017-07-26 17:04:19', NULL),
('f0c909d9e1fa9de5737063e21099749e', '2017-07-26 17:04:19', NULL),
('37715b8e44aab3d0e2f9dc7831928d75', '2017-07-26 17:04:19', NULL),
('2c27a343527fecf811fa5166d674a5c1', '2017-07-26 17:05:39', NULL),
('34e2e7718ec5c7a7aefa2e60fe58eafa', '2017-07-26 17:05:39', NULL),
('206c965626e04ba1bfc9cc8020bc3ee6', '2017-07-26 17:05:39', NULL),
('c499114da2028bdfc381353078e6891f', '2017-07-26 17:06:09', NULL),
('380b135f7e810b403c0d24d53dc6722a', '2017-07-26 17:06:09', NULL),
('5c919560466ba36f37e1c34fef589612', '2017-07-26 17:06:09', NULL),
('bbf93fc969daa2b3a97f03bc19082527', '2017-07-26 17:07:04', NULL),
('eeccf28db25e66143bc658297f452be1', '2017-07-26 17:07:04', NULL),
('9b9c211757bc3dfafaa1bc804031c0b9', '2017-07-26 17:07:04', NULL),
('388a552e66ec44dbcb99e1e354a4aa28', '2017-07-26 17:07:08', NULL),
('f1cebd77b3a3ffecb52b6b968495380b', '2017-07-26 17:07:08', NULL),
('170ec8564910d9c0fb406316c9dcb798', '2017-07-26 17:07:08', NULL),
('ca2d4c6dc5f8e267194a5ce744e4449e', '2017-07-26 17:07:41', NULL),
('edba7811954d9b0912a4291c3fbeb8a1', '2017-07-26 17:07:41', NULL),
('14c4775d8ffd6c2568a58183aecd7603', '2017-07-26 17:07:41', NULL),
('dac93e0f9d09a549486eb9d1744aff60', '2017-07-26 17:08:16', NULL),
('40ce8124afabe4fde25d6a5b4dc887ae', '2017-07-26 17:08:17', NULL),
('7d428730bf0ca63a1bc82e81fd8dfaf', '2017-07-26 17:08:17', NULL),
('6ff8cc736a3a85192ae1efd906f1e615', '2017-07-26 17:08:18', NULL),
('e82ad61446e669e50f185482480d9781', '2017-07-26 17:08:21', NULL),
('6dbfd58bf4e181cd204e5a0f59230b43', '2017-07-26 17:08:21', NULL),
('46a32c30d7ba192df0dc8f0db0974df8', '2017-07-26 17:08:21', NULL),
('f018956c5aa89cf01f60911b54a675e4', '2017-07-26 17:08:25', NULL),
('5ea156f1222ea127e1f1b9d0787772ac', '2017-07-26 17:08:25', NULL),
('a2b12af3222906d0709ff78f63d6abf8', '2017-07-26 17:08:25', NULL),
('13cfe52f9eed6935b3d1b39735a81a50', '2017-07-26 17:18:04', NULL),
('47697132531a8dfae90a18300a8d1ed9', '2017-07-26 17:18:04', NULL),
('85c32b9797d5de091fcc63fd68350e', '2017-07-26 17:18:04', NULL),
('568b5aea32dc3ed658880fce013d0674', '2017-07-26 17:18:04', NULL),
('4d6bfac2c17728503a16051e208e8969', '2017-07-26 17:18:04', NULL),
('a53364aeb2ac91c75ee7658e077e3f47', '2017-07-26 17:18:04', NULL),
('d35684ecd43078f173b3535b3cdf233d', '2017-07-26 17:18:04', NULL),
('dc747dcab7d86bc5c6b04808ec4ff2f2', '2017-07-26 17:24:45', NULL),
('b55891e316917bf8980b560ea7890e07', '2017-07-26 17:24:45', NULL),
('81de8c039ff11e16dfa126304b4f6c58', '2017-07-26 17:24:46', NULL),
('229051d208c76b3d430b5833d2383353', '2017-07-26 17:24:46', NULL),
('f9a7ff34ac3ba9a042f65c6a0075e8f4', '2017-07-26 17:25:55', NULL),
('e75ede10e0042dd0b37a7b5f6fd2d5e8', '2017-07-26 17:25:55', NULL),
('b127c46640d4277b5a1626718dda6dbf', '2017-07-26 17:25:56', NULL),
('513200ef4a9ae53b1ea53d726450a54d', '2017-07-26 17:25:56', NULL),
('f8b8d3af45060be8c3a8bad9cdd01835', '2017-07-26 17:28:37', NULL),
('a9577fb96160a85d032ecd49eaefd8c2', '2017-07-26 17:28:37', NULL),
('da55d01080eb8dc809480ce6139159a3', '2017-07-26 17:28:37', NULL),
('9f619c763fa26eed8a38def681ecaa46', '2017-07-26 17:28:38', NULL),
('d6f20e1c2f9e6cd8e58c6ff4c049becf', '2017-07-26 17:28:51', NULL),
('157fed15edca311b8e763ae4baab98ea', '2017-07-26 17:28:51', NULL),
('fe75a07cc109eae1a59ed20cef5c063c', '2017-07-26 17:28:51', NULL),
('114cc8ef394c23016ad639d57e1d9b82', '2017-07-26 17:28:51', NULL),
('3323c1365067984daa53627fdf3f37be', '2017-07-26 17:28:56', NULL),
('c9a49de6c4103c5ffee84246e3b22a9a', '2017-07-26 17:28:56', NULL),
('45770f3407deb11cb3ef669880d3fc4b', '2017-07-26 17:28:56', NULL),
('8fbe3c0f8c6556cae2c46c1f29405923', '2017-07-26 17:28:56', NULL),
('2b18e97f093eb73dc633fc7a3cfe4d68', '2017-07-26 17:29:54', NULL),
('fc805d43877be3e13bfaa676ed67e7ca', '2017-07-26 17:29:55', NULL),
('52d758080f98961014069831a32be3a7', '2017-07-26 17:29:55', NULL),
('4c695ce0707f94e1aa5d5b5b60eaa70d', '2017-07-26 17:29:56', NULL),
('41abc0340658888de2972f19ce1f04a0', '2017-07-26 17:29:56', NULL),
('a1d97b09997b076bd1c54e1b2a48bd51', '2017-07-26 17:29:56', NULL),
('392942fc0be304d396f14086b6625588', '2017-07-26 17:29:56', NULL),
('85c6904b41a9a5314c8beae4bb7957fe', '2017-07-26 17:29:56', NULL),
('61ab7ec365a843e204659c33204e1426', '2017-07-26 17:31:53', NULL),
('86b688eb17b666fb0085402d6bcc8396', '2017-07-26 17:31:53', NULL),
('f641b9aae83de55cbac4e38983297bbe', '2017-07-26 17:31:53', NULL),
('38c4504b19dc1f9cc8904fa8f233def8', '2017-07-26 17:31:53', NULL),
('496df283f4ca97bce61703c8b0479ee9', '2017-07-26 17:31:53', NULL),
('ed02fc1f97f63d831bf60d0f39b46911', '2017-07-26 17:31:53', NULL),
('6feb4f7920d85b87144292ce6ecd3010', '2017-07-26 17:31:54', NULL),
('87dfb60c87dcaf0e8d13875148bc9aaf', '2017-07-26 17:31:57', NULL),
('15bdd02e341feefab959c36dc9449a93', '2017-07-26 17:31:57', NULL),
('1e5a2a624cf17bda6b13d979a87bdfce', '2017-07-26 17:31:57', NULL),
('80d2829cf9a7c637b43ce7d164640300', '2017-07-26 17:31:57', NULL),
('4ee94b0a81ca5cd6563b95e22fdb74', '2017-07-26 17:31:57', NULL),
('34ddbe25c8ac09001f1bf34e978ca760', '2017-07-26 17:31:57', NULL),
('b68944c9dc0c895fc9dc91488976d84e', '2017-07-26 17:31:57', NULL),
('6aacd7f8ed762fcf3d7e1cf487f9eb8b', '2017-07-26 17:31:59', NULL),
('d797de26a1c327771a5f27a32967796b', '2017-07-26 17:31:59', NULL),
('fd0cf2fc05632bf90688005a7bded69b', '2017-07-26 17:31:59', NULL),
('3ba9d1a4667843ebe3dedea8d3a34a10', '2017-07-26 17:31:59', NULL),
('72fb661c0d01ca3a53963a0a40a5fd21', '2017-07-26 17:31:59', NULL),
('92675ad4cb13172c246d5240576e4812', '2017-07-26 17:31:59', NULL),
('ee1e586afeefd9b806c8ff0eea0901f5', '2017-07-26 17:31:59', NULL),
('c133956506bcd0e3db8b76dd9db9a8f6', '2017-07-26 17:33:47', NULL),
('c6acfa09d2e5b556b1e3a327417b8d09', '2017-07-26 17:33:47', NULL),
('daf329ad12a4c6eef95837799ceb257c', '2017-07-26 17:33:47', NULL),
('830a7cce1eed7cb195690829f9f0deb7', '2017-07-26 17:33:47', NULL),
('c0ca18055d42fe9c6d126ef6d916d2d2', '2017-07-26 17:33:47', NULL),
('52ceeea0321a58900d00fccc58ed97b3', '2017-07-26 17:33:47', NULL),
('f638212e17f0bb2c796c303ca18abf63', '2017-07-26 17:33:48', NULL),
('fede2fdf9dc3572a04c87e1dcd0468b4', '2017-07-26 17:34:09', NULL),
('e62067278129aa333f8516c1398e069c', '2017-07-26 17:34:09', NULL),
('3d27157f1f2c1634a8a1d18d02e67759', '2017-07-26 17:34:09', NULL),
('430df639d95102d48b50d475a97a3caf', '2017-07-26 17:34:09', NULL),
('cd37a9152847a169ae4455bb3ee61a7d', '2017-07-26 17:34:09', NULL),
('1d600acc1f06a210287430f85c131de8', '2017-07-26 17:34:09', NULL),
('b83765cf4cae6298f958b23df230f7c4', '2017-07-26 17:34:10', NULL),
('7e07a78063246b931ee89adbfd4a1dba', '2017-07-26 17:35:34', NULL),
('a466244b60ba0e8d34ce05e80ddb8b50', '2017-07-26 17:35:34', NULL),
('dd0671babaecf679a0ad6ff0e0379c67', '2017-07-26 17:35:34', NULL),
('7bb4b1d43ac599bbd73afc65571298c8', '2017-07-26 17:35:34', NULL),
('1e0277a84fc4bc0b1b830010c3c0176f', '2017-07-26 17:35:40', NULL),
('6373ab77f39f5de910789be19e39065b', '2017-07-26 17:35:40', NULL),
('c405e8fd7fea204b7f93838f8b568f86', '2017-07-26 17:35:40', NULL),
('179dfd6df59bfd28d98aceab3fbcd678', '2017-07-26 17:35:40', NULL),
('a10d67e4fe38c200d7d607179b0e3e7f', '2017-07-26 17:40:28', NULL),
('3369ed40d8975c39bcd71d091a8f1002', '2017-07-26 17:40:28', NULL),
('5ea2b32d4850eedca2b7817c1601dffc', '2017-07-26 17:40:28', NULL),
('bd183565593d553e80d2a88757d3c738', '2017-07-26 17:46:06', NULL),
('36521d74eb3c104b70d52c17e29068ea', '2017-07-26 17:46:06', NULL),
('5efafb9202fb2bc69c5d065e036f6863', '2017-07-26 17:46:06', NULL),
('bc2f9c638ca37ba5d8bb774254819744', '2017-07-26 17:46:06', NULL),
('ca87493970f853704e2e4a0ad767758e', '2017-07-26 17:46:06', NULL),
('3291a16b44cef0e804a57d9da11ca3fa', '2017-07-26 17:46:06', NULL),
('66f9884c566f56c240e72aeb4142d68b', '2017-07-26 17:46:06', NULL),
('e8d63a557f52fca1abdadc029ffbe8de', '2017-07-26 17:46:11', NULL),
('4a5c8049ca3d4daf37a0556b34275e51', '2017-07-26 17:46:11', NULL),
('181529cc1b4e9d23f9ebf339d7b6b924', '2017-07-26 17:46:11', NULL),
('f4f61ea7ab3a9526f64809923b0e4b06', '2017-07-26 17:46:11', NULL),
('19cc2707a59dff85b108258a97ff0f39', '2017-07-26 17:46:11', NULL),
('9bac95278846ec7eb7cbdaf7968b53fa', '2017-07-26 17:46:11', NULL),
('e1a455e2043fa44ba08cc7317f4f9e4a', '2017-07-26 17:46:11', NULL),
('a24d538863c24e2b156f491558f7c871', '2017-07-26 17:46:15', NULL),
('8d8fe30dfd144820e524011b8a80ca25', '2017-07-26 17:46:15', NULL),
('e2cbf1cd750b11a99ad4b53e2a21cbf1', '2017-07-26 17:46:15', NULL),
('98dcace9c995db756bb4276e111cfd39', '2017-07-26 17:46:15', NULL),
('ef476f65963594edf1d5ba95f7af9727', '2017-07-26 17:46:15', NULL),
('c933c4a248b901e0f534b2fdc232c78a', '2017-07-26 17:46:15', NULL),
('ee2122044e05c154007ea82e6f54d14a', '2017-07-26 17:46:15', NULL),
('5c7b59ed294b160e11e175a2da6af03f', '2017-07-26 17:46:19', NULL),
('2ca652d338c7f0f247815574a9d3b4ea', '2017-07-26 17:46:19', NULL),
('ba5e9cc7713ed7e6304a697efaad392d', '2017-07-26 17:46:19', NULL),
('81e72b745b625b07c12be84abe88605e', '2017-07-26 17:46:19', NULL),
('ce321c924cb51d37702cf9b01bd71eff', '2017-07-26 17:46:19', NULL),
('98f81b9beb09b1cfef3e6180a78f9fe6', '2017-07-26 17:46:19', NULL),
('cc6c84a2fd65edf41c65d2ad2ee1b62', '2017-07-26 17:46:19', NULL),
('e1ee0852db5bc8e4c0f04016948a7d1c', '2017-07-26 17:48:42', NULL),
('f4e872eb8d0b7c2879e1c5cdd1671518', '2017-07-26 17:48:42', NULL),
('80548dfff1d968b44c40bfb2dc09c311', '2017-07-26 17:48:43', NULL),
('9a64a2b0bb3c9d74698504004f357a34', '2017-07-26 17:48:43', NULL),
('a9b19a27bf0a261c4a5c5719e2961ad6', '2017-07-26 17:48:43', NULL),
('b911f3591c8f6c8673009209d430dd9a', '2017-07-26 17:49:07', NULL),
('7f04259e365a04020ec46ce5b18c48da', '2017-07-26 17:49:07', NULL),
('e0bc877d9a67152a108f7a689dbb3538', '2017-07-26 17:49:07', NULL),
('2477d18a66a123db0cce6d3abf46752a', '2017-07-26 17:49:07', NULL),
('ec2ca56c83fccc67951de2e4284b6665', '2017-07-26 17:49:10', NULL),
('b5479c4ca1709a058d144662e3e86f30', '2017-07-26 17:49:10', NULL),
('d5a45e3c42c3a4eb5a93809711787127', '2017-07-26 17:49:10', NULL),
('608148a3f54bf9889bcf92da2660e20a', '2017-07-26 17:49:10', NULL),
('15036c9a4f43d8f4bc6ad07800844c14', '2017-07-26 17:49:10', NULL),
('4e34a34f551d8104ed187c1e0a7ec9ab', '2017-07-26 17:49:10', NULL),
('e4fcd37b9007d9dd4c0d50761d1d240b', '2017-07-26 17:49:11', NULL),
('74dd2f0ee6c2e0ed9b6c4bdac62d577d', '2017-07-26 17:49:13', NULL),
('8a9a9ad826fac495d18eabbbd7ebc1a', '2017-07-26 17:49:13', NULL),
('c44b5c3706c60c8b06a76cfe013600c4', '2017-07-26 17:49:13', NULL),
('8be4a72fca285dc869ef9b649caf1829', '2017-07-26 17:49:13', NULL),
('a0302f91ebb6da1fcd57273c2f4680f3', '2017-07-26 17:49:14', NULL),
('25b85910f4cb563c4913383e9e7eeea0', '2017-07-26 17:49:14', NULL),
('763b79ec032a1757b9a7eca0f7fbc9e3', '2017-07-26 17:49:14', NULL),
('3018456bcda90a9f5aff1ecfd3730d4e', '2017-07-26 17:49:22', NULL),
('ca12105002d07ef977bf647bcd033994', '2017-07-26 17:49:22', NULL),
('770c8477d320a23bc115ab3fcf37fd0c', '2017-07-26 17:49:22', NULL),
('ee404b4a2723ebc56df5076e742aa0e3', '2017-07-26 17:49:22', NULL),
('8c31adf9019c5e8d99d3f5ab7653772d', '2017-07-26 17:49:22', NULL),
('fd821b679fe50efa5accb156eb7448a1', '2017-07-26 17:49:22', NULL),
('373a9557c2ea277b3b2692607b7ebf06', '2017-07-26 17:49:22', NULL),
('11549dbeb57d4145cae2f6fd377efe78', '2017-07-26 17:49:24', NULL),
('20141920e6d02f2a893cd65d4ee0ed70', '2017-07-26 17:49:24', NULL),
('8f9e821afdbacef46305ecc8d47b13ef', '2017-07-26 17:49:24', NULL),
('9ee4fd7c0979883df20eee2f57284f6a', '2017-07-26 17:49:24', NULL),
('e6ef6a2eee81b641e3b8e33aba88544a', '2017-07-26 17:49:24', NULL),
('9809ecd16aaeca5b508fdaaa74d51c4', '2017-07-26 17:49:24', NULL),
('7574432efae01181393617293b606b43', '2017-07-26 17:49:24', NULL),
('4fd9c0dc37f3debf24acbc5c13a80594', '2017-07-26 17:49:26', NULL),
('c1b8314ad3a5dbceb6a91f3c5bc611c5', '2017-07-26 17:49:26', NULL),
('cf7986b8f19191a13beb3a33cc6bf231', '2017-07-26 17:49:26', NULL),
('bd8e82b4afb0fd80e9a25efabf668c69', '2017-07-26 17:49:26', NULL),
('854b153407375b41ecef22a3934d2351', '2017-07-26 17:49:26', NULL),
('3ef39a246eccc5e7192892a4921bafa0', '2017-07-26 17:49:26', NULL),
('c836db2d027b6131b06f37a60282401d', '2017-07-26 17:49:26', NULL),
('e7bfcdf2e1eeee590ad6104445e0e935', '2017-07-26 17:49:33', NULL),
('8be3a51c7ef908a4cd72e29738593db7', '2017-07-26 17:49:33', NULL),
('a1140a4480f3b9dc5fd8ea4aa57da235', '2017-07-26 17:49:33', NULL),
('cebff3aef187ae1e8df73983c5df8623', '2017-07-26 17:49:33', NULL),
('3ec4f3a494f9ad7f5cc321f69489863c', '2017-07-26 17:49:33', NULL),
('d9ac822939fb5a05d1c00500499d95df', '2017-07-26 17:49:33', NULL),
('ca90cf48d8d3f2a01774aeba472eb76a', '2017-07-26 17:49:33', NULL),
('c806cb0560700960350c223e28de765c', '2017-07-26 17:49:35', NULL),
('8008cff738adbfe021ebee85219fc6cc', '2017-07-26 17:49:35', NULL),
('d1152ea9c0bce4697297e193f8201b18', '2017-07-26 17:49:35', NULL),
('930ee8af2eace1892fb1807ce05a6591', '2017-07-26 17:49:35', NULL),
('36c3b73d632dbe3e0639103cf311ec7f', '2017-07-26 17:49:35', NULL),
('91e0a206bb1a1ca4fc723a3e772787ee', '2017-07-26 17:49:35', NULL),
('a650160567092c62103d61a632003c4c', '2017-07-26 17:49:35', NULL),
('aa1c809859a752cd449e48dd0964c401', '2017-07-26 17:49:36', NULL),
('b1c73d2968a985798f1168192de8c60b', '2017-07-26 17:49:36', NULL),
('3eb3e51d772197ca0786826f3a98d8ed', '2017-07-26 17:49:36', NULL),
('4e1089020718788cd4d83ac33b17082f', '2017-07-26 17:49:36', NULL),
('77d40e2e41ca5e782f343450de1ade0', '2017-07-26 17:49:36', NULL),
('d043be09c8cbd801bb8321849ddbc483', '2017-07-26 17:49:36', NULL),
('700c14330b70540c54dfcf39788db26f', '2017-07-26 17:49:36', NULL),
('8a0cc35a38477421b3a4e2c770969119', '2017-07-26 17:49:37', NULL),
('433e59a63113770c5a6ccf9b0bfb0eb1', '2017-07-26 17:49:37', NULL),
('161e7fefc57d3f7a5084a69072c4b44f', '2017-07-26 17:49:38', NULL),
('c7c531658e5c7435d77d86a5ab1bc2aa', '2017-07-26 17:49:38', NULL),
('95a01115dd83bdbcd518bf11e1250b7b', '2017-07-26 17:49:38', NULL),
('576eaec053dec709f402cbba0dc65b42', '2017-07-26 17:49:38', NULL),
('f1dbbc198b3007395da77f0b08529973', '2017-07-26 17:49:38', NULL),
('65b70859a8b93dee26acbfc7c3c53e99', '2017-07-26 17:49:39', NULL),
('9ad6ea4c88f3db993b4f76ca90cab213', '2017-07-26 17:49:39', NULL),
('1b82f175afc9449989a1912597756b3', '2017-07-26 17:49:39', NULL),
('d431129169459d3dfd10a28f3466966e', '2017-07-26 17:49:39', NULL),
('5ba50a947ae8994d1ca63433db6c4c51', '2017-07-26 17:49:39', NULL),
('183d7799c4673adf4570391577251654', '2017-07-26 17:49:39', NULL),
('414f9f6beed00ca0931ce4910f718a92', '2017-07-26 17:49:39', NULL),
('cda9365e2520c462f24be40f0cecabc1', '2017-07-26 17:50:04', NULL),
('cecc68561ade97f5e13ab0eaffb81bd9', '2017-07-26 17:50:04', NULL),
('e1c5537122c663cc8d8c76b8dc382129', '2017-07-26 17:50:04', NULL),
('50c0e0ca2f2544b6f3aee6ff0de8f4d5', '2017-07-26 17:50:04', NULL),
('f4d2917c4ec2ad297b4cd5724cba4fd1', '2017-07-26 17:50:05', NULL),
('16e17bc32238b7347140fa681552b975', '2017-07-26 17:50:06', NULL),
('8e02e1c39ea173dc89ca171a64318b4a', '2017-07-26 17:50:06', NULL),
('3d8a3f9958f7c651129a38574b8875a1', '2017-07-26 17:50:06', NULL),
('d85a8a878b20d27e9de12cdbe8011cc4', '2017-07-26 17:50:08', NULL),
('11be33c7d78b556af8bdfdfce3742ecb', '2017-07-26 17:50:08', NULL),
('34652d997ea0eb3139fcaa2f288369c7', '2017-07-26 17:50:08', NULL),
('a50aed4a0c0bc0cba1f824cc33ba93d7', '2017-07-26 17:50:08', NULL),
('2110d19e0a69678ba9c564ed2da67a85', '2017-07-26 17:50:08', NULL),
('17081b50aec6a2af3a4900844edda859', '2017-07-26 17:50:08', NULL),
('1907a9d1c774f82fa3339103ab17d4e7', '2017-07-26 17:50:08', NULL),
('a2e333255cb818771a3009764aadd0bc', '2017-07-26 17:50:09', NULL),
('b1dd50ace7b9c00aea04d19247e468c2', '2017-07-26 17:50:09', NULL),
('1f8b59bbb7e145c054bca7d96a1d0f2', '2017-07-26 17:50:09', NULL),
('68d1e3d43fddc47f8b12d221427c2bbe', '2017-07-26 17:50:09', NULL),
('7463ee89b66b0050bfa1ab7960ed4f3b', '2017-07-26 17:50:09', NULL),
('6537d7a9348a816cbca6a4c6ef9d2c05', '2017-07-26 17:50:09', NULL),
('18e8dc6625aeeed3c27ca94b58064ffa', '2017-07-26 17:50:09', NULL),
('40b194a0ab46686f4b53bfae2dca2468', '2017-07-26 17:50:11', NULL),
('b23e02c3232d1883dfe61ac3d1cacac4', '2017-07-26 17:50:11', NULL),
('7be5dc246a4c855e2bd14e4386feb82f', '2017-07-26 17:50:11', NULL),
('df3316c543cf9b184b307c41a1ade808', '2017-07-26 17:50:11', NULL),
('44a8c9ce2aef3ce9fd7df20699425be6', '2017-07-26 17:50:11', NULL),
('82ab8c359e97961f53964f5236a195ff', '2017-07-26 17:50:11', NULL),
('48b56acf68a88aed71b11f4733cffd0a', '2017-07-26 17:50:11', NULL),
('27faf0c27743eccce75a9838fcbe329e', '2017-07-26 17:50:13', NULL),
('ce6d904f0917a11411ac56a6bc99c3f5', '2017-07-26 17:50:13', NULL),
('4644d1f203354a97e896cff3df881cca', '2017-07-26 17:50:13', NULL),
('d031a582bb064b211a726c5c79af1736', '2017-07-26 17:50:13', NULL),
('53c2c8038222d0052788ad5d466d615d', '2017-07-26 17:50:13', NULL),
('7422e02ed55d2a69732680ada21858c2', '2017-07-26 17:50:13', NULL),
('c20f17387669e275edb39191c52aa4c8', '2017-07-26 17:50:13', NULL),
('b36477c133b445ed6bb5f677a0f6941c', '2017-07-26 17:50:15', NULL),
('a4eda1ddedb44dcd428e36a7ab2aaea7', '2017-07-26 17:50:15', NULL),
('53c5072fdb8c11120925ddea22c47105', '2017-07-26 17:50:15', NULL),
('e248cd2dc258fe8d4229e964feff5cc0', '2017-07-26 17:50:15', NULL),
('6c3d875e33f9aea8f901e3be1d6339ba', '2017-07-26 17:50:15', NULL),
('9a30ff8f551ea0b287b0cd293d7f5a8', '2017-07-26 17:50:15', NULL),
('48b2949fa543c5f3dfb28386f537f565', '2017-07-26 17:50:15', NULL),
('ec6ad681ba60fbe9763aeff903a0a5a8', '2017-07-26 17:50:32', NULL),
('1135efc6f171363a5574432ed5d9f782', '2017-07-26 17:50:32', NULL),
('962beaec9f1b9084b87a982728001e25', '2017-07-26 17:50:32', NULL),
('449319031f98da4039159f599fd52f0a', '2017-07-26 17:50:32', NULL),
('32ee1caf683663447ce1d0f4cc87e8db', '2017-07-26 17:50:32', NULL),
('db215a15d94d5b62630a85ba55c1f66', '2017-07-26 17:50:32', NULL),
('4e921937cfa42136dc515311d95ff6f2', '2017-07-26 17:50:32', NULL),
('de0228497629ee2ddddc0abf6eddb0e6', '2017-07-26 17:50:34', NULL),
('c5849ac180b61bceba88e77a7c8598e0', '2017-07-26 17:50:34', NULL),
('b316d69253a578cda02821564c3135a7', '2017-07-26 17:50:34', NULL),
('f29fbdbe15b52b3e3abd4574c05aabca', '2017-07-26 17:50:34', NULL),
('301c85a33f3f99b2f87d868781f8dab5', '2017-07-26 17:50:36', NULL),
('49b9ae5cbcc3743b7769ee356f31182', '2017-07-26 17:50:36', NULL),
('2b103a2b690b53d888628e27f6f66ed4', '2017-07-26 17:50:36', NULL),
('9d5adf482dbd5ced35276d3097d767ee', '2017-07-26 17:50:36', NULL),
('87af6a59564e54a1a2dcec75a3c57425', '2017-07-26 17:50:36', NULL),
('56a0d8e59dfc7f5bb972d02347875e71', '2017-07-26 17:50:36', NULL),
('85d67f6543019c1a647e1253a36383e', '2017-07-26 17:50:36', NULL),
('96fffd5615312d668e92d9f8f7607b0a', '2017-07-26 17:50:37', NULL),
('64649ba35bbb18284588f15ff3b49540', '2017-07-26 17:50:38', NULL),
('f305b0686d942b6983188306b7ed49c3', '2017-07-26 17:50:38', NULL),
('e44572c84071054544a3cab6073184a2', '2017-07-26 17:50:38', NULL),
('2199191606a0aba063eb32724ab73109', '2017-07-26 17:50:38', NULL),
('d650b023a8a4d614ec63d7c1d663f610', '2017-07-26 17:50:38', NULL),
('146de2cfbc5e33e1b48e6a4458adfbb9', '2017-07-26 17:50:38', NULL),
('69e160055a83c34cf73fd2fee54e60d7', '2017-07-26 17:50:39', NULL),
('1036691464235d0c1b6d9b36ff3de64b', '2017-07-26 17:50:39', NULL),
('21cf663f380121685b9f4f8e4c8410eb', '2017-07-26 17:50:39', NULL),
('b82de78a04534692be49a72027cf63ba', '2017-07-26 17:50:39', NULL),
('12c4ace53087c15e0f309bd287450d9e', '2017-07-26 17:50:39', NULL),
('169cbd532362ff980a9a8ba835ef8db8', '2017-07-26 17:50:39', NULL),
('b59814318aa2f84317c731580776235f', '2017-07-26 17:50:39', NULL),
('195af7936d440c7144d0a5333afc4037', '2017-07-26 17:50:40', NULL),
('96f2aefbe9403026fe99748ad9234443', '2017-07-26 17:50:40', NULL),
('d3ae4f3bd8ac21119ec3a3b037440c93', '2017-07-26 17:50:40', NULL),
('6f8608a4b7e1965316855a52f755784c', '2017-07-26 17:50:40', NULL),
('e7bb0d39697d95fa72b5c3d851a6f745', '2017-07-26 17:50:52', NULL),
('bce60d2356ec715ba5977250b62cd093', '2017-07-26 17:50:52', NULL),
('663f16399f686a3ab3c692e9fd75d40d', '2017-07-26 17:50:52', NULL),
('4d5f4b4ebdf95c5d1423a27eb74222e0', '2017-07-26 17:50:52', NULL),
('367832167cdd31a73b5f4e90bc0bd3eb', '2017-07-26 17:50:52', NULL),
('2fd696b0169706a72c0fea0ebae46434', '2017-07-26 17:50:52', NULL),
('27512dd666d6fedcd76485097d2195ae', '2017-07-26 17:50:52', NULL),
('3e445c874a3649dc8c58bc127a6f6843', '2017-07-26 17:56:57', NULL),
('3ffe785291f0bdb311c19b86a30061e8', '2017-07-26 17:56:58', NULL),
('d2376604dd5808f1b9574a57b23d90b7', '2017-07-26 17:56:58', NULL),
('3a3812ece099d0708965ed75954a2a6a', '2017-07-26 17:56:58', NULL),
('80de3d224c9b12458b046a170427f2f7', '2017-07-26 17:56:58', NULL),
('b555a9116fd45d1cb4bfb3c9aa1a5f25', '2017-07-26 17:56:58', NULL),
('38db8b4c63c8d8baf63c126574b733ef', '2017-07-26 17:56:58', NULL),
('996ab2ac00823ecfe38ee4b2ff159418', '2017-07-26 17:57:54', NULL),
('a54a4a0b07ef782f28a89b9fd4868e06', '2017-07-26 17:57:54', NULL),
('bcb18dbd91dc31ae984aecb2d3cee3ac', '2017-07-26 17:57:54', NULL),
('512015b586715ab47f2f0dad2edd6eed', '2017-07-26 17:57:54', NULL),
('238e10adf0b747917bb264ce0a6cb767', '2017-07-26 17:57:54', NULL),
('e69822ba9af5769191848e15134fdcfb', '2017-07-26 17:57:54', NULL),
('bedfe1e0046899f641e22f5932e92aa', '2017-07-26 17:57:55', NULL),
('530a358c6a694fb566acbc5638a9f049', '2017-07-26 17:57:56', NULL),
('5edb6627a2dad9146aa7d070daf656b2', '2017-07-26 17:57:56', NULL),
('70014b8976818b8eb5a3bd7cf9f63782', '2017-07-26 17:57:57', NULL),
('22d11aaa11c993bb0339b0088793c371', '2017-07-26 17:57:57', NULL),
('fa0b6e6cb26ee72feee909dfa0d5716', '2017-07-26 17:57:57', NULL),
('db38a1779537ed769c63a5584d70d78', '2017-07-26 17:57:57', NULL),
('eeeb840cee5b97bad57780247272e5f2', '2017-07-26 17:57:57', NULL),
('c53a5e361a879312972336e21984edb1', '2017-07-26 17:57:57', NULL),
('ae234e6a0ed3fbfbbd3aa5dfd1cf27bf', '2017-07-26 17:57:57', NULL),
('8234851d7ea09cb4d57d63f392cb19aa', '2017-07-26 17:57:58', NULL),
('e8a87fdb8c48d8d2e82689cb994fc4e4', '2017-07-26 17:57:58', NULL),
('c7eb3227f1491dc8aa6352dfab60715a', '2017-07-26 17:57:58', NULL),
('beca432ec337e20dddf91b3206f4e223', '2017-07-26 17:57:58', NULL),
('defc360c39341f158d60cec916ead339', '2017-07-26 17:57:58', NULL),
('81334cc05c71bf4fd8c8f6afc2a4993a', '2017-07-26 18:02:46', NULL),
('53d3d195ee35f761fce64ea23a273e39', '2017-07-26 18:02:46', NULL),
('3f6daa664a036224b665c52fda27a1e9', '2017-07-26 18:02:46', NULL),
('46c65b0aaa69fd038c7252c3edaeb1b0', '2017-07-26 18:02:46', NULL),
('68c9acf90527953b3ab7e9f6515829db', '2017-07-26 18:09:59', NULL),
('9677857258f40962020d2940d3c3989b', '2017-07-26 18:10:00', NULL),
('20390cf40939b3c7dd095219042aba7f', '2017-07-26 18:10:00', NULL),
('c5d119d32cfd6ef17d0858c953748453', '2017-07-26 18:10:01', NULL),
('cad2c44228cacd96a4fe16f7194845c7', '2017-07-26 18:10:01', NULL),
('ec50180ff6c4fea5a4e1722058353dfa', '2017-07-26 18:10:02', NULL),
('244baadd328f201a34ed51beac15d246', '2017-07-26 18:10:02', NULL),
('fa4e6784db5396d7b856674087081028', '2017-07-26 18:10:02', NULL),
('497efe7c647299c4758b733182bba34c', '2017-07-26 18:10:02', NULL),
('820333134026848c846c1344d1142ba9', '2017-07-26 18:10:09', NULL),
('fea06aadb6b9589a0a415f816a79bff6', '2017-07-26 18:10:09', NULL),
('dcac2924a6a437f105f8102f0275605f', '2017-07-26 18:10:09', NULL),
('83a860e366ad4e723a6ba7d279cc4797', '2017-07-26 18:10:09', NULL),
('6e7bf7223c35e009259376b754aa7504', '2017-07-26 18:10:09', NULL),
('817d79919b7d234b9d8c9257a2ea378', '2017-07-26 18:10:09', NULL),
('d651ce3acbaf86eb46a5883d9c21b48f', '2017-07-26 18:10:09', NULL),
('21d4b52b5cd2157fb4bf433cada1a17e', '2017-07-26 18:10:11', NULL),
('f88672ef031a0cd296b3a48077991fac', '2017-07-26 18:10:12', NULL),
('d1fe8adda7b2b968f646e96ba3bf19f6', '2017-07-26 18:10:12', NULL),
('e09f5d33075b1457abd6c5edd768eebd', '2017-07-26 18:10:12', NULL),
('23a100c255f751fa6898172871abd3bd', '2017-07-26 18:10:12', NULL),
('a92f7bee73b41580af818a2d189f7c7b', '2017-07-26 18:10:12', NULL),
('ff924cdd5ab9e32473e463dc683c0558', '2017-07-26 18:10:12', NULL),
('66f7beb5575101fa18613e8b67f7b8fe', '2017-07-26 18:10:15', NULL),
('1456d06622c1bd0a343484e3232905a4', '2017-07-26 18:10:15', NULL),
('95e1c9169357ce34778880744a75912a', '2017-07-26 18:10:15', NULL),
('5ac27e4299735838a94de7e3e33ed27a', '2017-07-26 18:10:16', NULL),
('c88500fffa095e1a8fd5d6cde402b535', '2017-07-26 18:10:16', NULL),
('96d2e17e24870ece79640bb13ccf69b0', '2017-07-26 18:10:16', NULL),
('823286320c823f77e25d24a7dc3107e5', '2017-07-26 18:10:16', NULL),
('a3ce5097e4579e32b112b14af82e6f99', '2017-07-26 18:10:35', NULL),
('c17fc4184be5162494a6a8be8931aa59', '2017-07-26 18:10:35', NULL),
('98f3502ce2784a908514ca94c200c011', '2017-07-26 18:10:35', NULL),
('7613bb5236daad9503094c3089c0f749', '2017-07-26 18:10:35', NULL),
('a1508882d69be31858c187bb19dbea', '2017-07-26 18:10:35', NULL),
('7ff40f6030504816fd343bfd37b5e57f', '2017-07-26 18:10:35', NULL),
('d20acde88039acb8ae5b30dd671d2c82', '2017-07-26 18:10:35', NULL),
('c083f541a75a343dbd015b34f863002a', '2017-07-26 18:10:43', NULL),
('7fcda0a366d06a1b16ddb12b107d81a0', '2017-07-26 18:10:43', NULL),
('6f1abf4570c7707056771fb59e3c1dff', '2017-07-26 18:10:43', NULL),
('f10f8d0ebad8672b7defad0f6beb1e5a', '2017-07-26 18:10:43', NULL),
('da0a4da23c8f0cda20017f1f7b85e9c6', '2017-07-26 18:10:43', NULL),
('88fa1d2480e16a8d0015294ab3c00041', '2017-07-26 18:10:43', NULL),
('10ac22e35de927d19ef45916fa32200c', '2017-07-26 18:10:43', NULL),
('6789400bd683b35549d0db98543396a', '2017-07-26 18:10:46', NULL),
('e0d41479eaff8e4f9c9be834ea2899b2', '2017-07-26 18:10:46', NULL),
('5048a6a326436ecf1e02c36e8f577053', '2017-07-26 18:10:46', NULL),
('daa1203b0869d6dd5a45ce1ac03f5f02', '2017-07-26 18:10:46', NULL),
('8fc191aded68e2e7c245823ac4bfca9', '2017-07-26 18:10:46', NULL),
('e4be3ed7ab6c4917300b4ab292108ed8', '2017-07-26 18:10:46', NULL),
('9a2606c9e50e68ea67a8cb8e021504cb', '2017-07-26 18:10:46', NULL),
('1d56627cc4e343423ecd8e135220ed41', '2017-07-26 18:10:46', NULL),
('78d0b422e4209cd97effeae83227bbef', '2017-07-26 18:10:46', NULL),
('8677cd5749316d328e71914a1c3e43c9', '2017-07-26 18:10:47', NULL),
('c3e022d1d7cea7b9293a0780e022e8cb', '2017-07-26 18:10:47', NULL),
('3ef0c9b621d8f8e99e11200dd81d0501', '2017-07-26 18:10:47', NULL),
('8b7a95dcc55f0defbf5598249766bb15', '2017-07-26 18:10:47', NULL),
('b3a9c38d064a09da19e8e6a5696a9f35', '2017-07-26 18:10:47', NULL),
('1eb4fc334dc86463190915e0f1c79971', '2017-07-26 18:10:50', NULL),
('3d0bf2b7f02b16b7c3a5f6b5a43a6e7a', '2017-07-26 18:10:50', NULL),
('47834e56a46d7882eaf5358fca806ec7', '2017-07-26 18:10:50', NULL),
('fcd27fd1b4294106379479a5a4476e8', '2017-07-26 18:10:50', NULL),
('15b3282de20385e08d5ba11df51480e3', '2017-07-26 18:10:50', NULL),
('834e997cf74324a64745261b43feb33c', '2017-07-26 18:10:50', NULL),
('b55e9cb2fcf3fa69250a059916c07bcf', '2017-07-26 18:10:50', NULL),
('c6419f66a6f10447c4e31d81a5e91a04', '2017-07-26 18:10:50', NULL),
('2f7b20b4dd6f8c6ef7c6218e4fc04f30', '2017-07-27 10:35:07', NULL),
('8a602f1e784afcfc450c3fe24c5ad5c3', '2017-07-27 10:35:08', NULL),
('c055d589cbb4871978ae30e22727cc0a', '2017-07-27 10:35:08', NULL),
('c7aada8645d96e40c2b8c45298f54a18', '2017-07-27 10:35:09', NULL),
('d52685ea7cbc65d413360f3771800512', '2017-07-27 10:35:09', NULL),
('db94713507763b15a93d8052d5b93580', '2017-07-27 10:35:11', NULL),
('b885e4cfa736e438f0dcb29547dc758b', '2017-07-27 10:35:11', NULL),
('6af8543f6f9e7a2f5925a0346deb4139', '2017-07-27 10:35:11', NULL),
('8e650aaf6a4ee1efbcbe0937e34d90db', '2017-07-27 10:35:11', NULL),
('aab215abe55f2f2a853db467681acef1', '2017-07-27 10:35:24', NULL),
('d1e2cf239fd64a9bab7f6e6c8feb4ef2', '2017-07-27 10:35:24', NULL),
('b4b54c78441f2b7ba71f8af04ebabf34', '2017-07-27 10:35:24', NULL),
('3406b62f921fd74a16623f048aa56b88', '2017-07-27 10:35:25', NULL),
('ba8503891b9e8c78dc69fe3b85bb417b', '2017-07-27 10:35:25', NULL),
('92f4574495a45222bdf08e55774b2274', '2017-07-27 10:35:25', NULL),
('42ad989b421bfa4552a19dcbfec4bef3', '2017-07-27 10:35:25', NULL),
('33df6f387a1b3413e29ec00971113597', '2017-07-27 10:35:34', NULL),
('e8c1ebf2e77b81d0cb5a6566790b052', '2017-07-27 10:35:34', NULL),
('6cacd78b43af6aa81fe261f0331215c5', '2017-07-27 10:35:34', NULL),
('eea578c4d3da109d6f6ec8b2c435f5b2', '2017-07-27 10:35:34', NULL),
('c9bc679097aa0167c0390c018a8de58f', '2017-07-27 10:35:34', NULL),
('f2f052e4ae3ad547ebb0d8a88fad5665', '2017-07-27 10:35:34', NULL),
('aaded51d0bc07114f9dd923abd1be78', '2017-07-27 10:35:34', NULL),
('fe79381a6228086152e64a31a9726b2d', '2017-07-27 10:35:39', NULL),
('5a1b9d6e6353b539417bb50af41f99ad', '2017-07-27 10:35:39', NULL),
('756ac5f92eaf64273363df6aa6ea8576', '2017-07-27 10:35:39', NULL),
('524ba0bdeba4df6282e92496178c257e', '2017-07-27 10:35:40', NULL),
('429b527aebb5599ef686283be2db27e3', '2017-07-27 10:35:40', NULL),
('8c69e22bd176aa0c0cfbe7cb4c1ec6a5', '2017-07-27 10:35:40', NULL),
('76b35f6862050ddc423579a0a7625ab8', '2017-07-27 10:35:40', NULL),
('d56cbc2a6a6916d6334590190fae02db', '2017-07-27 10:35:46', NULL),
('78d05fd79895ccda36489b6a581c0a99', '2017-07-27 10:35:46', NULL),
('a2d588f86e01624e69b088aea481ef50', '2017-07-27 10:35:46', NULL),
('5564aad5d85a1e0b190729180b90e7f1', '2017-07-27 10:35:46', NULL),
('6161ef9f1d9c8e1a8533fc4dff8ceba', '2017-07-27 10:35:46', NULL),
('705c5adb8da583920f227c3ce99fb714', '2017-07-27 10:35:46', NULL),
('469b8b7542c6cefac6a3c74cc53468a0', '2017-07-27 10:35:46', NULL),
('3c96523d4cc5966623e0cd86ec130c4a', '2017-07-27 10:35:48', NULL),
('ad1dfd39f6881b26640e1d6ea5d29f10', '2017-07-27 10:35:48', NULL),
('aace817f7eda4c924d4c7a0c36372a7d', '2017-07-27 10:35:49', NULL),
('2d94185a9534632d65da2ea907142965', '2017-07-27 10:35:49', NULL),
('efe24a452fd106d1abb2056fec9e04c5', '2017-07-27 10:35:49', NULL),
('ef26b81f10bc172f4ee4ecf02a4ef2c9', '2017-07-27 10:35:49', NULL),
('9353a975d9e8ded0a663beb2ab121348', '2017-07-27 10:35:49', NULL),
('572cc7497113f45f470fdf170afcee0e', '2017-07-27 10:35:54', NULL),
('4128ffad9010817f83188f0278eb4bbf', '2017-07-27 10:35:54', NULL),
('d6026573176ec4c40be0ab51167de311', '2017-07-27 10:35:54', NULL),
('e6ef448df4b054493b2f07657bf93fa5', '2017-07-27 10:35:54', NULL),
('99111cc85860461912a05064630b17d2', '2017-07-27 10:35:54', NULL),
('b70c34b667cfc03baa1e6f3b1b9ca44f', '2017-07-27 10:35:54', NULL),
('dd73a50177679207294fcf0112ddbfd2', '2017-07-27 10:35:54', NULL),
('dc099726f7dbc8f14a5015f7b522129e', '2017-07-27 10:37:05', NULL),
('f13f20e53eb1af0823ee2d56f6a4838', '2017-07-27 10:37:05', NULL),
('1e9a2ec9e698d1970530a4b2c51c989a', '2017-07-27 10:37:05', NULL),
('5d925d759666cd4551c5233cebe8e73', '2017-07-27 10:37:05', NULL),
('defd9d94cded7ae44f744231344c3be5', '2017-07-27 10:37:05', NULL),
('c10f1670f21c2237727014ab61bcc726', '2017-07-27 10:37:05', NULL),
('3b1072ed586a3684c595e76cdec318d8', '2017-07-27 10:37:05', NULL),
('947b7ac575ebd75c86ffb2b80483e7c6', '2017-07-27 10:38:22', NULL),
('3c1ec4ef848ee33ef13291b1c3ef12a7', '2017-07-27 10:38:22', NULL),
('9570d018a08d8d11665f214c13e57c88', '2017-07-27 10:38:23', NULL),
('ba881b4d47269083d51ffc91227546a8', '2017-07-27 10:38:23', NULL),
('9349dce8f3de4e0838d846e339e1f277', '2017-07-27 10:38:23', NULL),
('b997b04631a5ae1bce4309d0bbf5776e', '2017-07-27 10:38:23', NULL),
('2c6e8987c5cb4a0d5c9f72af696ea40f', '2017-07-27 10:38:23', NULL),
('31b408557f404984b6c4e304c016c2ca', '2017-07-27 10:38:50', NULL),
('f71f2145527b01824604a6c89e16251d', '2017-07-27 10:38:50', NULL),
('ddf5c0a00586b678fae01bcfdc40fb79', '2017-07-27 10:38:50', NULL),
('a8850fca07c1f8f0fd8acb5a3feb86aa', '2017-07-27 10:38:50', NULL),
('e6bc525af2cb25dc479a448bcd7a5b4d', '2017-07-27 10:38:50', NULL),
('7cc791f3b723cbec4265d86051e7331d', '2017-07-27 10:38:50', NULL),
('f5e7b363c7eb95f1575e6c59324f73ed', '2017-07-27 10:38:50', NULL),
('c82409349ab4b8571811338879705fb1', '2017-07-27 10:38:52', NULL),
('c2921ddd309cf106c4b465d7bcfecd04', '2017-07-27 10:38:52', NULL),
('3390a70986aa3b2c05770707eb24739b', '2017-07-27 10:38:52', NULL),
('4af305e24500d513b660520ed3fb1a48', '2017-07-27 10:38:52', NULL),
('9f5e8d1fc8cd3b3c7961786992cb1173', '2017-07-27 10:38:52', NULL),
('de75b43aec8da118656e83c4072fcaac', '2017-07-27 10:38:52', NULL),
('75fb42f574ea3868eea031ce4620f59e', '2017-07-27 10:38:52', NULL),
('ceaf485f023c1cce3d71e27ea580f26f', '2017-07-27 10:38:55', NULL),
('a5f28fa8dd9dcf00c1c72b94ab3dc021', '2017-07-27 10:38:55', NULL),
('8d7b3482fb559708426453692126cf54', '2017-07-27 10:38:55', NULL),
('fd800760202c0761039a9560c4552b1a', '2017-07-27 10:38:55', NULL),
('4b093e97f91e883c6d5a0a044ea60b0e', '2017-07-27 10:38:55', NULL),
('5d144a3eee893d033f2e66b56ab27dfd', '2017-07-27 10:38:55', NULL),
('38ae7f7de0b47dac8cfd4e841dbe62e9', '2017-07-27 10:38:55', NULL),
('3f82a1c1fb4070f3771b675ded0ca44', '2017-07-27 10:38:57', NULL),
('b4a2c79121b3e00036b6afa6ee6f41c', '2017-07-27 10:38:57', NULL),
('c154912fc022a8a9a926e9bd936c39b', '2017-07-27 10:38:57', NULL),
('46dccdf2cff62d42413abd882c9c7f06', '2017-07-27 10:38:57', NULL),
('e6dfb500429aa16ee0276a7bf4707f3d', '2017-07-27 10:38:57', NULL),
('74dad15a64b63fe3c98251404c54e643', '2017-07-27 10:38:57', NULL),
('c99d90332407aa0623506a6785cafd9c', '2017-07-27 10:38:57', NULL),
('a317af0e4dffc75e7e821b353e154d0b', '2017-07-27 10:39:12', NULL),
('ae4ee8e6ca29bfd51364753752607cc9', '2017-07-27 10:39:12', NULL),
('56d6d13d74b5552ec16640dcf3ec2063', '2017-07-27 10:39:12', NULL),
('f5d1360ff652e981d76ab552bd62c9ba', '2017-07-27 10:39:12', NULL),
('3d9df1621382059e3895caecbe15e1e6', '2017-07-27 10:39:12', NULL),
('7ae78f72908b5a12013df5b9c4b60a7f', '2017-07-27 10:39:12', NULL),
('62e38c0357c43ef4cfdbd662b3131933', '2017-07-27 10:39:12', NULL),
('a4ab6fe55a99ce784f3df640bea9c571', '2017-07-27 10:39:14', NULL),
('56bf4b48e433e0619c30edc7d804258c', '2017-07-27 10:39:14', NULL),
('18090ac6798e709077ea33b04d37a16e', '2017-07-27 10:39:15', NULL),
('c25fb5b696690951cdbc96779080767d', '2017-07-27 10:39:15', NULL),
('f0337a5657e717f1663b9ac86368db4b', '2017-07-27 10:39:15', NULL),
('2730b80505f563b907abeaea32739f6b', '2017-07-27 10:39:15', NULL),
('c02545edff0c6c0453e8cc5dbe82affe', '2017-07-27 10:39:15', NULL),
('577ddf51b99e22e5a0b381678c5425a7', '2017-07-27 10:39:22', NULL),
('bc28669f104866617c00b51e7f269ba1', '2017-07-27 10:39:22', NULL),
('456bf53814f4a50e76d8b184c110984', '2017-07-27 10:39:22', NULL),
('b3268793b695a58362bfa1442b0a3ff3', '2017-07-27 10:39:22', NULL),
('c51b20ee70239904ddf5b0a679fc003c', '2017-07-27 10:39:22', NULL),
('30e92744f5173dc47723175398dc6785', '2017-07-27 10:39:22', NULL),
('adf6a66fe73298f8a21f60b6b5a23cdb', '2017-07-27 10:39:23', NULL),
('66361a57f14c449520de800652a8c987', '2017-07-27 10:39:23', NULL),
('87753bf35919d4c0e176633b11e11870', '2017-07-27 10:47:03', NULL),
('7b0101cbec07e0fc1b8af02956d572c', '2017-07-27 10:47:03', NULL),
('7d1dcfe3f12e57121db68e65acff6e9f', '2017-07-27 10:47:03', NULL),
('933f26e0874a5072b9dce1f982d64dd3', '2017-07-27 10:47:03', NULL),
('51ab793e19823a96f08466a5317713ee', '2017-07-27 10:47:03', NULL),
('fb7ef7331ff87fe9e6d6b325c6e639bc', '2017-07-27 10:47:03', NULL),
('b90ab8183c7520905a03ef3a5f6753e0', '2017-07-27 10:47:03', NULL),
('fd0c7822a1bcdca811ad4fdbd6e78100', '2017-07-27 10:47:03', NULL),
('713b62dbb8333274ffe6bd82296461a3', '2017-07-27 10:50:05', NULL),
('b15a3554fcb785ebe9267c33b5c30818', '2017-07-27 10:50:05', NULL),
('c002f609527ebb1c1f5fbf421b1b5150', '2017-07-27 10:50:05', NULL),
('58f9fc410e6d4a33c5d2bb501e7dffbb', '2017-07-27 10:50:05', NULL),
('ac83fcbb67edb6aa151630242228861e', '2017-07-27 10:50:05', NULL),
('bf9759a11ce7918c893e47b7881e0a94', '2017-07-27 10:50:06', NULL),
('b4c98d9e769bf58f18c3a71dd52b9604', '2017-07-27 10:50:06', NULL),
('7b931939f42f4e0e25dd90b81f0c5837', '2017-07-27 10:50:06', NULL),
('3e0e0e073ea87a8a050f4ac3376bb655', '2017-07-27 10:50:06', NULL),
('3629f951e562d4615742a515ce018d22', '2017-07-27 10:54:58', NULL),
('cdc263df2ae5890ba70a287094be924a', '2017-07-27 10:54:59', NULL),
('3f82ee1874cd8d05896950baeb635088', '2017-07-27 10:54:59', NULL),
('1b6a14eb6675ef003833a9da7e97ee77', '2017-07-27 10:55:00', NULL),
('9ca8423f099a9e8c3b3ce994addc8a3d', '2017-07-27 10:55:00', NULL),
('4fc943a716e6707f3b48a48c30510fae', '2017-07-27 11:01:26', NULL),
('274459c91c8bf9de0bf9a1331b6dff1d', '2017-07-27 11:01:26', NULL),
('30b08574824ce7924be0b08792684b01', '2017-07-27 11:01:27', NULL),
('e96c947976417f9160b8577334161ad0', '2017-07-27 11:01:27', NULL),
('3201a71f3a5589c3ec6b32e8ca12d0ce', '2017-07-27 11:01:27', NULL),
('258974602447d62dea87b5007f2d2828', '2017-07-27 11:04:36', NULL),
('877435abf2fb4ec497375e847f854a4b', '2017-07-27 11:04:36', NULL),
('515fe20be5640d8c9d06c36abfe7e7c8', '2017-07-27 11:04:36', NULL),
('921e0754dadc662b91c022402b06062a', '2017-07-27 11:04:36', NULL),
('3c51a9c59ec84eff9ba28b7929f86d63', '2017-07-27 11:05:50', NULL),
('9d2dbd48ef2db92a71f8287e6e2ca806', '2017-07-27 11:05:50', NULL),
('ecae2b6e6552c895f32f353147b1598b', '2017-07-27 11:05:50', NULL),
('1e987ded1db903111d1e79c2512bd2e0', '2017-07-27 11:05:50', NULL),
('16bec1d819ddd4a6baf8de4a9b6163aa', '2017-07-27 11:06:32', NULL),
('c00d09b9ab3efa5c673d913dca1057b1', '2017-07-27 11:06:32', NULL),
('e42a715b1be86467d80d2eb0123f5dc0', '2017-07-27 11:06:32', NULL),
('c6488d5a51cf85d58c19b21046b67b3e', '2017-07-27 11:06:32', NULL),
('ce110c78db64398267251ae0e7838b69', '2017-07-27 11:06:32', NULL),
('72a718919c7f0e3d5300250ed634f707', '2017-07-27 11:06:32', NULL),
('ce7a37933c59be12c845d439cd20c25f', '2017-07-27 11:06:32', NULL),
('a15434e14ec43ec033ed6b7664329417', '2017-07-27 11:06:41', NULL),
('f9a749ed685657b54b7ff0b6de6ef3d1', '2017-07-27 11:06:41', NULL),
('95383772287c98999ab54a1d85d97a60', '2017-07-27 11:06:41', NULL),
('248ea06ade5adca0c823048a021d9e94', '2017-07-27 11:06:41', NULL),
('e004d4fc2027bc34f6787388e81b7710', '2017-07-27 11:06:41', NULL),
('133832295eb246f6e46eb505fed99054', '2017-07-27 11:06:41', NULL),
('c700fb9e595842782fc8a6162c4283df', '2017-07-27 11:06:41', NULL),
('4b867847c4fb8eb4f00e6d08516109d1', '2017-07-27 11:06:46', NULL),
('41991877a72745225179416185a1b186', '2017-07-27 11:06:46', NULL),
('8ec81a7bbf20e3d8172fea0e02686aaa', '2017-07-27 11:06:46', NULL),
('b40dc97c4b0e8f55832c7ddc2d87f9a0', '2017-07-27 11:06:46', NULL),
('64a36cec3f630c4ee5ffc069f7f37e0c', '2017-07-27 11:06:46', NULL),
('7ef4456cb12509f01d07651f6ecd3749', '2017-07-27 11:06:46', NULL),
('e80f37b7df38ee95403100217a9f55be', '2017-07-27 11:06:46', NULL),
('391a7443cc4e9923a5c2f41602117918', '2017-07-27 11:06:52', NULL),
('4c092d8485fc9ce605cc2b017c0b6493', '2017-07-27 11:06:52', NULL),
('54490872759a163e7422f1c3bac2bed3', '2017-07-27 11:06:52', NULL),
('e061863cc03ad297936d54438612f902', '2017-07-27 11:06:52', NULL),
('287fcc3fc9b30a01402885e7075b5e96', '2017-07-27 11:07:43', NULL),
('10ef17a945d3f9ff0d59b176a60fce6a', '2017-07-27 11:07:43', NULL),
('c98ecaedf82bab3c745b74f770fca542', '2017-07-27 11:07:43', NULL),
('171c9cb1a94c6e505130764435a2f734', '2017-07-27 11:07:43', NULL),
('6ac684f30c52e2cb1daa0cd8c8937b98', '2017-07-27 11:07:43', NULL),
('2cff066cdbbfc0732d004d8cfa1285af', '2017-07-27 11:07:43', NULL),
('5bd7a2143927adcf6c87060dcb3da21c', '2017-07-27 11:07:43', NULL),
('982c47203718bcedb196bcf36b26f693', '2017-07-27 11:07:53', NULL),
('d735726e9a697fe1cf00789795be6b4d', '2017-07-27 11:07:53', NULL),
('ac23c6cccc43ff6caaf84214d563846a', '2017-07-27 11:07:53', NULL),
('166d79f82e7e28f2aeeb2cd524b3eac5', '2017-07-27 11:07:53', NULL),
('35df021569be845d349273fe9e4ff801', '2017-07-27 11:07:53', NULL),
('5aed187b41bba31239cf2a6400455919', '2017-07-27 11:07:53', NULL),
('63ccbf9c5197cf93ba532de7d35117a', '2017-07-27 11:07:54', NULL),
('a24ecbb58f6a56a5c0330b7e666a94b3', '2017-07-27 11:08:19', NULL),
('3d036a66e902a76237033a116efcadbe', '2017-07-27 11:08:19', NULL),
('a373b0b49c0d06be93d854ab5c96c338', '2017-07-27 11:08:19', NULL),
('a764ee3c4d409832cd9af5f949c4c3fc', '2017-07-27 11:08:19', NULL),
('27de144dab2c1b73f60f61ec46883d82', '2017-07-27 11:08:19', NULL),
('18898ae7272fb282bc5eb8cffa64d642', '2017-07-27 11:08:19', NULL),
('952df6190f9f36347f6d34f7a703c2d8', '2017-07-27 11:08:19', NULL),
('c4d478f9075ca4a6cd1007a9a5d5a74', '2017-07-27 11:08:20', NULL),
('d1d0f1acc652a29ba481bdb8332956e2', '2017-07-27 11:08:20', NULL),
('b3d7cd08a06938be669080a78b953844', '2017-07-27 11:08:20', NULL),
('75f3ce59fc96d35b5e83d0f00e6c639a', '2017-07-27 11:08:20', NULL),
('3e72a8e3f81067affc616ad0e0be79eb', '2017-07-27 11:08:20', NULL),
('80bf31858020e1cfbfb89b49a6fec06e', '2017-07-27 11:08:20', NULL),
('bf39abbcd0310b99bd4a442bc6e32c22', '2017-07-27 11:08:21', NULL),
('382a84eb224fe32452d3ce4c580bad22', '2017-07-27 11:08:22', NULL),
('162e0844e4f2b22b7252ec7e73065c2b', '2017-07-27 11:08:22', NULL),
('b43e5066f633ebcb4eab140127a1dc88', '2017-07-27 11:08:22', NULL),
('218bc8e06694aa18bd777eabf70b65d8', '2017-07-27 11:08:22', NULL),
('27bf582f373438ee2032e3078a2c4111', '2017-07-27 11:08:22', NULL),
('a30c8ec6b2a4490ed93004bda295cdf3', '2017-07-27 11:08:22', NULL),
('aa74f9208b4595bea453818898922051', '2017-07-27 11:08:22', NULL),
('268b15899832d3870fa8cb47a4c0e8a1', '2017-07-27 11:08:26', NULL),
('5007cdaac22a4dad3daf7c015f3b6f56', '2017-07-27 11:08:26', NULL),
('23ae5eb206ad237dba86fadffdaee9e', '2017-07-27 11:08:27', NULL),
('332014536569742bc440d5a99c47536e', '2017-07-27 11:08:27', NULL),
('4a05fb053130548fd88b9f0dbbff5d5a', '2017-07-27 11:08:27', NULL),
('ffda70a8d4d69da555b5810398b6e1d7', '2017-07-27 11:08:27', NULL),
('5f90276f35a36eec2beec6bdad9d74c7', '2017-07-27 11:08:27', NULL),
('310da7d9ee53ef92f3463fe82b4608a2', '2017-07-27 11:10:04', NULL),
('264e1e1ade2a9cd142c288a8ea505965', '2017-07-27 11:10:04', NULL),
('5333c58cb77131241794bc59337b020e', '2017-07-27 11:10:04', NULL),
('e12a560f457d2c7dcfd91a518b48eef3', '2017-07-27 11:10:04', NULL),
('bcbd0360c5cd7d0aea1b1b8b7ea61646', '2017-07-27 11:10:04', NULL),
('cab8cdd562e7ab08c07f0b6bab4ce100', '2017-07-27 11:10:04', NULL),
('86bccd2635c8227dbd180692c1de5da0', '2017-07-27 11:10:04', NULL),
('ca5f38888acb4684eb692ff5ca96b09f', '2017-07-27 11:10:06', NULL),
('6ba152cac0fba92b2858822afaa138ee', '2017-07-27 11:10:06', NULL);
INSERT INTO `sessions` (`id`, `onlTime`, `userID`) VALUES
('4d002c51a0376cf4d482d69ebbe055ae', '2017-07-27 11:10:07', NULL),
('2e253abf391af177724ca492e3f7f048', '2017-07-27 11:10:07', NULL),
('871eedec22cd44552de7b44908a38a75', '2017-07-27 11:10:07', NULL),
('84abc798276469b982b06a35d3b02b37', '2017-07-27 11:10:07', NULL),
('e4be08823171c19a066efd9880d35bbf', '2017-07-27 11:10:07', NULL),
('e90290b65ccd4d23c5b62cda5a265711', '2017-07-27 11:10:08', NULL),
('2495670e0ab80d5a35cf4e817b8be20a', '2017-07-27 11:10:08', NULL),
('27bbf59add1cf9c2052dc4523d36bb9b', '2017-07-27 11:10:08', NULL),
('3011b9c8e9738b52bd191de8f47d9bc5', '2017-07-27 11:10:08', NULL),
('2180c00343944143023bb71594a601a', '2017-07-27 11:10:08', NULL),
('40392d254f7d8fb2ffea75100d42fa1c', '2017-07-27 11:10:08', NULL),
('7b3aed1404ade6318062d90bfe4892bb', '2017-07-27 11:10:08', NULL),
('1a2768b21225a0973f35565483df7ab1', '2017-07-27 11:10:11', NULL),
('6a588ad3e9707148eeb4a34e261e6b71', '2017-07-27 11:10:11', NULL),
('860805b80441c62701d90af478c701d', '2017-07-27 11:10:11', NULL),
('e494b3ee5cb2eca4ef98bead935f570f', '2017-07-27 11:10:11', NULL),
('424a83d6ad846eedaa47818a76bf0a85', '2017-07-27 11:10:11', NULL),
('354f77a46d79cd68e7df4b503949e7f7', '2017-07-27 11:10:11', NULL),
('e7d80598968f9662d29a7d6d8be23732', '2017-07-27 11:10:11', NULL),
('318352b011737ab7c595855cedf47d50', '2017-07-27 11:10:14', NULL),
('35d28524a3d4f935a1221d3337676658', '2017-07-27 11:10:14', NULL),
('12435d41f0a992296911601f83b0121', '2017-07-27 11:10:14', NULL),
('8c3235ac767f24c1abe425046167ea18', '2017-07-27 11:10:15', NULL),
('1aec71bc9b45d29800e5a7ed86bb07e7', '2017-07-27 11:10:15', NULL),
('9f3b59232d7f572c0d53617ff915b923', '2017-07-27 11:10:15', NULL),
('19d86b555338a087fd21e51b8a4e5127', '2017-07-27 11:10:15', NULL),
('1a734b336df0a1183de33a4877197063', '2017-07-27 11:10:16', NULL),
('8cbfc32c3570384f6e6d80467d8182c', '2017-07-27 11:10:16', NULL),
('61f4ec2f8b0381712f3810b772d1376e', '2017-07-27 11:10:16', NULL),
('9b2a72bb055982809f6c28442fa3ff83', '2017-07-27 11:10:16', NULL),
('7a3233f0a7c8adc3f16061cca296e0c8', '2017-07-27 11:11:02', NULL),
('bb835c22709cff53e3bd738242cf8f07', '2017-07-27 11:11:02', NULL),
('cf7ebfea182e290c22214e1bf3d27c54', '2017-07-27 11:11:02', NULL),
('6b95e82b7a1eafcf5220e0c11be94e91', '2017-07-27 11:11:02', NULL),
('7b0bda4f03e57376540bfc9d496510c3', '2017-07-27 11:11:02', NULL),
('cf421529b11c0c82978dd17eccf6540d', '2017-07-27 11:11:02', NULL),
('6b8b66111c4acc4e8c256ce883a7b180', '2017-07-27 11:11:02', NULL),
('2eba70908d8b240795fcffd6eb61d5b4', '2017-07-27 11:11:07', NULL),
('fbc19edbe708f9df241d0a0a6245a56b', '2017-07-27 11:11:07', NULL),
('16c20d86a63cf389e417cdd48e50fd45', '2017-07-27 11:11:07', NULL),
('525042c16a8cb28e9ef353673c2909aa', '2017-07-27 11:11:07', NULL),
('b66754f7776a4d1079f5562fe9cd1fa9', '2017-07-27 11:11:07', NULL),
('9ccdb84e00b68684ebefab60782b2827', '2017-07-27 11:11:07', NULL),
('2ff3e52796743cd2536cc57e90ecc60f', '2017-07-27 11:11:08', NULL),
('6ceed5ca0f5d5b7508c4490b4d2c489e', '2017-07-27 11:11:08', NULL),
('af309b788c449d0d6214d1c8bf4b0cfd', '2017-07-27 11:11:08', NULL),
('5026999e79c3ff891755d3cd3748f6cd', '2017-07-27 11:11:08', NULL),
('d6363971a4fb8ec0bc19e3048100f349', '2017-07-27 11:11:09', NULL),
('c8476b911ac36c699510807fc733ccdd', '2017-07-27 11:11:09', NULL),
('425f116fa07016fa34184fc817445814', '2017-07-27 11:11:09', NULL),
('1caa15963d136fce845d450a622a80d5', '2017-07-27 11:11:09', NULL),
('60b9d1592c9b47307f6d0dc3b1b72aec', '2017-07-27 13:22:16', NULL),
('fc796b04fc49bd66e564b16c630dbbc9', '2017-07-27 13:22:16', NULL),
('4b3ef5daec0662f7a48fb7890fa22fe2', '2017-07-27 13:22:16', NULL),
('492acada53b62870df97b6442f15efc2', '2017-07-27 13:22:16', NULL),
('7878d1c50fa94c084a0bc19384894961', '2017-07-27 13:22:16', NULL),
('ca9f28c4b05270fb8ed01dc6b2f69a0f', '2017-07-27 13:58:17', NULL),
('fe26d90ee0965dd4b961af5f031f5b32', '2017-07-27 13:58:17', NULL),
('cf10229d31872f3b28ded6bf9e024dba', '2017-07-27 13:58:17', NULL),
('2c483aff4053e9191e69995e9869b602', '2017-07-27 13:58:17', NULL),
('448a5ee82c12b7c81cf71791ecff86a4', '2017-07-27 13:59:12', NULL),
('5c85a81d42176a1c4c31500f60d2131d', '2017-07-27 13:59:12', NULL),
('c6757cb03d8331db3f8aee69a08ca3', '2017-07-27 13:59:12', NULL),
('ba3eb8170ebee0bd8df2f30159ba047e', '2017-07-27 13:59:12', NULL),
('cd2419a7eaa4d6aaa20aa73dfd1890b5', '2017-07-27 14:00:02', NULL),
('b9d135965b687f4269ffe01e81bfec36', '2017-07-27 14:00:02', NULL),
('a3972c2f8ac4fbb22b6bc901d88d5a45', '2017-07-27 14:00:02', NULL),
('af000bf7b5d24e3e9fb85e92844e398e', '2017-07-27 14:00:02', NULL),
('fca4886e132b75c6c374a21a64ddb5c', '2017-07-27 14:09:27', NULL),
('bfe2cd7926eb59e270723cd619339e60', '2017-07-27 14:09:28', NULL),
('bdf3c92c30accb30ce6d1f009b49d55c', '2017-07-27 14:09:28', NULL),
('6617608b6c8018f13bd2d4c1c02d54cb', '2017-07-27 14:09:28', NULL),
('7d31a4104699a3033e684dfbf9781938', '2017-07-27 14:29:32', NULL),
('73406b709d5f34af83cf6d157d26292b', '2017-07-27 14:29:32', NULL),
('89208b25469c97f17e57a67eb363c234', '2017-07-27 14:29:32', NULL),
('bbd75d78c3da24e91d0d9275e789a44a', '2017-07-27 14:29:32', NULL),
('6becc911544694bbba8dce5738553e51', '2017-07-27 14:30:24', NULL),
('c8b86e9eef7266091bdadb3ee3b3e384', '2017-07-27 14:30:24', NULL),
('9dbfa61aae7d2f62dd2adbc508549520', '2017-07-27 14:30:25', NULL),
('7151765f75108c571d29c4554e0679c8', '2017-07-27 14:30:25', NULL),
('7e14d53b2953b1004c9daeba37dd698d', '2017-07-27 14:32:19', NULL),
('dc1c832a349e9605c51ddcac72e22c89', '2017-07-27 14:32:19', NULL),
('65bbe54c564de374a34a2b26b6bd899f', '2017-07-27 14:32:19', NULL),
('961723396dfb69cbc51723acb16c92d7', '2017-07-27 14:32:19', NULL),
('71c8a8a9d59de62eb1e9ca38e5b572a', '2017-07-27 14:38:47', NULL),
('80ab8b7aecf4851ffb6dd17bee0be459', '2017-07-27 14:38:47', NULL),
('1db63cd634513e9cc0be5572d7f5cd96', '2017-07-27 14:38:47', NULL),
('aa762f4a8a78cf364c862fd3cfd9461d', '2017-07-27 14:38:47', NULL),
('4e47178b02111c8aeb5e9f52248b0484', '2017-07-27 14:39:54', NULL),
('d3fa74de990977f8ed54b765668985cb', '2017-07-27 14:39:54', NULL),
('c7c1aef766e08293219e844467ee3939', '2017-07-27 14:39:54', NULL),
('ae3cf181f4176f17a7088374d3257c60', '2017-07-27 14:39:54', NULL),
('704a7e6f0e1ba84aedfd9002201c1360', '2017-07-27 14:41:45', NULL),
('a7aa84b3a511e4c7f1f1c9c7e477dda6', '2017-07-27 14:41:45', NULL),
('e43905e4718e81e3e685ba758f8b86f7', '2017-07-27 14:41:45', NULL),
('a746a2fe80dd6d0fcad7ed6f2f1fbe4f', '2017-07-27 14:41:45', NULL),
('11c2dae4a1fb43726d09c736ea202833', '2017-07-27 14:45:04', NULL),
('8603a8684ad70c784a462a48995bf5a2', '2017-07-27 14:45:05', NULL),
('a6478c214af7d69353c4fa226d3f587a', '2017-07-27 14:45:05', NULL),
('25124d91ff0a5a968884430726e894ab', '2017-07-27 14:45:05', NULL),
('5855aad54996297f04768068553763b2', '2017-07-27 14:45:36', NULL),
('aea03897076b5b05a5b2c028625bad50', '2017-07-27 14:45:37', NULL),
('4ca02b375e695f07be12136a6e349711', '2017-07-27 14:45:37', NULL),
('4ae732e0b4fb182e40f8ec5a4b4996de', '2017-07-27 14:45:37', NULL),
('6f335ef014d57134ab9a100e011ca8a', '2017-07-27 14:48:33', NULL),
('54c14eedcce054ec7b3ab1ed6c2b8224', '2017-07-27 14:48:33', NULL),
('b35cc509889e836c371ba50cf697fbdd', '2017-07-27 14:48:33', NULL),
('34a34609e56b22b5594ac3991d1c1a89', '2017-07-27 14:48:33', NULL),
('d880da3b342bceb8328496d36bac288', '2017-07-27 14:53:44', NULL),
('a829470aaadcb25ed353b83ba9d7eb9c', '2017-07-27 14:53:44', NULL),
('237ad23a9563b00e2766e82a5664b348', '2017-07-27 14:53:44', NULL),
('4d9cfd45586cc74148fa82730d8c3e5a', '2017-07-27 14:53:44', NULL),
('38208c056c42114679145777f60029af', '2017-07-27 14:53:59', NULL),
('eeb7e594f329932c8552a71dfc85bed0', '2017-07-27 14:53:59', NULL),
('4d01c6179bab852fbe410eac3dc2483d', '2017-07-27 14:53:59', NULL),
('46addcff6d6726b7a67e035ec3b0b686', '2017-07-27 14:53:59', NULL),
('b043abd8935f1d1db693f17f8aecccbb', '2017-07-27 14:54:34', NULL),
('bd00684f61874af2fd76645566886aff', '2017-07-27 14:54:34', NULL),
('ccf50f4650c341f7f0eebac429c95d4f', '2017-07-27 14:54:34', NULL),
('52db920be0a1fa81f468adcd91a38d', '2017-07-27 14:54:34', NULL),
('d3c6cd907ceab2eb0b7047bc5baf61bc', '2017-07-27 15:01:01', NULL),
('cfc074063dba2e2e6fd6e70eb8200519', '2017-07-27 15:01:01', NULL),
('9c078b4e1ef6aaace0b0d42fe754d300', '2017-07-27 15:01:02', NULL),
('f2ff53a3fb1aec2e85d2124061a3b242', '2017-07-27 15:01:02', NULL),
('75b8a454f5df19789607b1e215219df9', '2017-07-27 15:01:12', NULL),
('43d5ea8464124272cbea89bdbb3a73b9', '2017-07-27 15:01:12', NULL),
('f14b91a239f050fd355c7c247282ff06', '2017-07-27 15:01:13', NULL),
('774d83988758040b48743d334fa55515', '2017-07-27 15:01:13', NULL),
('6c3a8d26170e2949612e9fcc6cc25779', '2017-07-27 15:02:40', NULL),
('1b9c6966a356aaf65172f167b957f0c', '2017-07-27 15:02:40', NULL),
('9e390d236f73a33c5b1e5d91a58ea043', '2017-07-27 15:02:40', NULL),
('fba1e32995b9dca0f007e9712932919f', '2017-07-27 15:02:40', NULL),
('821daccaba12d96f3074e1f1a813769e', '2017-07-27 15:03:31', NULL),
('d43aa97b93dd7b1e39a1ac46d9aa2e5', '2017-07-27 15:03:31', NULL),
('199d804e8af1482b43a5c88c47b0ee8c', '2017-07-27 15:03:31', NULL),
('4b15387ef0c607d8cf245c6aefd5b2bc', '2017-07-27 15:03:31', NULL),
('694565a611c2eb1b441305d3104098a2', '2017-07-27 15:03:37', NULL),
('13b05ea023843fcf7bdafb1a023657cb', '2017-07-27 15:03:37', NULL),
('b6c61a666c94f975edaeaeb681cdd376', '2017-07-27 15:03:37', NULL),
('f9e5b3c7bb6d0df6a521b7640a9d205a', '2017-07-27 15:03:37', NULL),
('c7d72b47f4f02fdf716d62f44ad0d4ec', '2017-07-27 15:05:06', NULL),
('3d7874084fd45bf40bbd622b5068df9c', '2017-07-27 15:05:06', NULL),
('295f1c97fed35a9064ef30971a3ef2e9', '2017-07-27 15:05:06', NULL),
('106c3bbc7f384d41f7d7084eebfcf6fd', '2017-07-27 15:05:06', NULL),
('69b705571ddfb43ef2f2ee80b4c2b709', '2017-07-27 15:05:51', NULL),
('3fa6c1ba3074e4400dc49252fca9abdb', '2017-07-27 15:05:51', NULL),
('f8181f94f2b3458d45de636437a9b292', '2017-07-27 15:05:51', NULL),
('7786a4e8ab8a251c3af646f47bfeea77', '2017-07-27 15:05:51', NULL),
('b5b111b028859a45290186bf72375bc8', '2017-07-27 15:05:56', NULL),
('44d9eae788dd8659128047de56db76c1', '2017-07-27 15:05:57', NULL),
('7c4e0c81c8dba9b8d1ff7bffa752edf4', '2017-07-27 15:05:57', NULL),
('287b2a29bee1dc5cf39982828b0ba940', '2017-07-27 15:05:57', NULL),
('cfe3cf7282f2f80cebb9bc9c5e361d04', '2017-07-27 15:06:07', NULL),
('78fd07b70c689b0dba6b13173de5ab41', '2017-07-27 15:06:07', NULL),
('b50701f689fd6696104d7ff37ad7e010', '2017-07-27 15:06:07', NULL),
('e31572edb59fa010484cf421cfa84af7', '2017-07-27 15:06:07', NULL),
('80894ac4576fa37f222cb00d6fad8826', '2017-07-27 15:07:40', NULL),
('68dd44927914aaea86f400c782c0d196', '2017-07-27 15:07:41', NULL),
('8b98ffa575a823b76cdb90994070a6ce', '2017-07-27 15:07:41', NULL),
('346b04855232cc67614c96894412bce2', '2017-07-27 15:07:41', NULL),
('f35a271f757bea06a85c082565842a88', '2017-07-27 15:07:45', NULL),
('d002794b5b6e93ad0f9db50c19a5775e', '2017-07-27 15:07:45', NULL),
('c84e8868167bb42b50291c9e8b004c6d', '2017-07-27 15:07:45', NULL),
('dd69e03772bb062492eb6699aaefed93', '2017-07-27 15:07:45', NULL),
('ac6a7bb19aceb06c764384eba9a5ae39', '2017-07-27 15:15:36', NULL),
('ef7cb5b1d98a00b16af840121c8d6be6', '2017-07-27 15:15:36', NULL),
('e30335fe7dc29c597d23c82c319210e7', '2017-07-27 15:15:36', NULL),
('585bff08918b1a0b27a35c7d8f1d803f', '2017-07-27 15:15:36', NULL),
('6df7c0613de1e1c379d90717e98b9672', '2017-07-27 15:15:47', NULL),
('c87603b391ad489bbcf236f346ef4f04', '2017-07-27 15:15:47', NULL),
('4c78d887810cf060d428337928cb4536', '2017-07-27 15:15:47', NULL),
('fb34841065497e22f27417924f1d07ef', '2017-07-27 15:15:47', NULL),
('a1dfd168fc19e9893e3896e264c93aa1', '2017-07-27 15:18:17', NULL),
('5452d445633cc329e407a9da078d96ca', '2017-07-27 15:18:17', NULL),
('fb56207c0ea618b4e4d9c8e151584674', '2017-07-27 15:18:17', NULL),
('f0f369aad546a3cab299713f45b3330f', '2017-07-27 15:18:17', NULL),
('d38a3195a5551e523c406e6f2920369c', '2017-07-27 15:18:22', NULL),
('82031486a0e8240fa346c19040fde129', '2017-07-27 15:18:22', NULL),
('4afaf2a53deb7d0bf82426846a677053', '2017-07-27 15:18:22', NULL),
('ff02bfecbd835320636c14b60217d9fb', '2017-07-27 15:18:22', NULL),
('a0a83ab54ff0beb58bb0136764f0a588', '2017-07-27 15:18:24', NULL),
('1a53cf737f7d15eaddd3741f28299582', '2017-07-27 15:18:24', NULL),
('6bfec2afba740f890ba9b2c5b159664f', '2017-07-27 15:18:24', NULL),
('123900def87caf985c8de77b64992666', '2017-07-27 15:18:24', NULL),
('c38153aa058377ccbb1047101c0b2ac0', '2017-07-27 15:18:35', NULL),
('2ff878c8633a59127e8abef80f2f5c91', '2017-07-27 15:18:35', NULL),
('3381b0d9b83916a0b4e00a34cadb9c78', '2017-07-27 15:18:36', NULL),
('d09e0d242d7f1e453111b091dace296e', '2017-07-27 15:18:36', NULL),
('4effd5ef8a5413f137bc00a3cf682746', '2017-07-27 15:19:28', NULL),
('468dbd30e19a9c0cf3c3e6ccc3cb81f9', '2017-07-27 15:19:28', NULL),
('ffafbddcb158fe2e6a6d774bcbb41839', '2017-07-27 15:19:28', NULL),
('7f017633d55e0afff19d0fde52cd4f61', '2017-07-27 15:19:28', NULL),
('5371dd06eceb4803bd776002c208f78d', '2017-07-27 15:21:10', NULL),
('f06dea52a8c5bec722d4324c928f4b5c', '2017-07-27 15:21:10', NULL),
('4c0ae5090d5436a0e02e5a4f3f6c0147', '2017-07-27 15:21:10', NULL),
('6d4be909b76ea6774d3bcc6eb3e12ad2', '2017-07-27 15:21:11', NULL),
('65d19cb4f6942c142274f7d6f11bba63', '2017-07-27 15:21:21', NULL),
('678e963c25d5844f0249c6df2885f270', '2017-07-27 15:21:21', NULL),
('5c85a34a0958b6e46df53b572bd7a0c3', '2017-07-27 15:21:21', NULL),
('d22df15632920b0eaf574731830002a5', '2017-07-27 15:21:21', NULL),
('81334cf7eee3e8fe1195e37a78e8dc5e', '2017-07-27 15:22:16', NULL),
('f991a283bd27007c9c1209ceea7fd6af', '2017-07-27 15:22:16', NULL),
('17729dd69b89303ece53a740f0da1d32', '2017-07-27 15:22:16', NULL),
('15b519162b5639399ca32ee98a903c5b', '2017-07-27 15:22:16', NULL),
('63e9861d143500e6ec0965ca1e00aba9', '2017-07-27 15:22:27', NULL),
('9a9d07dc5df2442c5c06a365bb59e323', '2017-07-27 15:22:27', NULL),
('3ed315eee6b612f3a317361e0081abb7', '2017-07-27 15:22:27', NULL),
('c6568f862dee0ba2213c800ef3a2e9d8', '2017-07-27 15:22:27', NULL),
('42a6d6fce41f759f803ad81ad7fc8634', '2017-07-27 15:22:35', NULL),
('166eb2bf239649921ad137aa0b529a44', '2017-07-27 15:22:35', NULL),
('9992ac6eae3596935f7151b1821b8408', '2017-07-27 15:22:35', NULL),
('c69cbff69b68ff8160ae41e4c4b820d5', '2017-07-27 15:22:35', NULL),
('ebf47428ed1f428fc332617dd5db11b6', '2017-07-27 15:25:12', NULL),
('a5310932576fb141dfe32a504150d268', '2017-07-27 15:25:12', NULL),
('bdcb8f8de53fe26552714bc65c77522e', '2017-07-27 15:25:12', NULL),
('815ef70d9c3ec7c8aebc1b590376390a', '2017-07-27 15:25:12', NULL),
('99e66291667a677b251592443ea55e0c', '2017-07-27 15:25:45', NULL),
('3aeb21d21629a7e7b277f608855c4d18', '2017-07-27 15:25:45', NULL),
('dd3e48c58b6f40a4253e64ff65c9a2b0', '2017-07-27 15:25:45', NULL),
('cca8271e402bad67972a93d296d626c7', '2017-07-27 15:25:45', NULL),
('1df3cf0bef8b50940ef6ed875ed7d603', '2017-07-27 15:26:31', NULL),
('37db9ad8b68f98010258497064cc8c16', '2017-07-27 15:26:32', NULL),
('2872817730f93efc88f042a0bdfddd20', '2017-07-27 15:26:32', NULL),
('3dcd3468ada22b404b21231f25994fdd', '2017-07-27 15:26:32', NULL),
('ad7d1c36ce01602b5425206103029e65', '2017-07-27 15:27:38', NULL),
('ef3eca7e06e80a1a9564d703cbfbc9f6', '2017-07-27 15:27:38', NULL),
('47cc9297cd3727da37936dfebf295e92', '2017-07-27 15:27:38', NULL),
('74061e28ca75728da3e7afba10760260', '2017-07-27 15:27:38', NULL),
('2d3662513bb0801761e19998db22718', '2017-07-27 15:28:58', NULL),
('44b88cbdf6f2c56f675134cd5c8d91c6', '2017-07-27 15:28:58', NULL),
('d55a6ecd22174306c444467afa229a2', '2017-07-27 15:28:58', NULL),
('4919f67d409712c07d228116163bd3a0', '2017-07-27 15:28:58', NULL),
('fb9bb3e93d2c8de32bba4d8642bc1489', '2017-07-27 15:29:45', NULL),
('1c7405050e926cd7366f29a8e48c8e06', '2017-07-27 15:29:45', NULL),
('9f86b25e2141d7fbfd92436fc0ee82f7', '2017-07-27 15:29:45', NULL),
('6e4a78474dadd0c251e6191356627062', '2017-07-27 15:29:45', NULL),
('ab881273c02a97186548d1cd14864711', '2017-07-27 15:30:21', NULL),
('4c4750a5e04310ea5f42dbdad9a5be86', '2017-07-27 15:30:21', NULL),
('e9d31dc563c22bf2d44042115cf12c31', '2017-07-27 15:30:21', NULL),
('61709309038c6761e57780b878e85dcd', '2017-07-27 15:30:21', NULL),
('1d7e8d5fb6a93a52046d434aad009f3f', '2017-07-27 15:30:42', NULL),
('97998360faf4f630e6f5faa6aa1cca02', '2017-07-27 15:30:42', NULL),
('fbb8618948edc947d285deccd541fbb5', '2017-07-27 15:30:42', NULL),
('ad1f08dd5d1176b14aa658f12dd7b156', '2017-07-27 15:30:42', NULL),
('6d878f96041e560f3c813ad6812aa430', '2017-07-27 15:33:21', NULL),
('46735d3f249fdd264cbeb9f1e14f66ad', '2017-07-27 15:33:21', NULL),
('83f6bfbd53a1a7bc4911d90aa1515be6', '2017-07-27 15:33:21', NULL),
('9058095726e1a7327e88249f7a63082', '2017-07-27 15:33:21', NULL),
('209b560abd79d22652d89a7d3bafa9a1', '2017-07-27 15:34:22', NULL),
('40ba401f3f79df4fe255fd484faf1f3e', '2017-07-27 15:34:22', NULL),
('be2e16adb83909243bda0790cda1f97e', '2017-07-27 15:34:22', NULL),
('e309f39cf7c86953ee2536803d90fee8', '2017-07-27 15:34:22', NULL),
('86da68db2358bdf139fe8845945fc838', '2017-07-27 15:43:43', NULL),
('d654474732044b2dc18b36d036f9663d', '2017-07-27 15:43:43', NULL),
('a2fc80276d8f1a6aaf63e6f04cabd784', '2017-07-27 15:43:44', NULL),
('bac2fd5191557e5c3c0ccdeae5a6b810', '2017-07-27 15:43:44', NULL),
('86f122a9ec4b9c6a06b7c0de7f64d00', '2017-07-27 15:45:11', NULL),
('65d885cb6c806ea463eac5aaaa5908f5', '2017-07-27 15:45:12', NULL),
('aa28464a996e33f1891b8915bb019dbb', '2017-07-27 15:45:12', NULL),
('5f0162d947a985ae2d4b58996ba07fc1', '2017-07-27 15:45:12', NULL),
('2dd314f8e022952e4cc82509c44b86e1', '2017-07-27 15:45:25', NULL),
('b974082cafe7c4bac93bf8b1c711dd3a', '2017-07-27 15:45:25', NULL),
('59003bf2ad4de7824f2ac96241d8a829', '2017-07-27 15:45:25', NULL),
('47f3eab3d94ba5629a43bb0d8b815ac', '2017-07-27 15:45:25', NULL),
('ca668005e2080d9e716fa572a1facab3', '2017-07-27 15:45:54', NULL),
('72f2cfdc9dafe4d8128ec2f9bd98e2e', '2017-07-27 15:45:55', NULL),
('14cbd5957efc04fb2774d3161fb396c9', '2017-07-27 15:45:55', NULL),
('1ad7c3b96c46870e649909da33b84e31', '2017-07-27 15:45:55', NULL),
('68cef1f55c7cc3aa57a86c98c5cb4116', '2017-07-27 15:45:58', NULL),
('fc79ec52987387a4a10da3a34f88e3ca', '2017-07-27 15:45:58', NULL),
('f58e8b16248ba085383ce60f35f5ed2a', '2017-07-27 15:45:58', NULL),
('a39d7ba4255d9d7e41a3d64fd6352efd', '2017-07-27 15:45:58', NULL),
('f9599f4cdc41b2aa94505a8b0cfe1807', '2017-07-27 15:46:04', NULL),
('bda2aeb204c30f6946808d547f85ccf5', '2017-07-27 15:46:04', NULL),
('8e55cd1260d134f29068edfef0f3a3cf', '2017-07-27 15:46:04', NULL),
('380f7807694e775ddf462fc9347c0cea', '2017-07-27 15:46:04', NULL),
('e204de56d5cc5bf956101b2eb7d60a34', '2017-07-27 15:46:18', NULL),
('d986a2a8661df70dc315c44715cf7aae', '2017-07-27 15:46:18', NULL),
('1b5b98acf73b9dd76df598bcf2ae15a9', '2017-07-27 15:46:18', NULL),
('7a4fdf2533cf125bc7ce865c8d1254e4', '2017-07-27 15:46:18', NULL),
('7c3d57105fadae0af9a2b9695fec2d53', '2017-07-27 15:46:18', NULL),
('7ff273a08a14fb8f30aef10a8e613d92', '2017-07-27 15:46:18', NULL),
('853e62c5c5c07ef39c2fc641f85eac06', '2017-07-27 15:46:18', NULL),
('acb77c036290743c33f60c5ad42635c5', '2017-07-27 15:47:05', NULL),
('6b4be9c1c5aa8d8030e938bf8d897f9f', '2017-07-27 15:47:05', NULL),
('bde1c7f53bdbbe653023a751cf61d360', '2017-07-27 15:47:05', NULL),
('adf43f2042f4ebdb0700c33b0b15784a', '2017-07-27 15:47:05', NULL),
('c9a9a87c9fb5ee7de3fecc94bb6880a0', '2017-07-27 15:47:05', NULL),
('e5d4066deca8052a04798002462e4ef9', '2017-07-27 15:47:05', NULL),
('2ba5b5f46a758a53b90d46cc5109eb5a', '2017-07-27 15:47:05', NULL),
('d349c7980143f959a3d3274723e488e6', '2017-07-27 15:47:11', NULL),
('ea1bcd91b9b6e9d6443cc9c470a674e2', '2017-07-27 15:47:11', NULL),
('b48c176b51c4abbf0f89c610d0fbe18', '2017-07-27 15:47:11', NULL),
('70eaa654f80bf6ae296810b0156e700c', '2017-07-27 15:47:11', NULL),
('12baeee9eaa44a6aa7a80cc522e30d07', '2017-07-27 15:47:11', NULL),
('b36b1bd046a5d3c49218dbdd0440bb66', '2017-07-27 15:47:11', NULL),
('2ee3853fe416de92f53d749bff089a44', '2017-07-27 15:47:11', NULL),
('4cf1a413b1032845ac38fbf1408793ee', '2017-07-27 15:47:15', NULL),
('1a3f147a03af6477044c83f712cf99cb', '2017-07-27 15:47:15', NULL),
('1ad40ec057f89c1ee647815d795b50db', '2017-07-27 15:47:15', NULL),
('665d731642c142de7c167af810530bd2', '2017-07-27 15:47:15', NULL),
('d58b7e949deb6f80c88a1d36e63379e0', '2017-07-27 15:47:15', NULL),
('add78b6be2d2b7888d6911e748a87e95', '2017-07-27 15:47:15', NULL),
('d5c565f62c64d236a4822fe1f54baba6', '2017-07-27 15:47:15', NULL),
('d0ad4659a7dd18233e1b15b2b0ef2652', '2017-07-27 15:47:17', NULL),
('b89e844613a880e9d1d460aec0f82813', '2017-07-27 15:47:17', NULL),
('990803bbb8482c2fd074952ba607568a', '2017-07-27 15:47:17', NULL),
('7735ae21eb3f26901af130286b8176a5', '2017-07-27 15:47:17', NULL),
('23c402ff1720d6cfe3af631208b494f4', '2017-07-27 15:47:17', NULL),
('5f17f132162321dad0b4acdb00cb2535', '2017-07-27 15:47:17', NULL),
('a2c18c89a5c6b0dc8d18678368ba78db', '2017-07-27 15:47:17', NULL),
('bd49661465f217c520699522fdbb873e', '2017-07-27 15:47:19', NULL),
('4fa47989246ff1195f6f4f07c7c97d1a', '2017-07-27 15:47:19', NULL),
('27bcb088485ace7579933ac2e80880c5', '2017-07-27 15:47:19', NULL),
('7f6c8bf2896dea18aa0ad5d4fada636b', '2017-07-27 15:47:19', NULL),
('db78d5099c9abc49d8c0483b98243d26', '2017-07-27 15:47:19', NULL),
('a81d03eaceb4702a022bcc49503727cc', '2017-07-27 15:47:19', NULL),
('88198aaff072051660befefe49733e57', '2017-07-27 15:47:19', NULL),
('4341f14364e78308f318c4214a1d9078', '2017-07-27 15:47:23', NULL),
('608db6747c5d394a42c4ae785a3c8b79', '2017-07-27 15:47:23', NULL),
('d0e3de83b25bab7fe9e66574638aa425', '2017-07-27 15:47:23', NULL),
('b227b50804173da4d9810b95acaccdc6', '2017-07-27 15:47:23', NULL),
('b0d25d3a40679015b79b7346c1cec659', '2017-07-27 15:47:23', NULL),
('9536d24cb85117197c4b8416aa5e559b', '2017-07-27 15:47:23', NULL),
('f8d62f31773e5f3be82025e7e419c28a', '2017-07-27 15:47:23', NULL),
('84d503f1a5c37007f3cfaca334b63e8e', '2017-07-27 15:47:25', NULL),
('e3c0d076764cd52c6383bd2d89e46da', '2017-07-27 15:47:25', NULL),
('1219a217fd58db3b9f0d28d50d81e4c4', '2017-07-27 15:47:25', NULL),
('ac2fc96abf0c169851e55b625986e905', '2017-07-27 15:47:25', NULL),
('732a28dbee6b83c7dfd6a7a804f9067a', '2017-07-27 15:47:25', NULL),
('56b975503fff53b439c5e29aabb91dbc', '2017-07-27 15:47:25', NULL),
('db1de27fce16de63ae663ec186775165', '2017-07-27 15:47:25', NULL),
('3bba2993b191101b1b3b2e42a894bc81', '2017-07-27 15:47:27', NULL),
('8bf670a5f06babe1054b27db5bace4e2', '2017-07-27 15:47:27', NULL),
('266c1e36191ce38460ded9eef5d95116', '2017-07-27 15:47:27', NULL),
('5ff7579eaa5bbbd3686712b868be92c5', '2017-07-27 15:47:27', NULL),
('cb0a6edb2f3899893990659a1af9d145', '2017-07-27 16:11:26', NULL),
('f149b889de47e28160b0bf087104a67f', '2017-07-27 16:11:26', NULL),
('4ed7f09ef8b96be330280246b2e368dc', '2017-07-27 16:11:26', NULL),
('1a908f60ac427c2db98a3da5d3774dc8', '2017-07-27 16:11:26', NULL),
('e6eafbf871f59d51070f02001531b603', '2017-07-27 16:11:58', NULL),
('b6f6e9415f3ff831ec329187c802606e', '2017-07-27 16:11:58', NULL),
('4590ff5a450d6f91fede2b4c85c07225', '2017-07-27 16:11:58', NULL),
('413a1d523c22518ec610293a83a3c7e7', '2017-07-27 16:11:58', NULL),
('68557b7095c50027d69e1fa1d4572b2c', '2017-07-27 16:13:05', NULL),
('5893efaa23a8a53eba174c42b8b7e277', '2017-07-27 16:13:05', NULL),
('e6f7ce825102b3a463c8057ad209543', '2017-07-27 16:13:05', NULL),
('46ada7d8eb7d8419da461d784e8617b6', '2017-07-27 16:13:05', NULL),
('f2f1610e5d39c8a06b319bb1c0d68f02', '2017-07-27 16:13:47', NULL),
('413daa021bf36553ba93e5d33f5fff45', '2017-07-27 16:13:47', NULL),
('984917fbddd78e25d5df99701fd411da', '2017-07-27 16:13:47', NULL),
('9228c99b3aca6e8cd9dfdf1e0da5e1af', '2017-07-27 16:13:47', NULL),
('e7974cf1dbdd97aabcb6a0382d950829', '2017-07-27 16:18:54', NULL),
('7c053308ba7a66f0f1b3852acbd900b9', '2017-07-27 16:18:54', NULL),
('a964206829f061d4d489e7e2f9279b7e', '2017-07-27 16:18:54', NULL),
('5738df3213c572ac5218b3f6e53305e8', '2017-07-27 16:18:54', NULL),
('2f5ad7be6f8b4c44c581a6005c0d6efd', '2017-07-27 16:19:04', NULL),
('eff9c8abad28068c74653cba9b28d2c9', '2017-07-27 16:19:04', NULL),
('f3daa6ddd139b09be2b34e8f441d4433', '2017-07-27 16:19:04', NULL),
('bf1257b5892a54680354ad76bf4b47ca', '2017-07-27 16:19:04', NULL),
('6b90714535f8ac437c2e0e9f60ae8b61', '2017-07-27 16:20:50', NULL),
('ca97c060e346fe04d800cb12d2825793', '2017-07-27 16:20:50', NULL),
('4f86205710d5eb55f7388d21ed4aee6c', '2017-07-27 16:20:50', NULL),
('10ae6cfb2bc9b307a553887bb7ca8fd9', '2017-07-27 16:20:50', NULL),
('9a2ca63195bb8718a1fc63755f68de8c', '2017-07-27 16:20:58', NULL),
('8bcf77f22af9184e30f6a5a5315ee178', '2017-07-27 16:20:58', NULL),
('6175b22def8450ac4441bc10027d630e', '2017-07-27 16:20:58', NULL),
('2c2976d3b42d286f73bca6e04dde8dd8', '2017-07-27 16:20:58', NULL),
('b4911168d54e0c0d551e50d2a01e7f9a', '2017-07-27 16:22:02', NULL),
('f255b5085c807d74ac13535617d12a57', '2017-07-27 16:22:02', NULL),
('dd59fc4c8c86f5708bf525fdee47358b', '2017-07-27 16:22:02', NULL),
('bc50126a43ba44635d5f8b52c8bf05e9', '2017-07-27 16:22:02', NULL),
('b0988af73a2ad7b432c127624c1afbef', '2017-07-27 16:23:31', NULL),
('1cd755aa7d4c648cea345c8041ef3f9', '2017-07-27 16:23:31', NULL),
('e4639a580119de3d6f1a4afaa393da65', '2017-07-27 16:23:31', NULL),
('aa8cf4effd4e3dc5b923f63eccfb26f9', '2017-07-27 16:23:31', NULL),
('334dd463f84b947040cf020e885c3651', '2017-07-27 16:24:11', NULL),
('1e277db7863828a085946d4de8637cc7', '2017-07-27 16:24:11', NULL),
('420bab8d480e171982c3b6d2eaf7e04c', '2017-07-27 16:24:11', NULL),
('89623af338ad39919e4107580fe793bb', '2017-07-27 16:24:11', NULL),
('c7c17f1fb42d62ffa14f9743e2d4df17', '2017-07-27 16:28:03', NULL),
('d800a72e8c5558ccfaf35e205c56cf5b', '2017-07-27 16:28:03', NULL),
('3d896666922304c9c16c2fdd63f53b01', '2017-07-27 16:28:03', NULL),
('b6a8198c882cb2a323d6ea3afd60a39e', '2017-07-27 16:28:03', NULL),
('dbfca5098a78831d37d7a3e89eaa192e', '2017-07-27 16:31:45', NULL),
('f5e51323bdeebd6797494a314e506b81', '2017-07-27 16:31:45', NULL),
('b66540723b3f44cdb6461c2741ea281b', '2017-07-27 16:31:45', NULL),
('f384a135f440c9469a60bdf0a9a601d6', '2017-07-27 16:31:45', NULL),
('8d2d52cc26be0d32600bb8defa95e7c0', '2017-07-27 16:39:24', NULL),
('27f650fbe2a550434ac6ce4950ac9edc', '2017-07-27 16:39:24', NULL),
('e1be8c8551e93f7b8cd5cf711d379105', '2017-07-27 16:39:24', NULL),
('c258e1b601ca652c949132b0c2474d25', '2017-07-27 16:39:24', NULL),
('a69017737aedbeb2a0e80a412d0ea64', '2017-07-27 16:39:33', NULL),
('4e30204f13d9ff0924da7d814620685c', '2017-07-27 16:39:33', NULL),
('adb5a18241f2f20cb4873515519c276', '2017-07-27 16:39:33', NULL),
('36d4c4f4edfeca6e69b95aac427cb74b', '2017-07-27 16:39:33', NULL),
('c7914b7f6e2d2c85f32563ab6310ae3b', '2017-07-27 16:39:36', NULL),
('9289e28cbbab4a4a597936d75f4ca814', '2017-07-27 16:39:36', NULL),
('282a33b05a66744c3b414b31aa2b9ecb', '2017-07-27 16:39:36', NULL),
('8d1fb885f2d1ca4a243a8b44cac31d7b', '2017-07-27 16:39:36', NULL),
('65a336012301f3240358e07ede9958ae', '2017-07-27 16:39:53', NULL),
('7f71cb81b9e563c7023cf9134a953cdd', '2017-07-27 16:39:53', NULL),
('ccf0dffd0256fbbbded30bc5430410a7', '2017-07-27 16:39:53', NULL),
('f426d02bbf756e9134a9ea802ba27387', '2017-07-27 16:39:53', NULL),
('a7c6dcfc36564c0cf9cffa97fa5c348c', '2017-07-27 16:40:03', NULL),
('2526c03dff5c9064b8759c70c78aa443', '2017-07-27 16:40:03', NULL),
('966b203610d62606f970e26b27abdcf8', '2017-07-27 16:40:03', NULL),
('f946cbedc3bfb51ce5afa97b7cb3f34a', '2017-07-27 16:40:03', NULL),
('cb78ec08cc27f3d4cb4127c8cc50070c', '2017-07-27 16:40:24', NULL),
('dee3ef15ada2a2256eb908793a39e3a2', '2017-07-27 16:40:24', NULL),
('1ea1191c6a254552c73aeb7877c4514a', '2017-07-27 16:40:24', NULL),
('19e6958bd60a2bc3ff7bbc59c31ec729', '2017-07-27 16:40:24', NULL),
('36a1172e023283e82ad12125b34fbb8b', '2017-07-27 16:40:35', NULL),
('94243a8bc4d271b416b7669d7fb7567', '2017-07-27 16:40:35', NULL),
('87ac4c9a30eaf19d8a696b92c5c59c40', '2017-07-27 16:40:35', NULL),
('76f7e7705e3c43b786ecbd1b0f074e6f', '2017-07-27 16:40:36', NULL),
('df3b2320bffcc29dc53795f12a587a36', '2017-07-27 16:40:38', NULL),
('94881ee197fb29a91cb49d863ae942e3', '2017-07-27 16:40:38', NULL),
('9a501ced588b2e38113bf592c6f0491f', '2017-07-27 16:40:38', NULL),
('c05a8462d8286ca639edd3d174c28d54', '2017-07-27 16:40:38', NULL),
('c6c3666cca26e42507f0ca5a6a76797d', '2017-07-27 17:04:32', NULL),
('c367e0f12febd0997ac72143b7d9d077', '2017-07-27 17:04:32', NULL),
('199ecc347644801d6d447efdad86b4d8', '2017-07-27 17:04:32', NULL),
('4340e3da9a399780a177fff98d1be8a5', '2017-07-27 17:04:32', NULL),
('1b6280cd3920f11b2eeab4ce162de129', '2017-07-27 17:04:42', NULL),
('ed30f1bf46982b219ab6fddb1d570c64', '2017-07-27 17:04:42', NULL),
('3217b6a1b6a18ea873592d029bd43fde', '2017-07-27 17:04:42', NULL),
('77036048fe8c008c03d8de1720b2ae49', '2017-07-27 17:04:42', NULL),
('2df94bac14b8b6e97546904abe21048', '2017-07-27 17:04:44', NULL),
('3e5b9de9eaa123d3dc23532be565218', '2017-07-27 17:04:44', NULL),
('a8553244db3938f6469b662cf0710908', '2017-07-27 17:04:44', NULL),
('cbe320350d145bcbc6a14fb37581911b', '2017-07-27 17:04:44', NULL),
('262b623f0b696116ee942a291b2e49c8', '2017-07-27 17:05:53', NULL),
('42944dae642c34a3d325dbc06296f87', '2017-07-27 17:05:53', NULL),
('5667e51cc4b3d714c2f5c5457be4c51b', '2017-07-27 17:05:53', NULL),
('6fb310220e6d43a8ca4c6928d5aa389f', '2017-07-27 17:05:53', NULL),
('efcdcfdbddd5276807efcdc170ffce0f', '2017-07-27 17:05:55', NULL),
('811c5aa89cd8f89065b7c26e2af2c9c3', '2017-07-27 17:05:55', NULL),
('3ae361b7c4c89e4b72979e281563d671', '2017-07-27 17:05:55', NULL),
('2ab161ea6220365ea03d74b37e101356', '2017-07-27 17:05:55', NULL),
('328435d214705731e09adf8e1d484ddb', '2017-07-27 17:06:37', NULL),
('6d9518cf879273a5a9385786bb776459', '2017-07-27 17:06:38', NULL),
('2c46fc7a89fe226d5774f1a5934c67c2', '2017-07-27 17:06:38', NULL),
('9b7a413cca195e785916569b7750b78e', '2017-07-27 17:06:38', NULL),
('d633152093ef5b1ac9e9c9fe22c080c1', '2017-07-27 17:06:40', NULL),
('bb45d0705b52872dae08fef29a295aa5', '2017-07-27 17:06:40', NULL),
('1583f313c3268a5e1315c0b3e2e76435', '2017-07-27 17:06:40', NULL),
('750ac0ffe316eafc7d920a1b2b0d0a1', '2017-07-27 17:06:40', NULL),
('f8985637491fdfd364a96d5ae7680f37', '2017-07-27 17:07:53', NULL),
('b7d396c8564215c1cb0f36363695022a', '2017-07-27 17:07:53', NULL),
('c23e16a60288464e5b572606a385ee7a', '2017-07-27 17:07:53', NULL),
('65dc1dd3d80de1b1a9989a547dc3a88c', '2017-07-27 17:07:53', NULL),
('ae72a908516ed0b6ce13139499a10461', '2017-07-27 17:07:55', NULL),
('915f8383d35575ca781620772dce079c', '2017-07-27 17:07:56', NULL),
('727f359a926c0b063eca35080496ff27', '2017-07-27 17:07:56', NULL),
('1bf42d5a5a793b4bac3607bf0faa289a', '2017-07-27 17:07:56', NULL),
('f179bc31114f0a3bcadfeedeb3865fbc', '2017-07-27 17:08:17', NULL),
('dd8bd55822d9221b5bae1a48923c8488', '2017-07-27 17:08:17', NULL),
('a515531a051b925f595b200b1bd461e2', '2017-07-27 17:08:17', NULL),
('2464f14d9a5d8499c31aec26f8bda7a6', '2017-07-27 17:08:17', NULL),
('6c7a35199875a0b6845951d3ad3f8a9', '2017-07-27 17:08:19', NULL),
('d8fc086951526a57b182a315c80b17a1', '2017-07-27 17:08:19', NULL),
('dc49db9d342b0e57c5790252645a0f38', '2017-07-27 17:08:19', NULL),
('b9cf79526c6d7767bf3076d5e15252a2', '2017-07-27 17:08:19', NULL),
('e6772717114d171b9d36a8a0188e5d10', '2017-07-27 17:08:29', NULL),
('5ef82bfc3755a6ee532a3d68691348', '2017-07-27 17:08:29', NULL),
('b4a3379c1e21750462a086a9305867a', '2017-07-27 17:08:29', NULL),
('5df88c0533eb1b34d67d5e9cd9ffa3a8', '2017-07-27 17:08:29', NULL),
('ce3495e68c011b31b0a16b6e7f179b98', '2017-07-27 17:08:30', NULL),
('8f5d2b82ec6412de3794657eb5d81ff8', '2017-07-27 17:08:30', NULL),
('caf1c9c5352f110dba454a218e5a7d2f', '2017-07-27 17:08:30', NULL),
('aaf331c81fef16256bfb471df8b761b8', '2017-07-27 17:08:30', NULL),
('9612aea247fb62f429da141ad73c50f8', '2017-07-27 17:08:47', NULL),
('44710110a7f0ba6377022fe05e221842', '2017-07-27 17:08:47', NULL),
('b2f61dc9cdb08598c4cd0e57abba9b4e', '2017-07-27 17:08:47', NULL),
('fb1842d929c5aca85438eb4130e11405', '2017-07-27 17:08:47', NULL),
('f07103c45c313f4de54717d2ebd70a86', '2017-07-27 17:08:49', NULL),
('68109b5929864cb18e1ec8cbd8265f4a', '2017-07-27 17:08:50', NULL),
('2bee305db46cae5654e1839fea6fd739', '2017-07-27 17:08:50', NULL),
('3335f44ebaa3cf001feac432590cec4', '2017-07-27 17:08:50', NULL),
('8f3a55e70e7532d4b97411bcd46475ad', '2017-07-27 17:09:12', NULL),
('5776762c12c750376093e31e8fd1879', '2017-07-27 17:09:12', NULL),
('4e29e8054d32c735c65433858af852f1', '2017-07-27 17:09:13', NULL),
('756af23229719cad0dbfec5036d00e0c', '2017-07-27 17:09:13', NULL),
('610367167ea65685aa8b6643cfc76804', '2017-07-27 17:09:17', NULL),
('7bb82f74553500ce3208637c31913089', '2017-07-27 17:09:17', NULL),
('3e61cbed39f659beb829fcbdd99d3110', '2017-07-27 17:09:17', NULL),
('a59ef5ac6feb6384ac6efe60e78aef86', '2017-07-27 17:09:17', NULL),
('e47136b3690349fbbeef4455a9b4ed4f', '2017-07-27 17:09:20', NULL),
('f20b540281202712f03a3e3a6d495bf1', '2017-07-27 17:09:20', NULL),
('f58b45c7b025ab3f0a1c7b4c137123f6', '2017-07-27 17:09:20', NULL),
('fff43812baf93835b94669a16716e75d', '2017-07-27 17:09:20', NULL),
('e8731de2939e02fa7225db312ad86c33', '2017-07-27 17:10:50', NULL),
('9bfbe72118a0539ab6fb697db32ba9eb', '2017-07-27 17:10:50', NULL),
('a2bf9f201a516d61d648249893031171', '2017-07-27 17:10:50', NULL),
('a605689c23fbae4dc1069917d3a4fbc5', '2017-07-27 17:10:50', NULL),
('824f5b074b0b53737a33605b9cdc307e', '2017-07-27 17:10:52', NULL),
('bfc3cf9bd03a7a378b73ca20c87cc8dc', '2017-07-27 17:10:52', NULL),
('651131e7713dd45e255f82d63a998d3d', '2017-07-27 17:10:52', NULL),
('50973df3049265e94dc3c99261e0d714', '2017-07-27 17:10:52', NULL),
('d4ac37f45570cc085b3e9b1026324954', '2017-07-27 17:11:10', NULL),
('5f850c6d5d16d9700c119a0d75cfea96', '2017-07-27 17:11:10', NULL),
('12a0af7006ae35de9c87f779bd229f31', '2017-07-27 17:11:10', NULL),
('e9e740e15629b0c33c9ec7844ca5d11f', '2017-07-27 17:11:10', NULL),
('b25bb9c9868a06349ce0b13d1a4c33ca', '2017-07-27 17:11:14', NULL),
('9e7e40ef4b2a0e399bfc86b91dbeda67', '2017-07-27 17:11:14', NULL),
('4e26789b209c717a36fc898e365c99b1', '2017-07-27 17:11:14', NULL),
('de94931ff46f8f6047dcda28a5e0bd9', '2017-07-27 17:11:14', NULL),
('e6425b79bcbc09f24d05401b9e603ef', '2017-07-27 17:11:17', NULL),
('72375e6e081fdc06f07ffcaf9be55efe', '2017-07-27 17:11:17', NULL),
('fdc051e38543b502bfe77a53a939a7cf', '2017-07-27 17:11:17', NULL),
('309e93c89f98ea78191642469d130541', '2017-07-27 17:11:17', NULL),
('938e09cffdd3f6e770ec80c3a2afbfaa', '2017-07-27 17:12:27', NULL),
('af22d915a8ee07a49ad2e1b45bf18115', '2017-07-27 17:12:27', NULL),
('7d08832f9183662021eaae2b29e7a69d', '2017-07-27 17:12:27', NULL),
('f03a7bdadacc5b206781d416594ab904', '2017-07-27 17:12:27', NULL),
('964598de375c25a6f70207465a93d1c2', '2017-07-27 17:12:27', NULL),
('de1ad5e9e24bc5651ec755d53f3a315e', '2017-07-27 17:12:27', NULL),
('869df07bdfc8ed9921d4a0c246e3b605', '2017-07-27 17:12:27', NULL),
('4d1c170692fd42bb77d69bf736ac9cce', '2017-07-27 17:12:35', NULL),
('81949d2333e9fdbbf4f5c2e911fb540c', '2017-07-27 17:12:35', NULL),
('81a386d4d8a2e920362058f2f0129024', '2017-07-27 17:12:35', NULL),
('140e55c693c79ad8c01f89b810d2e119', '2017-07-27 17:12:35', NULL),
('1ef0548c3e72ec2ea3aaf24b4ee7e809', '2017-07-27 17:12:35', NULL),
('670ca70338e4f05c8199968e0c49d845', '2017-07-27 17:12:35', NULL),
('26d6229a2f3a191ddf27924d1f649c', '2017-07-27 17:12:35', NULL),
('6d57c6bd76c3b915f710aab93b2e9784', '2017-07-27 17:12:37', NULL),
('6df2067fcc119a9740407334ac5870d5', '2017-07-27 17:12:37', NULL),
('20160cd188ee3a6b14cd810a3a47fba6', '2017-07-27 17:12:37', NULL),
('c7e191c2d871a58cc55e62e2a202fb47', '2017-07-27 17:12:37', NULL),
('88d1f95b798570952a393dd5dd6ee712', '2017-07-27 17:12:37', NULL),
('cf1c623a095f16550a179013fef6dd13', '2017-07-27 17:12:37', NULL),
('4df9f52677b10304bc0331662001a7d9', '2017-07-27 17:12:37', NULL),
('662d4e238c07a02a6d2fa100922976f9', '2017-07-27 17:12:38', NULL),
('ba0d4ac1c2af4a9f499a2e60ca69c3ae', '2017-07-27 17:12:38', NULL),
('4c0961e242ff1a34508baaeaac8fe42b', '2017-07-27 17:12:39', NULL),
('4abc9783a8861019b26c64fe93b4df24', '2017-07-27 17:12:39', NULL),
('431a49cb04b5cf839a0544c1238b8528', '2017-07-27 17:12:39', NULL),
('8908e57c989731c115715fc8a0819e4', '2017-07-27 17:12:39', NULL),
('7083f3ea9c01a2ebc2f5060ef25928dc', '2017-07-27 17:12:39', NULL),
('85662d9a3764adee4a7abc5619ed12f5', '2017-07-27 17:12:41', NULL),
('296cc1fdf2bd8d18e9c77a0ad7f52d9f', '2017-07-27 17:12:41', NULL),
('940c74c97f9787773e00442ee2dfa235', '2017-07-27 17:12:41', NULL),
('440a68496b8511e349383a3c9421a3cf', '2017-07-27 17:12:41', NULL),
('383fc89d8d6ff3c9ec54108da1c27851', '2017-07-27 17:12:45', NULL),
('2eb6f1b7aab56aaa9188b86b8dc437cd', '2017-07-27 17:12:45', NULL),
('a1638776dbf020b5a51b40a3cd3c5237', '2017-07-27 17:12:45', NULL),
('b9404c6de9aaa63f023b8eb90a1f2a1b', '2017-07-27 17:12:45', NULL),
('c4463d93a8baa7d171a93d4da767bfbc', '2017-07-27 17:12:46', NULL),
('8d738f1a522d3a62b8446b7451c01058', '2017-07-27 17:12:46', NULL),
('fa1666610e9ec8b0b7c11663ccac3953', '2017-07-27 17:12:46', NULL),
('aee88a73db93c6b7cb4532bbb20f69c8', '2017-07-27 17:12:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `brithDate` datetime DEFAULT NULL,
  `email` nvarchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fullName` nvarchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` bit(1) NOT NULL,
  `location` nvarchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` nvarchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` nvarchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sig` nvarchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone` bigint(20) NOT NULL,
  `userName` nvarchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_album`
--
ALTER TABLE `category_album`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_j3jprm5lxnf47rwn6cv2bdphg` (`albumID`),
  ADD KEY `FK_h9vfs7dqmgxki91vk6hvwwn2k` (`categoryID`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languge`
--
ALTER TABLE `languge`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `musics`
--
ALTER TABLE `musics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_ch8i79vqsw8mjjlpp3xenlh82` (`authorID`),
  ADD KEY `FK_th9tq7w5sk3rhfjcg48udy27h` (`singerID`),
  ADD KEY `FK_f68fsrop1d4mw3b9spxhk2mdy` (`userbyID`);

--
-- Indexes for table `music_album`
--
ALTER TABLE `music_album`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_orj5o45jn17gf2ttq6xu20ktl` (`albumID`),
  ADD KEY `FK_1mcy54phl26rwq5duaco182w1` (`musicID`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rate`
--
ALTER TABLE `rate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_2h8edw11l2f6stcjqog8vw6s2` (`albumID`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD KEY `FK_ao2csf27fnt1gmcu0y5h52q2d` (`userID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `category_album`
--
ALTER TABLE `category_album`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `languge`
--
ALTER TABLE `languge`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `musics`
--
ALTER TABLE `musics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `music_album`
--
ALTER TABLE `music_album`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `rate`
--
ALTER TABLE `rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_album`
--
ALTER TABLE `category_album`
  ADD CONSTRAINT `FK_h9vfs7dqmgxki91vk6hvwwn2k` FOREIGN KEY (`categoryID`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `FK_j3jprm5lxnf47rwn6cv2bdphg` FOREIGN KEY (`albumID`) REFERENCES `album` (`id`);

--
-- Constraints for table `musics`
--
ALTER TABLE `musics`
  ADD CONSTRAINT `FK_ch8i79vqsw8mjjlpp3xenlh82` FOREIGN KEY (`authorID`) REFERENCES `person` (`id`),
  ADD CONSTRAINT `FK_f68fsrop1d4mw3b9spxhk2mdy` FOREIGN KEY (`userbyID`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FK_th9tq7w5sk3rhfjcg48udy27h` FOREIGN KEY (`singerID`) REFERENCES `person` (`id`);

--
-- Constraints for table `music_album`
--
ALTER TABLE `music_album`
  ADD CONSTRAINT `FK_1mcy54phl26rwq5duaco182w1` FOREIGN KEY (`musicID`) REFERENCES `musics` (`id`),
  ADD CONSTRAINT `FK_orj5o45jn17gf2ttq6xu20ktl` FOREIGN KEY (`albumID`) REFERENCES `album` (`id`);

--
-- Constraints for table `rate`
--
ALTER TABLE `rate`
  ADD CONSTRAINT `FK_2h8edw11l2f6stcjqog8vw6s2` FOREIGN KEY (`albumID`) REFERENCES `album` (`id`);

--
-- Constraints for table `sessions`
--
ALTER TABLE `sessions`
  ADD CONSTRAINT `FK_ao2csf27fnt1gmcu0y5h52q2d` FOREIGN KEY (`userID`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
