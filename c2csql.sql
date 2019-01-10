-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 10 Oca 2019, 19:31:48
-- Sunucu sürümü: 10.1.36-MariaDB
-- PHP Sürümü: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `c2csql`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ayar`
--

CREATE TABLE `ayar` (
  `ayar_id` int(11) NOT NULL,
  `ayar_logo` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_url` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_title` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_description` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_keywords` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_author` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_tel` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_gsm` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_faks` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_mail` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_ilce` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_il` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_adres` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_mesai` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_maps` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_analystic` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_zopim` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_facebook` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_twitter` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_google` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_youtube` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtphost` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtpuser` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtppassword` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtpport` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_bakim` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ayar`
--

INSERT INTO `ayar` (`ayar_id`, `ayar_logo`, `ayar_url`, `ayar_title`, `ayar_description`, `ayar_keywords`, `ayar_author`, `ayar_tel`, `ayar_gsm`, `ayar_faks`, `ayar_mail`, `ayar_ilce`, `ayar_il`, `ayar_adres`, `ayar_mesai`, `ayar_maps`, `ayar_analystic`, `ayar_zopim`, `ayar_facebook`, `ayar_twitter`, `ayar_google`, `ayar_youtube`, `ayar_smtphost`, `ayar_smtpuser`, `ayar_smtppassword`, `ayar_smtpport`, `ayar_bakim`) VALUES
(0, 'dimg/24584logo.png', 'http://www.fioptik.com/', 'Fi Optik', 'Fi Optik', 'eticaret,fioptik', 'Fi Optik  ', '05340681961', '0850 840 80 76 ', '0850 840 80 76 ', 'info@cansubilgin.com.tr', 'Seyhan', 'Adana', 'Pınar mahallesi', '7/24 ', 'ayar_maps_api', 'ayar_analystic', 'https://v2.zopim.com/?5DyUgwL2c2nc43kG0j9udM8FLxy9XfWX  ', ' http://www.facebook.com', 'http://www.twitter.com', 'http://www.google.com   ', 'http://www.youtube.com   ', 'mail.emrahyuksel.com.tr    ', 'joyakademi@emrahyuksel.com.tr', 'password    ', '25 ', '0');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `banka`
--

CREATE TABLE `banka` (
  `banka_id` int(11) NOT NULL,
  `banka_ad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `banka_iban` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `banka_hesapadsoyad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `banka_durum` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `banka`
--

INSERT INTO `banka` (`banka_id`, `banka_ad`, `banka_iban`, `banka_hesapadsoyad`, `banka_durum`) VALUES
(1, 'Garanti Bankası', 'TR98755656564564546', 'Cansu Bilgin', '1'),
(2, 'Yapı Kredi', 'TR45646545646545646465546', 'Cansu Bilgin', '1'),
(5, 'Ziraat Bankası', 'TR45646545646awrwerwerwer', 'Cansu Bilgin', '1'),
(6, 'Finansbank', '165456456', 'Cansu Bilgin', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `durum`
--

CREATE TABLE `durum` (
  `durum_id` int(11) NOT NULL,
  `kullanici_id` int(11) NOT NULL,
  `durum` text NOT NULL,
  `zaman` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `resim` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `durum`
--

INSERT INTO `durum` (`durum_id`, `kullanici_id`, `durum`, `zaman`, `resim`) VALUES
(1, 174, 'deneme', '2018-12-08 10:59:45', ''),
(2, 172, 'dddsf', '2018-12-08 12:03:14', ''),
(3, 172, 'merhaaba', '2018-12-08 12:03:55', ''),
(4, 172, 'i?iili?sadkajd', '2018-12-08 12:08:06', ''),
(5, 172, 'iyi', '2018-12-08 12:08:23', ''),
(6, 172, 'saat 13', '2018-12-08 13:11:05', ''),
(7, 172, 'dsdsds', '2018-12-08 13:25:09', ''),
(8, 172, 'asdasdsa', '2018-12-08 13:30:05', ''),
(9, 172, '', '2018-12-08 13:30:08', ''),
(10, 172, 'jkhjk', '2018-12-08 14:48:12', ''),
(11, 172, 'sdsd', '2018-12-08 15:34:59', ''),
(12, 172, 'sadsa', '2018-12-08 15:42:25', ''),
(13, 174, 'merhaba ben fake hesab?m', '2018-12-09 00:39:39', ''),
(14, 174, 'dddd', '2018-12-09 00:40:20', ''),
(15, 174, 'oaknnn', '2018-12-09 00:41:21', ''),
(16, 175, 'Herkese Selam', '2018-12-09 23:16:00', ''),
(17, 177, 'burada ilk günüm\r\n', '2018-12-10 23:05:12', ''),
(18, 180, 'gggg', '2018-12-11 02:33:52', ''),
(19, 172, 'ksjdhfkjshd hksdjh fkdshjkdsh sdhkjdsh ', '2018-12-11 16:23:19', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hakkimizda`
--

CREATE TABLE `hakkimizda` (
  `hakkimizda_id` int(11) NOT NULL,
  `hakkimizda_baslik` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_icerik` text COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_video` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_vizyon` varchar(500) COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_misyon` varchar(500) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `hakkimizda`
--

INSERT INTO `hakkimizda` (`hakkimizda_id`, `hakkimizda_baslik`, `hakkimizda_icerik`, `hakkimizda_video`, `hakkimizda_vizyon`, `hakkimizda_misyon`) VALUES
(0, 'Fi Optik      ', '<p><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua</strong>. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n', 'l47oJcDBJKY', 'Fi Optik      ', 'Fi Optik      ');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_ad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kategori_ust` int(11) NOT NULL,
  `kategori_onecikar` enum('0','1') COLLATE utf8_turkish_ci NOT NULL,
  `kategori_seourl` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `kategori_sira` int(2) NOT NULL,
  `kategori_durum` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori_ad`, `kategori_ust`, `kategori_onecikar`, `kategori_seourl`, `kategori_sira`, `kategori_durum`) VALUES
(14, 'Tüm Aksesuarlar', 0, '1', 'tum-aksesuarlar', 4, '1'),
(16, 'Çocuk', 0, '1', 'cocuk', 3, '1'),
(19, 'Kadın', 0, '1', 'kadin', 1, '1'),
(20, 'Erkek', 0, '1', 'erkek', 2, '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanici`
--

CREATE TABLE `kullanici` (
  `kullanici_id` int(11) NOT NULL,
  `subMerchantKey` varchar(500) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_magaza` enum('0','1','2') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0',
  `kullanici_magazafoto` varchar(500) COLLATE utf8_turkish_ci NOT NULL DEFAULT 'dimg/magaza-fotoyok.png',
  `kullanici_zaman` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `kullanici_sonzaman` datetime NOT NULL,
  `kullanici_resim` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_tc` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_banka` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_iban` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `kullanici_ad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_soyad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_mail` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_gsm` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_password` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_adres` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_il` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_ilce` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_unvan` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_tip` enum('PERSONAL','PRIVATE_COMPANY','LIMITED_OR_JOINT_STOCK_COMPANY','') COLLATE utf8_turkish_ci DEFAULT 'PERSONAL',
  `kullanici_vdaire` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_vno` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_yetki` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_durum` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kullanici`
--

INSERT INTO `kullanici` (`kullanici_id`, `subMerchantKey`, `kullanici_magaza`, `kullanici_magazafoto`, `kullanici_zaman`, `kullanici_sonzaman`, `kullanici_resim`, `kullanici_tc`, `kullanici_banka`, `kullanici_iban`, `kullanici_ad`, `kullanici_soyad`, `kullanici_mail`, `kullanici_gsm`, `kullanici_password`, `kullanici_adres`, `kullanici_il`, `kullanici_ilce`, `kullanici_unvan`, `kullanici_tip`, `kullanici_vdaire`, `kullanici_vno`, `kullanici_yetki`, `kullanici_durum`) VALUES
(166, '', '2', 'dimg/test/5a2b97af021ac.jpg', '2017-12-08 21:51:51', '2017-12-09 23:03:57', '', '12345678910', 'Garantia', 'TR121312', 'Emrah', 'Yüksel', 'satici@emrahyuksel.com.tr', '08508408076', '123456', 'Topkapı Sarayı 1.Avlu Çıkmazı', 'İstanbul', 'Çatalca', '', 'PERSONAL', '', '', '1', 1),
(168, '', '0', 'dimg/test/5a2988bb8a36d.jpg', '2017-12-02 16:18:40', '2017-12-10 12:26:32', '', '12345678910', 'Garantia', 'TR121312', 'Naci', 'Yüksel', 'alici@emrahyuksel.com.tr', '08508408076', 'dc483e80a7a0bd9ef71d8cf973673924', 'Topkapı Sarayı 1.Avlu Çıkmazı', 'İstanbul', 'Çatalca', '', 'PERSONAL', '', '', '1', 1),
(169, '', '0', 'dimg/test/5a2bbf7b7a385.jpg', '2017-12-09 12:45:24', '0000-00-00 00:00:00', '', '', '', NULL, 'Ahmet', 'Korkmaz', 'alici1@emrahyuksel.com.tr', '', 'dc483e80a7a0bd9ef71d8cf973673924', '', '', '', '', 'PERSONAL', '', '', '1', 1),
(170, '', '0', 'dimg/test/5c0b6fc445c0b.jpg', '2017-12-09 15:51:51', '0000-00-00 00:00:00', '', '', '', NULL, 'Murat', 'Sönmez', 'alici2@emrahyuksel.com.tr', '', 'dc483e80a7a0bd9ef71d8cf973673924', '', '', '', '', 'PERSONAL', '', '', '1', 1),
(171, '', '0', 'dimg/test/5c0aeda73ce4f.jpg', '2018-12-06 13:16:28', '0000-00-00 00:00:00', '', '', '', NULL, 'Sevde Aybüke', 'Kaleli', 'sevdeaybuke@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', '', 'PERSONAL', '', '', '5', 1),
(173, '', '0', 'dimg/test/5c0aeda73ce4f.jpg', '2018-12-06 13:16:28', '0000-00-00 00:00:00', '', '18739141420', '', NULL, 'Cansu ', 'Bilgin', 'cansubilgin@gmail.com', '05340681961', 'e10adc3949ba59abbe56e057f20f883e', 'p mah', 'adana', 'seyhan', '', 'PERSONAL', '', '', '5', 1),
(174, '', '0', 'dimg/test/5c0aeda73ce4f.jpg', '2018-12-06 13:16:28', '0000-00-00 00:00:00', '', '18739141420', '', NULL, 'Cansu ', 'Bilgin', 'cansu@gmail.com', '05340681961', 'e10adc3949ba59abbe56e057f20f883e', 'p mah', 'adana', 'seyhan', '', 'PERSONAL', '', '', '1', 1),
(175, '', '0', 'dimg/magaza-fotoyok.png', '2018-12-19 15:41:19', '0000-00-00 00:00:00', '', '', '', NULL, 'cansu', 'bilgin', 'cb@cb.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', 'adana', 'seyhan', '', 'PERSONAL', '', '', '1', 1),
(176, '', '0', 'dimg/magaza-fotoyok.png', '2018-12-19 17:49:20', '0000-00-00 00:00:00', '', '', '', NULL, 'berk', 'kaya', 'berk@b.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', '', 'PERSONAL', '', '', '1', 1),
(177, '', '0', 'dimg/magaza-fotoyok.png', '2018-12-20 23:48:48', '0000-00-00 00:00:00', '', '', '', NULL, 'canan', 'bilgin', 'cananbilgin@gmail.com', '', 'd8225a79358f93f1c329e476a4f4db48', '', '', '', '', 'PERSONAL', '', '', '1', 1),
(178, '', '0', 'dimg/magaza-fotoyok.png', '2018-12-21 11:30:26', '0000-00-00 00:00:00', '', '', '', NULL, 'ulas', 'bilgin', 'ulasbilgin@hotmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', '', 'PERSONAL', '', '', '1', 1),
(179, '', '0', 'dimg/magaza-fotoyok.png', '2018-12-24 02:34:41', '0000-00-00 00:00:00', '', '', '', NULL, 'aybuke', 'kaleli', 'aybuke@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', '', 'PERSONAL', '', '', '1', 1),
(180, '', '0', 'dimg/magaza-fotoyok.png', '2019-01-07 22:58:36', '0000-00-00 00:00:00', '', '', '', NULL, 'ss', 'aaaaaaaaaaa', 'aybukea@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', '', 'PERSONAL', '', '', '1', 1),
(181, '', '0', 'dimg/magaza-fotoyok.png', '2019-01-07 23:01:13', '0000-00-00 00:00:00', '', '', '', NULL, 'we', 'we', 'berkw@b.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', '', 'PERSONAL', '', '', '1', 1),
(182, '', '0', 'dimg/magaza-fotoyok.png', '2019-01-07 23:06:11', '0000-00-00 00:00:00', '', '', '', NULL, 'aaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaa', 'ssssss@sssssssss.com', '', '12f9cf6998d52dbe773b06f848bb3608', '', '', '', '', 'PERSONAL', '', '', '1', 1),
(183, '', '0', 'dimg/magaza-fotoyok.png', '2019-01-09 22:22:34', '0000-00-00 00:00:00', '', '', '', NULL, 'aybuke', 'kaleli', 'aybukekaleli@a.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', '', 'PERSONAL', '', '', '1', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_ust` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `menu_ad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `menu_detay` text COLLATE utf8_turkish_ci NOT NULL,
  `menu_url` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `menu_sira` int(2) NOT NULL,
  `menu_durum` enum('0','1') COLLATE utf8_turkish_ci NOT NULL,
  `menu_seourl` varchar(250) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_ust`, `menu_ad`, `menu_detay`, `menu_url`, `menu_sira`, `menu_durum`, `menu_seourl`) VALUES
(4, '0', 'Kategoriler', '', 'kategoriler', 1, '1', 'kategoriler'),
(11, '', 'İletişim', '', 'iletisim.php', 20, '1', 'iletisim'),
(12, '0', 'Hakkımızda', '', 'hakkimizda', 2, '1', 'hakkimizda'),
(13, '', 'Gizlilik Koşullarımız', '<p>Gizlilik Politikası</p>\r\n\r\n<p>L&uuml;tfen bu İnternet Sitesini kullanmadan &ouml;nce aşağıdaki Kullanım Şartlarını ve Yasal Uyarıları Dikkatle Okuyun</p>\r\n\r\n<p>PepsiCo, Inc. (&ldquo;PepsiCo&rdquo;) İnternet sitesine hoş geldiniz. Aşağıda bu internet sitesi &uuml;zerinden bize sağlayabileceğiniz kişisel bilgilerle ilgili Gizlilik Koşullarımızı bulacaksınız. Amacımız mahremiyetinizi ve İnternet &uuml;zerinden bize sunduğunuz bilgileri korumaktır.</p>\r\n\r\n<p>PepsiCo bu internet sitesini Amerika Birleşik Devletleri&rsquo;nin New York Eyaleti&rsquo;nin Purchase şehrindeki ofisinden işletmektedir. Bu internet sitesiyle ilgili b&uuml;t&uuml;n konular Amerika Birleşik Devletleri&rsquo;nin New York Eyaleti&rsquo;nin kanunlarına tabidir ve onlar kapsamında yorumlanır.</p>\r\n\r\n<p>Bu internet sitesine erişerek bu Gizlilik Koşulları&rsquo;nı ve bu siteye yazılmış Kullanım Şartları&rsquo;nı kabul ettiğinizi belirtirsiniz.</p>\r\n\r\n<p>Bu internet sitesi 13 yaşın altındaki &ccedil;ocuklara y&ouml;nelik değildir ve sitede 13 yaşın altındaki &ccedil;ocuklardan bilerek kişisel bilgi toplamayız. Eğer sitede kasıtsız olarak 13 yaşın altındaki bir ziyaret&ccedil;inin kişisel bilgilerini aldığımızın farkına varırsak, bu bilgileri kayıtlarımızdan sileriz.</p>\r\n\r\n<p>Diğer Sitelere Bağlantı Verme</p>\r\n\r\n<p>Bu politika www.PepsiCo.com&rsquo;u (PepsiCo&rsquo;nun kurumsal internet sitesini) kapsar. İştiraklerimizden ve/veya programlarımızdan bazıları kendi, muhtemelen farklı politikalarını kendi internet sitelerine yazabilirler. Sizi o internet sitelerine bağlantı verirken o politikaları g&ouml;zden ge&ccedil;irmeye teşvik ediyoruz.</p>\r\n\r\n<p>Topladığımız bilgiler ve onları kullanım şeklimiz</p>\r\n\r\n<p>Kişisel Bilgiler &ndash; Bu internet sitesinde kişisel bilgiler (isminiz, adresiniz, telefon numaranız ve e-posta adresiniz gibi) verebilirsiniz. Bilgileri vermek i&ccedil;in kullanabileceğiniz bazı y&ouml;ntemler ve verebileceğiniz bilgi tipleri aşağıdadır. Size bilgiyi nasıl kullanabileceğimizi de a&ccedil;ıklayacağız.</p>\r\n\r\n<p>Bizimle İrtibat Kurun- Sitedeki &ldquo;Bizimle İrtibat Kurun&rdquo; bağlantısından bize e-posta g&ouml;nderirseniz sorularınıza ve yorumlarınıza cevap verebilmek i&ccedil;in sizden isminiz ve e-posta adresiniz gibi bilgiler isteriz. İlave bilgiler de verebilirsiniz.</p>\r\n\r\n<p>İ&ccedil;eriği Bir Arkadaşa Yolla &ndash; Bazı i&ccedil;erikleri arkadaşlarınıza yollayabilirsiniz. Bunu yapmak i&ccedil;in sizden isminizi ve arkadaşınızın e-posta adresini vermenizi isteriz. Bu bilgiyi i&ccedil;eriği arkadaşınıza yollamak i&ccedil;in kullanırız.</p>\r\n\r\n<p>Internet Protokol&uuml; Adresi</p>\r\n\r\n<p>Sitemizin b&uuml;t&uuml;n ziyaret&ccedil;ilerinin İnternet Protokol&uuml; adreslerini toplarız. IP adresinizi sitemizi y&ouml;netmemize yardımcı olmak i&ccedil;in kullanırız. IP adresiniz sitemizi ne zaman ziyaret ettiğinizi belirlemek i&ccedil;in de kullanılır.</p>\r\n\r\n<p>Sitenin &ldquo;Kariyerler&rdquo; Kısmı i&ccedil;in İlave Politikalar</p>\r\n\r\n<p>Eğer bu sitenin &ldquo;Kariyerler&rdquo; veya &ldquo;İş Fırsatları&rdquo; kısımlarında kişisel bilgi verirseniz, bu bilginin kullanımı ve korunması kariyer.net internet sitesinde yazılı Kariyer.net Gizlilik Koşulları&rsquo;na tabidir. Daha fazla bilgi i&ccedil;in www.kariyer.net adresini ziyaret edin.</p>\r\n\r\n<p>Paylaştığımız Bilgiler</p>\r\n\r\n<p>İnternet sitemizin ziyaret&ccedil;ileri hakkındaki kişisel bilgileri burada a&ccedil;ıklanan haller haricinde satmayız ya da başka bir suretle a&ccedil;ıklamayız. Bu sitenin ziyaret&ccedil;ilerinin sağladığı bilgileri adımıza hizmetler y&uuml;r&uuml;tmek i&ccedil;in tuttuğumuz hizmet sağlayıcılarla paylaşabiliriz. Bu hizmet sağlayıcıların adımıza hizmetler y&uuml;r&uuml;tmek ya da yasal gereksinimlere uymak i&ccedil;in gerekli olan haller dışında bu bilgileri kullanmaları ya da a&ccedil;ıklamaları yasaktır. Ek olarak, (i) kanunen ya da yasal bir s&uuml;re&ccedil; nedeniyle a&ccedil;ıklamamız gerekiyorsa, (ii) emniyet g&ouml;revlilerine ya da diğer devlet yetkililerine (iii) a&ccedil;ıklamanın fiziksel hasarı veya mali kaybı &ouml;nlemek veya ş&uuml;pheli veya ger&ccedil;ek yasadışı faaliyete ilişkin bir soruşturmayla ilişkili olarak gerekli veya uygun olduğunu d&uuml;ş&uuml;nd&uuml;ğ&uuml;m&uuml;z zaman hakkınızdaki bilgileri a&ccedil;ıklayabiliriz.</p>\r\n\r\n<p>Şirketimizin ya da varlıklarımızın tamamını ya da bir kısmını satmamız ya da devretmemiz halinde hakkınızdaki bilgileri devretme hakkını saklı tutarız. B&ouml;yle bir satış ya da devir meydana gelirse, devralanı bu internet sitesinden verdiğiniz kişisel bilgileri bu Gizlilik Koşulları&rsquo;na uygun bir şekilde kullanmaya teşvik etmek i&ccedil;in makul &ccedil;aba g&ouml;stereceğiz.</p>\r\n\r\n<p>Aktardığımız Bilgiler</p>\r\n\r\n<p>Bu sitede topladığımız kişisel bilgileri iş yaptığımız diğer &uuml;lkelere aktarabiliriz, ama bunu sadece yukarıda a&ccedil;ıklanmış ama&ccedil;larla yapacağız. Bilgilerinizi diğer &uuml;lkelere aktardığımız zaman uygulanabilen kanunlar aksini gerektirmediği s&uuml;rece o bilgiyi burada a&ccedil;ıklandığı gibi koruyacağız.</p>\r\n\r\n<p>Kişisel Bilgiyi Nasıl Koruruz?</p>\r\n\r\n<p>Bu internet sitesinden verdiğiniz kişisel bilgileri yetkisiz a&ccedil;ıklanmaya, kullanıma, değiştirmeye ya da tahribata karşı korumak i&ccedil;in idari, teknik ve fiziksel tedbirler uyguluyoruz. Bu sitede verdiğiniz kişisel bilgilerin g&uuml;venli kalması i&ccedil;in G&uuml;venli Şifreleme Protokol&uuml; (SSL) teknolojisini kullanıyoruz.</p>\r\n\r\n<p>Gizlilik Beyanımızın G&uuml;ncellemeleri</p>\r\n\r\n<p>Bu Gizlilik Beyanı &ccedil;evrimi&ccedil;i bilgi uygulamalarımızdaki değişiklikleri yansıtması i&ccedil;in periyodik olarak ve &ouml;nceden size haber verilmeden g&uuml;ncellenebilir. Gizlilik Beyanımızdaki &ouml;nemli değişiklikleri size bildirmek i&ccedil;in bu internet sitesine bir bildirim yazacak ve en son ne zaman g&uuml;ncellendiğini belirteceğiz.</p>\r\n\r\n<p>Bizimle İrtibat Kurma</p>\r\n\r\n<p>Eğer bu Gizlilik Beyanı hakkında sorularınız veya yorumlarınız varsa veya siz ya da tercihleriniz hakkındaki bilgileri g&uuml;ncellememizi istiyorsanız l&uuml;tfen aşağıda listelenen adreslerden ya da telefon numaralarından biri vasıtasıyla bizimle irtibat kurun.</p>\r\n', '', 3, '1', 'gizlilik-kosullarimiz');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mesaj`
--

CREATE TABLE `mesaj` (
  `mesaj_id` int(11) NOT NULL,
  `mesaj_zaman` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mesaj_detay` text COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_gel` int(11) NOT NULL,
  `kullanici_gon` int(11) NOT NULL,
  `mesaj_okunma` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `mesaj`
--

INSERT INTO `mesaj` (`mesaj_id`, `mesaj_zaman`, `mesaj_detay`, `kullanici_gel`, `kullanici_gon`, `mesaj_okunma`) VALUES
(25, '2017-12-09 10:33:12', '<p>Naciden Emraha 1</p>', 166, 168, '1'),
(28, '2017-12-09 10:33:34', '<p>Ahmetten Emraha 2</p>', 166, 169, '1'),
(29, '2017-12-09 10:41:09', '<p>Naber Emrah</p>', 166, 169, '1'),
(30, '2017-12-09 10:42:44', '<p>Son bildirim mesajı</p>', 166, 169, '1'),
(31, '2017-12-09 10:50:40', '<p>son bildirim mesajı 00</p>', 166, 169, '1'),
(33, '2017-12-09 11:00:52', '<p>test mesaj</p>', 166, 169, '1'),
(37, '2017-12-09 11:01:07', '<p>asdasdasd</p>', 166, 169, '1'),
(38, '2017-12-09 11:14:40', '<p>asdasdasd</p>', 166, 169, '1'),
(39, '2017-12-09 11:15:56', '<p>bildirim son kontrol</p>', 166, 169, '1'),
(41, '2017-12-09 11:16:02', '<p>bildirim son kontrol 2</p>', 166, 169, '1'),
(42, '2017-12-09 11:16:06', '<p>&nbsp;bildirim son kontrol 3</p>', 166, 169, '1'),
(43, '2017-12-09 11:16:09', '<p>bildirim son kontrol 5</p>', 166, 169, '1'),
(44, '2017-12-09 11:16:26', '<p>bildirim kontrol araya gir</p>', 166, 168, '1'),
(45, '2017-12-09 19:37:06', '<p>asdasdasd</p>', 169, 166, '0'),
(46, '2017-12-09 19:37:25', '<p>rtytry</p>', 169, 166, '0'),
(47, '2018-12-08 11:40:16', '<p>sadasda</p>', 166, 172, '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sepet`
--

CREATE TABLE `sepet` (
  `sepet_id` int(11) NOT NULL,
  `kullanici_id` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `urun_adet` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `sepet`
--

INSERT INTO `sepet` (`sepet_id`, `kullanici_id`, `urun_id`, `urun_adet`) VALUES
(2, 0, 52, 1),
(3, 0, 52, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siparis`
--

CREATE TABLE `siparis` (
  `siparis_id` int(11) NOT NULL,
  `siparis_zaman` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `siparis_no` int(11) DEFAULT NULL,
  `kullanici_id` int(11) NOT NULL,
  `siparis_toplam` float(9,2) NOT NULL,
  `siparis_tip` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `siparis_banka` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_idsatici` int(11) NOT NULL,
  `siparis_odeme` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `siparis`
--

INSERT INTO `siparis` (`siparis_id`, `siparis_zaman`, `siparis_no`, `kullanici_id`, `siparis_toplam`, `siparis_tip`, `siparis_banka`, `kullanici_idsatici`, `siparis_odeme`) VALUES
(750056, '2018-12-28 21:19:53', NULL, 175, 300.00, 'Banka Havalesi', 'Garanti Bankası', 0, '0'),
(750057, '2019-01-07 16:02:00', NULL, 175, 70.00, 'Banka Havalesi', 'Ziraat Bankası', 0, '0'),
(750058, '2019-01-07 19:42:16', NULL, 175, 20.00, 'Banka Havalesi', 'Garanti Bankası', 0, '0'),
(750059, '2019-01-07 19:43:18', NULL, 175, 950.00, 'Banka Havalesi', 'Finansbank', 0, '0');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siparis_detay`
--

CREATE TABLE `siparis_detay` (
  `siparisdetay_id` int(11) NOT NULL,
  `siparis_id` int(11) NOT NULL,
  `kullanici_id` int(11) NOT NULL,
  `kullanici_idsatici` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `urun_fiyat` float(9,2) NOT NULL,
  `urun_adet` int(3) NOT NULL,
  `siparisdetay_kargozaman` datetime NOT NULL,
  `siparisdetay_kargoad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `siparisdetay_kargono` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `siparisdetay_onay` enum('0','1','2') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0',
  `siparisdetay_yorum` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0',
  `siparisdetay_onayzaman` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `siparis_detay`
--

INSERT INTO `siparis_detay` (`siparisdetay_id`, `siparis_id`, `kullanici_id`, `kullanici_idsatici`, `urun_id`, `urun_fiyat`, `urun_adet`, `siparisdetay_kargozaman`, `siparisdetay_kargoad`, `siparisdetay_kargono`, `siparisdetay_onay`, `siparisdetay_yorum`, `siparisdetay_onayzaman`) VALUES
(2, 750056, 0, 0, 48, 50.00, 1, '0000-00-00 00:00:00', '', '', '0', '0', '0000-00-00 00:00:00'),
(3, 750056, 0, 0, 47, 250.00, 1, '0000-00-00 00:00:00', '', '', '0', '0', '0000-00-00 00:00:00'),
(4, 750057, 0, 0, 52, 35.00, 1, '0000-00-00 00:00:00', '', '', '0', '0', '0000-00-00 00:00:00'),
(5, 750057, 0, 0, 52, 35.00, 1, '0000-00-00 00:00:00', '', '', '0', '0', '0000-00-00 00:00:00'),
(6, 750058, 0, 0, 51, 20.00, 1, '0000-00-00 00:00:00', '', '', '0', '0', '0000-00-00 00:00:00'),
(7, 750059, 0, 0, 50, 50.00, 18, '0000-00-00 00:00:00', '', '', '0', '0', '0000-00-00 00:00:00'),
(8, 750059, 0, 0, 50, 50.00, 1, '0000-00-00 00:00:00', '', '', '0', '0', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `slider`
--

CREATE TABLE `slider` (
  `slider_id` int(11) NOT NULL,
  `slider_ad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `slider_resimyol` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `slider_sira` int(2) NOT NULL,
  `slider_link` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `slider_durum` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `slider`
--

INSERT INTO `slider` (`slider_id`, `slider_ad`, `slider_resimyol`, `slider_sira`, `slider_link`, `slider_durum`) VALUES
(11, 'Slider 1', 'dimg/slider/25150211322173420807s1.jpg', 1, '', '1'),
(12, 'Slider 2', 'dimg/slider/22653264153185121386s2.jpg', 2, '', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urun`
--

CREATE TABLE `urun` (
  `urun_id` int(11) NOT NULL,
  `kullanici_id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `urun_zaman` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `urunfoto_resimyol` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `urun_ad` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `urun_seourl` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `urun_detay` text COLLATE utf8_turkish_ci NOT NULL,
  `urun_fiyat` float(9,2) NOT NULL,
  `urun_satis` int(4) NOT NULL DEFAULT '0',
  `urun_video` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `urun_keyword` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `urun_stok` int(11) NOT NULL,
  `urun_durum` enum('0','1') COLLATE utf8_turkish_ci NOT NULL,
  `urun_onecikar` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `urun`
--

INSERT INTO `urun` (`urun_id`, `kullanici_id`, `kategori_id`, `urun_zaman`, `urunfoto_resimyol`, `urun_ad`, `urun_seourl`, `urun_detay`, `urun_fiyat`, `urun_satis`, `urun_video`, `urun_keyword`, `urun_stok`, `urun_durum`, `urun_onecikar`) VALUES
(49, 0, 14, '2019-01-03 23:33:34', '', 'Kılıf 1', 'kilif-1', '', 50.00, 0, '', 'Kılıf', 20, '1', '0'),
(50, 0, 14, '2019-01-03 23:34:08', '', 'Kılıf 2', 'kilif-2', '', 50.00, 0, '', 'Kılıf', 25, '1', '0'),
(51, 0, 14, '2019-01-03 23:34:55', '', 'Kılıf 3', 'kilif-3', '', 20.00, 0, '', 'Kılıf', 20, '1', '0'),
(52, 0, 14, '2019-01-03 23:35:18', '', 'Kılıf 4', 'kilif-4', '', 35.00, 0, '', 'Kılıf', 15, '1', '1'),
(53, 0, 16, '2019-01-08 07:13:05', '', 'Disney', 'disney', '<p>Frozen</p>\r\n', 250.00, 0, '', 'DİsneyKids', 20, '1', '1'),
(54, 0, 16, '2019-01-08 07:34:48', '', 'Disney', 'disney', '<p>Frozen 2</p>\r\n', 170.00, 0, '', 'Frozen', 10, '1', '0'),
(55, 0, 16, '2019-01-08 07:36:20', '', 'Inesta', 'inesta', '', 180.00, 0, '', 'Inesta', 15, '1', '0'),
(56, 0, 16, '2019-01-08 07:38:15', '', 'Solaris', 'solaris', '<p>Solaris</p>\r\n', 130.00, 0, '', 'Solaris', 5, '1', '0'),
(57, 0, 19, '2019-01-08 07:48:20', '', 'Prada', 'prada', '', 1500.00, 0, '', 'Prada', 5, '1', '0'),
(58, 0, 19, '2019-01-08 07:49:52', '', 'Vogue', 'vogue', '', 3000.00, 0, '', 'Vogue', 25, '1', '0'),
(59, 0, 19, '2019-01-08 07:50:54', '', 'Rayban', 'rayban', '', 450.00, 0, '', 'Rayban', 20, '1', '0'),
(60, 0, 20, '2019-01-08 07:52:11', '', 'Rayban', 'rayban', '', 450.00, 0, '', 'Rayban', 10, '1', '0'),
(61, 0, 20, '2019-01-08 07:53:25', '', 'Rayban2', 'rayban2', '', 450.00, 0, '', 'Rayban', 10, '1', '0');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urunfoto`
--

CREATE TABLE `urunfoto` (
  `urunfoto_id` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `urunfoto_resimyol` varchar(255) CHARACTER SET utf8 NOT NULL,
  `urunfoto_sira` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `urunfoto`
--

INSERT INTO `urunfoto` (`urunfoto_id`, `urun_id`, `urunfoto_resimyol`, `urunfoto_sira`) VALUES
(3, 48, 'dimg/urun/23234232252033925157product3.png', 1),
(4, 48, 'dimg/urun/24546227982427527969product2.png', 2),
(5, 48, 'dimg/urun/23624207162131130157product1.png', 3),
(6, 48, 'dimg/urun/25736311032587923783product4.png', 4),
(7, 47, 'dimg/urun/24431204073072722147product6.png', 0),
(8, 47, 'dimg/urun/24075291982014130307product5.png', 0),
(9, 47, 'dimg/urun/27369279322722322907product7.png', 0),
(10, 47, 'dimg/urun/30095299633143826541product8.png', 0),
(11, 49, 'dimg/urun/29883312462953727657iframe1.png', 0),
(12, 50, 'dimg/urun/26613269403074030580iframe2.png', 0),
(13, 51, 'dimg/urun/22975253452110926966iframe3.png', 0),
(14, 52, 'dimg/urun/20159247062141525840iframe4.png', 0),
(15, 53, 'dimg/urun/26579200672986531784disney.png', 0),
(16, 53, 'dimg/urun/22037250172906221303disney1.1.png', 0),
(17, 54, 'dimg/urun/29693272382039421597frozen.png', 0),
(18, 54, 'dimg/urun/25721210292805630896frozen2.png', 0),
(19, 55, 'dimg/urun/29591217383019826592inesta 2.png', 0),
(20, 56, 'dimg/urun/23124310922530326778solaris.png', 0),
(21, 57, 'dimg/urun/26427221492028224366prada1.png', 0),
(22, 57, 'dimg/urun/31741318542510820386prada2.png', 0),
(23, 58, 'dimg/urun/27784222162982723287vogue 2.png', 0),
(24, 58, 'dimg/urun/28035230183137831037vogue1.png', 0),
(25, 59, 'dimg/urun/27061209452002328078rayban 2.png', 0),
(26, 60, 'dimg/urun/21622260782184326762product1.png', 0),
(27, 61, 'dimg/urun/29673287592358121699product2.png', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yorumlar`
--

CREATE TABLE `yorumlar` (
  `yorum_id` int(11) NOT NULL,
  `kullanici_id` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `yorum_detay` text COLLATE utf8_turkish_ci NOT NULL,
  `yorum_puan` int(11) NOT NULL,
  `yorum_zaman` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `yorum_onay` enum('0','1') COLLATE utf8_turkish_ci DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `yorumlar`
--

INSERT INTO `yorumlar` (`yorum_id`, `kullanici_id`, `urun_id`, `yorum_detay`, `yorum_puan`, `yorum_zaman`, `yorum_onay`) VALUES
(18, 168, 46, 'Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir.\r\n', 5, '2017-12-07 18:20:28', '1'),
(19, 175, 47, 'Herşey güzel kaptanla birlikte php kodluyoruz yeni şeyler öğreniyoruz.', 4, '2017-12-07 18:38:50', '1'),
(20, 168, 46, 'süper', 5, '2017-12-09 11:52:32', '1'),
(21, 168, 44, 'süper', 5, '2017-12-09 11:52:39', '1'),
(23, 175, 47, 'süper', 5, '2017-12-09 11:52:54', '1'),
(24, 175, 47, 'deneme', 0, '2018-12-22 20:37:50', '1'),
(25, 175, 47, 'comment', 0, '2018-12-22 20:45:40', '1'),
(26, 175, 48, 'yorum', 0, '2018-12-23 10:32:50', '1');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `ayar`
--
ALTER TABLE `ayar`
  ADD PRIMARY KEY (`ayar_id`);

--
-- Tablo için indeksler `banka`
--
ALTER TABLE `banka`
  ADD PRIMARY KEY (`banka_id`);

--
-- Tablo için indeksler `durum`
--
ALTER TABLE `durum`
  ADD PRIMARY KEY (`durum_id`);

--
-- Tablo için indeksler `hakkimizda`
--
ALTER TABLE `hakkimizda`
  ADD PRIMARY KEY (`hakkimizda_id`);

--
-- Tablo için indeksler `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Tablo için indeksler `kullanici`
--
ALTER TABLE `kullanici`
  ADD PRIMARY KEY (`kullanici_id`);

--
-- Tablo için indeksler `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Tablo için indeksler `mesaj`
--
ALTER TABLE `mesaj`
  ADD PRIMARY KEY (`mesaj_id`);

--
-- Tablo için indeksler `sepet`
--
ALTER TABLE `sepet`
  ADD PRIMARY KEY (`sepet_id`);

--
-- Tablo için indeksler `siparis`
--
ALTER TABLE `siparis`
  ADD PRIMARY KEY (`siparis_id`);

--
-- Tablo için indeksler `siparis_detay`
--
ALTER TABLE `siparis_detay`
  ADD PRIMARY KEY (`siparisdetay_id`);

--
-- Tablo için indeksler `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Tablo için indeksler `urun`
--
ALTER TABLE `urun`
  ADD PRIMARY KEY (`urun_id`);

--
-- Tablo için indeksler `urunfoto`
--
ALTER TABLE `urunfoto`
  ADD PRIMARY KEY (`urunfoto_id`);

--
-- Tablo için indeksler `yorumlar`
--
ALTER TABLE `yorumlar`
  ADD PRIMARY KEY (`yorum_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `banka`
--
ALTER TABLE `banka`
  MODIFY `banka_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `durum`
--
ALTER TABLE `durum`
  MODIFY `durum_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Tablo için AUTO_INCREMENT değeri `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Tablo için AUTO_INCREMENT değeri `kullanici`
--
ALTER TABLE `kullanici`
  MODIFY `kullanici_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- Tablo için AUTO_INCREMENT değeri `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Tablo için AUTO_INCREMENT değeri `mesaj`
--
ALTER TABLE `mesaj`
  MODIFY `mesaj_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- Tablo için AUTO_INCREMENT değeri `sepet`
--
ALTER TABLE `sepet`
  MODIFY `sepet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `siparis`
--
ALTER TABLE `siparis`
  MODIFY `siparis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=750060;

--
-- Tablo için AUTO_INCREMENT değeri `siparis_detay`
--
ALTER TABLE `siparis_detay`
  MODIFY `siparisdetay_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `urun`
--
ALTER TABLE `urun`
  MODIFY `urun_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- Tablo için AUTO_INCREMENT değeri `urunfoto`
--
ALTER TABLE `urunfoto`
  MODIFY `urunfoto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Tablo için AUTO_INCREMENT değeri `yorumlar`
--
ALTER TABLE `yorumlar`
  MODIFY `yorum_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
