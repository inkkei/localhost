-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 11 2019 г., 00:56
-- Версия сервера: 5.5.50
-- Версия PHP: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `local`
--

-- --------------------------------------------------------

--
-- Структура таблицы `event`
--

CREATE TABLE IF NOT EXISTS `event` (
  `id` int(11) NOT NULL,
  `title` varchar(120) DEFAULT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `event`
--

INSERT INTO `event` (`id`, `title`, `date`, `time`) VALUES
(39, 'Николаевская обсерватория', '2018-05-22', '05:45:00'),
(40, 'История улиц Николаева', '2018-05-18', '05:45:00'),
(41, 'Актовский и Арбузинский каньоны', '2018-06-04', '05:45:00'),
(42, 'Тематические обзорные экскурсии по городу Николаев', '2018-06-04', '09:45:00'),
(43, 'Зашита', '2018-06-26', '09:00:00'),
(44, 'Зоопарк', '2018-06-20', '10:00:00'),
(45, 'Каньоны', '2018-06-23', '11:30:00'),
(46, 'Ольвия', '2018-06-24', '08:00:00'),
(49, 'Ольвия', '2018-06-19', '09:00:00'),
(50, 'Ольвия', '2018-06-29', '09:00:00'),
(51, 'История улиц', '2018-06-20', '10:00:00'),
(52, 'История улиц', '2018-06-25', '08:00:00'),
(53, 'Каньоны', '2018-06-28', '12:00:00'),
(54, 'Каньоны', '2018-06-15', '09:00:00'),
(55, 'Зоопарк', '2018-06-18', '12:00:00'),
(56, 'Музей', '2018-06-21', '12:00:00'),
(57, 'Зоопарк', '2018-06-17', '11:00:00'),
(58, 'Обсерватория', '2018-06-17', '10:00:00'),
(59, 'Зоопарк', '2018-06-14', '13:00:00'),
(60, 'История улиц', '2018-06-14', '15:00:00'),
(61, 'Ольвия', '2018-06-15', '07:00:00'),
(62, 'Ольвия', '2018-06-16', '08:00:00'),
(63, 'История улиц', '2018-06-17', '09:00:00'),
(64, 'Музей', '2018-06-20', '11:00:00'),
(65, 'Музей', '2018-06-27', '12:00:00'),
(66, 'Обсерватория', '2018-06-27', '15:00:00'),
(67, 'История улиц', '2018-06-28', '12:00:00'),
(68, 'Зоопарк', '2018-06-29', '11:00:00'),
(69, 'Обзорная', '2018-06-10', '12:00:00'),
(70, 'Обзорная', '2018-06-24', '11:00:00'),
(71, 'Обзорная', '2018-06-20', '13:00:00'),
(72, 'Обзорная', '2018-06-29', '12:00:00'),
(73, 'История улиц', '2018-06-10', '12:00:00'),
(74, 'Ольвия', '2018-06-10', '12:00:00'),
(75, 'Каньоны', '2018-06-22', '17:00:00'),
(76, 'Каньоны', '2018-06-23', '07:00:00'),
(77, 'Каньоны', '2018-06-30', '08:00:00'),
(78, 'Каньоны', '2018-06-30', '10:00:00'),
(79, 'История улиц', '2018-06-30', '00:00:00'),
(80, 'Обзорная', '2018-06-15', '13:00:00'),
(81, 'История улиц', '2018-06-22', '09:00:00'),
(82, 'Каньоны', '2018-06-26', '10:00:00'),
(83, 'Каньоны', '2018-06-12', '09:00:00'),
(84, 'Ольвия', '2018-06-12', '09:00:00'),
(85, 'Каньоны/Ольвия', '2018-06-21', '12:00:00'),
(86, 'Обзорная', '2018-06-29', '10:00:00'),
(87, 'Зоопарк', '2018-06-22', '11:30:00'),
(88, 'Ольвия', '2018-06-22', '08:00:00'),
(89, 'Зоопарк', '2018-06-23', '09:00:00'),
(90, 'Каньоны', '2018-06-23', '10:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `excursion`
--

CREATE TABLE IF NOT EXISTS `excursion` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `preview_img` varchar(255) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE IF NOT EXISTS `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1524081547),
('m130524_201442_init', 1524081569);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'R4lpTujMHmYPek4dLuWwnmmu7wJGt4nb', '$2y$13$LTXrdmHlCSclV6N5l1bzLO/yrn6Q.jQ1BQ4J4mJwHNz.9MvlDjvBe', NULL, 'admin@gmail.com', 10, 1524081589, 1524081589);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `excursion`
--
ALTER TABLE `excursion`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT для таблицы `excursion`
--
ALTER TABLE `excursion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;--
-- База данных: `yii2advanced`
--

-- --------------------------------------------------------

--
-- Структура таблицы `book`
--

CREATE TABLE IF NOT EXISTS `book` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `desc` text NOT NULL,
  `year` year(4) NOT NULL,
  `pub_house` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `lang` varchar(20) NOT NULL,
  `pages` int(11) NOT NULL,
  `isbn` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `book`
--

INSERT INTO `book` (`id`, `title`, `desc`, `year`, `pub_house`, `author`, `lang`, `pages`, `isbn`) VALUES
(1, 'Битва королей', 'Во втором томе показаны несколько этапов Гражданской войны в Вестеросе, такие как Вторжение Грейджоев, Кампания в Западных Землях и Южная Война. Завершается произведение крупной битвой на реке Черноводная. Для данного периода войны характерно неминуемое поражение Дома Ланнистеров, которые захватили власть в Королевской Гавани и оказались в окружении врагов. Однако финальная битва серьёзно изменила расклад сил на континенте. Также в книге показываются события на Севере — Ночной Дозор отправился в Зачарованный Лес, чтобы разузнать, почему одичалые стали собираться в Клыках Мороза. Кроме того, продолжается описываться путешествие Дейенерис Таргариен по Эссосу.', 1991, 'АСТ', 'Джордж Мартин', 'Русский', 768, '978-0-553-10803-3'),
(2, 'Граф Монте-Кристо', 'Роман был задуман Дюма в начале 1840-х годов. Имя своему герою писатель придумал во время путешествия по Средиземному морю, когда он увидел остров Монтекристо и услышал легенду о зарытых там несметных сокровищах. Действие романа происходит в 1815—1829 и 1838 годах.\r\n\r\nПервое издание печаталось отдельными выпусками в журнале «Journal des Debats» с 28 августа 1844 года по 15 января 1846 года. Ещё до окончания журнальной публикации вышло первое книжное издание: Paris, Petion, 8vo., 18 у., 1844—1845.\r\n\r\nУспех романа «Граф Монте-Кристо» превзошёл все предыдущие произведения писателя. Это был на тот момент один из крупнейших успехов какого-либо романа во Франции. По роману ставили спектакли в театрах. Заработки позволили Александру Дюма кроме дома построить ещё и загородную виллу. Шикарный дворец он назвал «Замок Монте-Кристо», и сам начал вести расточительную жизнь, достойную своего героя.', 2017, 'Махаон', 'Александр Дюма-отец', 'Русский', 1264, '978-5-389-12741-8'),
(3, 'Шантарам', 'Представляем читателю один из самых поразительных романов начала XXI века (в 2015 году получивший долгожданное продолжение — «Тень горы»). Эта преломленная в художественной форме исповедь человека, который сумел выбраться из бездны и уцелеть, разошлась по миру тиражом четыре миллиона экземпляров (из них полмиллиона — в России) и заслужила восторженные сравнения с произведениями лучших писателей Нового времени, от Мелвилла до Хемингуэя. Подобно автору, герой этого романа много лет скрывался от закона. Лишенный после развода с женой родительских прав, он пристрастился к наркотикам, совершил ряд ограблений и был приговорен австралийским судом к девятнадцати годам заключения. Бежав на второй год из тюрьмы строгого режима, он добрался до Бомбея, где был фальшивомонетчиком и контрабандистом, торговал оружием и участвовал в разборках индийской мафии, а также нашел свою настоящую любовь, чтобы вновь потерять ее, чтобы снова найти... \r\n', 2016, 'Махаон', 'Грэгори Робертс', 'Русский', 864, '978-5-389-10811-0'),
(4, 'Book №4', 'Описание Книги №4', 2001, 'House of Starks', 'James Dean', 'eng', 620, '127-7631-21-4'),
(5, 'Book №5', 'Описание Книги №5', 2002, 'House of Starks', 'James Dean', 'eng', 670, '127-7631-21-5'),
(6, 'Book №6', 'Описание Книги №6', 2003, 'House of Starks', 'James Dean', 'eng', 720, '127-7631-21-6'),
(7, 'Book №7', 'Описание Книги №7', 2004, 'House of Starks', 'James Dean', 'eng', 770, '127-7631-21-7'),
(8, 'Book №8', 'Описание Книги №8', 2005, 'House of Starks', 'James Dean', 'eng', 820, '127-7631-21-8'),
(9, 'Book №9', 'Описание Книги №9', 2006, 'House of Starks', 'James Dean', 'eng', 870, '127-7631-21-9'),
(10, 'Book №10', 'Описание Книги №10', 2007, 'House of Starks', 'James Dean', 'eng', 920, '127-7631-21-10'),
(11, 'Book №11', 'Описание Книги №11', 2008, 'House of Starks', 'James Dean', 'eng', 970, '127-7631-21-11'),
(12, 'Book №12', 'Описание Книги №12', 2009, 'House of Starks', 'James Dean', 'eng', 1020, '127-7631-21-12'),
(13, 'Book №13', 'Описание Книги №13', 2010, 'House of Starks', 'James Dean', 'eng', 1070, '127-7631-21-13'),
(14, 'Book №14', 'Описание Книги №14', 2011, 'House of Starks', 'James Dean', 'eng', 1120, '127-7631-21-14'),
(15, 'Book №15', 'Описание Книги №15', 2012, 'House of Starks', 'James Dean', 'eng', 1170, '127-7631-21-15'),
(16, 'Book №16', 'Описание Книги №16', 2013, 'House of Starks', 'James Dean', 'eng', 1220, '127-7631-21-16'),
(17, 'Book №17', 'Описание Книги №17', 2014, 'House of Starks', 'James Dean', 'eng', 1270, '127-7631-21-17'),
(18, 'Book №18', 'Описание Книги №18', 2015, 'House of Starks', 'James Dean', 'eng', 1320, '127-7631-21-18'),
(19, 'Book №19', 'Описание Книги №19', 2016, 'House of Starks', 'James Dean', 'eng', 1370, '127-7631-21-19'),
(20, 'Book №20', 'Описание Книги №20', 2017, 'House of Starks', 'James Dean', 'eng', 1420, '127-7631-21-20'),
(21, 'Book №21', 'Описание Книги №21', 2018, 'House of Starks', 'James Dean', 'eng', 1470, '127-7631-21-21'),
(22, 'Book №22', 'Описание Книги №22', 2019, 'House of Starks', 'James Dean', 'eng', 1520, '127-7631-21-22'),
(23, 'Book №23', 'Описание Книги №23', 2020, 'House of Starks', 'James Dean', 'eng', 1570, '127-7631-21-23'),
(25, 'Новая книга', 'Последняя', 2077, 'АСТ', 'Иван Иванович', 'болгарский', 1088, '56-56-987-213');

-- --------------------------------------------------------

--
-- Структура таблицы `book_category`
--

CREATE TABLE IF NOT EXISTS `book_category` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `book_category`
--

INSERT INTO `book_category` (`id`, `book_id`, `category_id`) VALUES
(1, 1, 1),
(2, 2, 3),
(5, 2, 6),
(6, 1, 4),
(9, 4, 5),
(10, 3, 3),
(11, 5, 3),
(12, 5, 6),
(14, 6, 2),
(15, 6, 3),
(19, 6, 7),
(20, 25, 3),
(21, 25, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `title`) VALUES
(1, 'Исторический роман'),
(2, 'Роман'),
(3, 'Детектив'),
(4, 'Современная проза'),
(5, 'Приключения'),
(6, 'Биография'),
(7, 'Спорт');

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE IF NOT EXISTS `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1560016342),
('m130524_201442_init', 1560016350),
('m190124_110200_add_verification_token_column_to_user_table', 1560016350);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`) VALUES
(7, 'root', '1lHbsu0w1XDTjvQ5VHefFNY15xOINKYq', '$2y$13$BvDCLUbjeTAO3iiiuZdav.eHdx7i4lSx5LHW7UMX03BlN8xNH1.zi', NULL, 'root@root.com', 10, 1560019351, 1560019351, 'BQtckAdiFI7AYe3bXDtROOvJp0cMu9Oq_1560019351');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `book_category`
--
ALTER TABLE `book_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT для таблицы `book_category`
--
ALTER TABLE `book_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `book_category`
--
ALTER TABLE `book_category`
  ADD CONSTRAINT `FK_book_category_book` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`),
  ADD CONSTRAINT `FK_book_category_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
