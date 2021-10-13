-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 15 Haz 2021, 10:53:56
-- Sunucu sürümü: 10.4.19-MariaDB
-- PHP Sürümü: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `sinavsistemi`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanicilar`
--

CREATE TABLE `kullanicilar` (
  `kid` int(11) NOT NULL,
  `kuladi` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `sifre` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sorular`
--

CREATE TABLE `sorular` (
  `id` int(11) NOT NULL,
  `soru` varchar(200) COLLATE utf8mb4_turkish_ci NOT NULL,
  `secenekler` varchar(300) COLLATE utf8mb4_turkish_ci NOT NULL,
  `cevap` varchar(60) COLLATE utf8mb4_turkish_ci NOT NULL,
  `dersid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `sorular`
--

INSERT INTO `sorular` (`id`, `soru`, `secenekler`, `cevap`, `dersid`) VALUES
(14, 'Basılacak renkli bir görüntü kaydedilirken aşağıdaki formatlardan hangisi tercih edilmemelidir?', 'A) TİFF	B) GİF	C) EPS	D) PSD', 'A', 1),
(15, '\r\nBirim (inç) başına düşen nokta sayısına ne ad verilir?', 'A) Tram	 	B) Çözünürlük C) Görüntü kalitesi	 	D) DEscreen', 'B', 1),
(16, 'Aşağıdakilerden hangisi tarayıcıda taranamaz?', 'A) İki boyutlu görüntü	 	B) Kitap kapağı C) Gazete	 	D) Üç boyutlu görüntü', 'D', 1),
(17, ' 10x15cm2 ebadındaki görüntü 20x30cm2 ebadında kuşe kâğıda 80’ lik tramla basılacaktır. Buna göre tarama çözünürlüğü kaç olmalıdır?', 'A) 1500 PPİ	 	B) 1400 PPİ C) 1300 PPİ	 	D) 1200 PPİ', 'C', 1),
(18, '\r\nAşağıdakilerden hangisi resmi keskinleştirmek için kullanılan araçtır?', 'A) Sharpen aracı	 	B) Marquee aracı\r\nC) Brush aracı	 	D) Patch aracı', 'B', 1),
(19, '1.HTML Nedir?', 'a) Sayfa içindeki metinlerin tarayıcıda nasıl görüneceğini ve işlevsel olacağını düzenleyen işaret dilidir.\r\nb) Diğer sayfaları bağlayan linkler\r\nc) Nesneyi bağlayan linkler\r\nd) Programlama dili', 'A', 2),
(20, '2.Html etiketleri hangi karakterler arasına yazılır?', ' a) # #  b) < >     c) { }      d) “ “', 'B', 2),
(21, '3.Aşağıdakilerden hangisi bir web sitesinin varsayılan anasayfa dosyasının adıdır?', 'a) anasayfa.htm      b) anasayfa.html      c) index.html      d) giris.htm', 'C', 2),
(22, '4.Bir web sayfası hangi HTML etiketi ile başlar?\r\n', 'a) <body>      b) <html>      c) <head>      d) <title>', 'B', 2),
(23, '5.HTML dokümanının başlık çubuğunda yer alacak sayfa başlık yazısı hangi HTML etiketleri arasına yazılır?', 'a) <body>      b) <html>      c) <head>      d) <title>', 'A', 2),
(24, 'Bir yazılım isterleri belirtimi belgesi için de aşağıdakilerden hangisi yer almaz?', 'A)Gerekli sistem durumları ve kipleri \r\nB)Verilen tasarım kısıtlamalarının gerçekçi olması \r\nC)İçsel arayüz isterleri \r\nD)Bilgisayar ortamı isterleri \r\nE)Herbir isterin nasıl sınanacağını ve geçerleme kıstasları ', 'B', 3),
(25, 'Aşağıdakilerden hangisi prototipleme aşamalarından biri değildir? ', 'A)Çabuk tasarım \r\nB)Prototip geliştirme \r\nC)Müşterinin değerlendirmesi \r\nD)Referans ürün \r\nE)Risk çözümleme ', 'E', 3),
(26, 'Aşağıdakilerden hangisi sistemin büyüklüğüne göre olan kullanım kılavuzlarından değildir?', 'A)Kullanım Kılavuzları \r\nB)Giriş/Çıkış Kılavuzları \r\nC)Yazılım Kurulum Kılavuzu \r\nD)Bilgisayar İşletme Kılavuzu \r\nE)Yönetim Kılavuzu ', 'E', 3),
(27, 'Aşağıdakilerden hangisi art arda tekrarlanan Sprial Model\'in aşamalarından biridir? ', 'A)Amaçların belirlenmediği,olmayacak seçeneklerin değerlendirildiği \r\nB)Ürünün geliştirildiği mühendislik aşaması \r\nC)Geliştirilen ürünün Müşteri olmadan değerlendirilmesi \r\nD)Çözümleme ve tasarım ne derecede iyi yapılıp yapılmadığının tespiti \r\nE)Kodlama için en basit araçlar metin düzenleyiciler ', 'B', 3),
(28, 'Aşağıdakilerden hangisi yazılım yeterlilik testi kurallarından değildir? ', 'A)Testlerin mutlaka tam olarak kabul edilmesi gereklidir. \r\nB)Test sonunda Test Sonuç Raporu hazırlanır. \r\nC)Koşullu bir test sonucu yazılım ürünün kabulüne engel değildir. \r\nD)Testler mutlaka gerçek sistem ya da onun benzeri olan test sistemi üzerinde yapılmalıdır. \r\nE)Testi yapacak kişi ya da kişi', 'C', 3);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `kullanicilar`
--
ALTER TABLE `kullanicilar`
  ADD PRIMARY KEY (`kid`);

--
-- Tablo için indeksler `sorular`
--
ALTER TABLE `sorular`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `kullanicilar`
--
ALTER TABLE `kullanicilar`
  MODIFY `kid` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `sorular`
--
ALTER TABLE `sorular`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
