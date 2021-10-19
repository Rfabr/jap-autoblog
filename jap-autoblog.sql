-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 19 oct. 2021 à 19:36
-- Version du serveur : 10.4.20-MariaDB
-- Version de PHP : 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `jap-autoblog`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contents` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `title`, `description`, `contents`, `picture`, `brand`) VALUES
(1, 'Skyline R34 GT-R', 'The Skyline line has existed at Nissan since 1952.', 'The GT-R R34 is the first Nissan Skyline to appear on L’Automobile Sportive. There were several reasons for this absence, the first being that we never found a model to try. Contacted by an AS reader who owns this rare bird, we naturally responded favorably to his kind proposal! A few months later, the time to gather the information on the subject, we are pleased to finally be able to present the Nissan Skyline GT-R R34 to you in detail ...', 'https://ag-spots-2005.o.auroraobjects.eu/2005/11/07/nissan-skyline-r34-gt-r-v-spec-ii-3d4ed1bc_3.jpg', 'NISSAN'),
(2, 'Supra MKIV', 'Popularized by the Fast and Furious movie and video games, the Toyota Supra MKIV is not the indomitable monster some imagine.', 'Shown at a much higher price point than its predecessor, the fourth generation Supra did not find success in Europe. Born in 1993, withdrawn from the European market in 1996, it has nevertheless become one of the most iconic Japanese GTs a few years later for a whole young generation. If many of our readers have already been able to get behind the wheel of the Supra Mk4 thanks to their game console, in \"real life\" this remains a rare opportunity as the beast is so discreet in our regions. So this Supra, furious or just quick?', 'https://www.dhresource.com/0x0/f2/albu/g8/M00/DB/C4/rBVaV17p1A6AKbU9AAPc7F6Nr00460.jpg/for-supra-carbon-fibre-rear-exhaust-shroud.jpg', 'TOYOTA'),
(3, 'RX-7 FD', 'Very popular with drifters, the Mazda RX-7 FD biturbo nevertheless has qualities much more interesting than being able to smoke tires.', 'The early 90s were a real golden age for Japanese GTs. In just a decade, its finest jewels will appear, Honda NSX, Toyota Supra Mk4, Nissan 300 ZX and Mitsubishi 3000 GT. Also chasing European coupes on land, Mazda continued to move upmarket with the RX-7 FD, which appeared in 1992. This third and latest generation of Mazda RX-7 was to establish itself as a benchmark and still appears today. among the most popular models among Japanese sports enthusiasts. Japan will have 6 major variants of FD3S and many special versions, but only the first were imported into Europe until 1996. From 1999, the RX-7 will remain confined to its local market. Relatively little distributed in France, because of a high price, especially compared to the BMW M3 e36, it was difficult for us to find a copy in the original configuration. The opportunity to check out her drifting skills ... on the snow!', 'https://live.staticflickr.com/1828/29438301348_b073c04a6f_c.jpg', 'MAZDA'),
(4, 'Impreza WRX STI', 'The Subaru Impreza has to face a Mitsubishi Lancer Evo VIII now officially imported into France.', 'Appeared in 2001, the second generation of Subaru Impreza (type GD / GG) had to be more livable, safer and more rigid than the old one. The Impreza GT Turbo therefore leaves the catalog, replaced by the Impreza WRX. The latter having further gained in comfort and versatility, many enthusiasts do not find the brutality inherited from the WRC characterizing the Japanese family sports car. But Subaru has already planned its move and very quickly appears the WRX STi, a new high-performance version of the Impreza. From 2003, a first restyling was carried out on the Subaru sedan which lost its round headlights, very variously appreciated by customers, for more classic monobloc almond optics. We also remember that this version was the one used by the gendarmerie. In 2004, it is the turn of the limited series Petter Solberg to commemorate the title of world champion driver in 2003. Finally, in 2005, the Impreza is again slightly revised, which leads us to the version which is for you. presented here thanks to the help of a member of our forum: STI 8.5. You don\'t understand anything anymore? It\'s normal. Explanations ...', 'https://bringatrailer.com/wp-content/uploads/2017/08/P1830058.jpg?fit=940%2C705', 'SUBARU'),
(5, 'Lancer Evo IX', '9th generation of this sedan for dad in a hurry and the recipe remains the same: an exuberant look, power and four-wheel drive.', 'The story began with the Lancer EX 2000 Turbo in 1980, but it was really in 1992 in Japan that the legend Lancer Evolution was born. No less than seven generations will follow before being able to take advantage of the official distribution of the Lancer in France. Before that, a few copies of Lancer Evolution VI and VII were nevertheless found on the territory, imported by die-hard fans of rallies or video games. Because even without official import, the performances in Rally of the \"Lan Evo\" did not remain without echo. The late arrival on our territory will push Mitsubishi to redouble its efforts to catch up with its rival in the WRC stages, the Subaru Impreza.', 'https://bourcierautosport.com/wp-content/uploads/2019/09/IMG_8751.jpg', 'MITSUBISHI'),
(6, '350Z', 'The Nissan 300ZX was a large, tech-packed GT that needed a twin-turbo V6 to propel its hefty weight.', 'In 1999, Nissan presented a concept car called 240Z Concept at the New York Motor Show. This is no more, no less, the starting point of the renaissance of sports coupes at Nissan. But the project will not go further as it stands, its design considered too neo-retro does not convince the leaders of the brand. The concept will however give birth to a new internal project under the code name Z33, thus declaring its direct affiliation with the Nissan 300 ZX Z32 and Z31. The foundations of the 350Z were laid and the new model began its career in the USA on August 20, 2002.', 'https://img4.autodeclics.com/photos/1/18816/nissan-350z-roadster.jpg', 'NISSAN'),
(7, 'NSX', 'The Honda NSX, the \"Japanese Ferrari\" as it will often be called, had a surprisingly long career for a GT as it spanned the 90s and even the beginning of the following decade.', 'It was during the 1980s that Honda asserted a reputation as an engine manufacturer (already initiated but with small engines) of high technology in Formula 1, first at Lotus with in particular a certain Ayrton Senna as a driver, then at Williams with Nelson Piquet and Nigel Mansell and, finally, at Mc Laren, where Prost and Senna (still him) clashed. After several successive F1 world champion titles, Honda gave in to the need for prestige and to the madness of supercars and other GTs that reigned at the end of the 1980s. Each manufacturer who wishes to improve its brand image must have a Performing and beautiful GT. But Honda, unlike some Italians, does not want to stop there and wants to strike a big blow: to achieve an ultra-efficient GT, reliable, usable on a daily basis by ordinary people, and whose technology is resolutely modern.', 'https://www.echangeauto.fr/uploads/zoom/zoom_1061749.2cbfefce1ffb32b21813aa22575e61570205e20f.jpg', 'HONDA'),
(8, '240Z ', 'When Nissan, through its Datsun brand reserved for export, decides to invade the sports car market in Uncle Sam\'s country, it is by taking inspiration from the best in production. Western culture but endowing it with a real Japanese culture.', 'It was under the leadership of Yutaka Katayama, then president of Nissan US in the 1960s, that the Datsun brand would develop and market one of the most popular sports cars of all time. After an in-depth market study, it became evident to the managers of the Japanese firm that what they considered at the time to be a simple niche with estimated volumes of 24,000 units per year was not being exploited. Understand that the American market did not yet include a sports coupe at friendly prices, English roadsters are now on the decline. For Nissan, the blow was also double with the ambition to give a new impetus to its brand image then considered too cheap by its leaders. Our Japanese friends therefore set to work to give birth to a sports coupe which will set a milestone on the American market and which will meet with enormous success for an imported sports car. Introduced on October 22, 1969 in the United States, the Datsun 240 Z is sold at the ultra-competitive price of 3,526 dollars! Demand exploded to such an extent that finally even a year later, second-hand models were selling for more than new! The Nissan production plant in Hiratsuka has to increase its production rates to run up to 11,000 cars per month compared to the 2,000 initially planned. The Datsun-Nissan 240Z will be the starting point of a \"success story\" since 10 years after its launch, Nissan will have produced 542,208 vehicles. Even today, Nissan, with its 350 Z coupe and roadster, perpetuates this tradition and spirit of the \"Z\" with brilliance ...', 'https://www.collectioncar.com/ad_photos/1029/29029/1973-Datsun-240Z-102911343936194_800x600.JPG', 'NISSAN');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
