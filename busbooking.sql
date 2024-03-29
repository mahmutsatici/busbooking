-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 29 Mar 2024, 21:47:58
-- Sunucu sürümü: 10.4.11-MariaDB
-- PHP Sürümü: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `busbooking`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `biletler`
--

CREATE TABLE `biletler` (
  `BiletID` int(11) NOT NULL,
  `KullaniciID` int(11) DEFAULT NULL,
  `OtobusID` int(11) DEFAULT NULL,
  `KoltukID` int(11) DEFAULT NULL,
  `SeferID` int(11) DEFAULT NULL,
  `Varis` varchar(100) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `Kalkis` varchar(100) COLLATE utf8mb4_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bms_location`
--

CREATE TABLE `bms_location` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `bms_location`
--

INSERT INTO `bms_location` (`id`, `name`, `status`, `created_at`) VALUES
(3, 'selam 5', 1, '2024-03-27 17:18:14'),
(4, 'kocaeli', 0, '2024-03-27 19:11:56'),
(5, 'a', 1, '2024-03-29 09:09:42'),
(6, 'b', 1, '2024-03-29 09:11:15');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bus_admin`
--

CREATE TABLE `bus_admin` (
  `id` int(11) NOT NULL,
  `email` varchar(250) COLLATE utf8mb4_turkish_ci NOT NULL,
  `password` varchar(250) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `bus_admin`
--

INSERT INTO `bus_admin` (`id`, `email`, `password`, `status`) VALUES
(1, 'admin@gmail.com', '123456', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `koltuklar`
--

CREATE TABLE `koltuklar` (
  `KoltukID` int(11) NOT NULL,
  `KoltukSırası` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanicilar`
--

CREATE TABLE `kullanicilar` (
  `KullaniciID` int(11) NOT NULL,
  `TC` varchar(15) COLLATE utf8mb4_turkish_ci NOT NULL,
  `Ad` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `Soyad` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `DogumTarih` varchar(20) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `YolcuTarife` varchar(50) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `Cinsiyet` varchar(10) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `TelNo` varchar(15) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `Email` varchar(255) COLLATE utf8mb4_turkish_ci NOT NULL,
  `Parola` varchar(255) COLLATE utf8mb4_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `kullanicilar`
--

INSERT INTO `kullanicilar` (`KullaniciID`, `TC`, `Ad`, `Soyad`, `DogumTarih`, `YolcuTarife`, `Cinsiyet`, `TelNo`, `Email`, `Parola`) VALUES
(166, '12345678901', 'Ahmet', 'Yılmaz', '1990-05-15', 'Öğrenci', 'Erkek', '5551234567', 'ahmet@example.com', 'ahmet123'),
(167, '23456789012', 'Ayşe', 'Demir', '1985-09-20', 'Tam', 'Kadın', '5552345678', 'ayse@example.com', 'ayse456'),
(168, '34567890123', 'Mehmet', 'Kaya', '1993-02-10', 'Tam', 'Erkek', '5553456789', 'mehmet@example.com', 'mehmet789'),
(169, '45678901234', 'Fatma', 'Şahin', '1988-11-25', 'Öğrenci', 'Kadın', '5554567890', 'fatma@example.com', 'fatma456'),
(170, '56789012345', 'Mustafa', 'Yıldırım', '1995-07-03', 'Tam', 'Erkek', '5555678901', 'mustafa@example.com', 'mustafa123'),
(171, '67890123456', 'Zeynep', 'Koç', '1991-04-18', 'Emekli', 'Kadın', '5556789012', 'zeynep@example.com', 'zeynep456'),
(172, '78901234567', 'Ali', 'Can', '1983-08-12', 'Askeri', 'Erkek', '5557890123', 'ali@example.com', 'ali789'),
(173, '89012345678', 'Ayhan', 'Kurt', '1997-01-30', 'Memur', 'Erkek', '5558901234', 'ayhan@example.com', 'ayhan123'),
(435, '78901234564', 'Ali', 'Can', '1983-08-12', 'Askeri', 'Erkek', '5557890123', 'alii@example.com', 'ali789'),
(436, '89012345675', 'Ayhan', 'Kurt', '1997-01-30', 'Memur', 'Erkek', '5558901234', 'ayhann@example.com', 'ayhan123'),
(437, '90123456789', 'Emine', 'Aydın', '1986-06-22', 'Diğer', 'Kadın', '5559012345', 'emine@example.com', 'emine456'),
(438, '01234567897', 'Serkan', 'Çelik', '1992-03-07', 'Öğrenci', 'Erkek', '5550123456', 'serkan@example.com', 'serkan789'),
(439, '12345678913', 'Gülay', 'Şahin', '1984-10-19', 'Tam', 'Kadın', '5551234567', 'gulay@example.com', 'gulay123'),
(440, '23456789101', 'Yusuf', 'Aksoy', '1990-07-14', 'Öğrenci', 'Erkek', '5552345678', 'yusuf@example.com', 'yusuf456'),
(441, '34567891012', 'Hatice', 'Yılmaz', '1989-04-28', 'Tam', 'Kadın', '5553456789', 'hatice@example.com', 'hatice789'),
(442, '45678910123', 'Murat', 'Çetin', '1996-11-03', 'Emekli', 'Erkek', '5554567890', 'murat@example.com', 'murat123'),
(443, '56789101234', 'Seda', 'Erbil', '1987-02-09', 'Tam', 'Kadın', '5555678901', 'seda@example.com', 'seda456'),
(444, '67891012345', 'Hüseyin', 'Turan', '1993-05-27', 'Öğrenci', 'Erkek', '5556789012', 'huseyin@example.com', 'huseyin789'),
(445, '78910123456', 'Gül', 'Aslan', '1985-09-16', 'Tam', 'Kadın', '5557890123', 'gul@example.com', 'gul789'),
(446, '89101234567', 'Kadir', 'Demir', '1998-08-21', 'Memur', 'Erkek', '5558901234', 'kadir@example.com', 'kadir123'),
(447, '91012345678', 'Nazlı', 'Çelik', '1988-03-12', 'Diğer', 'Kadın', '5559012345', 'nazli@example.com', 'nazli456'),
(448, '01234567890', 'Tolga', 'Şahin', '1995-06-05', 'Öğrenci', 'Erkek', '5550123456', 'tolga@example.com', 'tolga789'),
(449, '12345678951', 'Aysun', 'Kaya', '1983-11-08', 'Tam', 'Kadın', '5551234567', 'aysun@example.com', 'aysun123'),
(450, '23456789062', 'Şevval', 'Öztürk', '1991-08-23', 'Emekli', 'Kadın', '5552345678', 'sevval@example.com', 'sevval456'),
(451, '34567890723', 'Ömer', 'Koç', '1989-04-17', 'Tam', 'Erkek', '5553456789', 'omer@example.com', 'omer789'),
(452, '45678961234', 'Sibel', 'Tuncer', '1997-10-30', 'Emekli', 'Kadın', '5554567890', 'sibel@example.com', 'sibel123'),
(453, '56789012645', 'Cem', 'Şen', '1986-01-25', 'Tam', 'Erkek', '5555678901', 'cem@example.com', 'cem456'),
(454, '67890127456', 'Sevgi', 'Kurt', '1994-06-19', 'Öğrenci', 'Kadın', '5556789012', 'sevgi@example.com', 'sevgi789');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `otobus`
--

CREATE TABLE `otobus` (
  `OtobusID` int(11) NOT NULL,
  `KoltukSayisi` int(11) DEFAULT NULL,
  `Plaka` varchar(10) COLLATE utf8mb4_turkish_ci NOT NULL,
  `Guzergah` varchar(255) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `KoltukTipi` varchar(50) COLLATE utf8mb4_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `otobus`
--

INSERT INTO `otobus` (`OtobusID`, `KoltukSayisi`, `Plaka`, `Guzergah`, `KoltukTipi`) VALUES
(7, 34, '41 stc 41', 'Bursa - Kocaeli', '2+1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pnr`
--

CREATE TABLE `pnr` (
  `PNRID` int(11) NOT NULL,
  `KalkisPlaka` varchar(10) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `SaatDilimi` varchar(10) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `ZamanDilimi` varchar(10) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `PeronNo` int(11) DEFAULT NULL,
  `Plaka` varchar(10) COLLATE utf8mb4_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `seferler`
--

CREATE TABLE `seferler` (
  `SeferID` int(11) NOT NULL,
  `KalkisYeri` varchar(100) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `VarisYeri` varchar(100) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `OtobusID` int(11) DEFAULT NULL,
  `KalkisSaati` int(20) NOT NULL,
  `VarisSaati` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `seferler`
--

INSERT INTO `seferler` (`SeferID`, `KalkisYeri`, `VarisYeri`, `OtobusID`, `KalkisSaati`, `VarisSaati`) VALUES
(2, 'sakarya', 'kocaeli', 7, 0, 0),
(3, 'adsf', 'adsf', 7, 0, 0);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `biletler`
--
ALTER TABLE `biletler`
  ADD PRIMARY KEY (`BiletID`),
  ADD KEY `KullaniciID` (`KullaniciID`),
  ADD KEY `OtobusID` (`OtobusID`),
  ADD KEY `KoltukID` (`KoltukID`),
  ADD KEY `SeferID` (`SeferID`);

--
-- Tablo için indeksler `bms_location`
--
ALTER TABLE `bms_location`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `bus_admin`
--
ALTER TABLE `bus_admin`
  ADD PRIMARY KEY (`id`,`email`);

--
-- Tablo için indeksler `koltuklar`
--
ALTER TABLE `koltuklar`
  ADD PRIMARY KEY (`KoltukID`);

--
-- Tablo için indeksler `kullanicilar`
--
ALTER TABLE `kullanicilar`
  ADD PRIMARY KEY (`KullaniciID`),
  ADD UNIQUE KEY `TC` (`TC`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Tablo için indeksler `otobus`
--
ALTER TABLE `otobus`
  ADD PRIMARY KEY (`OtobusID`),
  ADD UNIQUE KEY `Plaka` (`Plaka`);

--
-- Tablo için indeksler `pnr`
--
ALTER TABLE `pnr`
  ADD PRIMARY KEY (`PNRID`),
  ADD KEY `fk_otobus_plaka` (`Plaka`);

--
-- Tablo için indeksler `seferler`
--
ALTER TABLE `seferler`
  ADD PRIMARY KEY (`SeferID`),
  ADD KEY `OtobusID` (`OtobusID`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `biletler`
--
ALTER TABLE `biletler`
  MODIFY `BiletID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `bms_location`
--
ALTER TABLE `bms_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `bus_admin`
--
ALTER TABLE `bus_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `koltuklar`
--
ALTER TABLE `koltuklar`
  MODIFY `KoltukID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `kullanicilar`
--
ALTER TABLE `kullanicilar`
  MODIFY `KullaniciID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=455;

--
-- Tablo için AUTO_INCREMENT değeri `otobus`
--
ALTER TABLE `otobus`
  MODIFY `OtobusID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `pnr`
--
ALTER TABLE `pnr`
  MODIFY `PNRID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `seferler`
--
ALTER TABLE `seferler`
  MODIFY `SeferID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `biletler`
--
ALTER TABLE `biletler`
  ADD CONSTRAINT `biletler_ibfk_1` FOREIGN KEY (`KullaniciID`) REFERENCES `kullanicilar` (`KullaniciID`),
  ADD CONSTRAINT `biletler_ibfk_2` FOREIGN KEY (`OtobusID`) REFERENCES `otobus` (`OtobusID`),
  ADD CONSTRAINT `biletler_ibfk_3` FOREIGN KEY (`KoltukID`) REFERENCES `koltuklar` (`KoltukID`),
  ADD CONSTRAINT `biletler_ibfk_4` FOREIGN KEY (`SeferID`) REFERENCES `seferler` (`SeferID`);

--
-- Tablo kısıtlamaları `pnr`
--
ALTER TABLE `pnr`
  ADD CONSTRAINT `fk_otobus_plaka` FOREIGN KEY (`Plaka`) REFERENCES `otobus` (`Plaka`);

--
-- Tablo kısıtlamaları `seferler`
--
ALTER TABLE `seferler`
  ADD CONSTRAINT `seferler_ibfk_1` FOREIGN KEY (`OtobusID`) REFERENCES `otobus` (`OtobusID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
