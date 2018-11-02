-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 02, 2018 lúc 03:06 PM
-- Phiên bản máy phục vụ: 10.1.36-MariaDB
-- Phiên bản PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `vitduct`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(10) UNSIGNED NOT NULL,
  `count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `userID` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent`, `count`, `userID`, `created_at`, `updated_at`) VALUES
(1, 'Sản phẩm', 0, 0, 1, '2015-12-24 18:42:37', '2015-12-24 18:42:37'),
(2, 'Dự án', 0, 0, 1, '2015-12-24 18:42:42', '2015-12-24 18:42:42'),
(3, 'Tin tức', 0, 0, 1, '2015-12-24 18:42:50', '2015-12-24 18:42:50'),
(4, 'Ống gió', 1, 1, 3, '2015-12-24 18:57:10', '2016-04-09 21:49:04'),
(5, 'Cửa gió', 1, 1, 1, '2015-12-24 18:57:16', '2016-04-01 07:54:29'),
(7, 'Van gió', 1, 1, 1, '2015-12-24 18:57:40', '2016-04-01 07:54:37'),
(9, 'Tiêu âm và vật liệu tiêu âm', 1, 1, 1, '2015-12-24 18:58:09', '2016-04-01 07:54:45'),
(10, 'Dự án tiêu biểu', 2, 4, 1, '2016-04-01 07:55:15', '2016-04-06 04:19:05'),
(11, 'Download tài liệu', 0, 2, 1, '2016-04-01 07:55:37', '2016-04-01 07:55:37'),
(12, 'Catalogue sản phẩm', 11, 2, 3, '2016-04-01 07:56:04', '2016-04-13 22:01:26'),
(13, 'Tin công nghệ', 3, 5, 3, '2016-04-01 07:56:30', '2016-04-09 16:54:01'),
(14, 'Nhà thầu cơ điện', 0, 1, 1, '2016-04-01 07:57:01', '2016-04-01 07:57:01'),
(15, 'Cung cấp và thi công hệ thống điều hòa không khí và  thông gió', 14, 7, 3, '2016-04-01 07:58:26', '2016-04-13 22:02:46'),
(16, 'About us', 0, 3, 1, '2016-04-06 04:20:01', '2016-04-06 04:20:01'),
(17, 'Giới thiệu về công ty', 16, 3, 3, '2016-04-06 04:20:13', '2016-04-09 19:47:40'),
(18, 'Thư viện hình ảnh', 0, 6, 3, '2016-04-09 16:56:58', '2016-04-09 16:56:58'),
(19, 'Hình ảnh về cơ sở sản xuất', 18, 6, 3, '2016-04-09 16:57:20', '2016-04-09 16:57:20'),
(20, 'Lò xo chống rung và giảm chấn', 1, 1, 3, '2016-04-11 15:45:02', '2016-04-11 15:45:02'),
(21, 'Hình ảnh thi công các dự án', 18, 6, 1, '2016-04-13 00:08:06', '2016-04-13 00:08:06'),
(22, 'Bảng giá sản phẩm', 11, 2, 1, '2016-04-13 21:59:29', '2016-04-13 22:54:11'),
(23, 'Hồ sơ năng lực và giới thiệu về VIT', 11, 2, 1, '2016-04-20 22:27:51', '2016-12-06 14:39:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `viewed` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `votes` int(11) NOT NULL DEFAULT '0',
  `parent` int(10) UNSIGNED NOT NULL,
  `type` int(10) UNSIGNED NOT NULL,
  `categorieID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `userID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `sttesign` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `price` decimal(10,0) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `content`, `viewed`, `votes`, `parent`, `type`, `categorieID`, `userID`, `sttesign`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Cửa gió khuếch tán', 'Cửa gió khuếch tán được sử dụng làm cửa gió cấp, cửa gió hồi', '<p></p><p><b>* Đặc điểm sử dụng</b></p><p>- Được sử dụng làm cửa gió cấp, cửa gió hồi</p><p>- Thích hợp lắp đặt với tất cả các loại trần giả</p><p>- Khung và lõi riêng biệt, dễ dàng tháo lắp và bảo trì</p><p>- Có thể là hình vuông hoặc hình chữ nhật, tùy vào thiết kế. Tùy vị trí lắp đặt có thể chọn loại thổi 1, 2, 3 hoặc 4 hướng.</p><p><b>* Vật liệu</b></p><p>- Khung được làm từ Nhôm định hình, trên có gân tăng cứng và ke góc để tạo góc vuông cho toàn bộ cửa.</p><p>- Cánh được làm từ Nhôm định hình, trên cánh có gân trợ lực để tăng cứng.</p><p>- Được sơn bằng dây chuyền sơn tĩnh điện theo công nghệ Hàn Quốc và Nhật Bản. Màu sắc đa dạng.</p><p><img src=\"http://onggio86.com/wp-content/uploads/2015/04/1-c%E1%BB%ADa-gi%C3%B3-khu%E1%BA%BFch-t%C3%A1n.jpg\"><br></p><p></p>\r\n', 0, 0, 1, 1, 5, 3, 1, '0', '2016-02-15 06:57:01', '2016-04-09 20:18:26'),
(2, 'Cút góc ống gió', 'Cút góc ống gió không bọc bảo ôn', '<p><img src=\"http://static.wixstatic.com/media/b71449_d2a8d26ad841a7ca4fa70eee3643e0e7.jpg_srz_431_431_85_22_0.50_1.20_0.00_jpg_srz\"><br></p>', 0, 0, 1, 1, 4, 3, 1, '0', '2016-02-15 07:08:08', '2016-04-09 20:18:19'),
(3, 'Côn ống gió', 'Côn ống gió vuông tròn', '<p><img src=\"http://pic.trangvangvietnam.com/395676352/cong%20vuong%20tron.png\"><br></p>', 0, 0, 1, 1, 4, 3, 1, '0', '2016-02-15 07:11:45', '2016-04-09 20:18:13'),
(5, 'Ống gió tròn xoắn', 'Ống gió tròn xoắn được thiết kế bởi những kiến trúc sư giỏi do yêu cầu thẩm mỹ của các công trình, ống có thể được sơn, phối màu phù hợp hoặc nổi bật với cảnh quan bên trong công trình.', '<p><img src=\"https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQaGtuSDysHMejt5ErOKfyWBBboiUaWf5ebp4guDxvgwJU2K5_T\"><br></p>', 0, 0, 1, 1, 4, 3, 1, '0', '2016-02-15 07:13:59', '2016-04-09 20:11:51'),
(6, 'Khách sạn Lam Kinh Thanh Hóa', 'Khách sạn Lam Kinh Thanh Hóa', '<p></p><p>- Địa điểm xây dựng: Thành Phố Thanh Hóa - Tỉnh Thanh Hóa</p><p>- Chủ đầu tư: Công ty CP Xây lắp Dầu khí Thanh Hóa</p><p>- Tổng mức đầu tư: 560 tỷ đồng</p><p>- Qui mô: Khách sạn 4 sao – Với 27.000 m2 sàn xây dựng.</p><p>- Hạng mục tham gia thi công:</p><ul><li>Hệ thống điều hòa thông gió</li><li>Hệ thống phòng cháy chữa cháy tự động</li><li>Hệ thống quản lý toàn nhà (BMS)</li><li>Hệ thống kiểm soát vào ra (ACCC)</li><li>Hệ thống LAN/TEL</li></ul><img src=\"https://images.yesgo.vn/logo/1396430231.jpg\"><br><p></p>\r\n', 0, 0, 2, 2, 10, 1, 1, '0', '2016-02-15 07:22:01', '2016-04-03 07:33:18'),
(7, '4 “ông lớn” bất động sản có ảnh hưởng nhất năm qua', 'Dường như sân chơi lớn đang tập trung trong tay 4 nhà phát triển bất động sản...', '<p></p><p><b>Năm 2015 được coi là một năm thăng hoa của thị trường bất động sản Việt Nam, với số lượng giao dịch thành công tăng đột biến.&nbsp;</b></p><p>Thế nhưng, sự hưng phấn trên toàn thị trường lại không dành cho tất cả các doanh nghiệp trong ngành, khi phần lớn các doanh nghiệp bất động sản nhìn chung vẫn còn nhiều khó khăn trong việc đưa sản phẩm đến tay người tiêu dùng.</p><p>Bất động sản năm 2015 là cuộc đua phân hạng rõ ràng, và nhìn trên góc độ này, dường như sân chơi lớn đang tập trung trong tay 4 nhà phát triển bất động sản.</p><p><img src=\"http://vneconomy2.vcmedia.vn/zoom/500_312/QXDRQqSpnksbgvD7IHAwXMYvXWy4e/Image/2016/01/00-9c384.jpg\"><br></p><p></p><p><strong>Vingroup</strong></p><p>Nếu trước 2015, không khó để liệt kê được các dự án do tập đoàn này triển khai, thì trong năm vừa qua, ngay cả những người theo dõi sát tập đoàn này cũng không thể tự tin nói chính xác số dự án bất động sản mà Vingroup đã khởi công trên khắp cả nước.&nbsp;</p><p>Với Vingroup, các dự án bất động sản được triển khai đều khắp ở nhiều hạng mục như: bất động sản nhà ở thương mại, bất động sản nghỉ dưỡng, trung tâm thương mại.</p><p>Tại Hà Nội, nơi các dự án bất động sản nhà ở của Vingroup tập trung nhiều nhất, tính đến hết năm 2015, tập đoàn này đã sở hữu quỹ đất khổng lồ, với số lượng căn hộ, biệt thự lên tới hàng chục nghìn căn.</p><p>Điều thú vị là, dù chào bán dày đặc, tất cả các dự án đều có quy mô lớn, nhưng dòng tiền thu được từ bán hàng của Vingroup vẫn ở mức rất lớn, với tỷ lệ hấp thụ cao. Đặc biệt hơn, các dự án của Vingroup đều sở hữu một đặc điểm chung là sớm trở thành tâm điểm chú ý của mỗi khu vực khi dự án đi vào hoạt động.</p><p>Không chỉ “ghi điểm” trên địa bàn Hà Nội, tại Tp.HCM, Vingroup cũng đang chứng tỏ ưu thế trong lĩnh vực nhà ở. Cùng với đó là hàng loạt dự án bất động sản nghỉ dưỡng tại các địa phương trên cả nước. Đối với phân khúc bất động sản, Vingroup không chỉ tạo ra những quần thể nghỉ dưỡng lớn, đẳng cấp, mà các sản phẩm nghỉ dưỡng thuộc các quần thể này cũng có sức hấp dẫn đáng kể với thị trường.</p><p>Triển khai nhiều dự án, các dự án có quy mô lớn, ở đẳng cấp khá cao, luôn tạo ra dấu ấn và đặc biệt là được thị trường đón nhận ở cả phân khúc nghỉ dưỡng lẫn nhà ở thương mại là đặc điểm nổi bật của Vingroup.&nbsp;</p><p>Hiện tại, cách bán hàng của Vingroup liên quan đến cam kết lợi nhuận tại các dự án bất động sản nghỉ dưỡng đã được nhiều doanh nghiệp học theo, nhưng làm được như Vingroup lại không hề đơn giản, bởi cái thị trường còn cần là uy tín - điều các chủ đầu tư lại không dễ làm được trong ngày một ngày hai.</p><p></p><p><b>FLC Group</b></p><p>Tại Hà Nội, trong vòng một năm qua, số dự án khởi công, mở bán rất nhiều. Và ngoài Vingroup, trong năm 2015, trong khi nhiều doanh nghiệp bất động sản khác vẫn chật vật bán hàng, thì với hơn 4.000 căn hộ và biệt thự ra mắt thị trường trong năm 2015,&nbsp;FLC dường như là doanh nghiệp duy nhất có sản phẩm chào bán “cháy hàng” ngay trong ngày đầu tiên mở bán.</p><p>Ở phân khúc nhà ở thương mại, các dự án của FLC hầu hết là các dự án riêng lẻ, nhưng mang đặc điểm chung là có vị trí đẹp, nằm ở khu vực có tỷ lệ hấp thụ thuộc top cao nhất của Hà Nội, như các dự án FLC Complex 36 Phạm Hùng, FLC Garden City, FLC Greenhome... Ngay dự án tháp đôi FLC Twin Towers tại 265 Cầu Giấy, chưa cần phải chào bán, FLC đã có lượng đăng ký đặt mua xấp xỉ số căn dự kiến sẽ chào bán.</p><p>Hiện tại, ngoài những dự án chung cư đã công bố, FLC còn sở hữu hàng loạt dự án khác tại Hà Nội, với tổng số hơn 10 tòa căn hộ cùng nhiều dự án nhà liền kề, biệt thự... với một đặc điểm giống như các dự án đã công bố, là đều được thị trường quan tâm, nhiều đơn vị trung gian đăng ký mua lại.</p><p>Ngoài mảng nhà ở thương mại tại Hà Nội, tương tự Vingroup, FLC cũng sở hữu các quần thể dự án nghỉ dưỡng tại các địa phương khác, với tổng mức đầu tư lên tới hàng chục nghìn tỷ đồng như: Thanh Hóa (FLC Sầm Sơn Beach &amp; Golf Resort), Bình Định (FLC Quy Nhơn Beach &amp; Golf Resort), Vĩnh Phúc (FLC Vĩnh Thịnh Resort), quần thể sân golf tại Quảng Bình, sắp tới là Quảng Ninh... chưa kể dự án nhà ở tại Thanh Hóa.</p><p>Ở phân khúc này, FLC đã tạo được dấu ấn cho chính mình và địa phương, khi trở thành người đi đầu biến tiềm năng du lịch tại các địa phương trở thành hiệu quả kinh tế cho doanh nghiệp và địa phương. Với FLC Sầm Sơn, chỉ trong một thời gian ngắn đi vào hoạt động, quần thể dự án này đã thu hút hàng chục nghìn lượt khách, trở thành tâm điểm du lịch của Thanh Hóa, tạo được doanh thu khá lớn khi hàng trăm biệt thự đã được thị trường tiếp nhận ngay lần đầu tiên mở bán.</p><p><span style=\"line-height: 1.45em; background-color: initial;\">FLC cũng đang từng bước “cắm mốc” tại các địa danh giàu tiềm năng dọc theo dải bờ biển miền Trung. Chỉ trong vòng hai năm qua, hàng tỷ USD đã được tập đoàn này rót vào các dự án bất động sản nghỉ dưỡng tại Thanh Hóa, Bình Định và tới đây sẽ là Quảng Bình, Quảng Ninh.</span><br></p><p><b>Novaland</b></p><p>Nếu ở phía Bắc, Vingroup được coi là người thống lĩnh thị trường bất động sản nhà ở, thì tại khu vực miền Nam, Novaland cũng là cái tên được nhắc đến gần đây, với lượng sản phẩm bán ra khổng lồ trong vòng 3 năm nay, cùng quỹ dự án lớn.</p><p>Với hàng chục dự án trải khắp các địa bàn Tp.HCM, như Sunrise City, Suriseview, Sunrise Riverside, Golden Mansion, Orchard Parkview, Newton Residence, Duxton Residence, The Sun Avenue, The Botanica, RiverGate, Lucky Palace, Lucky Dragon... khiến khách hàng tại thị trường này bắt đầu rơi vào cảm giác “ra ngõ gặp Novaland”.</p><p>Ở khu vực phía Nam, thị trường không rơi vào tình trạng phân hạng mạnh như khu vực phía Bắc, nhưng phía sau Novaland, các doanh nghiệp bất động sản khác dù vẫn bán hàng được, nhưng tốc độ phát triển chậm hơn, và ở quy mô nhỏ hơn rất nhiều.</p><p><b>Sun Group</b></p><p>Ở mảng bất động sản nghỉ dưỡng, ngoài Vingroup, FLC, năm 2015, Sun Group là cái tên được thị trường biết đến với hàng loạt dự án đầu tư vào Đà Nẵng (Bà Nà Hills, InterContinental Sun Peninsula Resort...).</p><p>Tại Quảng Ninh, Sun Group cũng đang đầu tư mạnh với hệ thống cáp treo xuyên vịnh Hạ Long. Hệ thống cáp treo này nằm trong tổ hợp dự án 6.000 tỷ đồng bao gồm một quần thể công viên trên núi, khu vui chơi giải trí trên đồi, vòng quay khổng lồ, và một thủy cung lớn phía dưới chân bờ vịnh Hạ Long.</p><p>Ngoài ra, tập đoàn này cũng đang và sẽ đầu tư vào các địa phương khác như Lào Cai, Phú Quốc.</p><p><span style=\"line-height: 1.45em; background-color: initial;\">Với lượng khách khổng lồ đã đến với Sun Group trong suốt các năm qua, doanh nghiệp này đang chứng tỏ vị thế ngày một lớn của mình trong lĩnh vực bất động sản nghỉ dưỡng, với một hướng đầu tư rất riêng tại Việt Nam.</span><br></p><p></p><p></p><p></p>\r\n', 0, 0, 3, 0, 3, 1, 1, '0', '2016-02-15 07:31:04', '2016-02-15 07:38:11'),
(8, 'Cứ 10 giây, Apple kiếm được 11.740 USD lợi nhuận', 'Một mình Apple chiếm đến hơn nửa lợi nhuận của các công ty công nghệ lớn nhất thế giới... Không còn nghi ngờ gì nữa, yếu tố lớn nhất tác động đến cuộc sống hiện đại chính là khả năng sao lưu và dự trữ dữ liệu với chi phí bằng không. ', '<p><p><strong>Không còn nghi ngờ gì nữa, yếu tố lớn nhất tác động đến cuộc sống hiện đại chính là khả năng sao lưu và dự trữ dữ liệu với chi phí bằng không. </strong></p><p>Cuộc cách mạng về thông tin đã mang đến cho con người rất nhiều lợi ích mà không phải tốn quá nhiều chi phí.</p><p>Giờ đây người ta có thể kết nối với kho kiến thức toàn cầu mà không phải trả một xu nào hoặc số tiền phải trả quá thấp đến mức không cần thiết phải bận tâm.</p><p>Những ứng dụng mới với nhiều tính năng ấn tượng có giá chưa đến một USD hay giá thuê bao dịch vụ truyền hình trực tuyến Netflix quá thấp đến mức hiếm khi chúng ta bận tâm đến nó khi thanh toán nợ thẻ tín dụng. </p><p>Đó là khi tiếp nhận thông tin còn khi muốn chia sẻ thông tin lại với cộng đồng, chúng ta cũng chẳng phải trả bất kỳ khoản tiền nào thông qua mạng xã hội, email hay nhiều phương tiện khác.</p><p>Trong suốt lịch sử loài người, chưa bao giờ con người được hưởng nhiều tiện ích như trên. Người ta chỉ có thể làm được điều đó nhờ vào sự phát triển bùng nổ của mạng Internet.</p><p>Có bao giờ bạn tự hỏi bạn thực hiện bao nhiêu thao tác tìm kiếm trên Google mỗi ngày? Bạn bè của bạn tìm kiếm trên Google bao nhiêu lần một ngày? </p><p><img src=\"http://vneconomy2.vcmedia.vn/zoom/500_312/S8igPoDlP2Gama5joBTW45D1IvpL1/Image/2016/02/loinhuan-88a79.png\"><br></p><p>Theo số liệu của Business Insider, cứ mỗi 10 giây trôi qua, khoảng 225.740 GB dữ liệu được chuyển tải trên mạng Internet. </p><p>Cũng trong khoảng thời gian trên, 46 nghìn lệnh tìm kiếm được thực hiện trên Google, 110 tài khoản twitter được tạo ra, trên Facebook có thêm 549.760 nội dung mới được đăng tải; 34.027.780 email được gửi đi, 2 triệu tin nhắn được trao đổi trên ứng dụng WhatsApp hay 6.340 ứng dụng trên App Store được tải về. </p><p>Mỗi một thao tác của bạn trên mạng Internet chỉ mang lại vài cent rất nhỏ cho nhà cung cấp ứng dụng nhưng tính theo con số rất lớn các thao tác như trên, nhà sản xuất thu được món lợi không hề nhỏ.</p><p>Vậy các công ty công nghệ lớn của thế giới kiếm được bao nhiêu tiền khi cứ mỗi 10 giây qua đi?</p><p>Theo thứ tự như trên, cứ mỗi 10 giây, Google kiếm được 4.090 USD lợi nhuận; Twitter thu được 200 USD doanh thu nhưng lại đang lỗ 200 USD; Facebook kiếm được 480 USD lợi nhuận; Apple thu về 11.740 USD lợi nhuận.</p><p>Và nếu tính chung, con số lợi nhuận chắc chắn sẽ khiến nhiều người ngạc nhiên. Cứ mỗi 10 giây trôi qua, các công ty công nghệ trên thu về 23.630 USD lợi nhuận và khoảng một nửa con số trên về túi của Apple. </p></p>', 0, 0, 3, 0, 3, 1, 1, '0', '2016-02-15 07:40:00', '2016-03-16 02:12:12'),
(9, 'Facebook cán ngưỡng 1 tỷ USD lợi nhuận', 'Facebook ngày 27/1 lần đầu tiên công bố mức lợi nhuận ròng hàng quý vượt mức 1 tỷ USD, cho thấy khả năng của mạng xã hội lớn nhất hành tinh trong việc kiếm tiền nhanh từ mức độ phổ biến ngày càng rộng rãi của mình.', '<p><strong>Facebook ngày 27/1 lần đầu tiên công bố mức lợi nhuận ròng hàng quý vượt mức 1 tỷ USD, cho thấy khả năng của mạng xã hội lớn nhất hành tinh trong việc kiếm tiền nhanh từ mức độ phổ biến ngày càng rộng rãi của mình.</strong><br><br>Tờ Wall Street Journal cho biết, doanh thu quý 4/2015 của Facebook tăng 52% so với cùng kỳ năm trước, đạt mức 3,85 tỷ USD nhờ lượng khách hàng quảng cáo tăng mạnh. Trong khi đó, chi phí chỉ tăng 21%.<br><br>Giá cổ phiếu của Facebook đã tăng 4,3% trong phiên giao dịch điện tử tại thị trường New York sau khi kết quả kinh doanh khả quan trên được công bố.</p><p><img src=\"http://vneconomy2.vcmedia.vn/zoom/500_312/e8MGt3z9mEZXVBKvj6NiUjxtCZ14Zf/Image/2016/01/00-1817c.jpg\"><br><br>Năm 2015 là năm mà Facebook đầu tư mạnh để phát triển. Công ty của Mark Zuckerberg đã thuê thêm hàng nghìn nhân viên và rót tiền vào những dự án như kính thực tế ảo Oculus VR, trí tuệ nhân tạo, và phủ sóng Internet tới các khu vực xa xôi.<br><br>Ngoài ra, Facebook cũng mở rộng thêm lựa chọn cho khách hàng quảng cáo, chẳng hạn cho khách hàng đặt thêm quảng cáo trên ứng dụng chia sẻ ảnh Instagram.&nbsp;<br><br>Trong nhiều trường hợp, Facebook có thể đòi mức giá cao hơn cho những quảng cáo như vậy, đặc biệt là ở thị trường Bắc Mỹ. Theo công ty nghiên cứu Bernstein Research, giá quảng cáo trên bảng tin (news feed) của Facebook tại Bắc Mỹ tăng tới 20% trong năm ngoái.<br><br>Doanh thu và lợi nhuận tăng đẩy giá cổ phiếu Facebook tăng gần 30% trong năm ngoái. Có thời điểm, giá trị vốn hóa thị trường của công ty 12 năm tuổi này vượt mức 300 tỷ USD.<br><br>Lợi nhuận ròng quý 4 của Facebook đạt 1,56 tỷ USD, tương đương 0,54 USD/cổ phiếu, từ mức 701 triệu USD, tương 0,25 USD/cổ phiếu cùng kỳ năm ngoái.<br><br>Trong quý 4, số người truy cập Facebook ít nhất 1 lần trong 1 tháng đạt 1,59 tỷ người, từ mức 1,55 tỷ người trong quý 3.<br></p>', 0, 0, 3, 0, 3, 1, 1, '0', '2016-02-15 07:46:33', '2016-02-15 07:46:33'),
(10, 'Áp thuế giá thép tăng vụt, có tích trữ đầu cơ?', '“Đang nhức đầu với...cơ quan công an vì xe tải nối đuôi chờ lấy hàng nhà máy dưới Bà Rịa - Vũng Tàu. Dù nỗ lực giao hàng cho các tài xế chở hàng nhưng số phiếu xuất hàng rất nhiều, lại tập trung đông hơn mức bình thường nên vẫn còn xe chờ bên ngoài”.', '<p><p>Sáng 13-3, trao đổi với&nbsp;<em>Tuổi Trẻ</em>, ông Đỗ Duy Thái, chủ tịch HĐQT Công ty CP Thép Việt (Pomina), xác nhận: “Đang nhức đầu với...cơ quan công an vì xe tải nối đuôi chờ lấy hàng nhà máy dưới Bà Rịa - Vũng Tàu. Dù nỗ lực giao hàng cho các tài xế chở hàng nhưng số phiếu xuất hàng rất nhiều, lại tập trung đông hơn mức bình thường nên vẫn còn xe chờ bên ngoài”.</p><p><img src=\"http://static.new.tuoitre.vn/tto/i/s626/2016/03/14/6f763c82.jpg\" style=\"\"><br></p><p style=\"text-align: center;\"><i>Tài xế ngồi chờ lấy phiếu để nhận thép tại huyện Tân Thành, Bà Rịa - Vũng Tàu - Ảnh: Đông Hà</i><br></p><p>Theo ông Thái, sở dĩ có tình trạng các đại lý, nhà phân phối điều nhà xe đến lấy thép nhiều hơn một cách bất thường là do quyết định áp thuế tự vệ tạm thời của Bộ Công thương ban hành hôm 7-3 (mức 23,3% đối với phôi thép, 14,2% đối với thép dài dưới dạng thuế nhập khẩu bổ sung, có hiệu lực từ ngày 22-3 tới). Thuế tăng, một số người suy đoán giá sau ngày 21-3 sẽ cao hơn so với thời điểm hiện nay nên đổ xô đi mua.</p><p>Ông Thái cũng không phủ nhận việc Pomina vừa điều chỉnh giá bán thép các loại giao tại nhà máy đã tăng thêm 250.000 đồng/tấn kể từ ngày 9-3, tức hai ngày sau khi Bộ Công thương ban hành quyết định nói trên, từ 8,7 triệu đồng/tấn lên 8,95 triệu đồng/tấn (chưa VAT). Dự kiến từ ngày 14-3, Pomina sẽ tiếp tục điều chỉnh giá bán.</p><p>Cũng có đoàn xe xếp hàng dài chờ lấy thép tại nhà máy ở Bà Rịa - Vũng Tàu nhưng ông Nguyễn Đình Phúc, tổng giám đốc Công ty TNHH một thành viên Thép Miền Nam (VNSteel), cho rằng không phải là vì mức thuế tăng của Bộ Công thương, mà do sự tình cờ trùng hợp một số nguyên liệu sản xuất thép như thép phế, phôi thép, quặng... đều có xu hướng nhích giá sau một thời gian dài giảm giá.</p><p>Với nguồn cung khoảng 40.000 tấn/tháng như hiện nay, ông Phúc khẳng định đoàn xe đến lấy hàng chủ yếu là các đại lý, nhà phân phối đến chở hàng theo hợp đồng đã ký với VNSteel. “Phần lớn các nhà phân phối đều có hợp đồng dài hạn với các công trình xây dựng nên họ phải cam kết giữ giá và cần sự ổn định về nguồn hàng cung cấp.</p><p>Chúng tôi vẫn xuất hàng bán bình thường, nguồn cung sản xuất thép vẫn vượt cầu nên không có chuyện không có hàng, hoặc ghim hàng từ nhà sản xuất. Vấn đề là mọi người cùng kéo đến một lúc thì nó sẽ đông hơn so với bình thường” - ông Phúc giải thích.</p><p>Dù các doanh nghiệp giải thích như vậy nhưng ông Nguyễn Văn Sưa, phó chủ tịch Hiệp hội Thép VN (VSA), cho rằng thị trường tăng giá ào ạt là vô lý bởi năng lực sản xuất thép trong nước đang vượt rất xa nhu cầu. “Thị trường sẽ điều tiết theo nhu cầu thật của nó, chứ không thể tác động bởi các nhu cầu hoặc thông tin ảo được” - ông Sưa nói.</p><p>Theo tìm hiểu của&nbsp;<em>Tuổi Trẻ</em>, trong tháng 1 và 2-2016, tổng lượng thép xây dựng tiêu thụ trên thị trường xấp xỉ 1,1 triệu tấn, tăng lần lượt 36,6 - 90% so với cùng kỳ năm 2015, bất chấp đây là tháng cận tết và trong tết. Nếu cộng thêm lượng thép tồn kho tại các doanh nghiệp (tức chưa bán được) tính đến ngày 29-2 xấp xỉ 500.000 tấn nữa, nên việc thiếu thép rất khó xảy ra.</p><p>Ông Sưa cho rằng việc một số doanh nghiệp điều chỉnh giá bán với lý do giá nguyên liệu tăng chỉ có thể chấp nhận được nếu nguyên liệu đó cập cảng VN từ tháng 4 trở đi. Còn nếu vẫn sử dụng các nguyên liệu giá thấp trước đã mua trong các tháng cuối năm 2015, hay thậm chí đầu tháng 1-2016 mà vẫn tăng giá theo kiểu đón đầu thì chưa hợp lý.</p><p>Tình trạng&nbsp;<a href=\"http://tuoitre.vn/tin/kinh-te/20160312/chuyen-la-ket-xe-tai-cho-nhan-thep/1066123.html\">hàng đoàn xe tải ùn ùn</a>&nbsp;xếp hàng dài chờ đến lượt lấy hàng tại các nhà máy thì không ít doanh nghiệp sản xuất thép cho rằng do chính sách tăng thuế của Bộ Công thương mà ra. Còn các chuyên gia thị trường lại khẳng định tâm lý tích trữ kéo theo đầu cơ mới là nguyên nhân thật sự.</p></p>', 0, 0, 3, 0, 3, 1, 1, '0', '2016-03-16 02:23:05', '2016-03-16 02:23:05'),
(12, 'Van điều chỉnh lưu lượng tròn (VD)', 'Van điều chỉnh lưu lượng tròn (VD)', '<p></p><p><b><p></p><p><img src=\"http://vitduct.com.vn/uploads/0416/3552Van gio tron dieu chinh lưu luong.jpg\"></p>Đặc điểm sử dụng:&nbsp;</b></p><p>- Dùng để điều chỉnh lưu lượng gió cấp và hồi.</p><p>- Được lắp trực tiếp trên đường ống cấp hoặc hồi hoặc phía sau hộp góp gió.&nbsp;</p><p><b>Vật liệu màu sắc:&nbsp;</b></p><p>- Được làm bằng tôn mạ kẽm hoặc Inox.</p><p>- Tay van có thể làm bằng nhựa hoặc tay bánh vít.</p><p>- Rất dễ dàng cho việc điều chỉnh lưu lượng gió cấp và hồi.</p><p><br></p><br><p></p>\r\n', 0, 0, 1, 1, 7, 3, 1, '0', '2016-04-03 07:05:22', '2016-04-13 20:12:40'),
(13, 'Giới thiệu về công ty', 'Với mục tiêu mở rộng thị trường, nâng cao năng lực trong các hoạt động xây dựng, để thực hiện các dự án xây dựng các công trình trong lĩnh vực công nghiệp luyện kim, dân dụng, …', '<p>Kính thưa quí khách hàng.</p><p>Công ty cổ phần Đầu tư xây lắp và thương mại Việt Nam được thành lập năm 2011. Với tôn chỉ hoạt động lấy sự hài lòng của khách hàng làm mục đích, lấy chất lượng của công trình làm thước đo cho sự phát triển của Công ty. Chính vì phương châm đó, toàn thể cán bộ công nhân viên công ty không ngừng nâng cao kiến thức, tay nghề...ngày càng hoàn thiện, để phục vụ khách hàng được tốt hơn. Năng lực của người lao động đươc đề cao và phát huy tối đa để tạo ra chất lượng của sản phẩm và chất lượng của các dự án mà công ty đã, đang và tiến tới tham gia.&nbsp;</p><p>Công ty cổ phần Đầu tư xây lắp và thương mại Việt Nam, ngành nghề và lĩnh vực hoạt động chính của công ty: Sản xuất vật tư cho hệ thống thông gió, lò xo chống rung giảm chấn và cung cấp, thi công các hệ thống cơ điện trong xây dựng dân dụng và công nghiệp. Mục tiêu trong tương lai gần có thể đứng vai trò làm tổng thầu M&amp;E trong các dự án lớn. Để thực hiện mục tiêu trên công ty không ngừng mở rộng về qui mô kinh doanh và qui mô đầu tư về máy móc trang thiết bị hiện đại để nâng cao chất lượng sản phẩm, hạ giá thành và nâng cao sức cạnh tranh.</p><p>Ngoài các yếu tố về đầu tư để mở rộng qui mô, sản xuất thêm các mặt hàng mới phục vụ thị trường. Công ty còn mở rộng sự liên doanh liên kết các hãng, nhà máy cung cấp thiết bị, vật tư trong ngành cơ điện. Với mong muôn đêm tới cho quí khách hàng sự hài lòng nhất. Chính sự thành công của quí khách hàng, là sự thành công của chúng Tôi.</p><p>Rất mong nhận được sự quan tâm và hợp tác.</p><p>Trân trọng cảm ơn!</p>', 0, 0, 16, 3, 17, 3, 1, '0', '2016-04-06 04:33:55', '2016-04-20 23:10:08'),
(17, 'Dự án Golden Palace - Đường Mễ Trì - Quận Nam Từ Liêm - Hà Nội', 'Dự án Golden Palace - Đường Mễ Trì là dự án tổ hợp Văn phòng dịch vụ và căn hộ cao cấp, do công ty CP Đầu tư Mai Linh là chủ đầu tư. Dự án gồm 3 tòa tháp cao 31 tầng nổi và 3 tầng hầm.\r\nCông ty tham gia cung cấp và thi công toàn bộ hệ thống điều hòa không khí của tháp B, thông gió toàn bộ phần khối đế và thông gió tầng hầm', '<p><p></p><p><img src=\"http://vitduct.com.vn/uploads/0416/8017Golden Palace 2.jpg\"></p><br></p>', 0, 0, 2, 4, 10, 3, 1, '0', '2016-04-11 16:24:44', '2016-04-11 16:24:44'),
(18, 'Dự án Golden Palace C3 Lê Văn Lương', 'Dự án Golden Palace C3 Lê Văn Lương', '<p><p><img src=\"http://vitduct.com.vn/uploads/0416/9792C3.jpg\" style=\"\"></p>Dự án Golden Palace C3 Lê Văn Lương là tổ hợp Dịch vụ và căn hộ cao cấp do công ty TNHH ĐTXD Hoàng Cường làm chủ đầu tư. Dự án bao gồm &nbsp;3 tầng hầm và 21 tầng nổi.</p><p>Công ty VIT tham gia cung cấp và thi công Hệ thống điều hòa không khí và thông gió</p>', 0, 0, 2, 4, 10, 3, 1, '0', '2016-04-11 16:29:25', '2016-04-11 16:29:25'),
(19, 'Nhà máy lọc hóa dầu Nghi Sơn', 'Nhà máy lọc hóa dầu Nghi Sơn', '<p><p><img src=\"http://vitduct.com.vn/uploads/0416/6753Loc dau Nghi Son.jpg\" style=\"\"></p>Dự án nhà máy lọc hóa dầu Nghi Sơn, là nhà máy lọc hóa dầu lớn nhất của Việt Nam tại thời điểm hiện tại, với công nghệ hiện đại và do tổ hợp liên doanh nhà thầu JGCS thực hiện.</p><p>Công ty VIT tham gia cung cấp và thi công các hạng mục cơ điện: Điều hòa không khí, FM200, LAN/TEL, báo cháy, điện và âm thanh.</p>', 0, 0, 2, 4, 10, 3, 1, '0', '2016-04-11 16:33:47', '2016-04-11 16:33:47'),
(20, 'Dự án Times City', 'Dự án Times City là một tổ hợp Trung tâm thương mại, dịch vụ và căn hộ cao cấp tại Hà Nội, do Vincom làm chủ đầu tư Dự án.', '<p></p><p><img src=\"http://vitduct.com.vn/uploads/0416/9145Time Citys.jpg\"></p>Dự án Times City là một tổ hợp Trung tâm thương mại, dịch vụ và căn hộ cao cấp tại Hà Nội, do Vincom làm chủ đầu tư Dự án.<p></p><p>Công ty VIT tham gia cung cấp và thi công Hệ thống điều hòa không khí và thông gió tòa nhà T2</p>\r\n', 0, 0, 2, 4, 10, 3, 1, '0', '2016-04-11 16:38:40', '2016-04-11 16:38:40'),
(21, 'Trụ sở công ty 319 - 63 Lê Văn Lương', 'Trụ sở công ty 319 - 63 Lê Văn Lương', '<p><p><img src=\"http://vitduct.com.vn/uploads/0416/2545TRU SO CONG TY 319 - 63 Le Van Luong.jpg\" style=\"\"></p>Dự ánTrụ sở công ty 319 - 63 Lê Văn Lương, do uTổng công ty 319 BQP làm chủ đầu tư<p>Công ty VIT tham gia cung cấp và thi công Hệ thống điều hòa không khí và thông gió</p><br></p>', 0, 0, 2, 4, 10, 3, 1, '0', '2016-04-11 16:43:41', '2016-04-11 16:43:41'),
(22, 'Dự án Thăng Long Number 1', 'Dự án Thăng Long Number 1', '<p><p><img src=\"http://vitduct.com.vn/uploads/0416/998thang-long-number-one4.jpg\" style=\"\"></p>Dự án Thăng Long Number 1<br></p><p>Công ty VIT tham gia cung cấp và thi công Hệ thống thông gió<br></p>', 0, 0, 2, 4, 10, 1, 1, '0', '2016-04-11 16:47:09', '2016-04-11 16:48:35'),
(25, 'Ống gió mềm các loại', 'Ống gió mềm các loại', '<p><img src=\"http://vitduct.com.vn/uploads/0416/4645ong gio mem.jpg\" style=\"line-height: 1.45em; background-color: initial;\"><br></p><p><p><p>Ống gió mềm các loại được phân thành 2 loại chính:</p><p>1. Loại có bảo ôn: Được dùng cho hệ thống cấp và hồi gió lạnh trong hệ thống điều hòa và mục đích chống cháy.</p><p>Các kích thước cơ bản như sau: DN100, DN150, DN200, DN250, DN300 và DN350</p><p>2. Loại không có bảo ôn: Được dùng cho hệ thống cấp và hồi khí thải và cấp gió tươi.</p></p><p>Các kích thước cơ bản như sau: DN100, DN150, DN200, DN250, DN300 và DN350</p><br></p>', 0, 0, 1, 1, 4, 3, 1, '0', '2016-04-11 17:01:32', '2016-04-11 17:01:32'),
(27, 'Cửa gió hồi 2 khung có bản lề', 'Cửa gió hồi 2 khung có bản lề', '<p><p><img src=\"http://vitduct.com.vn/uploads/0416/7309cua gio hoi 2 khung 1.jpg\" style=\"\"></p><p><b>* Đặc điểm sử dụng</b></p><p>- Được sử dụng làm cửa gió hồi</p><p>- Thích hợp lắp đặt với tất cả các loại trần giả</p><p>- Khung và lõi riêng biệt, dễ dàng tháo lắp và bảo trì</p><p>- Có thể là hình vuông hoặc hình chữ nhật, tùy vào thiết kế.</p><p><b>* Vật liệu</b></p><p>- Khung được làm từ Nhôm định hình, trên có gân tăng cứng và ke góc để tạo góc vuông cho toàn bộ cửa.</p><p>- Cánh được làm từ Nhôm định hình, trên cánh có gân trợ lực để tăng cứng.</p><p>- Được sơn bằng dây chuyền sơn tĩnh điện theo công nghệ Hàn Quốc và Nhật Bản. Màu sắc đa dạng.</p><br></p>', 0, 0, 1, 1, 5, 3, 1, '0', '2016-04-11 17:10:11', '2016-04-11 17:10:11'),
(29, 'Cửa gió dạng Slot', 'Cửa gió cấp, hồi dạng Slot', '<p><p><img src=\"http://vitduct.com.vn/uploads/0416/3753Slot.jpg\" style=\"\"></p><p><b>* Đặc điểm sử dụng</b></p><p>- Được sử dụng làm cửa gió cấp, cửa gió hồi</p><p>- Thích hợp lắp đặt với tất cả các loại trần giả</p><p>- Khung và lõi riêng biệt, dễ dàng tháo lắp và bảo trì</p><p>- Có thể là hình vuông hoặc hình chữ nhật, tùy vào thiết kế. Tùy vị trí lắp đặt có thể chọn loại thổi 2, 3 hoặc 4 Slot.</p><p><b>* Vật liệu</b></p><p>- Khung được làm từ Nhôm định hình, trên có gân tăng cứng và ke góc để tạo góc vuông cho toàn bộ cửa.</p><p>- Cánh được làm từ Nhôm định hình, trên cánh có gân trợ lực để tăng cứng.</p><p>- Được sơn bằng dây chuyền sơn tĩnh điện theo công nghệ Hàn Quốc và Nhật Bản. Màu sắc đa dạng.</p><br></p>', 0, 0, 1, 1, 5, 3, 1, '0', '2016-04-11 17:15:24', '2016-04-11 17:15:24'),
(30, 'Cửa gió nan Z', 'Cửa gió nan Z chống hắt và chống côn trùng', '<p><p><img src=\"http://vitduct.com.vn/uploads/0416/2473cua gio hoi 2 khung.jpg\" style=\"\"></p><p><b>* Đặc điểm sử dụng</b></p><p>- Được sử dụng làm cửa gió cấp, cửa gió hồi chống mưa hắt và chống côn trùng</p><p>- Thích hợp lắp đặt với tất cả các loại tường, kính hoặc đá ốp ngoài</p><p>- Khung và lõi riêng biệt, dễ dàng tháo lắp và bảo trì</p><p>- Có thể là hình vuông hoặc hình chữ nhật, tùy vào thiết kế. Tùy vị trí lắp đặt có thể chọn mầu sắc cho phù hợp</p><p><b>* Vật liệu</b></p><p>- Khung được làm từ Nhôm định hình, trên có gân tăng cứng và ke góc để tạo góc vuông cho toàn bộ cửa.</p><p>- Cánh được làm từ Nhôm định hình, trên cánh có gân trợ lực để tăng cứng.</p><p>- Được sơn bằng dây chuyền sơn tĩnh điện theo công nghệ Hàn Quốc và Nhật Bản. Màu sắc đa dạng.</p><br></p>', 0, 0, 1, 1, 5, 3, 1, '0', '2016-04-11 17:17:54', '2016-04-11 17:17:54'),
(32, 'Cửa gió nan thẳng', 'Cửa gió nan thẳng một lớp', '<p><p><img src=\"http://vitduct.com.vn/uploads/0416/8778Nan giot nuoc.jpg\" style=\"\"></p><p><b>* Đặc điểm sử dụng</b></p><p>- Được sử dụng làm cửa gió cấp, cửa gió hồi</p><p>- Thích hợp lắp đặt với tất cả các loại trần giả</p><p>- Khung và lõi riêng biệt, dễ dàng tháo lắp và bảo trì</p><p>- Có thể là hình vuông hoặc hình chữ nhật, tùy vào thiết kế.&nbsp;</p><p><b>* Vật liệu</b></p><p>- Khung được làm từ Nhôm định hình, trên có gân tăng cứng và ke góc để tạo góc vuông cho toàn bộ cửa.</p><p>- Cánh được làm từ Nhôm định hình, trên cánh có gân trợ lực để tăng cứng.</p><p>- Được sơn bằng dây chuyền sơn tĩnh điện theo công nghệ Hàn Quốc và Nhật Bản. Màu sắc đa dạng.</p><br></p>', 0, 0, 1, 1, 5, 3, 1, '0', '2016-04-11 17:21:41', '2016-04-11 17:21:41'),
(33, 'Cửa gió kiểu nan lưới', 'Cửa gió kiểu nan lưới 2 lớp', '<p><p><img src=\"http://vitduct.com.vn/uploads/0416/9628kieu lưoi.jpg\" style=\"\"></p><p><b>* Đặc điểm sử dụng</b></p><p>- Được sử dụng làm cửa gió cấp, cửa gió hồi</p><p>- Thích hợp lắp đặt với tất cả các loại trần giả</p><p>- Khung và lõi riêng biệt, dễ dàng tháo lắp và bảo trì</p><p>- Có thể là hình vuông hoặc hình chữ nhật, tùy vào thiết kế.&nbsp;</p><p><b>* Vật liệu</b></p><p>- Khung được làm từ Nhôm định hình, trên có gân tăng cứng và ke góc để tạo góc vuông cho toàn bộ cửa.</p><p>- Cánh được làm từ Nhôm định hình, trên cánh có gân trợ lực để tăng cứng.</p><p>- Được sơn bằng dây chuyền sơn tĩnh điện theo công nghệ Hàn Quốc và Nhật Bản. Màu sắc đa dạng.</p><br></p>', 0, 0, 1, 1, 5, 3, 1, '0', '2016-04-11 17:23:11', '2016-04-11 17:23:11'),
(34, 'Cửa gió kiểu hộp', 'Cửa gió kiểu hộp gắn trần', '<p><p><img src=\"http://vitduct.com.vn/uploads/0416/2368Hop.jpg\" style=\"\"></p><p><b>* Đặc điểm sử dụng</b></p><p>- Được sử dụng làm cửa gió cấp, cửa gió hồi</p><p>- Thích hợp lắp đặt với tất cả các loại trần giả</p><p>- Khung và lõi riêng biệt, dễ dàng tháo lắp và bảo trì</p><p>- Có thể là hình vuông hoặc hình chữ nhật, tùy vào thiết kế. Tùy vị trí lắp đặt có thể chọn loại thổi 2 hoặc 4 hướng thổi.</p><p><b>* Vật liệu</b></p><p>- Khung được làm từ Nhôm định hình, trên có gân tăng cứng và ke góc để tạo góc vuông cho toàn bộ cửa.</p><p>- Cánh được làm từ Nhôm định hình, trên cánh có gân trợ lực để tăng cứng.</p><p>- Được sơn bằng dây chuyền sơn tĩnh điện theo công nghệ Hàn Quốc và Nhật Bản. Màu sắc đa dạng.</p><br></p>', 0, 0, 1, 1, 5, 3, 1, '0', '2016-04-11 17:24:39', '2016-04-11 17:24:39'),
(35, 'Cửa gió tròn', 'Cửa gió tròn gắn trần', '<p><p><img src=\"http://vitduct.com.vn/uploads/0416/420Cua gio tron.jpg\" style=\"\"></p><p><b>* Đặc điểm sử dụng</b></p><p>- Được sử dụng làm cửa gió cấp, cửa gió hồi</p><p>- Thích hợp lắp đặt với tất cả các loại trần giả</p><p>- Khung và lõi riêng biệt, dễ dàng tháo lắp và bảo trì</p><p>- Kích thước tiêu chuẩn: DN200, DN250, DN300, DN350, DN400, DN500, DN600</p><p><b>* Vật liệu</b></p><p>- Khung được làm từ Nhôm định hình, trên có gân tăng cứng và ke góc để tạo góc vuông cho toàn bộ cửa.</p><p>- Cánh được làm từ Nhôm định hình, trên cánh có gân trợ lực để tăng cứng.</p><p>- Được sơn bằng dây chuyền sơn tĩnh điện theo công nghệ Hàn Quốc và Nhật Bản. Màu sắc đa dạng.</p><br></p>', 0, 0, 1, 1, 5, 3, 1, '0', '2016-04-11 17:27:58', '2016-04-11 17:27:58'),
(37, 'Model CT1- Loại treo trần', 'Lò xo chống rung và giảm chấn Model CT1:50s', '<p><img alt=\"\" src=\"http://vitduct.com.vn/public/images/anh3.jpg\" style=\"height:200px; width:200px\" /></p>\r\n\r\n<p><strong>* Đặc điểm sử dụng</strong></p>\r\n\r\n<p>- Được sử dụng l&agrave;m bộ giảm chấn, chống rung cho: Quạt gi&oacute; (FAN), AHU,CHILLER, M&Aacute;Y BƠM, M&Aacute;Y PH&Aacute;T ...</p>\r\n\r\n<p>- Khung v&agrave; l&otilde;i ri&ecirc;ng biệt, dễ d&agrave;ng th&aacute;o lắp v&agrave; bảo tr&igrave;</p>\r\n\r\n<p>- D&ograve;ng sản phẩm CT1 c&oacute; rất nhiều Model với dải trọng lượng ph&ugrave; hợp với c&aacute;c mọi nhu cầu kh&aacute;c nhau:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:center\">STT/No.</td>\r\n			<td style=\"text-align:center\">M&atilde; h&agrave;ng/ Model</td>\r\n			<td style=\"text-align:center\">Tải trọng/ Load (kg)</td>\r\n			<td style=\"text-align:center\">SL/ Q.Ty</td>\r\n			<td style=\"text-align:center\">ĐV/ Unit</td>\r\n			<td style=\"text-align:center\">Đơn gi&aacute; / Cost</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">1</td>\r\n			<td style=\"text-align:center\">CT1:10</td>\r\n			<td style=\"text-align:center\">5 &divide; 10</td>\r\n			<td style=\"text-align:center\">01</td>\r\n			<td style=\"text-align:center\">C&aacute;i / Pcs</td>\r\n			<td style=\"text-align:center\">154,816</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">2</td>\r\n			<td style=\"text-align:center\">CT1:20</td>\r\n			<td style=\"text-align:center\">10 &divide; 25</td>\r\n			<td style=\"text-align:center\">01</td>\r\n			<td style=\"text-align:center\">C&aacute;i / Pcs</td>\r\n			<td style=\"text-align:center\">167,796</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">3</td>\r\n			<td style=\"text-align:center\">CT1:50</td>\r\n			<td style=\"text-align:center\">25 &divide; 125</td>\r\n			<td style=\"text-align:center\">01</td>\r\n			<td style=\"text-align:center\">C&aacute;i / Pcs</td>\r\n			<td style=\"text-align:center\">187,384</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">4</td>\r\n			<td style=\"text-align:center\">CT1:150</td>\r\n			<td style=\"text-align:center\">125 &divide; 250</td>\r\n			<td style=\"text-align:center\">01</td>\r\n			<td style=\"text-align:center\">C&aacute;i / Pcs</td>\r\n			<td style=\"text-align:center\">266,236</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">5</td>\r\n			<td style=\"text-align:center\">CT1:350</td>\r\n			<td style=\"text-align:center\">250 &divide; 500</td>\r\n			<td style=\"text-align:center\">01</td>\r\n			<td style=\"text-align:center\">C&aacute;i / Pcs</td>\r\n			<td style=\"text-align:center\">310,800</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">6</td>\r\n			<td style=\"text-align:center\">CT1:600</td>\r\n			<td style=\"text-align:center\">500 &divide; 700</td>\r\n			<td style=\"text-align:center\">01</td>\r\n			<td style=\"text-align:center\">C&aacute;i / Pcs</td>\r\n			<td style=\"text-align:center\">424,000</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>* Vật liệu</strong><br />\r\n- Khung được l&agrave;m từ th&eacute;p &nbsp;c&oacute; cường độ cao, chịu lực lớn để giảm chấn v&agrave; chống rung.</p>\r\n\r\n<p>- Được sơn (hoặc mạ kẽm) bằng d&acirc;y chuyền sơn tĩnh điện theo c&ocirc;ng nghệ H&agrave;n Quốc v&agrave; Nhật Bản.&nbsp;</p>\r\n\r\n<p>-&nbsp;Th&ocirc;ng số kỹ thuật, hướng dẫn sử dụng v&agrave; đặc t&iacute;nh lực chi tiết xin vui l&ograve;ng xem trong mục:</p>\r\n\r\n<p>&nbsp; &nbsp;<strong>&nbsp;Dowload t&agrave;i liệu:</strong>&nbsp;<a href=\"http://vitduct.com.vn/danh-muc/12/catalogue-san-pham\"><strong>Catalogue sản phẩm</strong></a>:&nbsp;<strong>Catalogue L&ograve; xo chống rung giảm chấn</strong></p>\r\n\r\n<p>-&nbsp;Bảng gi&aacute; sản phẩm chi tiết xin vui l&ograve;ng xem trong mục:</p>\r\n\r\n<p>&nbsp;<strong>&nbsp; &nbsp;Dowload t&agrave;i liệu:</strong>&nbsp;<a href=\"http://vitduct.com.vn/danh-muc/22/bang-gia-san-pham\"><strong>Bảng gi&aacute; sản phẩm</strong></a>:<strong>&nbsp;Bảng gi&aacute;&nbsp;L&ograve; xo chống rung giảm chấn</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 0, 0, 1, 1, 20, 2, 1, '0', '2016-04-11 18:40:10', '2018-01-14 00:23:32'),
(40, 'Model DS1 - Loại đặt sàn', 'VITTECH LÒ XO CHỐNG RUNG GIẢM CHẤN DS1 ', '<p><img alt=\"\" src=\"http://vitduct.com.vn/public/images/anh4.jpg\" style=\"height:200px; width:200px\" /></p>\r\n\r\n<p><strong>* Đặc điểm sử dụng</strong></p>\r\n\r\n<p>- Được sử dụng l&agrave;m bộ giảm chấn, chống rung cho: Quạt gi&oacute; (FAN), AHU,CHILLER, M&Aacute;Y BƠM, M&Aacute;Y PH&Aacute;T ...</p>\r\n\r\n<p>- Khung v&agrave; l&otilde;i ri&ecirc;ng biệt, dễ d&agrave;ng th&aacute;o lắp v&agrave; bảo tr&igrave;</p>\r\n\r\n<p>- D&ograve;ng sản phẩm DS1 c&oacute; rất nhiều Model với dải trọng lượng ph&ugrave; hợp với c&aacute;c mọi nhu cầu kh&aacute;c nhau:</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:center\">STT/No.</td>\r\n			<td style=\"text-align:center\">M&atilde; h&agrave;ng/ Model</td>\r\n			<td style=\"text-align:center\">Tải trọng/ Load (kg)</td>\r\n			<td style=\"text-align:center\">SL/ Q.Ty</td>\r\n			<td style=\"text-align:center\">ĐV/ Unit</td>\r\n			<td style=\"text-align:center\">Đơn gi&aacute; / Cost</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">1</td>\r\n			<td style=\"text-align:center\">DS1:10</td>\r\n			<td style=\"text-align:center\">5 &divide; 10</td>\r\n			<td style=\"text-align:center\">01</td>\r\n			<td style=\"text-align:center\">C&aacute;i / Pcs</td>\r\n			<td style=\"text-align:center\">143,016</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">2</td>\r\n			<td style=\"text-align:center\">DS1:20</td>\r\n			<td style=\"text-align:center\">10 &divide; 25</td>\r\n			<td style=\"text-align:center\">01</td>\r\n			<td style=\"text-align:center\">C&aacute;i / Pcs</td>\r\n			<td style=\"text-align:center\">155,996</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">3</td>\r\n			<td style=\"text-align:center\">DS1:50</td>\r\n			<td style=\"text-align:center\">25 &divide; 125</td>\r\n			<td style=\"text-align:center\">01</td>\r\n			<td style=\"text-align:center\">C&aacute;i / Pcs</td>\r\n			<td style=\"text-align:center\">199,184</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">4</td>\r\n			<td style=\"text-align:center\">DS1:150</td>\r\n			<td style=\"text-align:center\">125 &divide; 250</td>\r\n			<td style=\"text-align:center\">01</td>\r\n			<td style=\"text-align:center\">C&aacute;i / Pcs</td>\r\n			<td style=\"text-align:center\">248,036</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">5</td>\r\n			<td style=\"text-align:center\">DS1:350</td>\r\n			<td style=\"text-align:center\">250 &divide; 500</td>\r\n			<td style=\"text-align:center\">01</td>\r\n			<td style=\"text-align:center\">C&aacute;i / Pcs</td>\r\n			<td style=\"text-align:center\">290,800</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">6</td>\r\n			<td style=\"text-align:center\">DS1:600</td>\r\n			<td style=\"text-align:center\">500 &divide; 700</td>\r\n			<td style=\"text-align:center\">01</td>\r\n			<td style=\"text-align:center\">C&aacute;i / Pcs</td>\r\n			<td style=\"text-align:center\">320,000</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>* Vật liệu</strong><br />\r\n- Khung được l&agrave;m từ th&eacute;p &nbsp;c&oacute; cường độ cao, chịu lực lớn để giảm chấn v&agrave; chống rung.</p>\r\n\r\n<p>- Được sơn (hoặc mạ kẽm) bằng d&acirc;y chuyền sơn tĩnh điện theo c&ocirc;ng nghệ H&agrave;n Quốc v&agrave; Nhật Bản.&nbsp;</p>\r\n\r\n<p>-&nbsp;Th&ocirc;ng số kỹ thuật, hướng dẫn sử dụng v&agrave; đặc t&iacute;nh lực chi tiết xin vui l&ograve;ng xem trong mục:</p>\r\n\r\n<p>&nbsp; &nbsp;<strong>&nbsp;Dowload t&agrave;i liệu:</strong>&nbsp;<a href=\"http://vitduct.com.vn/danh-muc/12/catalogue-san-pham\"><strong>Catalogue sản phẩm</strong></a>:&nbsp;<strong>Catalogue L&ograve; xo chống rung giảm chấn</strong></p>\r\n\r\n<p>-&nbsp;Bảng gi&aacute; sản phẩm chi tiết xin vui l&ograve;ng xem trong mục:</p>\r\n\r\n<p>&nbsp; &nbsp;<strong>&nbsp;Dowload t&agrave;i liệu:</strong>&nbsp;<a href=\"http://vitduct.com.vn/danh-muc/22/bang-gia-san-pham\"><strong>Bảng gi&aacute; sản phẩm</strong></a>:<strong> Bảng gi&aacute;&nbsp;L&ograve; xo chống rung giảm chấn</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 0, 0, 1, 1, 20, 2, 1, '0', '2016-04-11 21:14:51', '2018-01-14 00:21:48'),
(41, 'Model DSB1-Loại đặt sàn', 'VITTECH LO SO CHỐNG RUNG GIẢM CHẤN..', '<p><img alt=\"\" src=\"http://vitduct.com.vn/public/images/anh2.jpg\" style=\"height:200px; width:200px\" /></p>\r\n\r\n<p><strong>* Đặc điểm sử dụng</strong></p>\r\n\r\n<p>- Được sử dụng l&agrave;m bộ giảm chấn, chống rung cho: Quạt gi&oacute; (FAN), AHU,CHILLER, M&Aacute;Y BƠM, M&Aacute;Y PH&Aacute;T ...</p>\r\n\r\n<p>- Khung v&agrave; l&otilde;i ri&ecirc;ng biệt, dễ d&agrave;ng th&aacute;o lắp v&agrave; bảo tr&igrave;</p>\r\n\r\n<p>- D&ograve;ng sản phẩm DSB1 c&oacute; rất nhiều Model với dải trọng lượng ph&ugrave; hợp với c&aacute;c mọi nhu cầu kh&aacute;c nhau:</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:center\">STT/No.</td>\r\n			<td style=\"text-align:center\">M&atilde; h&agrave;ng/ Model</td>\r\n			<td style=\"text-align:center\">Tải trọng/ Load (kg)</td>\r\n			<td style=\"text-align:center\">SL/ Q.Ty</td>\r\n			<td style=\"text-align:center\">ĐV/ Unit</td>\r\n			<td style=\"text-align:center\">Đơn gi&aacute; / Cost</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">1</td>\r\n			<td style=\"text-align:center\">DSB1:350</td>\r\n			<td style=\"text-align:center\">250 &divide; 500</td>\r\n			<td style=\"text-align:center\">01</td>\r\n			<td style=\"text-align:center\">C&aacute;i / Pcs</td>\r\n			<td style=\"text-align:center\">453,824</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">2</td>\r\n			<td style=\"text-align:center\">DSB1:600</td>\r\n			<td style=\"text-align:center\">500 &divide; 800</td>\r\n			<td style=\"text-align:center\">01</td>\r\n			<td style=\"text-align:center\">C&aacute;i / Pcs</td>\r\n			<td style=\"text-align:center\">571,200</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">3</td>\r\n			<td style=\"text-align:center\">DSB1:1000</td>\r\n			<td style=\"text-align:center\">800 &divide; 1200</td>\r\n			<td style=\"text-align:center\">01</td>\r\n			<td style=\"text-align:center\">C&aacute;i / Pcs</td>\r\n			<td style=\"text-align:center\">917,440</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">4</td>\r\n			<td style=\"text-align:center\">DSB1:1400</td>\r\n			<td style=\"text-align:center\">1200 &divide; 1700</td>\r\n			<td style=\"text-align:center\">01</td>\r\n			<td style=\"text-align:center\">C&aacute;i / Pcs</td>\r\n			<td style=\"text-align:center\">1,037,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">5</td>\r\n			<td style=\"text-align:center\">DSB1:2000</td>\r\n			<td style=\"text-align:center\">1700 &divide; 2400</td>\r\n			<td style=\"text-align:center\">01</td>\r\n			<td style=\"text-align:center\">C&aacute;i / Pcs</td>\r\n			<td style=\"text-align:center\">1,110,200</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>* Vật liệu</strong><br />\r\n- Khung được l&agrave;m từ th&eacute;p &nbsp;c&oacute; cường độ cao, chịu lực lớn để giảm chấn v&agrave; chống rung.</p>\r\n\r\n<p>- Được sơn (hoặc mạ kẽm) bằng d&acirc;y chuyền sơn tĩnh điện theo c&ocirc;ng nghệ H&agrave;n Quốc v&agrave; Nhật Bản.&nbsp;</p>\r\n\r\n<p>-&nbsp;Th&ocirc;ng số kỹ thuật, hướng dẫn sử dụng v&agrave; đặc t&iacute;nh lực chi tiết xin vui l&ograve;ng xem trong mục:</p>\r\n\r\n<p>&nbsp; &nbsp;<strong> Dowload t&agrave;i liệu:</strong>&nbsp;<a href=\"http://vitduct.com.vn/danh-muc/12/catalogue-san-pham\" style=\"line-height: 1.45em;\"><strong>Catalogue sản phẩm</strong></a>:&nbsp;<strong>Catalogue L&ograve; xo chống rung giảm chấn</strong></p>\r\n\r\n<p>-&nbsp;Bảng gi&aacute; sản phẩm chi tiết xin vui l&ograve;ng xem trong mục:</p>\r\n\r\n<p>&nbsp; &nbsp;&nbsp;Dowload t&agrave;i liệu:&nbsp;<a href=\"http://vitduct.com.vn/danh-muc/22/bang-gia-san-pham\">Bảng gi&aacute; sản phẩm</a>: Bảng gi&aacute;<span style=\"background-color:initial\">&nbsp;L&ograve; xo chống rung giảm chấn</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 0, 0, 1, 1, 20, 2, 1, '0', '2016-04-11 21:38:51', '2018-01-14 00:17:20'),
(43, 'MỘT SỐ HÌNH ẢNH THI CÔNG DỰ ÁN LỌC HÓA DẦU NGHI SƠN', 'HÌNH ANH THI CÔNG LỌC HÓA DẦU NGHI SƠN', '<p></p><p><p><img src=\"http://vitduct.com.vn/uploads/0416/6401IMG_1359[1].jpg\"></p><img src=\"http://vitduct.com.vn/uploads/0416/6465IMG_0899[1].jpg\"></p><p><img src=\"http://vitduct.com.vn/uploads/0416/5808IMG_0948[1].jpg\"></p><p><img src=\"http://vitduct.com.vn/uploads/0416/2008IMG_1349[1].jpg\"></p><p><img src=\"http://vitduct.com.vn/uploads/0416/5576IMG_1350[1].jpg\"></p><br><p></p>\r\n', 0, 0, 18, 6, 21, 1, 1, '0', '2016-04-12 21:29:33', '2016-04-13 00:08:20'),
(45, 'Van điều chỉnh lưu lượng vuông (VD)', 'Van điều chỉnh lưu lượng vuông (VD)', '<p></p><p><p><img src=\"http://vitduct.com.vn/uploads/0416/6816Van gio vuong dieu chinh lưu luong.jpg\"></p></p><p><b>Đặc điểm sử dụng:&nbsp;</b></p><p>- Dùng để điều chỉnh lưu lượng gió cấp và hồi.</p><p>- Được lắp trực tiếp trên đường ống cấp hoặc hồi hoặc phía sau hộp góp gió.&nbsp;</p><p><b>Vật liệu màu sắc:&nbsp;</b></p><p>- Được làm bằng tôn mạ kẽm hoặc Inox.</p><p>- Tay van có thể làm bằng nhựa hoặc tay bánh vít.</p><p>- Rất dễ dàng cho việc điều chỉnh lưu lượng gió cấp và hồi.</p><p>- Độ dày vật liệu và kích thước được chế tạo theo thiết kế hoặc yêu cầu của khách hàng</p><br><p></p>\r\n', 0, 0, 1, 1, 7, 3, 1, '0', '2016-04-13 19:53:23', '2016-04-13 20:13:48'),
(46, 'Van dập lửa tròn (FD)', 'Van dập lửa tròn (FD)....', '<p><p></p><p><img src=\"http://vitduct.com.vn/uploads/0416/8984van tron chan lua.jpg\" style=\"\"></p><p><b>Đặc điểm sử dụng: </b></p><p>- Dùng để chặn lửa trên đường ống gió với cơ cấu cầu nhiệt (cầu trì tự chảy)</p><p>- Được lắp trực tiếp trên đường ống cấp hoặc hồi.</p><p><b>Vật liệu màu sắc: </b></p><p>- Được làm bằng tôn mạ kẽm hoặc Inox.</p><p>- Cầu trì có nhiệt độ tự chảy khoảng 70 độ C.</p><p>- Độ dày vật liệu và kích thước được chế tạo theo thiết kế hoặc yêu cầu của khách hàng</p><br></p>', 0, 0, 1, 1, 7, 3, 1, '0', '2016-04-13 20:00:09', '2016-04-13 20:01:00'),
(47, 'Van dập lửa vuông (FD)', 'Van dập lửa vuông (FD)', '<p><p><img src=\"http://vitduct.com.vn/uploads/0416/2533Van vuong chan lua.jpg\" style=\"\"></p><p><b>Đặc điểm sử dụng:&nbsp;</b></p><p>- Dùng để chặn lửa trên đường ống gió với cơ cấu cầu nhiệt (cầu trì tự chảy)</p><p>- Được lắp trực tiếp trên đường ống cấp hoặc hồi.</p><p><b>Vật liệu màu sắc:&nbsp;</b></p><p>- Được làm bằng tôn mạ kẽm hoặc Inox.</p><p>- Cầu trì có nhiệt độ tự chảy khoảng 70 độ C.</p><p>- Độ dày vật liệu và kích thước được chế tạo theo thiết kế hoặc yêu cầu của khách hàng</p><br></p>', 0, 0, 1, 1, 7, 3, 1, '0', '2016-04-13 20:03:35', '2016-04-13 20:03:35'),
(48, 'Van đóng mở bằng điện (MD)', 'Van đóng mở bằng điện (MD)', '<p></p><p><img src=\"http://vitduct.com.vn/uploads/0416/8792Van điện dùng Moto.jpg\"></p><p><b>Đặc điểm sử dụng:&nbsp;</b></p><p>- Dùng để điều chỉnh và đóng mở lưu lượng gió cấp, hồi và dùng là van dập lửa đóng mở bằng điện có điều kiển từ hệ thống báo cháy tự động.</p><p>- Được lắp trực tiếp trên đường ống cấp hoặc hồi hoặc phía sau hộp góp gió.&nbsp;</p><p><b>Vật liệu màu sắc:&nbsp;</b></p><p>- Được làm bằng tôn mạ kẽm hoặc Inox.</p><p>- Động cơ điện là loại On/ Off hoặc điều chỉnh vô cấp, điện áp sử dụng là AC 220V; AC 24V hoặc DC 24V</p><p>- Độ dày vật liệu và kích thước được chế tạo theo thiết kế hoặc yêu cầu của khách hàng.</p><p>- Để lựa chọn động cơ phù hợp vui lòng xem <b>Catalogue</b></p><br><p></p>\r\n', 0, 0, 1, 1, 7, 3, 1, '0', '2016-04-13 20:09:28', '2016-04-13 20:18:54'),
(49, 'Động cơ van gió', 'Động cơ van gió.......', '<p><p><img src=\"http://vitduct.com.vn/uploads/0416/7048Động cơ van gió.jpg\" style=\"\"></p><p><b>Đặc điểm sử dụng: </b></p><p>- Dùng để tạo động lực cho các loại van đóng mở bằng điện.</p><p>- Được lắp trực tiếp trên các loại van điều chỉnh lưu lượng, van dập lửa đóng mở bằng điện....</p><p><b>Vật liệu màu sắc: </b></p><p>- Động cơ điện là loại On/ Off hoặc điều chỉnh vô cấp, điện áp sử dụng là AC 220V; AC 24V hoặc DC 24V</p><p>- Động cơ được sản xuất với rất nhiều cấp tạo mô men tùy theo kích thước van.</p><p><span style=\"line-height: 1.45em; background-color: initial;\">- Để lựa chọn động cơ phù hợp vui lòng xem </span><b style=\"line-height: 1.45em; background-color: initial;\">Catalogue</b><br></p><br></p>', 0, 0, 1, 1, 7, 3, 1, '0', '2016-04-13 20:17:37', '2016-04-13 20:19:18'),
(50, 'Van một chiều (RVD)', 'Van một chiều (RVD).....', '<p><p><img src=\"http://vitduct.com.vn/uploads/0416/6634Van 1 chieu.jpg\" style=\"\"></p><p><b>Đặc điểm sử dụng: </b></p><p>- Dùng để chặn dòng khí đi ngược chiều.</p><p>- Được lắp trực tiếp trên đường ống cấp hoặc hồi.</p><p><b>Vật liệu màu sắc: </b></p><p>- Được làm bằng tôn mạ kẽm hoặc Inox.</p><p>- Độ dày vật liệu và kích thước được chế tạo theo thiết kế hoặc yêu cầu của khách hàng</p><br></p>', 0, 0, 1, 1, 7, 3, 1, '0', '2016-04-13 20:26:10', '2016-04-13 20:26:29'),
(51, 'Van lắp trên cửa gió (van đen)', 'Van lắp trên cửa gió (van đen)', '<p><p><img src=\"http://vitduct.com.vn/uploads/0416/3153Van dens.jpg\" style=\"\"></p><p><b>Đặc điểm sử dụng:&nbsp;</b></p><p>- Dùng để điều chỉnh lưu lượng gió trên cửa gió cấp và hồi.</p><p>- Được lắp trực tiếp trên cửa gió cấp hoặc hồi hoặc phía sau hộp góp gió.&nbsp;</p><p><b>Vật liệu màu sắc:&nbsp;</b></p><p>- Được làm bằng nhôm sơn tĩnh điện mầu đen.</p><p>- Tay van có thể làm bằng nhựa hoặc tay bánh vít.</p><p>- Rất dễ dàng cho việc điều chỉnh lưu lượng gió cấp và hồi.</p><p>- Độ dày vật liệu và kích thước được chế tạo theo thiết kế hoặc yêu cầu của khách hàng</p><br></p>', 0, 0, 1, 1, 7, 3, 1, '0', '2016-04-13 20:30:36', '2016-04-13 20:30:36'),
(52, 'Ống gió tiêu âm', 'Ống gió tiêu âm........', '<p></p><p><img src=\"http://vitduct.com.vn/uploads/0416/6113Tieu am vuong.jpg\"></p><p><b>Đặc điểm sử dụng:&nbsp;</b></p><p>- Dùng để dẫn gió tươi, gió lạnh hoặc gió hồi</p><p>- Được lắp trực tiếp trên đường ống cấp hoặc hồi.</p><p>- Giảm độ ồn và cách nhiệt.</p><p><b>Vật liệu và cấu tạo:&nbsp;</b></p><p>- Được làm bằng tôn mạ kẽm hoặc Inox.</p><p>- Được cấu tạo bằng: Tole soi lỗ, vải thủy tinh, bông khoáng và lớp vỏ ngoại hoặc bằng vật liệu cách âm dạng tấm.</p><p>- Độ dày vật liệu và kích thước được chế tạo theo thiết kế hoặc yêu cầu của khách hàng</p><br><p></p>\r\n', 0, 0, 1, 1, 9, 3, 1, '0', '2016-04-13 20:36:14', '2016-04-13 20:36:59');
INSERT INTO `posts` (`id`, `title`, `description`, `content`, `viewed`, `votes`, `parent`, `type`, `categorieID`, `userID`, `sttesign`, `price`, `created_at`, `updated_at`) VALUES
(53, 'Phụ kiện ống tiêu âm', 'Phụ kiện ống tiêu âm....', '<p><p><img src=\"http://vitduct.com.vn/uploads/0416/2608Phu kien tieu am.jpg\" style=\"\"></p><p><b>Đặc điểm sử dụng: </b></p><p>- Dùng để dẫn gió tươi, gió lạnh hoặc gió hồi</p><p>- Được lắp trực tiếp trên đường ống cấp hoặc hồi.</p><p>- Giảm độ ồn và cách nhiệt.</p><p><b>Vật liệu và cấu tạo: </b></p><p>- Được làm bằng tôn mạ kẽm hoặc Inox. Được chế tạo theo dạng Cút gốc, chữ T hoặc côn...Tùy vào vị trí sử dụng.</p><p>- Được cấu tạo bằng: Tole soi lỗ, vải thủy tinh, bông khoáng và lớp vỏ ngoại hoặc bằng vật liệu cách âm dạng tấm.</p><p>- Độ dày vật liệu và kích thước được chế tạo theo thiết kế hoặc yêu cầu của khách hàng</p><br></p>', 0, 0, 1, 1, 9, 1, 1, '0', '2016-04-13 20:38:55', '2016-04-13 21:07:15'),
(54, 'Bông khoáng dịnh hình', 'Bông khoáng dịnh hình...', '<p></p><p><img src=\"http://vitduct.com.vn/uploads/0416/289Bong thuy tinh.jpg\"></p><p><b>Đặc điểm sử dụng:&nbsp;</b></p><p>- Dùng để cách âm, cách nhiệt (nóng, lạnh).</p><p>- Được dùng cho bảo ôn đường ống, bồn bể, vách tiêu âm.</p><p><b>Vật liệu và mầu sắc:&nbsp;</b></p><p>- Được từ bông khoáng có mầu sắc vàng hoặc trắng.</p><p>- Có tỷ trọng: 40, 50, 60 và 100 Kg/m3</p><p><br></p><br><p></p>\r\n', 0, 0, 1, 1, 9, 3, 1, '0', '2016-04-13 21:45:53', '2016-04-13 21:49:02'),
(55, 'Bông thủy tinh dạng cuộn', 'Bông thủy tinh dạng cuộn', '<p><p><img src=\"http://vitduct.com.vn/uploads/0416/7824Bong thuy tinh 2.jpg\" style=\"\"></p><p><b>Đặc điểm sử dụng:&nbsp;</b></p><p>- Dùng để cách âm, cách nhiệt (nóng, lạnh).</p><p>- Được dùng cho bảo ôn đường ống, bồn bể, vách tiêu âm.</p><p><b>Vật liệu và mầu sắc:&nbsp;</b></p><p>- Được từ bông khoáng có mầu sắc vàng hoặc trắng.</p><p>- Có tỷ trọng: 10, 20, 32 và 40 Kg/m3 và độ dày là 25 hoặc 50 mm. loại có mặt bạc hoặc không.</p><p><br></p><br></p>', 0, 0, 1, 1, 9, 3, 1, '0', '2016-04-13 21:48:48', '2016-04-13 21:48:48'),
(57, 'Catalogue Động cơ van Nunetec 5Nm', 'https://drive.google.com/open?id=0Bz-vVPXT5a81M2VncXE2bTk4anM', '', 0, 0, 0, 0, 12, 3, 1, '0', '2016-04-20 22:17:38', '2016-04-21 00:39:32'),
(58, 'Catalogue Động cơ van Nunetec 10Nm', 'https://drive.google.com/open?id=0Bz-vVPXT5a81Q3lpQUFueXg2cm8', '', 0, 0, 0, 0, 12, 3, 1, '0', '2016-04-20 22:19:49', '2016-04-21 00:46:32'),
(60, 'Catalogue bảo ôn Insulflex - Malayxia', 'https://drive.google.com/open?id=0Bz-vVPXT5a81Ri1TTV9uTEt2bG8', '', 0, 0, 0, 0, 12, 3, 1, '0', '2016-04-20 22:33:41', '2016-04-21 00:53:41'),
(61, 'Catalogue ống đồng HALIANG - China', 'https://drive.google.com/open?id=0Bz-vVPXT5a81SFY5SDg1Ql94Y2c', '', 0, 0, 0, 0, 12, 3, 1, '0', '2016-04-20 22:36:29', '2016-04-21 00:52:53'),
(62, 'Catalogue bảo ôn Superlon - Malayxia', 'https://drive.google.com/open?id=0Bz-vVPXT5a81Y3ZNaldJYmFKNms', '', 0, 0, 0, 0, 12, 3, 1, '0', '2016-04-20 22:38:40', '2016-04-21 00:51:18'),
(63, 'Catalogue cáp điện Cadisun', 'https://drive.google.com/open?id=0Bz-vVPXT5a81WnhGNm5zd3BISlU', '', 0, 0, 0, 0, 12, 3, 1, '0', '2016-04-20 22:41:33', '2016-04-21 00:49:12'),
(65, 'Cổ bạt nối mềm Type 4', 'Cổ bạt nối mềm Type 4...', '<p>&nbsp;</p>\r\n\r\n<p><img src=\"http://vitduct.com.vn/uploads/0416/7657Cổ bạt.jpg\" /></p>\r\n\r\n<p>Cổ bạt được d&ugrave;ng để kết nối giữa quạt gi&oacute;, FCU... v&agrave; ống gi&oacute;, L&agrave;m giảm dung chấn, độ ồn giữa thiết bị v&agrave; đường ống.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Được chế tạo bằng bạt loại c&oacute; đầu b&iacute;ch hoặc kh&ocirc;ng c&oacute; đầu b&iacute;ch, h&igrave;nh vu&ocirc;ng hoặc tr&ograve;n theo thiết kế</p>\r\n', 0, 0, 1, 1, 4, 2, 1, '0', '2016-04-20 22:51:48', '2017-09-13 04:49:25'),
(66, 'ISO 9001: 2015 CERTIFICATE', 'https://drive.google.com/open?id=0Bz-vVPXT5a81bUlXa3NVM2pzLVU', '', 0, 0, 0, 0, 23, 3, 1, '0', '2016-04-25 20:11:59', '2016-04-25 20:11:59'),
(68, 'Catalogue ống đồng Toàn Phát (RUBI)', 'https://drive.google.com/open?id=0Bz-vVPXT5a81RlZ1ZkF1MUlIc1E', '', 0, 0, 0, 0, 12, 3, 1, '0', '2016-05-22 00:34:49', '2016-05-22 00:34:49'),
(69, 'Catalogue ống luồn dây và phụ kiện SINO', 'https://drive.google.com/open?id=0Bz-vVPXT5a81cHJwVFU1SGExb1U', '', 0, 0, 0, 0, 12, 3, 1, '0', '2016-05-22 00:36:44', '2016-05-22 00:36:44'),
(70, 'Catalogue Tole, ống PVC Hoa Sen', 'https://drive.google.com/open?id=0Bz-vVPXT5a81c3JraDJRNGp1a0E', '', 0, 0, 0, 0, 12, 3, 1, '0', '2016-05-22 00:39:13', '2016-05-22 00:39:13'),
(72, 'Dự án HATECO HOÀNG MAI', 'Dự án HATECO HOÀNG MAI', '<p><p><img src=\"http://vitduct.com.vn/uploads/0516/5806chung-cu-hateco-hoang-mai.jpg\" style=\"\"></p>Dự án HATECO Hoàng Mai</p><p>Chủ đầu tư: Công ty cổ phần HATECO Hà Nội</p><p>Nhà thầu điều hòa không khí và thông gió: Công ty CP Đầu tư Xây lắp và Thương mại Việt Nam</p>', 0, 0, 2, 4, 10, 3, 1, '0', '2016-05-24 15:36:23', '2016-05-24 15:36:23'),
(73, 'Catalogue ống nhựa Tiền Phong', 'https://drive.google.com/open?id=0Bz-vVPXT5a81akxFazFIQ24wNTA', '', 0, 0, 0, 0, 12, 3, 1, '0', '2016-05-25 00:04:58', '2016-05-25 00:04:58'),
(74, 'Catalogue quạt gió TH Vinasun 1', 'https://drive.google.com/open?id=0Bz-vVPXT5a81SjdmelJLTnFtYXM', '', 0, 0, 0, 0, 12, 3, 1, '0', '2016-05-25 21:33:08', '2016-05-25 21:36:51'),
(75, 'Catalogue quạt gió TH Vinasun 2', 'https://drive.google.com/open?id=0Bz-vVPXT5a81M0Q3MW4xQ2p0b0U', '', 0, 0, 0, 0, 12, 3, 1, '0', '2016-05-25 21:35:34', '2016-05-25 21:35:34'),
(76, 'Catalogue Tole VN Thăng Long', 'https://drive.google.com/open?id=0Bz-vVPXT5a81MGNXUGt6ZUc4VzQ', '', 0, 0, 0, 0, 12, 3, 1, '0', '2016-05-30 17:27:12', '2016-05-30 17:27:12'),
(77, 'Hồ sơ năng lực Tole VN Thăng Long', 'https://drive.google.com/open?id=0Bz-vVPXT5a81c3dGX3hsXzZOaWc', '', 0, 0, 0, 0, 12, 3, 1, '0', '2016-05-30 17:28:53', '2016-05-30 17:28:53'),
(81, 'Dây chuyển sản xuất ống gió tự động thế hệ 5 (Auto Line 5)', 'Dây chuyển sản xuất ống gió tự động thế hệ 5 (Auto Line 5)', '<p><p><img src=\"http://vitduct.com.vn/uploads/0616/9391Duct production Auto Line 5.jpg\"></p><iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/w51dXDZmQg8\" frameborder=\"0\" allowfullscreen=\"\"></iframe><br></p>', 0, 0, 18, 6, 19, 3, 1, '0', '2016-06-13 21:13:05', '2016-06-13 21:13:05'),
(82, 'Máy cắt Plasma CNC (CNC Plasma cutting machine )', 'Máy cắt Plasma CNC (CNC Plasma cutting machine )', '<p><p><img src=\"http://vitduct.com.vn/uploads/0616/7713CNC Cutting.jpg\" style=\"\"></p><iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/nraBIyTg-wg\" frameborder=\"0\" allowfullscreen=\"\"></iframe><br></p>', 0, 0, 18, 6, 19, 3, 1, '0', '2016-06-13 21:15:50', '2016-06-13 21:15:50'),
(89, 'Cầu nhiệt dùng cho van chặn lửa', 'Cầu nhiệt dùng cho van chặn lửa', '<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"http://vitduct.com.vn/uploads/0816/6030Cau tri 2.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>M&ocirc; tả:</p>\r\n\r\n<p>Được d&ugrave;ng để l&agrave;m cầu tr&igrave; nhiệt cho hệ van Chặn lửa, dập lửa trong hệ thống th&ocirc;ng gi&oacute;.</p>\r\n\r\n<p>Đặc t&iacute;nh kỹ thuật:</p>\r\n\r\n<p>Với nguy&ecirc;n l&yacute; hoạt động, khi tr&ecirc;n đường ống xảy ra ch&aacute;y nhiệt độ m&ocirc;i trường tăng l&ecirc;n khoảng 72 đến 90 độ C. Th&igrave; cầu tr&igrave; nhiệt tự chảy l&agrave;m đ&oacute;ng van chặn lửa (FD) lại, c&aacute;ch ly khu vực xảy ra ch&aacute;y v&agrave; chống ch&aacute;y lan sang khu vực kh&aacute;c.</p>\r\n\r\n<p>Th&ocirc;ng số kỹ thuật:</p>\r\n\r\n<p>- Nhiệt độ tự chảy: 72 độ C +/- 5%</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 0, 0, 1, 1, 7, 3, 1, '0', '2016-08-29 17:32:12', '2017-06-07 05:06:04'),
(90, 'Model DSM1- Loại treo trần', 'Model DSM1- Loại treo trần', '<p><img alt=\"\" src=\"http://vitduct.com.vn/public/images/DSM1(1).jpg\" style=\"height:200px; width:200px\" /></p>\r\n\r\n<p><strong>* Đặc điểm sử dụng</strong></p>\r\n\r\n<p>- Được sử dụng l&agrave;m bộ giảm chấn, chống rung cho: Quạt gi&oacute; (FAN), AHU,CHILLER, M&Aacute;Y BƠM, M&Aacute;Y PH&Aacute;T ...</p>\r\n\r\n<p>- Khung v&agrave; l&otilde;i ri&ecirc;ng biệt, dễ d&agrave;ng th&aacute;o lắp v&agrave; bảo tr&igrave;</p>\r\n\r\n<p>- D&ograve;ng sản phẩm DSM1 c&oacute; rất nhiều Model với dải trọng lượng ph&ugrave; hợp với c&aacute;c mọi nhu cầu kh&aacute;c nhau:</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:701px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"height:29px; text-align:center; width:67px\">STT/No.</td>\r\n			<td style=\"text-align:center; width:176px\">M&atilde; h&agrave;ng/ Model</td>\r\n			<td style=\"text-align:center; width:151px\">Tải trọng/ Load (kg)</td>\r\n			<td style=\"text-align:center; width:88px\">SL/ Q.Ty</td>\r\n			<td style=\"text-align:center; width:105px\">ĐV/ Unit</td>\r\n			<td style=\"text-align:center; width:115px\">Đơn gi&aacute; / Cost</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:29px; text-align:center\">1</td>\r\n			<td style=\"text-align:center\">DSM1:10</td>\r\n			<td style=\"text-align:center\">5 &divide; 10</td>\r\n			<td style=\"text-align:center\">01</td>\r\n			<td style=\"text-align:center\">C&aacute;i / Pcs</td>\r\n			<td style=\"text-align:center\">119,416</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:29px; text-align:center\">2</td>\r\n			<td style=\"text-align:center\">DSM1:20</td>\r\n			<td style=\"text-align:center\">10 &divide; 25</td>\r\n			<td style=\"text-align:center\">01</td>\r\n			<td style=\"text-align:center\">C&aacute;i / Pcs</td>\r\n			<td style=\"text-align:center\">132,396</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:29px; text-align:center\">3</td>\r\n			<td style=\"text-align:center\">DSM1:50</td>\r\n			<td style=\"text-align:center\">25 &divide; 125</td>\r\n			<td style=\"text-align:center\">01</td>\r\n			<td style=\"text-align:center\">C&aacute;i / Pcs</td>\r\n			<td style=\"text-align:center\">175,584</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:29px; text-align:center\">4</td>\r\n			<td style=\"text-align:center\">DSM1:150</td>\r\n			<td style=\"text-align:center\">125 &divide; 250</td>\r\n			<td style=\"text-align:center\">01</td>\r\n			<td style=\"text-align:center\">C&aacute;i / Pcs</td>\r\n			<td style=\"text-align:center\">224,436</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:29px; text-align:center\">5</td>\r\n			<td style=\"text-align:center\">DSM1:350</td>\r\n			<td style=\"text-align:center\">250 &divide; 500</td>\r\n			<td style=\"text-align:center\">01</td>\r\n			<td style=\"text-align:center\">C&aacute;i / Pcs</td>\r\n			<td style=\"text-align:center\">230,800</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:29px; text-align:center\">6</td>\r\n			<td style=\"text-align:center\">DSM1:600</td>\r\n			<td style=\"text-align:center\">500 &divide; 700</td>\r\n			<td style=\"text-align:center\">01</td>\r\n			<td style=\"text-align:center\">C&aacute;i / Pcs</td>\r\n			<td style=\"text-align:center\">300,000</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>* Vật liệu</strong><br />\r\n<span style=\"font-family:arial,sans-serif; font-size:14px\">- Khung được l&agrave;m từ th&eacute;p &nbsp;c&oacute; cường độ cao, chịu lực lớn để giảm chấn v&agrave; chống rung.</span></p>\r\n\r\n<p>- Được sơn (hoặc mạ kẽm) bằng d&acirc;y chuyền sơn tĩnh điện theo c&ocirc;ng nghệ H&agrave;n Quốc v&agrave; Nhật Bản.&nbsp;</p>\r\n\r\n<p>-&nbsp;Th&ocirc;ng số kỹ thuật, hướng dẫn sử dụng v&agrave; đặc t&iacute;nh lực chi tiết xin vui l&ograve;ng xem trong mục:</p>\r\n\r\n<p>&nbsp; &nbsp;<strong>&nbsp;Dowload t&agrave;i liệu:</strong>&nbsp;<a href=\"http://vitduct.com.vn/danh-muc/12/catalogue-san-pham\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(51, 122, 183); text-decoration: none; transition: all 0.5s;\"><strong>Catalogue sản phẩm</strong></a>:&nbsp;<strong>Catalogue L&ograve; xo chống rung giảm chấn</strong></p>\r\n\r\n<p>-&nbsp;Bảng gi&aacute; sản phẩm chi tiết xin vui l&ograve;ng xem trong mục:</p>\r\n\r\n<p>&nbsp;<strong>&nbsp;Dowload t&agrave;i liệu:</strong>&nbsp;<a href=\"http://vitduct.com.vn/danh-muc/22/bang-gia-san-pham\" style=\"box-sizing: border-box; background-color: transparent; color: rgb(51, 122, 183); text-decoration: none; transition: all 0.5s;\"><strong>Bảng gi&aacute; sản phẩm</strong></a>:<strong>&nbsp;Bảng gi&aacute;&nbsp;L&ograve; xo chống rung giảm chấn</strong></p>\r\n', 0, 0, 1, 1, 20, 2, 1, '0', '2016-12-02 02:27:41', '2018-01-14 00:15:00'),
(101, 'Van xả áp loại cơ', 'Van xả áp loại cơ khí ', '<p><img alt=\"Van xả áp cơ\" src=\"http://vitduct.com.vn/public/images/Van%20x%E1%BA%A3%20%C3%A1p%20c%C6%A1.jpg\" style=\"height:500px; width:500px\" /></p>\r\n', 0, 0, 1, 1, 7, 2, 1, '0', '2017-09-06 07:26:52', '2017-09-06 07:26:52'),
(103, 'Ống gió vuông', 'Ống gió vuông / chữ nhật', '<p><img alt=\"ống gió vuông\" src=\"http://vitduct.com.vn/public/images/Thay%20%E1%BB%91ng%20gi%C3%B3%20ch%E1%BB%AF%20nh%E1%BA%ADt%20(trang%204)(2).jpg\" style=\"height:500px; width:500px\" /></p>\r\n', 0, 0, 1, 1, 4, 2, 1, '0', '2017-09-06 07:35:41', '2017-09-06 07:35:41'),
(106, 'Ống tiêu âm có vách giảm âm', 'Ống tiêu âm có vách giảm âm', '<p><img alt=\"Tiêu âm\" src=\"http://vitduct.com.vn/public/images/Ti%C3%AAu%20%C3%A2m.jpg\" style=\"height:480px; width:640px\" /></p>\r\n', 0, 0, 1, 1, 9, 2, 1, '0', '2017-09-06 07:49:36', '2017-09-06 07:50:07'),
(107, 'Tiêu âm tròn (xốp chứng)', 'Tiêu âm tròn (xốp chứng)', '<p><img alt=\"Tiêu âm tròn (xốp chứng)\" src=\"http://vitduct.com.vn/public/images/Ti%C3%AAu%20%C3%A2m%20x%E1%BB%91p%20ch%E1%BB%A9ng.jpg\" style=\"height:500px; width:500px\" /></p>\r\n', 0, 0, 1, 1, 9, 2, 1, '0', '2017-09-06 07:54:45', '2017-09-06 07:55:03'),
(108, 'Lắp đặt quạt gió và hộp tiêu âm quạt', 'Lắp đặt quạt gió và hộp tiêu âm quạt', '<p><img alt=\"Lắp đặt quạt gió và hộp tiêu âm quạt\" src=\"http://vitduct.com.vn/public/images/H%C3%ACnh%20%E1%BA%A3nh%20thi%20c%C3%B4ng%20d%E1%BB%B1%20%C3%A1n.jpg\" style=\"height:483px; width:823px\" /></p>\r\n', 0, 0, 18, 6, 21, 2, 1, '0', '2017-09-06 07:57:49', '2017-09-06 07:57:49'),
(109, 'Catalogue lò xo chống rung VITTECH - English', 'https://drive.google.com/open?id=0Bz-vVPXT5a81OE9DNUZJY09UTms', '', 0, 0, 0, 0, 12, 2, 1, '0', '2017-09-07 02:44:38', '2017-09-07 02:44:38'),
(110, 'Catalogue lò xo chống rung VITTECH - Tiếng Việt', 'https://drive.google.com/open?id=0Bz-vVPXT5a81NFVmRjhfXzlEQjQ', '', 0, 0, 0, 0, 12, 2, 1, '0', '2017-09-07 02:44:59', '2017-09-07 02:44:59'),
(113, 'Hồ sơ năng lực ', 'https://drive.google.com/open?id=0Bz-vVPXT5a81NFYyYlBOWndJMk0', '', 0, 0, 0, 0, 23, 2, 1, '0', '2017-09-13 04:22:46', '2017-09-13 04:22:46'),
(114, 'Vent Cap - Chụp thông hơi', 'Vent Cap - Chụp thông hơi', '<p><img alt=\"Vent Cap - Chụp thông hơi\" src=\"http://vitduct.com.vn/public/images/Vent%20Cap-%20ch%E1%BB%A5p%20th%C3%B4ng%20h%C6%A1i.jpg\" style=\"height:217px; width:250px\" /></p>\r\n', 0, 0, 1, 1, 5, 2, 1, '0', '2017-09-13 04:32:18', '2017-09-13 04:32:18'),
(115, 'Khớp nồi mềm Type 1', 'Khớp nồi mềm Type 1......', '<p><img alt=\"Khớp nồi mềm Type 1\" src=\"http://vitduct.com.vn/public/images/Kh%E1%BB%9Bp%20n%E1%BB%91i%20m%E1%BB%81m%201.jpg\" style=\"height:516px; width:500px\" /></p>\r\n', 0, 0, 1, 1, 4, 2, 1, '0', '2017-09-13 04:44:57', '2017-09-13 04:44:57'),
(116, 'Khớp nồi mềm Type 2', 'Khớp nồi mềm Type 2......', '<p><img alt=\"Khớp nồi mềm Type 2\" src=\"http://vitduct.com.vn/public/images/Kh%E1%BB%9Bp%20n%E1%BB%91i%20m%E1%BB%81m%202.jpg\" style=\"height:313px; width:500px\" /></p>\r\n', 0, 0, 1, 1, 4, 2, 1, '0', '2017-09-13 04:45:34', '2017-09-13 04:47:20'),
(117, 'Khớp nồi mềm Type 3', 'Khớp nồi mềm Type 3.....', '<p><img alt=\"Khớp nồi mềm Type 3\" src=\"http://vitduct.com.vn/public/images/Kh%E1%BB%9Bp%20n%E1%BB%91i%20m%E1%BB%81m%203.jpg\" style=\"height:500px; width:500px\" /></p>\r\n', 0, 0, 1, 1, 4, 2, 1, '0', '2017-09-13 04:46:46', '2017-09-13 04:47:53'),
(118, 'Catalogue ống gió, van gió, cửa gió VITDUCt-2017', 'https://drive.google.com/open?id=0Bz-vVPXT5a81dzltRVBocmhUeDg', '', 0, 0, 0, 0, 12, 2, 1, '0', '2017-09-18 09:51:41', '2017-09-18 09:51:41'),
(119, 'Bảng giá lò xo chống rung giảm chấn', 'https://drive.google.com/open?id=19egLma9nUszPRa5cga8I39WCIFTs0FFt', '.', 0, 0, 11, 2, 22, 2, 1, '0', '2018-01-17 20:18:40', '2018-01-17 20:18:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_tags`
--

CREATE TABLE `post_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tag_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `post_tags`
--

INSERT INTO `post_tags` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(13, 7, 10, '2016-02-15 07:38:11', '2016-02-15 07:38:11'),
(15, 9, 12, '2016-02-15 07:46:33', '2016-02-15 07:46:33'),
(16, 8, 13, '2016-03-16 02:12:12', '2016-03-16 02:12:12'),
(17, 10, 14, '2016-03-16 02:23:05', '2016-03-16 02:23:05'),
(18, 10, 15, '2016-03-16 02:23:05', '2016-03-16 02:23:05'),
(19, 6, 16, '2016-04-03 07:33:20', '2016-04-03 07:33:20'),
(20, 5, 2, '2016-04-09 20:11:51', '2016-04-09 20:11:51'),
(22, 3, 2, '2016-04-09 20:18:13', '2016-04-09 20:18:13'),
(24, 1, 17, '2016-04-09 20:18:26', '2016-04-09 20:18:26'),
(25, 2, 2, '2016-04-09 21:48:13', '2016-04-09 21:48:13'),
(26, 17, 18, '2016-04-11 16:24:44', '2016-04-11 16:24:44'),
(27, 18, 19, '2016-04-11 16:29:25', '2016-04-11 16:29:25'),
(28, 19, 20, '2016-04-11 16:33:47', '2016-04-11 16:33:47'),
(29, 20, 21, '2016-04-11 16:38:40', '2016-04-11 16:38:40'),
(30, 21, 22, '2016-04-11 16:43:41', '2016-04-11 16:43:41'),
(32, 22, 24, '2016-04-11 16:48:35', '2016-04-11 16:48:35'),
(35, 25, 27, '2016-04-11 17:01:32', '2016-04-11 17:01:32'),
(37, 27, 28, '2016-04-11 17:10:11', '2016-04-11 17:10:11'),
(39, 29, 30, '2016-04-11 17:15:24', '2016-04-11 17:15:24'),
(40, 30, 29, '2016-04-11 17:17:54', '2016-04-11 17:17:54'),
(42, 32, 31, '2016-04-11 17:21:41', '2016-04-11 17:21:41'),
(43, 33, 32, '2016-04-11 17:23:11', '2016-04-11 17:23:11'),
(44, 34, 33, '2016-04-11 17:24:39', '2016-04-11 17:24:39'),
(45, 35, 34, '2016-04-11 17:27:58', '2016-04-11 17:27:58'),
(63, 43, 52, '2016-04-13 00:08:20', '2016-04-13 00:08:20'),
(72, 46, 61, '2016-04-13 20:01:00', '2016-04-13 20:01:00'),
(73, 47, 62, '2016-04-13 20:03:35', '2016-04-13 20:03:35'),
(76, 12, 65, '2016-04-13 20:12:40', '2016-04-13 20:12:40'),
(77, 45, 66, '2016-04-13 20:13:48', '2016-04-13 20:13:48'),
(79, 48, 68, '2016-04-13 20:18:54', '2016-04-13 20:18:54'),
(80, 49, 69, '2016-04-13 20:19:18', '2016-04-13 20:19:18'),
(82, 50, 71, '2016-04-13 20:26:29', '2016-04-13 20:26:29'),
(83, 51, 72, '2016-04-13 20:30:36', '2016-04-13 20:30:36'),
(85, 52, 74, '2016-04-13 20:36:59', '2016-04-13 20:36:59'),
(87, 53, 76, '2016-04-13 21:07:15', '2016-04-13 21:07:15'),
(90, 55, 79, '2016-04-13 21:48:48', '2016-04-13 21:48:48'),
(91, 54, 80, '2016-04-13 21:49:02', '2016-04-13 21:49:02'),
(98, 72, 87, '2016-05-24 15:36:23', '2016-05-24 15:36:23'),
(102, 81, 88, '2016-06-13 21:13:05', '2016-06-13 21:13:05'),
(103, 82, 89, '2016-06-13 21:15:50', '2016-06-13 21:15:50'),
(109, 101, 94, '2017-09-06 07:26:52', '2017-09-06 07:26:52'),
(111, 103, 95, '2017-09-06 07:35:41', '2017-09-06 07:35:41'),
(114, 108, 98, '2017-09-06 07:57:49', '2017-09-06 07:57:49'),
(115, 114, 99, '2017-09-13 04:32:18', '2017-09-13 04:32:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tags`
--

INSERT INTO `tags` (`id`, `tag`, `alias`, `created_at`, `updated_at`) VALUES
(2, 'ống gió', 'ong-gio', '2016-02-15 07:08:08', '2016-02-15 07:08:08'),
(10, 'bất động sản', 'bat-dong-san', '2016-02-15 07:38:11', '2016-02-15 07:38:11'),
(12, 'facebook', 'facebook', '2016-02-15 07:46:33', '2016-02-15 07:46:33'),
(13, 'apple', 'apple', '2016-03-16 02:12:12', '2016-03-16 02:12:12'),
(14, 'giá thép', 'gia-thep', '2016-03-16 02:23:05', '2016-03-16 02:23:05'),
(15, 'đầu cơ', 'dau-co', '2016-03-16 02:23:05', '2016-03-16 02:23:05'),
(16, 'dự án', 'du-an', '2016-04-03 07:33:19', '2016-04-03 07:33:19'),
(17, 'cửa gió', 'cua-gio', '2016-04-09 20:18:26', '2016-04-09 20:18:26'),
(18, 'dự án golden palace', 'du-an-golden-palace', '2016-04-11 16:24:44', '2016-04-11 16:24:44'),
(19, 'dự án golden palace c3 lê văn lương', 'du-an-golden-palace-c3-le-van-luong', '2016-04-11 16:29:25', '2016-04-11 16:29:25'),
(20, 'nhà máy lọc hóa dầu nghi sơn', 'nha-may-loc-hoa-dau-nghi-son', '2016-04-11 16:33:47', '2016-04-11 16:33:47'),
(21, 'dự án times city', 'du-an-times-city', '2016-04-11 16:38:40', '2016-04-11 16:38:40'),
(22, 'trụ sở công ty 319 - 63 lê văn lương', 'tru-so-cong-ty-319---63-le-van-luong', '2016-04-11 16:43:41', '2016-04-11 16:43:41'),
(24, 'dự án thăng long number 1', 'du-an-thang-long-number-1', '2016-04-11 16:48:35', '2016-04-11 16:48:35'),
(25, 'ống đồng', 'ong-dong', '2016-04-11 16:51:32', '2016-04-11 16:51:32'),
(26, 'phụ kiện ống đồng', 'phu-kien-ong-dong', '2016-04-11 16:52:50', '2016-04-11 16:52:50'),
(27, 'ống gió mềm các loại', 'ong-gio-mem-cac-loai', '2016-04-11 17:01:32', '2016-04-11 17:01:32'),
(28, 'cửa gió hồi 2 khung có bản lề', 'cua-gio-hoi-2-khung-co-ban-le', '2016-04-11 17:06:53', '2016-04-11 17:06:53'),
(29, 'cửa gió nan z', 'cua-gio-nan-z', '2016-04-11 17:13:06', '2016-04-11 17:13:06'),
(30, 'cửa gió dạng slot', 'cua-gio-dang-slot', '2016-04-11 17:15:24', '2016-04-11 17:15:24'),
(31, 'cửa gió nan thẳng', 'cua-gio-nan-thang', '2016-04-11 17:20:43', '2016-04-11 17:20:43'),
(32, 'cửa gió kiểu nan lưới', 'cua-gio-kieu-nan-luoi', '2016-04-11 17:23:11', '2016-04-11 17:23:11'),
(33, 'cửa gió kiểu hộp', 'cua-gio-kieu-hop', '2016-04-11 17:24:39', '2016-04-11 17:24:39'),
(34, 'cửa gió tròn', 'cua-gio-tron', '2016-04-11 17:27:58', '2016-04-11 17:27:58'),
(42, 'model ct1:50s - giá: 138', 'model-ct1:50s---gia:-138', '2016-04-11 21:48:53', '2016-04-11 21:48:53'),
(43, '800 đ', '800-d', '2016-04-11 21:48:53', '2016-04-11 21:48:53'),
(52, 'hinh anh thi công', 'hinh-anh-thi-cong', '2016-04-13 00:08:20', '2016-04-13 00:08:20'),
(53, 'model dscs1', 'model-dscs1', '2016-04-13 00:46:05', '2016-04-13 00:46:05'),
(56, 'model ct1', 'model-ct1', '2016-04-13 02:33:22', '2016-04-13 02:33:22'),
(61, 'van dập lửa tròn (fd)', 'van-dap-lua-tron-+fd+', '2016-04-13 20:01:00', '2016-04-13 20:01:00'),
(62, 'van dập lửa vuông (fd)', 'van-dap-lua-vuong-+fd+', '2016-04-13 20:03:35', '2016-04-13 20:03:35'),
(65, 'van điều chỉnh lưu lượng tròn (vd)', 'van-dieu-chinh-luu-luong-tron-+vd+', '2016-04-13 20:12:40', '2016-04-13 20:12:40'),
(66, 'van điều chỉnh lưu lượng vuông (vd)', 'van-dieu-chinh-luu-luong-vuong-+vd+', '2016-04-13 20:13:48', '2016-04-13 20:13:48'),
(68, 'van đóng mở bằng điện (md)', 'van-dong-mo-bang-dien-+md+', '2016-04-13 20:18:54', '2016-04-13 20:18:54'),
(69, 'động cơ van gió', 'dong-co-van-gio', '2016-04-13 20:19:18', '2016-04-13 20:19:18'),
(71, 'van một chiều (rvd)', 'van-mot-chieu-+rvd+', '2016-04-13 20:26:29', '2016-04-13 20:26:29'),
(72, 'van lắp trên cửa gió (van đen)', 'van-lap-tren-cua-gio-+van-den+', '2016-04-13 20:30:36', '2016-04-13 20:30:36'),
(74, 'ống gió tiêu âm', 'ong-gio-tieu-am', '2016-04-13 20:36:59', '2016-04-13 20:36:59'),
(76, 'phụ kiện ống tiêu âm', 'phu-kien-ong-tieu-am', '2016-04-13 21:07:15', '2016-04-13 21:07:15'),
(79, 'bông thủy tinh dạng cuộn', 'bong-thuy-tinh-dang-cuon', '2016-04-13 21:48:48', '2016-04-13 21:48:48'),
(80, 'bông khoáng dịnh hình', 'bong-khoang-dinh-hinh', '2016-04-13 21:49:02', '2016-04-13 21:49:02'),
(82, 'quạt gió gắn tường và gắn trần', 'quat-gio-gan-tuong-va-gan-tran', '2016-04-13 21:53:09', '2016-04-13 21:53:09'),
(83, 'bảng giá lò xo chống rung', 'bang-gia-lo-xo-chong-rung', '2016-04-13 21:58:06', '2016-04-13 21:58:06'),
(84, 'giảm chấn', 'giam-chan', '2016-04-13 21:58:06', '2016-04-13 21:58:06'),
(85, 'bảo ôn đống đồng và nước ngưng', 'bao-on-dong-dong-va-nuoc-ngung', '2016-04-20 22:46:59', '2016-04-20 22:46:59'),
(86, 'cổ bạt nối mềm', 'co-bat-noi-mem', '2016-04-20 22:51:48', '2016-04-20 22:51:48'),
(87, 'dự án hateco hoàng mai', 'du-an-hateco-hoang-mai', '2016-05-24 15:36:23', '2016-05-24 15:36:23'),
(88, 'dây chuyển sản xuất ống gió tự động thế hệ 5 (auto line 5)', 'day-chuyen-san-xuat-ong-gio-tu-dong-the-he-5-+auto-line-5+', '2016-06-13 20:56:10', '2016-06-13 20:56:10'),
(89, 'máy cắt plasma cnc (cnc plasma cutting machine )', 'may-cat-plasma-cnc-+cnc-plasma-cutting-machine-+', '2016-06-13 21:02:29', '2016-06-13 21:02:29'),
(90, 'cầu nhiệt dùng cho van dập lửa', 'cau-nhiet-dung-cho-van-dap-lua', '2016-08-26 22:38:58', '2016-08-26 22:38:58'),
(91, 'cầu nhiệt dùng cho van chặn lửa', 'cau-nhiet-dung-cho-van-chan-lua', '2016-08-26 22:40:54', '2016-08-26 22:40:54'),
(92, 'model ct1- loại treo trần', 'model-ct1--loai-treo-tran', '2016-11-18 03:10:33', '2016-11-18 03:10:33'),
(93, 'model dsm1- loại treo trần', 'model-dsm1--loai-treo-tran', '2016-12-02 02:27:41', '2016-12-02 02:27:41'),
(94, 'van xả áp loại cơ', 'van-xa-ap-loai-co', '2017-09-06 07:26:52', '2017-09-06 07:26:52'),
(95, 'ống gió vuông', 'ong-gio-vuong', '2017-09-06 07:34:15', '2017-09-06 07:34:15'),
(96, 'tiêu âm', 'tieu-am', '2017-09-06 07:49:36', '2017-09-06 07:49:36'),
(97, 'tiêu âm tròn (xốp chứng)', 'tieu-am-tron-+xop-chung+', '2017-09-06 07:54:45', '2017-09-06 07:54:45'),
(98, 'lắp đặt quạt gió và hộp tiêu âm quạt', 'lap-dat-quat-gio-va-hop-tieu-am-quat', '2017-09-06 07:57:49', '2017-09-06 07:57:49'),
(99, 'vent cap - chụp thông hơi', 'vent-cap---chup-thong-hoi', '2017-09-13 04:32:18', '2017-09-13 04:32:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Binh Minh', 'minhnb.it@gmail.com', NULL, '$2y$10$G47Ai.DIBpfTV1a5uYAOguThDCcPRT/t/lXZ8ENE.RmcgLZVjs/0i', 'cIM3CLSY9yyZEWSFSCxOwxfcjBgRYTXD0zyvZEeDjK9FDGzycP8TSlDmnI0K', '2018-10-30 07:03:41', '2018-10-30 07:03:41'),
(2, 'Hoàng Ngọc Chiến', 'chienhn@vitduct.com.vn', NULL, '$2y$10$3XhPenZ06FwmIvCjbkcSn.Fpae1S8Xa9KR.0WR.BoE33Y7wSu9RAe', 'mHI4yRYM8ATSDHMIkpSHFqzHHWmKxrmjz462SljQhJ7En3GZNWqIM99EFnTg', '2018-10-30 07:26:17', '2018-10-30 07:26:17'),
(3, 'Vitduct.com.vn', 'contact@vitduct.com.vn', NULL, '$2y$10$k3TDFY8lGpAboAHeKAFY1eUJFMARfVeaNC5ahp8GYitPvNwShuxKC', 'Qyrgx46LrPlKVF96742m3Rijsd8SFvUWa0HI5WLutBPQRiNHfpioAw6PweV1', '2018-10-30 07:26:40', '2018-10-30 07:26:40');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_userid_foreign` (`userID`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_userid_foreign` (`userID`),
  ADD KEY `posts_categorieid_foreign` (`categorieID`);

--
-- Chỉ mục cho bảng `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_tags_post_id_foreign` (`post_id`),
  ADD KEY `post_tags_tag_id_foreign` (`tag_id`);

--
-- Chỉ mục cho bảng `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT cho bảng `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT cho bảng `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_categorieid_foreign` FOREIGN KEY (`categorieID`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_userid_foreign` FOREIGN KEY (`userID`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
