-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Nov 29, 2019 at 06:20 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jastej_sehra`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(100) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(100) NOT NULL,
  `size` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`p_id`, `ip_add`, `qty`, `size`) VALUES
(27, '::1', 2, '2.2 Kgs'),
(32, '::1', 1, '4.5 Kgs'),
(36, '::1', 4, '2.2 Kgs');

-- --------------------------------------------------------

--
-- Table structure for table `main_category`
--

CREATE TABLE `main_category` (
  `cat_id` int(11) NOT NULL,
  `cat_title` varchar(200) NOT NULL,
  `cat_desc` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main_category`
--

INSERT INTO `main_category` (`cat_id`, `cat_title`, `cat_desc`) VALUES
(1, 'Protein', 'Protein provides the body with amino acids, which are the building blocks for muscle growth and are considered an essential supplement by top bodybuilders. You can get your protein in many forms, including powder and bars.'),
(2, 'Performance', 'This will help you get lean, add size, gain athleticism, and be way more of a badass. This will raise your overall level of fitness and make you better at everything else, inside and outside the gym.'),
(3, 'Weight Management', 'If losing weight was as simple as \"Do more, eat less,\" then everyone would have figured it out! News flash: They haven\'t.  Unlock the results you\'ve been craving!'),
(4, 'Vitamins & Health', 'Dietary supplements are an affordable and effective way to ensure you and your loved ones are getting the daily recommended intake of essential vitamins, minerals and other important nutrients necessary for optimal health. \r\n\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `sub_cat_id` int(100) NOT NULL,
  `main_cat_id` int(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_title` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(200) NOT NULL,
  `product_desc` text NOT NULL,
  `product_keywords` text NOT NULL,
  `chra` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `sub_cat_id`, `main_cat_id`, `date`, `product_title`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_desc`, `product_keywords`, `chra`) VALUES
(0, 4, 3, '2019-11-13 02:53:43', 'ALLMAX BCAA + Weight Mngmnt', 'allmaxbcaa1.jpg', 'allmaxbcaa2.jpg', 'allmaxbcaa3.jpg', 18, '<p>AMINOCUTS could be the most delicious drink mix we’ve ever made. Perfect to enjoy anytime, easy-to-mix, full of Aminos and loaded with diet-friendly ingredients like natural-source Caffeine (125mg). Taurine, L-Carnitine and Green Coffee extract – AminoCuts is ideal anytime you need an energy boost! Formulated to provide energy, focus and diet support in conjunction with a sensible diet, exercise and/or physical activity. A:CUTS is the ideal combination of ingredients designed to provide energy for training while maintaining muscle mass, all the while supporting a fat burning diet.</p>', 'bcaa fat', ''),
(1, 1, 1, '2019-11-29 16:59:35', 'Syntha 6 Whey Protein + BCAA', 'syntha2.2.jpg', 'syntha22.2.jpg', 'syntha32.2.jpg', 79, '<p>SYNTHA-6 is an ultra-premium protein powder and BSN\'s best-tasting protein on the market. SYNTHA-6 not only includes essential amino acids and essential fatty acids, but is also an excellent source of fiber and contains 6g of fat per serving, which makes it a nutritious and multi-functional protein supplement.</p>', 'whey', 'For Losing weight'),
(10, 1, 1, '2019-11-29 17:00:34', 'MT Nitrotech Whey Protein', 'nitro1.jpg', 'nitro2.jpg', 'nitro3.jpg', 58, '<p>NITRO-TECH is a scientifically engineered whey protein formula, and is enhanced with the most studied form of creatine for even better gains in muscle and strength. It also features whey protein, which is the most popular type of protein. Whey protein is made up of branched chain amino acids (BCAAs) and essential amino acids (EAAs), and has the highest biological value (the measure of how well your body absorbs and assimilates protein). </p>', 'whey', 'For Gaining weight'),
(11, 1, 1, '2019-11-29 17:00:46', 'Optimum Nutrition Whey Protein', 'ON1.jpg', 'On2.jpg', 'ON3.jpg', 79, '<p>Optimum Nutrition\'s Gold Standard 100% Whey uses pure Whey Protein Isolates as the primary ingredient. Combined with ultra-filtered whey protein concentrate, each serving provides 24 grams of all-whey protein and 5.5 grams of naturally occurring Branched Chain Amino Acids (BCAAs) which are prized by athletes for their muscle building qualities. With more than 20 tempting flavors to choose from, ON’s Gold Standard 100% Whey gives you plenty of ways to keep workout recovery interesting.\r\n</p>', 'whey', 'For Losing weight'),
(12, 1, 1, '2019-11-29 17:00:52', 'Naked Whey Protein', 'Naked1.jpg', 'naked3.jpg', 'Naked2.jpg', 122, '<p>Only One Ingredient: 100% Grass Fed Pure Whey Protein with zero additives. Naked Whey no artificial sweeteners, flavors, or colors and is GMO-Free, Growth Hormone Free, Soy Free and Gluten-Free.</p>', 'whey', 'For Losing weight'),
(14, 3, 3, '2019-11-29 16:48:57', 'Lean Mode Fat Burner', 'Lean1.jpg', 'Lean2.jpg', 'Lean3.jpg', 28, '<p>What is Lean Mode? Lean Mode is a stimulant-free fat burner that can be used by the casual gym-goer to the professional athlete – and everyone in between. If you’re looking to shed unwanted body fat, the profile in Lean Mode can help you achieve your goals.\r\n</p>', 'fat', 'No stimulant'),
(21, 2, 2, '2019-11-07 07:54:35', 'Six Star Explosion Pre Workout', 'SS.jpg', 'SS2.jpg', 'SS3.jpg', 19, '<p>UNLEASH YOUR BEST WORKOUT Powerful physiques are the result of intense, focused workouts, and to get there, you need a high energy level to set you up for an effective session. Six Star Pre-Workout Explosion is precisely dosed with arginine AKG, beta-alanine, creatine and caffeine to provoke peak performance. Beta-alanine is a well-known pre-workout ingredient that increases muscle carnosine levels and, as a result, buffers lactic acid, so you can train longer. Arginine is an amino acid and a great vasodilator, which means it improves your blood flow and makes your pumps more explosive. Caffeine stimulates your nervous system to boost energy and alertness, while creatine is a supplementary ingredient for increased strength capacity. </p>', 'pre', ''),
(22, 2, 2, '2019-11-07 07:56:28', ' Cellucor C4 Ultimate Pre Workout', 'c41.jpg', 'c42.jpg', 'c43.jpg', 48, '<p>C4 Ultimate is the most powerful C4 we\'ve ever created. It\'s not for the weak. It\'s not for the weekend warrior. This is for those that don\'t have limits in the gym. Those that aren\'t afraid to work, sweat, and bleed for their next best. It\'s dosed to the brim with the powerful ingredients that your body begs for. You will feel the explosive energy run through your veins as you prep for battle in the gym.</p>', 'pre', ''),
(23, 2, 1, '2019-11-07 07:57:23', 'Cellucor C4 Sport Pre Workout', 'prec41.jpg', 'prec42.jpg', 'prec43.jpg', 27, '<p>C4 Sport Pre-Workout energy optimized for exercise. It combines two formulations to support performance and energy into one, so every base of your workout is covered. The performance side includes creatine monohydrate for muscle endurance, Arginine AKG to increase blood flow and keep you going, and Beta Alanine to help keep fatigue at bay. The energy side contains an explosive blend of caffeine and taurine for unrivaled focus and energy.</p>', 'pre', ''),
(24, 2, 2, '2019-11-07 07:57:49', 'Cellucor C4 Ripped Pre Workout', 'pre1.jpg', 'pre2.jpg', 'pre3.jpg', 39, '<p>C4 Ripped is a pre-workout that combines the explosive energy of C4 with ingredients specific to fat loss. This formula helps you train harder while supporting your body\'s ability to burn fat. If you have ever been on the hunt for a Creatine-free workout, C4 Ripped is your formula. Our proprietary formulated Ripped Blend is designed to enhance fat loss by harnessing the power of L-Carnitine, Green Coffee Bean Extract and Capsimax Cayenne Fruit Extract.</p>', 'pre', ''),
(26, 2, 2, '2019-11-07 08:06:49', 'Evlution Nutrition ENGN Pre-workout', 'evl1.jpg', 'evl2.jpg', 'evl3.jpg', 36, '<p>Intense Pre-Workout Powder for Increased Energy, Power, & Focus (Pikatropin-Free)\r\nSupports Cognitive Function, Enhances Mood, Expands Muscle Endurance, and Helps to Delay Fatigue\r\nTOP NITRIC OXIDE PRE WORKOUT. Agmatine sulfate and Betaine Anhydrous dramatically increase nitric oxide production.\r\nPOWERFUL PRE WORKOUT ENERGY POWDER. Smooth energy rush and more focus with no crash or jitters. Trusted by men and women!</p>', 'pre', ''),
(27, 2, 2, '2019-11-07 08:22:56', 'Cellucor C4 Original Pre Workout', 'c4o1.jpg', 'c4o2.jpg', 'c4o3.jpg', 55, '<p>Energy and performance for next-level results: C4 Original\'s premium formula packs ingredients that get you energized and in the zone with high-level energy and performance from start to finish\r\nCellucor\'s C4 is a trusted pre-workout for men and women of all training levels and is a proven leader in its category/p>', 'pre', ''),
(28, 2, 2, '2019-11-07 08:24:01', 'OPTIMUM NUTRITION Gold Standard Pre-Workout', 'ONPre1.jpg', 'ONPre2.jpg', 'ONPre3.jpg', 34, '<p>175 mg of Caffeine from Natural Sources. 1,.5 g of Carnosyn Beta-Alanine, 3 g of Creapure Creatine Monohydrate\r\nBanned Substance Free and Certified \"Informed-Choice, Trusted by Sport\"\r\nDon\'t settle for a second place product, get the legit pre-workout that’s as GOOD AS GOLD</p>', 'pre', ''),
(29, 2, 2, '2019-11-07 08:25:05', 'Musclepharm Assault  Pre Workout', 'MP1.jpg', 'MP2.jpg', 'MP3.jpg', 32, '<p>MusclePharm Assault Sport is creating the new standard in performance pre-workouts. University studied and designed specifically for the modern-day athlete, Assault Sport provides unmatched energy and boosts your performance during intensive. Assault Sport features one of the most studied and scientifically proven supplements for strength gains in Creatine Monohydrate.</p>', 'pre', ''),
(30, 2, 2, '2019-11-07 08:25:53', 'Evlution Nutrition ENGN SHRED Pre Workout', 'engn1.jpg', 'engn2.jpg', 'engn3.jpg', 41, '<p>WHO? ALL ATHLETES! ENGN SHRED has been designed to fuel all athletes whether you are a track star, bodybuilder or action sports athlete ENGN SHRED will fuel you.\r\n\r\nWHAT? ENGN SHRED was created and engineered for the athlete! A direct blend provides no fillers and gives you the maximum advantage over the competition.</p>', 'pre', ''),
(31, 1, 1, '2019-11-29 17:01:08', 'MuscleTech 100% Whey Protein Powder', 'MTWhey1.jpg', 'MTWhey2.jpg', 'MTWhey3.jpg', 48, '<p>Not all proteins are created equal. And if you’re careful about the nutrients you’re putting in your body, why wouldn’t you want to make sure the same can be said about the protein you consume? Enter Premium Gold 100% Whey Protein. Everyone knows that protein is the base for building muscle and recovery. Our formula hasn\'t gone through heat, acid or salt in the filtration process. That means you\'re getting a whey protein isolate and peptide formula that’s ultra clean, fast absorbing, and so smooth and delicious, you’ll want to keep guzzling away. </p>', 'whey', 'For Gaining weight'),
(32, 1, 1, '2019-11-29 17:01:15', 'MuscleTech Phase8 Whey Protein Powder', 'phase2.jpg', 'phase1.jpg', 'phase3.jpg', 59, '<p>COMPLETE SUSTAINED-RELEASE, 8-HOUR PROTEIN FORMULA When you’re unable to have a meal for several hours (like when you’re sleeping), having a protein source that’s slow-digesting is important to help avoid muscle breakdown! The primary protein source in Phase8 is just that – a slow, sustained-release protein. In fact, it has the unique ability to slowly release amino acids into your bloodstream for 8 hours after taking it! (Lacroix et al., 2006. </p>', 'whey', 'For Gaining weight'),
(33, 1, 1, '2019-11-29 17:01:31', 'Muscletech  Ultra Pure Whey Isolate', 'ultra1.jpg', 'ultra2.jpg', 'ultra3.jpg', 31, '<p>Unique purification process : It\'s been purified through a unique, selective ion-exchange process, resulting in the highest level of purity, making it a premium, high biological value protein source\r\nHighest protein percentage per scoop : Other whey isolate formulas on the market are clean, but we\'re cleaner! For each 29.6g scoop, MuscleTech Ultra Pure Whey Isolate provides 25g of protein</p>', 'whey', 'For Losing weight'),
(34, 1, 1, '2019-11-29 17:01:38', 'MuscleTech Nitro Tech 100% Whey Gold', 'MTGold1.jpg', 'MTGold2.jpg', 'MTGold3.jpg', 29, '<p>Rapid absorbing hydrolyzed whey peptides to support improved nutrient delivery\r\nFeatures the most premium whey isolates and concentrate for a superior amino acid profile\r\n5.5g of anabolic BCAAs and class-leading 4g of glutamine and precursor for better muscle protein synthesis and recovery</p>', 'whey', 'For Losing weight'),
(35, 1, 1, '2019-11-29 17:01:45', 'MuscleTech Nitrotech Natural Whey Protein', 'MTNatural1.jpg', 'MTNatural2.jpg', 'MTNatural3.jpg', 33, '<p>BUILD MORE LEAN MUSCLE AND STRENGTH - Nitro Tech Naturally Flavoured also contains a key compoud shown to help you build more muscle and strength.\r\nULTRA CLEAN PROTEIN FORMULA - A single scoop of NITRO TECH NATURALLY FLAVOURED contains 30 grams of protein, primarily from whey protein peptides and whey isolate.\r\nBEST IN CLASS TASTE - NITRO TECH NATURALLY FLAVOURED has been developed at one of the top flavour houses in North America for a best-in-class taste profile.</p>', 'whey', 'For Gaining weight'),
(36, 1, 1, '2019-11-29 17:01:52', 'MuscleTech NitroTech Casein Gold', 'Casein1.jpg', 'Casein3.jpg', 'Caein2.jpg', 44, '<p>Slow digestion protein blend to support prolonged amino acid release to continuously feed your muscles\r\nFeatures the most premium casein protein blend for a superior amino acid profile\r\n10g of BCAAs, glutamine and precursor from protein for better muscle protein synthesis and recovery\r\nSuperior cold-pressed, ultra-pure, micro-filtered protein blend, featuring micellar casein\r\nCompared to typical casein powders, NITRO-TECH CASEIN GOLD has a better texture for a superior flavour profile</p>', 'whey', 'For Gaining weight'),
(37, 1, 1, '2019-11-29 17:02:10', 'Cellucor Whey Sport Protein', 'cell1.jpg', 'cell2.jpg', 'cell3.jpg', 27, '<p>Cellucor Whey Sport contains 30g of high-quality whey protein to help turn recovery time into muscle-growing time\r\nWhey Sport carries the Informed Choice logo which means it has gone through a full manufacturing audit and is regularly tested for a wide variety of WADA banned substances to ensure safety for sport.\r\nGluten-free, soy-free and low in carbs, fats, and sugars.</p>', 'whey', 'For Losing weight'),
(38, 3, 3, '2019-11-29 16:49:35', 'ALLMAX RapidCuts Fat Burner', 'allmax1.jpg', 'allmax2.jpg', 'allmax3.jpg', 27, '<p>RAPIDCUTS SHREDDED is pure, unadulterated fat-shedding potency. The most concentrated, research-backed ingredients known to fat loss science have been brought together to give you the kind of rapid, accelerated fat-shredding power you demand. RAPIDCUTS is simply the strongest, most advanced and most comprehensive fat burning product we have ever produced. RAPIDCUTS was created with a single focus; to create a formula specific to and exclusively for fat loss. </p>', 'fatburner', 'With stimulant'),
(39, 3, 3, '2019-11-29 16:50:17', 'Allmax Extreme Fat Burner', 'All1.jpg', 'All2.jpg', 'All3.jpg', 129, '<p>RAPIDCUTS SHREDDED is pure, unadulterated fat-shedding potency. The most concentrated, research-backed ingredients known to fat loss science have been brought together to give you the kind of rapid, accelerated fat-shredding power you demand. RAPIDCUTS is simply the strongest, most advanced and most comprehensive fat burning product we have ever produced. RAPIDCUTS was created with a single focus; to create a formula specific to and exclusively for fat loss.</p>', 'fatburner', 'With stimulant'),
(40, 5, 4, '2019-11-13 02:52:26', 'Allmax VITAFORM Multivitamin + Mens Health', 'vita1.jpg', 'vita2.jpg', 'vita3.jpg', 18, '<p>VITAFORM has everything men need to perform at the highest level. VITAFORM gives you all of the essential vitamins you need and with key nutrients in 6 functional core blends. VITAPLEX - Essential Vitamin Complex VITAFORM contains 300% of your daily value of Vitamin C in two highly bioavailable forms and 10 mg of Boron, an essential male element. VIRIMAX - Male Support Complex VIRIMAX is a 6-blend complex formulated specifically to meet the nutritional needs of an active man. </p>', 'mens vitamin', ''),
(41, 5, 4, '2019-11-07 09:30:01', 'Allmax TestoFX Testosterone', 'allTest1.jpg', 'allTest2.jpg', 'allTest3.jpg', 42, '<p>TestoFX is designed to work with the body\'s physiology to support Testosterone Levels. TESTOFX is our researched-based, scientifically-validated 5-Stage Testosterone Amplifier. TESTOFX is a natural, clinical strength formula, complete with the full dosage of active ingredients as indicated to be effective by research. This formula addresses all of the key factors that maximize the effect and impact of testosterone in the body.</p>', 'mens vitamin', ''),
(43, 5, 4, '2019-11-07 10:31:14', ' ALLMAX Allflex Joint Health', 'allflex1.jpg', 'allflex2.jpg', 'allflex3.jpg', 29, '<p>ALLFLEX is an advanced recovery supplement that has been formulated to promote joint health and reduce the pain and inflammation associated with intense physical activity. It is a proprietary blend that has been formulated for both active individuals and competitive athletes who participate in high intensity exercises. ALLFLEX is a natural and safe alternative to using pharmaceutical drugs. The ALLFLEX delivery system starts with a rapid-release micro-thin capsule that delivers results quickly and has a sustained-release formulation that continues to work over a 12-hour period.</p>', 'mens', ''),
(45, 3, 3, '2019-11-29 16:50:45', 'Magnum Heat Accelerated Fat Burner', 'magum1.jpg', 'magnum2.jpg', 'magnum3.jpg', 49, '<p>COMBINES 30-FAT-INCINERATING INGREDIENTS TO SUPPORT THE MOST OPTIMAL FAT BURNING ENVIRONMENT! - May help support fat metabolism\r\nPOTENT INGREDIENTS THAT HAVE BEEN PROVEN TO IMPROVE CIRCULATION THAT MAY LEAD TO OPTIMAL ENERGY EXPENDITURE DURING INTENSE WORKOUTS- Promotes Blood Flow\r\nSUPPORTS THE RATE BY WHICH THE REACTIVATED FAT CELLS ARE RELEASED - Increase in Fat Oxidation.</p>', 'fat', 'With stimulant'),
(46, 3, 3, '2019-11-29 16:51:36', 'Hydroxycut Hardcore Next Gen Fat Burner', 'hard1.jpg', 'hard2.jpg', 'hard3.jpg', 22, '<p>For 20 years, the Hydroxycut name has been synonymous with results. And now the next evolution of Hydroxycut is here. Hydroxycut Harcore Next Gen features potent doses of key ingredients in unique, never-before-seen combinations to deliver the ultimate weight management and sensory experience.\r\n</p>', 'fat', 'No stimulant'),
(47, 3, 3, '2019-11-29 16:53:11', 'Cellucor SuperHD Thermogenic Fat Burner', 'cellfat1.jpg', 'cellfat3.jpg', 'cellfat2.jpg', 38, '<p>Feel good while you lose weight with the SuperHD powder by Cellucor. With high-powered energy and powerful nootropics, it helps promote fat loss, increase fat metabolism and promotes better appetite control while getting high-powered energy. Cellucor is an award winning industry leader committed to premium products, innovation and your results. They strive to be the elite difference makers in the world of sports nutrition and dietary supplements.</p>', 'fat', 'With stimulant'),
(48, 4, 3, '2019-11-13 02:56:56', 'Evlution Nutrition Lean BCAA', 'bca1.jpg', 'bca2.jpg', 'bca3.jpg', 33, '<p>The First BCAA Formula with 2 full doses of leading stimulant free fat burners to support Burning Fat while building lean muscle.\r\nContains 5 grams of premium BCAAs, 500mg of CLA, and 500mg of L-Carnitine while remaining sugar free and gluten free to suit your diets.</p>', 'bcaa', ''),
(49, 4, 2, '2019-11-07 10:49:02', 'Evlution Nutrition BCAA5000 Powder', 'bca50001.jpg', 'bca50002.jpg', 'bca50003.jpg', 28, '<p>BCAA5000 combines the highest quality branched chain amino acids, known as BCAAs, with the best tasting flavors to give you stimulant free muscle building, endurance and recovery support while you train and throughout your day. BCAA5000 supports your performance and promotes lean muscle growth through 5 grams of pure BCAAs in the most researched and proven 2:1:1 ratio of 2.5 grams Leucine, 1.25 grams Isoleucine and 1.25 grams Valine per serving. </p>', 'bcaa', ''),
(50, 4, 2, '2019-11-07 10:55:13', 'Evlution BCAA Energy', 'energy1.jpg', 'energy2.jpg', 'energy3.jpg', 31, '<p>BCAA ENERGY is the best-selling, naturally energized Branched Chain Amino Acid drink that offers all-in-one energy, focus, muscle building and recovery support. BCAA ENERGY boosts performance by combining the highest quality BCAAs, natural energizers, endurance boosting amino acids, and antioxidants you can use anytime!</p>', 'bcaa', ''),
(52, 4, 2, '2019-11-07 11:07:48', 'Mutant BCAA', 'mutantbcaa1.jpg', 'mutantbcaa2.jpg', 'mutantbcaa3.jpg', 34, '<p>The dedicated. The hardcore. At MUTANT we know where our loyalty lies. You\'re not interested in average, and you certainly don\'t care about fitting in with the crowd. MUTANT understands, and that\'s why we bring you top quality products, made with the best ingredients in the world, manufactured in our own federally-licensed facility. Amazing formulas like our legendary MUTANT MASS, the ultimate pre-workout experience. Or the most gourmet whey isolate of all time, MUTANT ISO SURGE!</p>', 'bcaa', ''),
(53, 4, 2, '2019-11-07 11:13:23', 'NAKED BCAAs Amino Acids', 'nakedbca1.jpg', 'nakedbca2.jpg', 'nakedbca3.jpg', 45, '<p>Naked BCAAs are the highest pharmaceutical grade, fastest dissolving, and rapidly absorbed Vegan Branch Chain Amino Acids available. Studies have shown that BCAA supplementation improves strength and muscle development, speeds recovery, and increases endurance for men and women at all fitness levels.</p>', 'bcaa', ''),
(54, 4, 2, '2019-11-07 11:17:38', 'Evlution BCAA5000 Cherry', 'green1.jpg', 'green2.jpg', 'green3.jpg', 27, '<p>BCAA5000 combines the highest quality branched chain amino acids, known as BCAAs, with the best tasting flavors to give you stimulant free muscle building, endurance and recovery support while you train and throughout your day. BCAA5000 supports your performance and promotes lean muscle growth through 5 grams of pure BCAAs in the most researched and proven 2:1:1 ratio of 2.5 grams Leucine, 1.25 grams Isoleucine and 1.25 grams Valine per serving. This is the most proven ratio of BCAAs to support muscle building and recovery.</p>', 'bcaa', ''),
(55, 4, 4, '2019-11-13 06:39:43', 'Evlution Test + BCAA', 'evltest1.jpg', 'evltest2.jpg', 'evltest3.jpg', 29, '<p>EVL TEST is a next-generation training and recovery amplifier that provides you with numerous health and fitness benefits. It can be used by bodybuilders, athletes of any caliber, as well as the everyday gym-goer who is looking to take their training and results to the next level.</p>', 'mens ', ''),
(56, 5, 4, '2019-11-07 11:29:57', 'ON Opti-Men MultiVitamin', 'onmulti1.jpg', 'onmulti2.jpg', 'onmulti3.jpg', 40, '<p>Optimum Nutrition’s Opti-Men is a complete Nutrient Optimization System providing 75 Plus active ingredients in 4 blends specifically designed to support the nutrient needs of active men. Taken as a single tablet at breakfast, lunch and dinner, our new and improved multi provides 22 vitamins and essential minerals – including 1,500 IU of Vitamin D, free form amino acids, botanical extracts and antioxidants in foundational amounts that can be built upon through consumption of a healthy balanced diet. Think of Opti-Men as potent nutritional insurance for your fitness lifestyle.\r\n</p>', 'mens', ''),
(57, 5, 4, '2019-11-07 11:34:31', 'NATURELO Whole Food Multivitamin', 'nat1.jpg', 'nat2.jpg', 'nat3.jpg', 62, '<p>Premium Formula with Natural Vitamins A, B, C, D, E, K ★ Organic Fruit & Vegetable Blends ★ Non GMO ★ Gluten Free ★ Does NOT Contain Soy, Gelatin, Egg, Dairy or Caffeine ★ No Additives or Fillers ★ Made in USA\r\nSupports Immunity ★ Boosts Metabolism & Energy ★ Heart, Brain & Prostate Health ★ Reduces Inflammation & Stress ★ Promotes Healthy Immune Response & Wellness ★ Aids Vision, Digestion & Bone Strength*</p>', 'mens', ''),
(58, 5, 4, '2019-11-07 11:40:17', 'Mutant Multivitamins', 'mut1.jpg', 'mut2.jpg', 'mut3.jpg', 25, '<p>SPECIFICALLY FORMULATED FOR STRENGTH ATHLETES | Complete nutrition insurance formula, harnessing 75+ ingredients into multiple systems, specifically formulated for the harsh realities of heavy lifting.\r\n80+ INGREDIENTS | High potency vitamins and minerals including electrolytes, phytonutrients, botanical extracts, antioxidants, enzymes, berries, greens, and lipotropic factors ALL delivered in easy to swallow tablets.</p>', 'mens', ''),
(60, 1, 1, '2019-11-07 11:51:17', 'MUTANT ISO SURGE – Whey Protein', 'Mutant1.jpg', 'Mutant2.jpg', 'Mutant3.jpg', 90, '<p>HIGH-SPEED ABSORPTION | Gets protein into your muscle tissue FAST. This whey protein is formulated with high-quality ingredients to get MUTANTS around the world big, FAST, and its available in a variety of delicious flavours!\r\nAMAZING GOURMET FLAVOURS | With 13 gourmet flavours to choose from you’ll be looking forward to drinking this whey protein every day to recover from your hardest workouts.</p>', 'whey', ''),
(61, 1, 1, '2019-11-07 11:50:50', 'Mutant Pro Triple Whey Protein', 'pro1.jpg', 'pro2.jpg', 'pro3.jpg', 74, '<p>TRIPLE WHEY PROTEIN BLEND | MUTANT PRO combines 3 vital whey protein sources for rapid, delayed and extended phases of amino acid absorption. Time-released protein so you can take full advantage of your most intense workout.\r\n100% GOURMET TASTE | Enjoy your post-workout buzz with one of our 4 rich, decadent gourmet flavours, including Rich Chocolate Milk.</p>', 'whey', ''),
(62, 3, 3, '2019-11-29 16:47:35', 'Mutant Carnitine Fat Loss', 'carnitine1.jpg', 'carnitine2.jpg', 'carnitine3.jpg', 22, '<p>MUTANT CARNITINE is a stimulant-free metabolic support supplement. Each serving contains 2,250 mg of L-carnitine-L-tartrate which one of the most bioavailable forms of carnitine commercially available! This transports fat into the mitochondria, where it\'s metabolized into energy.\r\n</p>', 'fat', 'No stimulant'),
(65, 1, 1, '2019-11-13 07:06:37', 'Vega Sport ', 'vvvvvvvvvvvvvvvvvvvvvvv1.jpg', 'vvvvvvvvvvvvvvvvvvvvvvv2.jpg', 'vvvvvvvvvvvvvvvvvvvvvvv3.jpg', 41, '<p>What is Lean Mode? Lean Mode is a stimulant-free fat burner that can be used by the casual gym-goer to the professional athlete – and everyone in between. If you’re looking to shed unwanted body fat, the profile in Lean Mode can help you achieve your goals.\r\n</p>', 'whey', ''),
(67, 4, 3, '2019-11-26 11:31:26', 'dskfns', '1_c94SpnDXD8imHLUW0fl-ng.jpeg', '1 (2).jpg', '1 (2).jpg', 234, '<p>sada</p>', 'nagfy', 'mobiii'),
(70, 5, 4, '2019-11-26 13:02:38', 'vitamin c', '452016113100AM_635_oppo_f1_plus.jpeg.webp', '66855717_2398602187074656_4247820947351603845_n.jpg', '600_482150908.jpeg', 213, '<p>jdfkj</p>', 'vitamin', 'mobii'),
(71, 5, 4, '2019-11-26 13:02:52', 'vitamin c', '452016113100AM_635_oppo_f1_plus.jpeg.webp', '66855717_2398602187074656_4247820947351603845_n.jpg', '600_482150908.jpeg', 213, '<p>jdfkj</p>', 'vitamin', 'mobii'),
(72, 5, 4, '2019-11-26 13:02:58', 'vitamin c', '452016113100AM_635_oppo_f1_plus.jpeg.webp', '66855717_2398602187074656_4247820947351603845_n.jpg', '600_482150908.jpeg', 213, '<p>jdfkj</p>', 'vitamin', 'mobii');

-- --------------------------------------------------------

--
-- Table structure for table `pro_fav_like`
--

CREATE TABLE `pro_fav_like` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `favorite` varchar(50) NOT NULL,
  `like_pro` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pro_fav_like`
--

INSERT INTO `pro_fav_like` (`id`, `product_id`, `user_name`, `favorite`, `like_pro`) VALUES
(1, 71, 'aounii', 'yes', 'yes'),
(2, 68, 'aounii', 'yes', 'no'),
(3, 69, 'aounii', 'yes', 'no'),
(4, 65, 'admin', 'yes', 'no'),
(5, 71, 'noor', 'yes', ''),
(6, 72, 'noor', 'yes', ''),
(7, 48, 'noor', 'yes', 'yes'),
(8, 33, 'noor', 'yes', '');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(10) NOT NULL,
  `slider_name` varchar(255) NOT NULL,
  `slider_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `slider_name`, `slider_image`) VALUES
(1, 'slider number 1', '1.jpg'),
(2, 'slider number 2', '2.jpg'),
(3, 'slider number 3', '3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `sub_cat_id` int(11) NOT NULL,
  `sub_cat_title` varchar(200) NOT NULL,
  `sub_cat_desc` text NOT NULL,
  `main_cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`sub_cat_id`, `sub_cat_title`, `sub_cat_desc`, `main_cat_id`) VALUES
(1, 'Whey Protein', 'Whey is a complete protein, meaning it has all nine essential amino acids necessary for protein synthesis. Whey is a foundational supplement and supports a huge range of goals for both men and women.', 0),
(2, 'Pre Workouts', 'Pre-workout supplements are designed to support increased energy, focus, and endurance in the gym. When you feel like hitting the hay instead of the gym, grab one of these top selling, high quality pre-workouts to get moving and destroy your workout.\r\n\r\n', 0),
(3, 'Fat Burners ', 'Fat burners can help support fat loss by enhancing metabolism, maintaining healthy appetite, and minimizing cravings. They can also optimize workout potential by increasing energy and focus.*\r\n\r\n', 0),
(4, 'BCAAs', 'Dieting down will get you shredded, but it might also shave some size from your biceps. BCAAs can help protect your muscles against the catabolic effects of dieting!\r\n\r\n', 0),
(5, 'Men\'s Health', 'If you\'re a man, your body has specific needs that differ dramatically from that of a woman in many areas. The following products are designed to optimize many of the male hormones in the body and promote healthy body systems.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `usertable`
--

CREATE TABLE `usertable` (
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usertable`
--

INSERT INTO `usertable` (`name`, `password`, `role`) VALUES
('admin', 'admin', 'member'),
('admin1', 'admin', 'member'),
('aounii', '123456', 'member'),
('noor', 'noor', 'member'),
('yash', 'yash', 'member');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `main_category`
--
ALTER TABLE `main_category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `pro_fav_like`
--
ALTER TABLE `pro_fav_like`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`sub_cat_id`);

--
-- Indexes for table `usertable`
--
ALTER TABLE `usertable`
  ADD PRIMARY KEY (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `main_category`
--
ALTER TABLE `main_category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `pro_fav_like`
--
ALTER TABLE `pro_fav_like`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `sub_cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
