
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `countries_regions` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `region_name_ru` varchar(100) NOT NULL,
  `region_name_en` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `countries_regions` (`id`, `region_name_ru`, `region_name_en`) VALUES
(1, 'Азия', 'Asia'),
(2, 'Африка', 'Africa'),
(3, 'Ближний Восток', 'Near East'),
(4, 'Европа', 'Europe'),
(5, 'Карибы', 'Caribbean'),
(6, 'Океания', 'Oceania'),
(7, 'Северная Америка', 'North America'),
(8, 'Центральная Америка', 'Central America'),
(9, 'Южная Америка', 'South America');


ALTER TABLE `countries_regions`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `countries_regions`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


-- --------------------------------------------------------

--
-- Структура таблицы `countries`
--

CREATE TABLE `countries` (
  `id` int(11) UNSIGNED NOT NULL,
  `country_code` varchar(2) DEFAULT NULL,
  `country_name_en` varchar(100) DEFAULT NULL,
  `country_name_ru` varchar(100) DEFAULT NULL,
  `region_code` tinyint(3) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `countries` (`id`, `country_code`, `country_name_en`, `country_name_ru`, `region_code`) VALUES
(1, 'AF', 'Afghanistan', 'Афганистан', 1),
(2, 'AL', 'Albania', 'Албания', 4),
(3, 'DZ', 'Algeria', 'Алжир', 2),
(4, 'DS', 'American Samoa', 'американское Самоа', 6),
(5, 'AD', 'Andorra', 'Андорра', 4),
(6, 'AO', 'Angola', 'Ангола', 2),
(7, 'AI', 'Anguilla', 'Ангилья', 5),
(8, 'AQ', 'Antarctica', NULL, NULL),
(9, 'AG', 'Antigua and Barbuda', 'Антигуа и Барбуда', 5),
(10, 'AR', 'Argentina', 'Аргентина', 9),
(11, 'AM', 'Armenia', 'Армения', 3),
(12, 'AW', 'Aruba', 'Аруба', 5),
(13, 'AU', 'Australia', 'Австралия', 6),
(14, 'AT', 'Austria', 'Австрия', 4),
(15, 'AZ', 'Azerbaijan', 'Азербайджан', 3),
(16, 'BS', 'Bahamas', 'Багамские о-ва', 5),
(17, 'BH', 'Bahrain', 'Бахрейн', 3),
(18, 'BD', 'Bangladesh', 'Бангладеш', 1),
(19, 'BB', 'Barbados', 'Барбадос', 5),
(20, 'BY', 'Belarus', 'Белоруссия', 4),
(21, 'BE', 'Belgium', 'Бельгия', 4),
(22, 'BZ', 'Belize', 'Белиз', 8),
(23, 'BJ', 'Benin', 'Бенин', 2),
(24, 'BM', 'Bermuda', 'Бермудские острова', 7),
(25, 'BT', 'Bhutan', 'Бутан', 1),
(26, 'BO', 'Bolivia', 'Боливия', 9),
(27, 'BA', 'Bosnia and Herzegovina', 'Босния и Герцеговина', 4),
(28, 'BW', 'Botswana', 'Ботсвана', 2),
(29, 'BV', 'Bouvet Island', NULL, NULL),
(30, 'BR', 'Brazil', 'Бразилия', 9),
(31, 'IO', 'British Indian Ocean Territory', 'Британская территория Индийского океана', 1),
(32, 'BN', 'Brunei Darussalam', 'Бруней-Даруссалам', 1),
(33, 'BG', 'Bulgaria', 'Болгария', 4),
(34, 'BF', 'Burkina Faso', 'Буркина-Фасо', 2),
(35, 'BI', 'Burundi', 'Бурунди', 2),
(36, 'KH', 'Cambodia', 'Камбоджа', 1),
(37, 'CM', 'Cameroon', 'Камерун', 2),
(38, 'CA', 'Canada', 'Канада', 7),
(39, 'CV', 'Cape Verde', 'Кабо-Верде', 2),
(40, 'KY', 'Cayman Islands', 'Каймановы острова', 5),
(41, 'CF', 'Central African Republic', 'Центрально-Африканская Республика', 2),
(42, 'TD', 'Chad', 'Чад', 2),
(43, 'CL', 'Chile', 'Чили', 9),
(44, 'CN', 'China', 'Китай', 1),
(45, 'CX', 'Christmas Island', 'Остров Рождества', 6),
(46, 'CC', 'Cocos (Keeling) Islands', 'Кокосовые острова', 6),
(47, 'CO', 'Colombia', 'Колумбия', 9),
(48, 'KM', 'Comoros', 'Коморы', 2),
(49, 'CD', 'Democratic Republic of the Congo', 'Демократическая Республика Конго', 2),
(50, 'CG', 'Republic of the Congo', 'Республика Конго', 2),
(51, 'CK', 'Cook Islands', 'Острова Кука', 6),
(52, 'CR', 'Costa Rica', 'Коста Рика', 8),
(53, 'HR', 'Croatia (Hrvatska)', 'Хорватия', 4),
(54, 'CU', 'Cuba', 'Куба', 5),
(55, 'CY', 'Cyprus', 'Кипр', 4),
(56, 'CZ', 'Czech Republic', 'Чехия', 4),
(57, 'DK', 'Denmark', 'Дания', 4),
(58, 'DJ', 'Djibouti', 'Джибути', 2),
(59, 'DM', 'Dominica', 'Доминика', 5),
(60, 'DO', 'Dominican Republic', 'Доминиканская Респблика', 5),
(61, 'TP', 'East Timor', 'Восточный Тимор', 1),
(62, 'EC', 'Ecuador', 'Эквадор', 9),
(63, 'EG', 'Egypt', 'Египет', 2),
(64, 'SV', 'El Salvador', 'Сальвадор', 8),
(65, 'GQ', 'Equatorial Guinea', 'Экваториальная Гвинея', 2),
(66, 'ER', 'Eritrea', 'Эритрея', 2),
(67, 'EE', 'Estonia', 'Эстония', 4),
(68, 'ET', 'Ethiopia', 'Эфиопия', 2),
(69, 'FK', 'Falkland Islands (Malvinas)', 'Фолклендские острова', 9),
(70, 'FO', 'Faroe Islands', 'Фарерские острова', 4),
(71, 'FJ', 'Fiji', 'Фиджи', 6),
(72, 'FI', 'Finland', 'Финляндия', 4),
(73, 'FR', 'France', 'Франция', 4),
(74, 'FX', 'France, Metropolitan', NULL, NULL),
(75, 'GF', 'French Guiana', 'Французская Гвиана', 9),
(76, 'PF', 'French Polynesia', 'Французская Полинезия', 6),
(77, 'TF', 'French Southern Territories', NULL, NULL),
(78, 'GA', 'Gabon', 'Габон', 2),
(79, 'GM', 'Gambia', 'Гамбия', 2),
(80, 'GE', 'Georgia', 'Грузия', 3),
(81, 'DE', 'Germany', 'Германия', 4),
(82, 'GH', 'Ghana', 'Гана', 2),
(83, 'GI', 'Gibraltar', 'Гибралтар', 4),
(84, 'GK', 'Guernsey', NULL, NULL),
(85, 'GR', 'Greece', 'Греция', 4),
(86, 'GL', 'Greenland', 'Гренландия', 7),
(87, 'GD', 'Grenada', 'Гренада', 5),
(88, 'GP', 'Guadeloupe', 'Гваделупа', 5),
(89, 'GU', 'Guam', 'Гуам', 6),
(90, 'GT', 'Guatemala', 'Гватемала', 8),
(91, 'GN', 'Guinea', 'Гвинея', 2),
(92, 'GW', 'Guinea-Bissau', 'Гвинея-Бисау', 2),
(93, 'GY', 'Guyana', 'Гайана', 9),
(94, 'HT', 'Haiti', 'Гаити', 5),
(95, 'HM', 'Heard and Mc Donald Islands', NULL, NULL),
(96, 'HN', 'Honduras', 'Гондурас', 8),
(97, 'HK', 'Hong Kong', 'Гонконг', 1),
(98, 'HU', 'Hungary', 'Венгрия', 4),
(99, 'IS', 'Iceland', 'Исландия', 4),
(100, 'IN', 'India', 'Индия', 1),
(101, 'IM', 'Isle of Man', 'Остров Мэн', 4),
(102, 'ID', 'Indonesia', 'Индонезия', 1),
(103, 'IR', 'Iran (Islamic Republic of)', 'Иран', 3),
(104, 'IQ', 'Iraq', 'Ирак', 3),
(105, 'IE', 'Ireland', 'Ирландия', 4),
(106, 'IL', 'Israel', 'Израиль', 3),
(107, 'IT', 'Italy', 'Италия', 4),
(108, 'CI', 'Ivory Coast', 'Кот-д\'Ивуар', 2),
(109, 'JE', 'Jersey', 'Джерси', 4),
(110, 'JM', 'Jamaica', 'Ямайка', 5),
(111, 'JP', 'Japan', 'Япония', 1),
(112, 'JO', 'Jordan', 'Иордания', 3),
(113, 'KZ', 'Kazakhstan', 'Казахстан', 1),
(114, 'KE', 'Kenya', 'Кения', 2),
(115, 'KI', 'Kiribati', 'Кирибати', 6),
(116, 'KP', 'Korea, Democratic People\'s Republic of', 'Северная Корея', 1),
(117, 'KR', 'Korea, Republic of', 'Южная Корея', 1),
(118, 'XK', 'Kosovo', 'Косово', 4),
(119, 'KW', 'Kuwait', 'Кувейт', 3),
(120, 'KG', 'Kyrgyzstan', 'Киргизия', 1),
(121, 'LA', 'Lao People\'s Democratic Republic', 'Лаос', 1),
(122, 'LV', 'Latvia', 'Латвия', 4),
(123, 'LB', 'Lebanon', 'Ливан', 3),
(124, 'LS', 'Lesotho', 'Лесото', 2),
(125, 'LR', 'Liberia', 'Либерия', 2),
(126, 'LY', 'Libyan Arab Jamahiriya', 'Ливия', 2),
(127, 'LI', 'Liechtenstein', 'Лихтенштейн', 4),
(128, 'LT', 'Lithuania', 'Литва', 4),
(129, 'LU', 'Luxembourg', 'Люксембург', 4),
(130, 'MO', 'Macau', 'Макао', 1),
(131, 'MK', 'North Macedonia', 'Северная Македония', 4),
(132, 'MG', 'Madagascar', 'Мадагаскар', 2),
(133, 'MW', 'Malawi', 'Малави', 2),
(134, 'MY', 'Malaysia', 'Малайзия', 1),
(135, 'MV', 'Maldives', 'Мальдивы', 1),
(136, 'ML', 'Mali', 'Мали', 2),
(137, 'MT', 'Malta', 'Мальта', 4),
(138, 'MH', 'Marshall Islands', 'Маршалловы острова', 6),
(139, 'MQ', 'Martinique', 'Мартиника', 5),
(140, 'MR', 'Mauritania', 'Мавритания', 2),
(141, 'MU', 'Mauritius', 'Маврикий', 2),
(142, 'TY', 'Mayotte', 'Майотта', 2),
(143, 'MX', 'Mexico', 'Мексика', 7),
(144, 'FM', 'Micronesia, Federated States of', 'Микронезия', 6),
(145, 'MD', 'Moldova, Republic of', 'Молдова', 4),
(146, 'MC', 'Monaco', 'Монако', 4),
(147, 'MN', 'Mongolia', 'Монголия', 1),
(148, 'ME', 'Montenegro', 'Черногория', 4),
(149, 'MS', 'Montserrat', 'Монтсеррат', 5),
(150, 'MA', 'Morocco', 'Марокко', 2),
(151, 'MZ', 'Mozambique', 'Мозамбик', 2),
(152, 'MM', 'Myanmar', 'Мьянма', 1),
(153, 'NA', 'Namibia', 'Намибия', 2),
(154, 'NR', 'Nauru', 'Науру', 6),
(155, 'NP', 'Nepal', 'Непал', 1),
(156, 'NL', 'Netherlands', 'Нидерланды', 4),
(157, 'AN', 'Netherlands Antilles', 'Нидерландские Антильские острова', 5),
(158, 'NC', 'New Caledonia', 'Новая Каледония', 6),
(159, 'NZ', 'New Zealand', 'Новая Зеландия', 6),
(160, 'NI', 'Nicaragua', 'Никарагуа', 8),
(161, 'NE', 'Niger', 'Нигер', 2),
(162, 'NG', 'Nigeria', 'Нигерия', 2),
(163, 'NU', 'Niue', 'Ниуэ', 6),
(164, 'NF', 'Norfolk Island', 'Остров Норфолк', 6),
(165, 'MP', 'Northern Mariana Islands', 'Северные Марианские острова', 6),
(166, 'NO', 'Norway', 'Норвегия', 4),
(167, 'OM', 'Oman', 'Оман', 3),
(168, 'PK', 'Pakistan', 'Пакистан', 1),
(169, 'PW', 'Palau', 'Палау', 6),
(170, 'PS', 'Palestine', 'Палестина', 3),
(171, 'PA', 'Panama', 'Панама', 8),
(172, 'PG', 'Papua New Guinea', 'Папуа - Новая Гвинея', 1),
(173, 'PY', 'Paraguay', 'Парагвай', 9),
(174, 'PE', 'Peru', 'Перу', 9),
(175, 'PH', 'Philippines', 'Филиппины', 1),
(176, 'PN', 'Pitcairn', 'Острова Питкэрн', 6),
(177, 'PL', 'Poland', 'Польша', 4),
(178, 'PT', 'Portugal', 'Португалия', 4),
(179, 'PR', 'Puerto Rico', 'Пуэрто-Рико', 5),
(180, 'QA', 'Qatar', 'Катар', 3),
(181, 'RE', 'Reunion', 'Реюньон', 2),
(182, 'RO', 'Romania', 'Румыния', 4),
(183, 'RU', 'Russian Federation', 'Россия', 1),
(184, 'RW', 'Rwanda', 'Руанда', 2),
(185, 'KN', 'Saint Kitts and Nevis', 'Сент-Китс и Невис', 5),
(186, 'LC', 'Saint Lucia', 'Сент-Люсия', 5),
(187, 'VC', 'Saint Vincent and the Grenadines', 'Сент-Винсент и Гренадины', 5),
(188, 'WS', 'Samoa', 'Самоа', 6),
(189, 'SM', 'San Marino', 'Сан-Марино', 4),
(190, 'ST', 'Sao Tome and Principe', 'Сан-Томе и Принсипи', 2),
(191, 'SA', 'Saudi Arabia', 'Саудовская Аравия', 3),
(192, 'SN', 'Senegal', 'Сенегал', 2),
(193, 'RS', 'Serbia', 'Сербия', 4),
(194, 'SC', 'Seychelles', 'Сейшельские острова', 2),
(195, 'SL', 'Sierra Leone', 'Сьерра-Леоне', 2),
(196, 'SG', 'Singapore', 'Сингапур', 1),
(197, 'SK', 'Slovakia', 'Словакия', 4),
(198, 'SI', 'Slovenia', 'Словения', 4),
(199, 'SB', 'Solomon Islands', 'Соломоновы острова', 6),
(200, 'SO', 'Somalia', 'Сомали', 2),
(201, 'ZA', 'South Africa', 'Южная Африка', 2),
(202, 'GS', 'South Georgia South Sandwich Islands', 'Южная Георгия Южные Сандвичевы Острова', 9),
(203, 'SS', 'South Sudan', 'южный Судан', 2),
(204, 'ES', 'Spain', 'Испания', 4),
(205, 'LK', 'Sri Lanka', 'Шри-Ланка', 1),
(206, 'SH', 'St. Helena', 'Остров Святой Елены', 2),
(207, 'PM', 'St. Pierre and Miquelon', 'Сен-Пьер и Микелон', 7),
(208, 'SD', 'Sudan', 'Судан', 2),
(209, 'SR', 'Suriname', 'Суринам', 9),
(210, 'SJ', 'Svalbard and Jan Mayen Islands', 'Острова Шпицберген и Ян-Майен', 4),
(211, 'SZ', 'Swaziland', 'Свазиленд', 2),
(212, 'SE', 'Sweden', 'Швеция', 4),
(213, 'CH', 'Switzerland', 'Швейцария', 4),
(214, 'SY', 'Syrian Arab Republic', 'Сирия', 3),
(215, 'TW', 'Taiwan', 'Тайвань', 1),
(216, 'TJ', 'Tajikistan', 'Таджикистан', 1),
(217, 'TZ', 'Tanzania, United Republic of', 'Танзания', 1),
(218, 'TH', 'Thailand', 'Таиланд', 1),
(219, 'TG', 'Togo', 'Того', 2),
(220, 'TK', 'Tokelau', 'Токелау', 6),
(221, 'TO', 'Tonga', 'Тонга', 6),
(222, 'TT', 'Trinidad and Tobago', 'Тринидад и Тобаго', 5),
(223, 'TN', 'Tunisia', 'Тунис', 2),
(224, 'TR', 'Turkey', 'Турция', 3),
(225, 'TM', 'Turkmenistan', 'Туркменистан', 1),
(226, 'TC', 'Turks and Caicos Islands', 'Теркс и Кайкос', 5),
(227, 'TV', 'Tuvalu', 'Тувалу', 6),
(228, 'UG', 'Uganda', 'Уганда', 2),
(229, 'UA', 'Ukraine', 'Украина', 4),
(230, 'AE', 'United Arab Emirates', 'Объединенные Арабские Эмираты', 3),
(231, 'GB', 'United Kingdom', 'Великобритания', 4),
(232, 'US', 'United States', 'Соединенные Штаты', 7),
(233, 'UM', 'United States minor outlying islands', NULL, NULL),
(234, 'UY', 'Uruguay', 'Уругвай', 9),
(235, 'UZ', 'Uzbekistan', 'Узбекистан', 1),
(236, 'VU', 'Vanuatu', 'Вануату', 6),
(237, 'VA', 'Vatican City State', 'Ватикан', 4),
(238, 'VE', 'Venezuela', 'Венесуэла', 9),
(239, 'VN', 'Vietnam', 'Вьетнам', 1),
(240, 'VG', 'Virgin Islands (British)', 'Виргинские острова (Британские)', 5),
(241, 'VI', 'Virgin Islands (U.S.)', 'Виргинские острова (США)', 5),
(242, 'WF', 'Wallis and Futuna Islands', 'Острова Уоллис и Футуна', 6),
(243, 'EH', 'Western Sahara', 'Западная Сахара', 2),
(244, 'YE', 'Yemen', 'Йемен', 3),
(245, 'ZM', 'Zambia', 'Замбия', 2),
(246, 'ZW', 'Zimbabwe', 'Зимбабве', 2);


ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cc` (`country_code`),
  ADD KEY `region_code` (`region_code`);


ALTER TABLE `countries`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

ALTER TABLE `countries`
  ADD CONSTRAINT `region_code` FOREIGN KEY (`region_code`) REFERENCES `countries_regions` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



