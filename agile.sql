-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 22, 2019 at 12:42 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agile`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cart_item`
--

CREATE TABLE `cart_item` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cart_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` decimal(5,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `description` text,
  `image` varchar(50) DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `title`, `description`, `image`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Chilli Paste, Hot Sambal Oelek', 'Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est.', 'https://dummyimage.com/300', '3.14', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(2, 'Sausage - Liver', 'Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 'https://dummyimage.com/300', '0.54', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(3, 'Wonton Wrappers', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis.', 'https://dummyimage.com/300', '0.46', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(4, 'Fond - Neutral', 'Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo.', 'https://dummyimage.com/300', '5.99', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(5, 'Bread - Pumpernickel', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia.', 'https://dummyimage.com/300', '4.45', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(6, 'Orange - Canned, Mandarin', 'Etiam pretium iaculis justo. In hac habitasse platea dictumst.', 'https://dummyimage.com/300', '1.28', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(7, 'Cheese - Provolone', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 'https://dummyimage.com/300', '1.75', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(8, 'Beef - Ground Medium', 'Etiam pretium iaculis justo.', 'https://dummyimage.com/300', '9.03', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(9, 'Turkey - Breast, Smoked', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 'https://dummyimage.com/300', '6.02', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(10, 'Pea - Snow', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum.', 'https://dummyimage.com/300', '9.67', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(11, 'Papadam', 'Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo.', 'https://dummyimage.com/300', '9.80', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(12, 'Wine - White, Riesling, Semi - Dry', 'Etiam justo.', 'https://dummyimage.com/300', '8.92', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(13, 'Juice - Apple, 341 Ml', 'Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 'https://dummyimage.com/300', '3.75', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(14, 'Cheese - Oka', 'Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.', 'https://dummyimage.com/300', '9.73', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(15, 'Bread - Corn Muffaleta Onion', 'Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 'https://dummyimage.com/300', '8.30', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(16, 'Juice - V8 Splash', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 'https://dummyimage.com/300', '5.34', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(17, 'Yucca', 'Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 'https://dummyimage.com/300', '4.46', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(18, 'Mcguinness - Blue Curacao', 'Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 'https://dummyimage.com/300', '2.97', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(19, 'Pernod', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 'https://dummyimage.com/300', '4.84', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(20, 'Muffin Chocolate Individual Wrap', 'Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum.', 'https://dummyimage.com/300', '5.81', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(21, 'Tuna - Bluefin', 'Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet.', 'https://dummyimage.com/300', '2.41', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(22, 'Cream - 18%', 'Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 'https://dummyimage.com/300', '1.99', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(23, 'Garlic', 'Quisque ut erat. Curabitur gravida nisi at nibh.', 'https://dummyimage.com/300', '2.81', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(24, 'Cheese - Victor Et Berthold', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla.', 'https://dummyimage.com/300', '1.47', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(25, 'Mustard - Individual Pkg', 'Duis consequat dui nec nisi volutpat eleifend.', 'https://dummyimage.com/300', '3.42', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(26, 'Wine - Zonnebloem Pinotage', 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'https://dummyimage.com/300', '3.03', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(27, 'Gelatine Leaves - Bulk', 'Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 'https://dummyimage.com/300', '0.86', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(28, 'Hagen Daza - Dk Choocolate', 'Nulla tellus. In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 'https://dummyimage.com/300', '4.10', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(29, 'Hickory Smoke, Liquid', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 'https://dummyimage.com/300', '5.69', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(30, 'Sage Ground Wiberg', 'Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien.', 'https://dummyimage.com/300', '8.26', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(31, 'Nut - Almond, Blanched, Sliced', 'Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante.', 'https://dummyimage.com/300', '0.90', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(32, 'Soup - Cream Of Broccoli, Dry', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 'https://dummyimage.com/300', '8.81', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(33, 'Pastry - Baked Cinnamon Stick', 'Nunc rhoncus dui vel sem. Sed sagittis.', 'https://dummyimage.com/300', '7.19', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(34, 'Canada Dry', 'Aliquam erat volutpat. In congue. Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst.', 'https://dummyimage.com/300', '1.28', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(35, 'Pasta - Penne, Lisce, Dry', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus.', 'https://dummyimage.com/300', '4.33', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(36, 'Oil - Peanut', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est.', 'https://dummyimage.com/300', '0.00', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(37, 'Roe - White Fish', 'Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 'https://dummyimage.com/300', '2.01', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(38, 'Myers Planters Punch', 'Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula.', 'https://dummyimage.com/300', '8.07', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(39, 'Mustard Prepared', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 'https://dummyimage.com/300', '3.64', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(40, 'Cabbage - Nappa', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia.', 'https://dummyimage.com/300', '4.80', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(41, 'Table Cloth - 53x69 Colour', 'Suspendisse potenti. Nullam porttitor lacus at turpis.', 'https://dummyimage.com/300', '3.93', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(42, 'Garlic - Peeled', 'Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 'https://dummyimage.com/300', '8.62', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(43, 'Potatoes - Idaho 100 Count', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl. Nunc nisl.', 'https://dummyimage.com/300', '5.22', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(44, 'Lid - 16 Oz And 32 Oz', 'Integer a nibh. In quis justo.', 'https://dummyimage.com/300', '8.76', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(45, 'Ice Cream - Life Savers', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat. In congue. Etiam justo.', 'https://dummyimage.com/300', '1.62', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(46, 'Chef Hat 20cm', 'Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 'https://dummyimage.com/300', '8.05', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(47, 'Potatoes - Yukon Gold, 80 Ct', 'Vivamus tortor.', 'https://dummyimage.com/300', '2.74', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(48, 'Slt - Individual Portions', 'Morbi a ipsum. Integer a nibh. In quis justo.', 'https://dummyimage.com/300', '1.34', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(49, 'Shortbread - Cookie Crumbs', 'Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue.', 'https://dummyimage.com/300', '6.33', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(50, 'Fish - Atlantic Salmon, Cold', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 'https://dummyimage.com/300', '6.57', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(51, 'Coffee Cup 16oz Foam', 'Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti.', 'https://dummyimage.com/300', '1.93', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(52, 'Lychee', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum.', 'https://dummyimage.com/300', '0.49', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(53, 'Juice - Cranberry 284ml', 'Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla.', 'https://dummyimage.com/300', '5.44', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(54, 'Muskox - French Rack', 'Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor.', 'https://dummyimage.com/300', '3.04', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(55, 'Extract - Lemon', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 'https://dummyimage.com/300', '5.84', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(56, 'Versatainer Nc - 8288', 'Nullam sit amet turpis elementum ligula vehicula consequat.', 'https://dummyimage.com/300', '7.66', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(57, 'Butter Ripple - Phillips', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 'https://dummyimage.com/300', '8.81', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(58, 'Longos - Assorted Sandwich', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum.', 'https://dummyimage.com/300', '7.37', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(59, 'Dip - Tapenade', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.', 'https://dummyimage.com/300', '3.36', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(60, 'Beans - Butter Lrg Lima', 'Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 'https://dummyimage.com/300', '5.15', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(61, 'Sausage - Andouille', 'Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum.', 'https://dummyimage.com/300', '6.87', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(62, 'Appetizer - Assorted Box', 'Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 'https://dummyimage.com/300', '5.27', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(63, 'Soup - Verve - Chipotle Chicken', 'Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 'https://dummyimage.com/300', '2.07', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(64, 'Peas - Pigeon, Dry', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 'https://dummyimage.com/300', '6.70', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(65, 'Salt - Celery', 'Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus.', 'https://dummyimage.com/300', '4.85', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(66, 'Vinegar - Tarragon', 'Nulla mollis molestie lorem.', 'https://dummyimage.com/300', '9.04', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(67, 'Cheese - Boursin, Garlic / Herbs', 'Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.', 'https://dummyimage.com/300', '2.25', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(68, 'Rice - Wild', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus.', 'https://dummyimage.com/300', '1.43', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(69, 'Molasses - Fancy', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus.', 'https://dummyimage.com/300', '0.50', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(70, 'Lobster - Live', 'Duis bibendum.', 'https://dummyimage.com/300', '3.88', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(71, 'Yoplait - Strawbrasp Peac', 'Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 'https://dummyimage.com/300', '7.77', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(72, 'Beer - True North Strong Ale', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis. Donec semper sapien a libero. Nam dui.', 'https://dummyimage.com/300', '1.39', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(73, 'Extract - Almond', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 'https://dummyimage.com/300', '9.86', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(74, 'Muffin - Mix - Bran And Maple 15l', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.', 'https://dummyimage.com/300', '4.87', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(75, 'Soup Campbells', 'Ut at dolor quis odio consequat varius.', 'https://dummyimage.com/300', '5.97', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(76, 'Nut - Hazelnut, Whole', 'Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque.', 'https://dummyimage.com/300', '0.47', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(77, 'Cornflakes', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis.', 'https://dummyimage.com/300', '5.67', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(78, 'Wine - Kwv Chenin Blanc South', 'Nulla mollis molestie lorem. Quisque ut erat.', 'https://dummyimage.com/300', '3.77', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(79, 'Icecream Bar - Del Monte', 'Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl.', 'https://dummyimage.com/300', '9.73', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(80, 'Pectin', 'Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'https://dummyimage.com/300', '9.60', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(81, 'Transfer Sheets', 'Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 'https://dummyimage.com/300', '6.96', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(82, 'Flounder - Fresh', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 'https://dummyimage.com/300', '4.71', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(83, 'Wonton Wrappers', 'Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 'https://dummyimage.com/300', '3.43', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(84, 'Pasta - Penne, Rigate, Dry', 'Nulla tellus. In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 'https://dummyimage.com/300', '5.43', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(85, 'Beef - Diced', 'In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum. Morbi non quam nec dui luctus rutrum.', 'https://dummyimage.com/300', '1.70', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(86, 'Placemat - Scallop, White', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat.', 'https://dummyimage.com/300', '7.27', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(87, 'Clams - Littleneck, Whole', 'Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti.', 'https://dummyimage.com/300', '1.03', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(88, 'Langers - Mango Nectar', 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.', 'https://dummyimage.com/300', '7.86', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(89, 'Shallots', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti.', 'https://dummyimage.com/300', '7.11', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(90, 'Sage Ground Wiberg', 'Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 'https://dummyimage.com/300', '4.17', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(91, 'Vinegar - Champagne', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum.', 'https://dummyimage.com/300', '6.13', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(92, 'Lamb - Shanks', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy.', 'https://dummyimage.com/300', '6.49', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(93, 'Potatoes - Idaho 80 Count', 'Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus.', 'https://dummyimage.com/300', '7.51', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(94, 'Plasticspoonblack', 'Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat. In congue.', 'https://dummyimage.com/300', '7.60', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(95, 'Sobe - Cranberry Grapefruit', 'Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 'https://dummyimage.com/300', '4.45', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(96, 'Juice - Grape, White', 'Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit.', 'https://dummyimage.com/300', '2.04', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(97, 'Extract - Rum', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend.', 'https://dummyimage.com/300', '5.68', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(98, 'Cookies - Assorted', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis.', 'https://dummyimage.com/300', '6.81', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(99, 'Mushroom - Morel Frozen', 'Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 'https://dummyimage.com/300', '1.96', '2019-11-22 07:26:07', '2019-11-22 07:26:30'),
(100, 'Bread - Crusty Italian Poly', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.', 'https://dummyimage.com/300', '5.07', '2019-11-22 07:26:07', '2019-11-22 07:26:30');

-- --------------------------------------------------------

--
-- Table structure for table `item_order`
--

CREATE TABLE `item_order` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` decimal(5,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_11_22_074710_create_carts_table', 2),
(6, '2019_11_22_091445_create_cart_item_table', 2),
(7, '2019_11_22_094246_create_orders_table', 3),
(8, '2019_11_22_094348_create_item_order_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'User', 'user@mail.com', NULL, '$2y$10$PjyEh2qt/RRvYmQdwES9J..LbeTOucSPM632QDrFCUm6/hXvmmcGy', NULL, '2019-11-22 02:08:53', '2019-11-22 02:08:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_item`
--
ALTER TABLE `cart_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_order`
--
ALTER TABLE `item_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart_item`
--
ALTER TABLE `cart_item`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `item_order`
--
ALTER TABLE `item_order`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
