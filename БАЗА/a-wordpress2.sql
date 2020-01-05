-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 05 2020 г., 22:28
-- Версия сервера: 5.6.38
-- Версия PHP: 7.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `a-wordpress2`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-12-19 14:23:39', '2019-12-19 11:23:39', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0),
(2, 8, 'admin', 'webdesign-x@bk.ru', '', '127.0.0.1', '2019-12-28 21:50:01', '2019-12-28 18:50:01', 'В сериале хороший сюжет и отличная актёрская игра.\n\nИзначально сериал может показаться обычным трешаком, но чуть позже начинает начинать обороты. Появляется много запоминающихся персонажей, которые по своему отличатся и проявят себя, а история приобретает большие масштабы.\n\nВпрочем, несмотря на это, сериал может похвастаться своей напряжённостью лишь 2-3 раза за сезон. Многие серии через чур затянуты. Сам же сериал становится интереснее лишь к пятому сезону, предыдущие сезоны заметно слабее, хотя и не безынтересны.\n\nВ сериале отлично показана наука. Вроде заодно можно узнать состав человеческого тела, о рицине, о различных веществах и их свойствах. Многое, конечно же, преувеличено (вроде плавиковой кислоты), впрочем, это ни капли не опускает сериал.\n\nКонцовка очень хорошая, именно такая и нужна этому сериалу. Смотреть стоит.', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '', 0, 1),
(3, 8, 'admin', 'webdesign-x@bk.ru', '', '127.0.0.1', '2019-12-28 21:54:08', '2019-12-28 18:54:08', 'Один из самых любимых мною сериалов.\n\nПричем с самого начала он не цеплял. Я начинал его просмотр заново несколько раз, но после 2-3 серий останавливался. Но высокий рейтинг и хвалебные отзывы заставили меня передумать, и вот позади четыре сезона. Прекрасных четыре сезона.\n\nПоначалу повествование идет неспешно и размеренно, но со временем градус происходящих на экране событий начинает расти.\n\nМы выдим историю школьного учителя химии (хотя квалификация у него гораздо выше), у которого беременная жена, сын-инвалид, две работы, куча бытовыч проблем. В глазах окружающих он «яйцеголовый», я бы даже сказал — ни рыба, ни мясо. Родня вряд ли ожидает от него чего-нибудь из ряда вон выходящего. Но все меняется, когда у протагониста обнаруживают рак. Уолтеру Уайту нужно принимать решительные меры, чтобы обеспечить будущее семьи после своего ухода. Чем занятся опытному химику? Начать варить метамфетамин, найдя к себе в напарники Джесси Пинкмана, «бывалого» в вопросах изготовления и продажи этого наркотика. Но продукция Уолта — лучшая, не имеющая аналогов на рынке.\n\nИнтересно наблюдать за становлением главного героя в криминальном мире своего городка и решением им проблем, которые встают на пути, начиная с иготовления, попыток распространения, конфликтов с конкурентами, зарабатывания себе имени и репутации, становления своего «бренда». И в какой-то момент становление его как убийцы. На протяжении четырех сезонов он несколько раз меняет покровителей, решает жизненные (в самом прямом смысле) вопросы, пытась все это время не выдать себя перед семьей. Да и свояк, работающий в отделе по борьбе с наркотиками, мечтает поймать загадочного Хайзенберга(тот самый бренд).\n\nУолтер принимет крайне не легкие решения. И в этом плане он не похож на персонажей многих сериалов, где герои совершают преступления, мотивируя себя некими благородными намерениями или борьбой за справедливость. Тут мотивация другая — или ты их, или они тебя. Начинает он, как и любой новичок, неуверенно, совершая ошибки, но постепенно все меняется и перед нами предстает уже совсем другой Уолтер Уайт.\n\nОднозначно рекомендую к просмотру эту криминальную драму, только запаситесь немного терпением в начале.', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '', 0, 1),
(4, 8, 'admin', 'webdesign-x@bk.ru', '', '127.0.0.1', '2019-12-28 21:56:36', '2019-12-28 18:56:36', 'Все идет вперед и вперед, ничто не погибает.\nУмереть — это вовсе не то, что ты думал, но лучше.\n\n(Уолт Уитмен)\n\nКлассический вопрос: что бы вы делали, останься вам жить полгода? Скромный учитель химии Уолтер Уайт начал варить метамфетамин. Ради чего? Ради денег? Семьи? Славы? Себя? Словно змея, сбрасывал он чешую за чешуей, чтобы в конце концов остаться наедине со смертью, правдой и своей душой. Не стоит лукавить — он совершал черные поступки и руководствовался черным эгоизмом — американская мечта отравила его, как отравила тысячи «героев» до него. Но почему мы готовы принять его таким — убийцей и наркобароном, лжецом и стяжателем? Потому что он шел вперед, ставил на кон всё и выигрывал, смотрел в глаза смерти и командовал ей «место!». Потому что он платил самую высокую цену и того же требовал от других. Он не был хорошим человеком. Он был динамитом. Эдип, как известно, убил своего отца и спал с матерью (пусть и не зная того). Уолтер Уайт тоже претендует на трагедию и катарсис. Ведь цель искусства — не мораль, не советы, как жить, а нечто иное, порой совершенно иное. Это проникновение к сути вещей. Это действие и понимание, слитые воедино. И конечно, они рождают взрыв, хаос, силу. Силу, которая не считается с человеческим.\n\nТем сильнее оттеняет Уолтер Уайт своего главного антагониста — Джесси Пинкмана. Этот человек живет без цели и смысла, прячась от себя в комнатушку женских эмоций. Его «взрывы» — это взрывы слез и истерик, меланхолии и ненависти, его «сила» — это слабость, предательство, слепота. Мы застаем его варящим мет, потому что это «круто». Мы наблюдаем, как он отказывается от «варки», потому что им завладевает страх. В конце концов, он оказывается в цепях: цепях собственной трусости, чужих ценностей, подавляющей воли других людей. Он теряет близких, не способный их спасти от себя же. Он также в плену у эгоизма — но не освобождающего, как у Уайта, а парализующего, ослепляющего, унижающего. Он смотрит вокруг и не видит настоящих лиц — только призраков, порожденных его страхом и непониманием. Он единственный мог бы разглядеть Уайта, но, пораженный, остановился в отдалении. Джесси — символ «человеческого, слишком человеческого». Не нужно судить его строго, он — это каждый из нас.\n\nНадо признаться, разглядеть Уайта действительно нелегко. Слишком долго (первые четыре сезона) он рядился в чужие одежды. Была ли в том воля создателей, или они и сами не понимали, кто варится в их кинокотле, однако чересчур долго бикфордов шнур человека-динамита лишь тлел, дымился, едва искрил. Шляпа Гейзенберга то и дело спадала с головы нашего героя. Зритель недоуменно пожимал плечами: по повадкам вроде фраер, но не фраер, это точно? Деньги, семья, давняя обида, позабытое чувство творческой силы, сладкий вкус тонкой лжи и игры ума — не маловато ли для смертельно больного гения? Не припарки ли это для уже-мертвеца? Я вспоминаю другие великие киноповествования: «Lost», давший нам Тайну, и «Побег», спевший нам о Свободе. Что назовем мы с большой буквы в «Breaking Bad»? Вопреки всему bad? Пожалуй, вопреки — хорошее слово. Вопреки обстоятельствам, судьбе, молве, даже закону. В конце концов, закон устанавливают всего лишь люди, всего лишь Хэнки, всего лишь Пинкманы.\n\nНо одного негативного Вопреки мало. Нужно и что-то позитивное. Только финал сериала, последняя из шестидесяти двух серий, выводит нас к нему. Уф, долгая была дорожка! Я б подсократил. Право же, мушиные петли совершенно излишни. Но финал идеален. В нем наконец вырывается наружу то, ради чего жил и умирал Уолтер Уайт. В полном соответствии с ницшеанскими канонами, это Воля, волящая саму себя, разжигающая саму себя, гаснущая только от самой себя. Всё хочет сделать она по-своему, расставить всё в мире так, как желает только она. Символично, что к Уолтеру Уайту так и не подобрался рак, чужая пуля или решетка. Ведь Воля не признает никакой внешней силы, но принимает только саму себя. Все точки над i расставляет она, чтобы поставить последнюю, рядом с собой, как свою собственность. И только тогда смерть не будет иметь ни малейшего значения, равно как миллионы в бочках, презрение общества или горе близких людей. Ибо и всё это — лишь воля или безволие. Первой не нужно никакое оправдание, второму никакое оправдание не поможет. Вот чему учит нас «Breaking Bad». Великая Воля — вот что начертано на его знаменах.\n\nИ не будем себя обманывать: величие неотделимо от страшного. (Фридрих Ницше)', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_cp_calculated_fields_form_discount_codes`
--

CREATE TABLE `wp_cp_calculated_fields_form_discount_codes` (
  `id` mediumint(9) NOT NULL,
  `form_id` mediumint(9) NOT NULL DEFAULT '1',
  `code` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `discount` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `availability` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `used` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_cp_calculated_fields_form_posts`
--

CREATE TABLE `wp_cp_calculated_fields_form_posts` (
  `id` mediumint(9) NOT NULL,
  `formid` int(11) NOT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ipaddr` varchar(41) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `notifyto` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `paypal_post` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `paid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_cp_calculated_fields_form_revision`
--

CREATE TABLE `wp_cp_calculated_fields_form_revision` (
  `id` mediumint(9) NOT NULL,
  `formid` mediumint(9) NOT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `revision` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_cp_calculated_fields_form_revision`
--

INSERT INTO `wp_cp_calculated_fields_form_revision` (`id`, `formid`, `time`, `revision`) VALUES
(7, 7, '2019-12-20 21:23:03', 'a:60:{s:2:\"id\";s:1:\"7\";s:9:\"form_name\";s:4:\"neqw\";s:14:\"form_structure\";s:1310:\"[[{\"form_identifier\":\"\",\"name\":\"fieldname2\",\"shortlabel\":\"\",\"index\":0,\"ftype\":\"fnumber\",\"userhelp\":\"\",\"userhelpTooltip\":false,\"csslayout\":\"\",\"title\":\"Number\",\"predefined\":\"5\",\"predefinedClick\":false,\"required\":false,\"readonly\":false,\"size\":\"small\",\"thousandSeparator\":\"\",\"decimalSymbol\":\".\",\"min\":\"\",\"max\":\"\",\"formatDynamically\":false,\"dformat\":\"digits\",\"formats\":[\"digits\",\"number\",\"percent\"],\"fBuild\":{},\"parent\":\"\"},{\"form_identifier\":\"\",\"name\":\"separator1\",\"shortlabel\":\"\",\"index\":1,\"ftype\":\"fSectionBreak\",\"userhelp\":\"\",\"userhelpTooltip\":false,\"csslayout\":\"\",\"title\":\"The field below will show the double of the number above.\",\"fBuild\":{},\"parent\":\"\"},{\"dependencies\":[{\"rule\":\"\",\"complex\":false,\"fields\":[\"\"]}],\"form_identifier\":\"\",\"name\":\"fieldname1\",\"shortlabel\":\"\",\"index\":2,\"ftype\":\"fCalculated\",\"userhelp\":\"\",\"userhelpTooltip\":false,\"csslayout\":\"\",\"title\":\"Calculated Value\",\"predefined\":\"\",\"required\":false,\"size\":\"medium\",\"eq\":\"fieldname2*2\",\"suffix\":\"\",\"prefix\":\"\",\"decimalsymbol\":\".\",\"groupingsymbol\":\"\",\"readonly\":true,\"hidefield\":false,\"fBuild\":{},\"parent\":\"\"}],[{\"title\":\"Calculated Form\",\"description\":\"Starting form. Basic calculated fields sample. \",\"formlayout\":\"top_aligned\",\"formtemplate\":\"\",\"evalequations\":1,\"evalequationsevent\":2,\"autocomplete\":1,\"persistence\":0,\"customstyles\":\"\"}]]\";s:13:\"fp_from_email\";s:0:\"\";s:21:\"fp_destination_emails\";s:0:\"\";s:10:\"fp_subject\";s:0:\"\";s:22:\"fp_inc_additional_info\";s:5:\"false\";s:14:\"fp_return_page\";s:0:\"\";s:10:\"fp_message\";s:0:\"\";s:14:\"fp_emailformat\";s:4:\"html\";s:22:\"cu_enable_copy_to_user\";s:5:\"false\";s:19:\"cu_user_email_field\";s:0:\"\";s:10:\"cu_subject\";s:0:\"\";s:10:\"cu_message\";s:0:\"\";s:14:\"cu_emailformat\";s:4:\"html\";s:18:\"fp_emailfrommethod\";s:0:\"\";s:24:\"enable_paypal_option_yes\";s:0:\"\";s:23:\"enable_paypal_option_no\";s:0:\"\";s:17:\"vs_use_validation\";s:4:\"true\";s:19:\"vs_text_is_required\";s:23:\"This field is required.\";s:16:\"vs_text_is_email\";s:35:\"Please enter a valid email address.\";s:20:\"vs_text_datemmddyyyy\";s:54:\"Please enter a valid date with this format(mm/dd/yyyy)\";s:20:\"vs_text_dateddmmyyyy\";s:54:\"Please enter a valid date with this format(dd/mm/yyyy)\";s:14:\"vs_text_number\";s:28:\"Please enter a valid number.\";s:14:\"vs_text_digits\";s:25:\"Please enter only digits.\";s:11:\"vs_text_max\";s:47:\"Please enter a value less than or equal to {0}.\";s:11:\"vs_text_min\";s:50:\"Please enter a value greater than or equal to {0}.\";s:17:\"vs_text_submitbtn\";s:0:\"\";s:19:\"vs_text_previousbtn\";s:8:\"Previous\";s:15:\"vs_text_nextbtn\";s:4:\"Next\";s:12:\"vs_all_texts\";s:631:\"a:2:{s:12:\"page_of_text\";a:1:{s:4:\"text\";s:15:\"Page {0} of {0}\";}s:6:\"errors\";a:7:{s:8:\"currency\";a:1:{s:4:\"text\";s:36:\"Please enter a valid currency value.\";}s:9:\"maxlength\";a:1:{s:4:\"text\";s:41:\"Please enter no more than {0} characters.\";}s:9:\"minlength\";a:1:{s:4:\"text\";s:37:\"Please enter at least {0} characters.\";}s:7:\"equalTo\";a:1:{s:4:\"text\";s:34:\"Please enter the same value again.\";}s:6:\"accept\";a:1:{s:4:\"text\";s:44:\"Please enter a value with a valid extension.\";}s:11:\"upload_size\";a:1:{s:4:\"text\";s:53:\"The file you\'ve chosen is too big, maximum is {0} kB.\";}s:5:\"phone\";a:1:{s:4:\"text\";s:21:\"Invalid phone number.\";}}}\";s:13:\"enable_paypal\";s:1:\"0\";s:13:\"enable_submit\";s:0:\"\";s:17:\"paypal_notiemails\";s:0:\"\";s:12:\"paypal_email\";s:0:\"\";s:12:\"request_cost\";s:0:\"\";s:19:\"paypal_product_name\";s:0:\"\";s:8:\"currency\";s:3:\"USD\";s:15:\"paypal_language\";s:2:\"EN\";s:11:\"paypal_mode\";s:10:\"production\";s:16:\"paypal_recurrent\";s:1:\"0\";s:22:\"paypal_recurrent_setup\";s:0:\"\";s:27:\"paypal_recurrent_setup_days\";s:0:\"\";s:22:\"paypal_identify_prices\";s:1:\"0\";s:19:\"paypal_zero_payment\";s:1:\"0\";s:18:\"paypal_base_amount\";N;s:14:\"paypal_address\";s:1:\"1\";s:17:\"cv_enable_captcha\";s:4:\"true\";s:8:\"cv_width\";s:3:\"180\";s:9:\"cv_height\";s:2:\"60\";s:8:\"cv_chars\";s:1:\"5\";s:7:\"cv_font\";s:10:\"font-1.ttf\";s:16:\"cv_min_font_size\";s:2:\"25\";s:16:\"cv_max_font_size\";s:2:\"35\";s:8:\"cv_noise\";s:3:\"200\";s:15:\"cv_noise_length\";s:1:\"4\";s:13:\"cv_background\";s:6:\"ffffff\";s:9:\"cv_border\";s:6:\"000000\";s:27:\"cv_text_enter_valid_captcha\";s:34:\"Please enter a valid captcha code.\";s:5:\"cache\";s:0:\"\";}'),
(8, 7, '2019-12-20 21:23:28', 'a:60:{s:2:\"id\";s:1:\"7\";s:9:\"form_name\";s:4:\"neqw\";s:14:\"form_structure\";s:1310:\"[[{\"form_identifier\":\"\",\"name\":\"fieldname2\",\"shortlabel\":\"\",\"index\":0,\"ftype\":\"fnumber\",\"userhelp\":\"\",\"userhelpTooltip\":false,\"csslayout\":\"\",\"title\":\"Number\",\"predefined\":\"5\",\"predefinedClick\":false,\"required\":false,\"readonly\":false,\"size\":\"small\",\"thousandSeparator\":\"\",\"decimalSymbol\":\".\",\"min\":\"\",\"max\":\"\",\"formatDynamically\":false,\"dformat\":\"digits\",\"formats\":[\"digits\",\"number\",\"percent\"],\"fBuild\":{},\"parent\":\"\"},{\"form_identifier\":\"\",\"name\":\"separator1\",\"shortlabel\":\"\",\"index\":1,\"ftype\":\"fSectionBreak\",\"userhelp\":\"\",\"userhelpTooltip\":false,\"csslayout\":\"\",\"title\":\"The field below will show the double of the number above.\",\"fBuild\":{},\"parent\":\"\"},{\"dependencies\":[{\"rule\":\"\",\"complex\":false,\"fields\":[\"\"]}],\"form_identifier\":\"\",\"name\":\"fieldname1\",\"shortlabel\":\"\",\"index\":2,\"ftype\":\"fCalculated\",\"userhelp\":\"\",\"userhelpTooltip\":false,\"csslayout\":\"\",\"title\":\"Calculated Value\",\"predefined\":\"\",\"required\":false,\"size\":\"medium\",\"eq\":\"fieldname2*2\",\"suffix\":\"\",\"prefix\":\"\",\"decimalsymbol\":\".\",\"groupingsymbol\":\"\",\"readonly\":true,\"hidefield\":false,\"fBuild\":{},\"parent\":\"\"}],[{\"title\":\"Calculated Form\",\"description\":\"Starting form. Basic calculated fields sample. \",\"formlayout\":\"top_aligned\",\"formtemplate\":\"\",\"evalequations\":1,\"evalequationsevent\":2,\"autocomplete\":1,\"persistence\":0,\"customstyles\":\"\"}]]\";s:13:\"fp_from_email\";s:0:\"\";s:21:\"fp_destination_emails\";s:0:\"\";s:10:\"fp_subject\";s:0:\"\";s:22:\"fp_inc_additional_info\";s:5:\"false\";s:14:\"fp_return_page\";s:0:\"\";s:10:\"fp_message\";s:0:\"\";s:14:\"fp_emailformat\";s:4:\"html\";s:22:\"cu_enable_copy_to_user\";s:5:\"false\";s:19:\"cu_user_email_field\";s:0:\"\";s:10:\"cu_subject\";s:0:\"\";s:10:\"cu_message\";s:0:\"\";s:14:\"cu_emailformat\";s:4:\"html\";s:18:\"fp_emailfrommethod\";s:0:\"\";s:24:\"enable_paypal_option_yes\";s:0:\"\";s:23:\"enable_paypal_option_no\";s:0:\"\";s:17:\"vs_use_validation\";s:4:\"true\";s:19:\"vs_text_is_required\";s:23:\"This field is required.\";s:16:\"vs_text_is_email\";s:35:\"Please enter a valid email address.\";s:20:\"vs_text_datemmddyyyy\";s:54:\"Please enter a valid date with this format(mm/dd/yyyy)\";s:20:\"vs_text_dateddmmyyyy\";s:54:\"Please enter a valid date with this format(dd/mm/yyyy)\";s:14:\"vs_text_number\";s:28:\"Please enter a valid number.\";s:14:\"vs_text_digits\";s:25:\"Please enter only digits.\";s:11:\"vs_text_max\";s:47:\"Please enter a value less than or equal to {0}.\";s:11:\"vs_text_min\";s:50:\"Please enter a value greater than or equal to {0}.\";s:17:\"vs_text_submitbtn\";s:0:\"\";s:19:\"vs_text_previousbtn\";s:8:\"Previous\";s:15:\"vs_text_nextbtn\";s:4:\"Next\";s:12:\"vs_all_texts\";s:631:\"a:2:{s:12:\"page_of_text\";a:1:{s:4:\"text\";s:15:\"Page {0} of {0}\";}s:6:\"errors\";a:7:{s:8:\"currency\";a:1:{s:4:\"text\";s:36:\"Please enter a valid currency value.\";}s:9:\"maxlength\";a:1:{s:4:\"text\";s:41:\"Please enter no more than {0} characters.\";}s:9:\"minlength\";a:1:{s:4:\"text\";s:37:\"Please enter at least {0} characters.\";}s:7:\"equalTo\";a:1:{s:4:\"text\";s:34:\"Please enter the same value again.\";}s:6:\"accept\";a:1:{s:4:\"text\";s:44:\"Please enter a value with a valid extension.\";}s:11:\"upload_size\";a:1:{s:4:\"text\";s:53:\"The file you\'ve chosen is too big, maximum is {0} kB.\";}s:5:\"phone\";a:1:{s:4:\"text\";s:21:\"Invalid phone number.\";}}}\";s:13:\"enable_paypal\";s:1:\"0\";s:13:\"enable_submit\";s:0:\"\";s:17:\"paypal_notiemails\";s:0:\"\";s:12:\"paypal_email\";s:0:\"\";s:12:\"request_cost\";s:0:\"\";s:19:\"paypal_product_name\";s:0:\"\";s:8:\"currency\";s:3:\"USD\";s:15:\"paypal_language\";s:2:\"EN\";s:11:\"paypal_mode\";s:10:\"production\";s:16:\"paypal_recurrent\";s:1:\"0\";s:22:\"paypal_recurrent_setup\";s:0:\"\";s:27:\"paypal_recurrent_setup_days\";s:0:\"\";s:22:\"paypal_identify_prices\";s:1:\"0\";s:19:\"paypal_zero_payment\";s:1:\"0\";s:18:\"paypal_base_amount\";N;s:14:\"paypal_address\";s:1:\"1\";s:17:\"cv_enable_captcha\";s:4:\"true\";s:8:\"cv_width\";s:3:\"180\";s:9:\"cv_height\";s:2:\"60\";s:8:\"cv_chars\";s:1:\"5\";s:7:\"cv_font\";s:10:\"font-1.ttf\";s:16:\"cv_min_font_size\";s:2:\"25\";s:16:\"cv_max_font_size\";s:2:\"35\";s:8:\"cv_noise\";s:3:\"200\";s:15:\"cv_noise_length\";s:1:\"4\";s:13:\"cv_background\";s:6:\"ffffff\";s:9:\"cv_border\";s:6:\"000000\";s:27:\"cv_text_enter_valid_captcha\";s:34:\"Please enter a valid captcha code.\";s:5:\"cache\";s:0:\"\";}'),
(9, 7, '2019-12-20 21:26:53', 'a:60:{s:2:\"id\";s:1:\"7\";s:9:\"form_name\";s:4:\"neqw\";s:14:\"form_structure\";s:1248:\"[[{\"form_identifier\":\"\",\"name\":\"fieldname2\",\"shortlabel\":\"\",\"index\":0,\"ftype\":\"fnumber\",\"userhelp\":\"\",\"userhelpTooltip\":false,\"csslayout\":\"\",\"title\":\"Number\",\"predefined\":\"5\",\"predefinedClick\":false,\"required\":false,\"readonly\":false,\"size\":\"small\",\"thousandSeparator\":\"\",\"decimalSymbol\":\".\",\"min\":\"\",\"max\":\"\",\"formatDynamically\":false,\"dformat\":\"digits\",\"formats\":[\"digits\",\"number\",\"percent\"],\"fBuild\":{},\"parent\":\"\"},{\"form_identifier\":\"\",\"name\":\"separator1\",\"shortlabel\":\"\",\"index\":1,\"ftype\":\"fSectionBreak\",\"userhelp\":\"\",\"userhelpTooltip\":false,\"csslayout\":\"\",\"title\":\"The field below will show the double of the number above.\",\"fBuild\":{},\"parent\":\"\"},{\"dependencies\":[{\"rule\":\"\",\"complex\":false,\"fields\":[\"\"]}],\"form_identifier\":\"\",\"name\":\"fieldname1\",\"shortlabel\":\"\",\"index\":2,\"ftype\":\"fCalculated\",\"userhelp\":\"\",\"userhelpTooltip\":false,\"csslayout\":\"\",\"title\":\"Calculated Value\",\"predefined\":\"\",\"required\":false,\"size\":\"medium\",\"eq\":\"fieldname2*2\",\"suffix\":\"\",\"prefix\":\"\",\"decimalsymbol\":\".\",\"groupingsymbol\":\"\",\"readonly\":true,\"hidefield\":false,\"fBuild\":{},\"parent\":\"\"}],[{\"title\":\"\",\"description\":\"\",\"formlayout\":\"top_aligned\",\"formtemplate\":\"\",\"evalequations\":1,\"evalequationsevent\":2,\"autocomplete\":1,\"persistence\":0,\"customstyles\":\"\"}]]\";s:13:\"fp_from_email\";s:0:\"\";s:21:\"fp_destination_emails\";s:0:\"\";s:10:\"fp_subject\";s:0:\"\";s:22:\"fp_inc_additional_info\";s:5:\"false\";s:14:\"fp_return_page\";s:0:\"\";s:10:\"fp_message\";s:0:\"\";s:14:\"fp_emailformat\";s:4:\"html\";s:22:\"cu_enable_copy_to_user\";s:5:\"false\";s:19:\"cu_user_email_field\";s:0:\"\";s:10:\"cu_subject\";s:0:\"\";s:10:\"cu_message\";s:0:\"\";s:14:\"cu_emailformat\";s:4:\"html\";s:18:\"fp_emailfrommethod\";s:0:\"\";s:24:\"enable_paypal_option_yes\";s:0:\"\";s:23:\"enable_paypal_option_no\";s:0:\"\";s:17:\"vs_use_validation\";s:4:\"true\";s:19:\"vs_text_is_required\";s:23:\"This field is required.\";s:16:\"vs_text_is_email\";s:35:\"Please enter a valid email address.\";s:20:\"vs_text_datemmddyyyy\";s:54:\"Please enter a valid date with this format(mm/dd/yyyy)\";s:20:\"vs_text_dateddmmyyyy\";s:54:\"Please enter a valid date with this format(dd/mm/yyyy)\";s:14:\"vs_text_number\";s:28:\"Please enter a valid number.\";s:14:\"vs_text_digits\";s:25:\"Please enter only digits.\";s:11:\"vs_text_max\";s:47:\"Please enter a value less than or equal to {0}.\";s:11:\"vs_text_min\";s:50:\"Please enter a value greater than or equal to {0}.\";s:17:\"vs_text_submitbtn\";s:0:\"\";s:19:\"vs_text_previousbtn\";s:8:\"Previous\";s:15:\"vs_text_nextbtn\";s:4:\"Next\";s:12:\"vs_all_texts\";s:631:\"a:2:{s:12:\"page_of_text\";a:1:{s:4:\"text\";s:15:\"Page {0} of {0}\";}s:6:\"errors\";a:7:{s:8:\"currency\";a:1:{s:4:\"text\";s:36:\"Please enter a valid currency value.\";}s:9:\"maxlength\";a:1:{s:4:\"text\";s:41:\"Please enter no more than {0} characters.\";}s:9:\"minlength\";a:1:{s:4:\"text\";s:37:\"Please enter at least {0} characters.\";}s:7:\"equalTo\";a:1:{s:4:\"text\";s:34:\"Please enter the same value again.\";}s:6:\"accept\";a:1:{s:4:\"text\";s:44:\"Please enter a value with a valid extension.\";}s:11:\"upload_size\";a:1:{s:4:\"text\";s:53:\"The file you\'ve chosen is too big, maximum is {0} kB.\";}s:5:\"phone\";a:1:{s:4:\"text\";s:21:\"Invalid phone number.\";}}}\";s:13:\"enable_paypal\";s:1:\"0\";s:13:\"enable_submit\";s:0:\"\";s:17:\"paypal_notiemails\";s:0:\"\";s:12:\"paypal_email\";s:0:\"\";s:12:\"request_cost\";s:0:\"\";s:19:\"paypal_product_name\";s:0:\"\";s:8:\"currency\";s:3:\"USD\";s:15:\"paypal_language\";s:2:\"EN\";s:11:\"paypal_mode\";s:10:\"production\";s:16:\"paypal_recurrent\";s:1:\"0\";s:22:\"paypal_recurrent_setup\";s:0:\"\";s:27:\"paypal_recurrent_setup_days\";s:0:\"\";s:22:\"paypal_identify_prices\";s:1:\"0\";s:19:\"paypal_zero_payment\";s:1:\"0\";s:18:\"paypal_base_amount\";N;s:14:\"paypal_address\";s:1:\"1\";s:17:\"cv_enable_captcha\";s:4:\"true\";s:8:\"cv_width\";s:3:\"180\";s:9:\"cv_height\";s:2:\"60\";s:8:\"cv_chars\";s:1:\"5\";s:7:\"cv_font\";s:10:\"font-1.ttf\";s:16:\"cv_min_font_size\";s:2:\"25\";s:16:\"cv_max_font_size\";s:2:\"35\";s:8:\"cv_noise\";s:3:\"200\";s:15:\"cv_noise_length\";s:1:\"4\";s:13:\"cv_background\";s:6:\"ffffff\";s:9:\"cv_border\";s:6:\"000000\";s:27:\"cv_text_enter_valid_captcha\";s:34:\"Please enter a valid captcha code.\";s:5:\"cache\";s:0:\"\";}'),
(10, 7, '2019-12-20 21:26:57', 'a:60:{s:2:\"id\";s:1:\"7\";s:9:\"form_name\";s:4:\"neqw\";s:14:\"form_structure\";s:1248:\"[[{\"form_identifier\":\"\",\"name\":\"fieldname2\",\"shortlabel\":\"\",\"index\":0,\"ftype\":\"fnumber\",\"userhelp\":\"\",\"userhelpTooltip\":false,\"csslayout\":\"\",\"title\":\"Number\",\"predefined\":\"5\",\"predefinedClick\":false,\"required\":false,\"readonly\":false,\"size\":\"small\",\"thousandSeparator\":\"\",\"decimalSymbol\":\".\",\"min\":\"\",\"max\":\"\",\"formatDynamically\":false,\"dformat\":\"digits\",\"formats\":[\"digits\",\"number\",\"percent\"],\"fBuild\":{},\"parent\":\"\"},{\"form_identifier\":\"\",\"name\":\"separator1\",\"shortlabel\":\"\",\"index\":1,\"ftype\":\"fSectionBreak\",\"userhelp\":\"\",\"userhelpTooltip\":false,\"csslayout\":\"\",\"title\":\"The field below will show the double of the number above.\",\"fBuild\":{},\"parent\":\"\"},{\"dependencies\":[{\"rule\":\"\",\"complex\":false,\"fields\":[\"\"]}],\"form_identifier\":\"\",\"name\":\"fieldname1\",\"shortlabel\":\"\",\"index\":2,\"ftype\":\"fCalculated\",\"userhelp\":\"\",\"userhelpTooltip\":false,\"csslayout\":\"\",\"title\":\"Calculated Value\",\"predefined\":\"\",\"required\":false,\"size\":\"medium\",\"eq\":\"fieldname2*2\",\"suffix\":\"\",\"prefix\":\"\",\"decimalsymbol\":\".\",\"groupingsymbol\":\"\",\"readonly\":true,\"hidefield\":false,\"fBuild\":{},\"parent\":\"\"}],[{\"title\":\"\",\"description\":\"\",\"formlayout\":\"top_aligned\",\"formtemplate\":\"\",\"evalequations\":1,\"evalequationsevent\":2,\"autocomplete\":1,\"persistence\":0,\"customstyles\":\"\"}]]\";s:13:\"fp_from_email\";s:0:\"\";s:21:\"fp_destination_emails\";s:0:\"\";s:10:\"fp_subject\";s:0:\"\";s:22:\"fp_inc_additional_info\";s:5:\"false\";s:14:\"fp_return_page\";s:0:\"\";s:10:\"fp_message\";s:0:\"\";s:14:\"fp_emailformat\";s:4:\"html\";s:22:\"cu_enable_copy_to_user\";s:5:\"false\";s:19:\"cu_user_email_field\";s:0:\"\";s:10:\"cu_subject\";s:0:\"\";s:10:\"cu_message\";s:0:\"\";s:14:\"cu_emailformat\";s:4:\"html\";s:18:\"fp_emailfrommethod\";s:0:\"\";s:24:\"enable_paypal_option_yes\";s:0:\"\";s:23:\"enable_paypal_option_no\";s:0:\"\";s:17:\"vs_use_validation\";s:4:\"true\";s:19:\"vs_text_is_required\";s:23:\"This field is required.\";s:16:\"vs_text_is_email\";s:35:\"Please enter a valid email address.\";s:20:\"vs_text_datemmddyyyy\";s:54:\"Please enter a valid date with this format(mm/dd/yyyy)\";s:20:\"vs_text_dateddmmyyyy\";s:54:\"Please enter a valid date with this format(dd/mm/yyyy)\";s:14:\"vs_text_number\";s:28:\"Please enter a valid number.\";s:14:\"vs_text_digits\";s:25:\"Please enter only digits.\";s:11:\"vs_text_max\";s:47:\"Please enter a value less than or equal to {0}.\";s:11:\"vs_text_min\";s:50:\"Please enter a value greater than or equal to {0}.\";s:17:\"vs_text_submitbtn\";s:0:\"\";s:19:\"vs_text_previousbtn\";s:8:\"Previous\";s:15:\"vs_text_nextbtn\";s:4:\"Next\";s:12:\"vs_all_texts\";s:631:\"a:2:{s:12:\"page_of_text\";a:1:{s:4:\"text\";s:15:\"Page {0} of {0}\";}s:6:\"errors\";a:7:{s:8:\"currency\";a:1:{s:4:\"text\";s:36:\"Please enter a valid currency value.\";}s:9:\"maxlength\";a:1:{s:4:\"text\";s:41:\"Please enter no more than {0} characters.\";}s:9:\"minlength\";a:1:{s:4:\"text\";s:37:\"Please enter at least {0} characters.\";}s:7:\"equalTo\";a:1:{s:4:\"text\";s:34:\"Please enter the same value again.\";}s:6:\"accept\";a:1:{s:4:\"text\";s:44:\"Please enter a value with a valid extension.\";}s:11:\"upload_size\";a:1:{s:4:\"text\";s:53:\"The file you\'ve chosen is too big, maximum is {0} kB.\";}s:5:\"phone\";a:1:{s:4:\"text\";s:21:\"Invalid phone number.\";}}}\";s:13:\"enable_paypal\";s:1:\"0\";s:13:\"enable_submit\";s:0:\"\";s:17:\"paypal_notiemails\";s:0:\"\";s:12:\"paypal_email\";s:0:\"\";s:12:\"request_cost\";s:0:\"\";s:19:\"paypal_product_name\";s:0:\"\";s:8:\"currency\";s:3:\"USD\";s:15:\"paypal_language\";s:2:\"EN\";s:11:\"paypal_mode\";s:10:\"production\";s:16:\"paypal_recurrent\";s:1:\"0\";s:22:\"paypal_recurrent_setup\";s:0:\"\";s:27:\"paypal_recurrent_setup_days\";s:0:\"\";s:22:\"paypal_identify_prices\";s:1:\"0\";s:19:\"paypal_zero_payment\";s:1:\"0\";s:18:\"paypal_base_amount\";N;s:14:\"paypal_address\";s:1:\"1\";s:17:\"cv_enable_captcha\";s:4:\"true\";s:8:\"cv_width\";s:3:\"180\";s:9:\"cv_height\";s:2:\"60\";s:8:\"cv_chars\";s:1:\"5\";s:7:\"cv_font\";s:10:\"font-1.ttf\";s:16:\"cv_min_font_size\";s:2:\"25\";s:16:\"cv_max_font_size\";s:2:\"35\";s:8:\"cv_noise\";s:3:\"200\";s:15:\"cv_noise_length\";s:1:\"4\";s:13:\"cv_background\";s:6:\"ffffff\";s:9:\"cv_border\";s:6:\"000000\";s:27:\"cv_text_enter_valid_captcha\";s:34:\"Please enter a valid captcha code.\";s:5:\"cache\";s:0:\"\";}'),
(11, 7, '2019-12-20 21:29:06', 'a:60:{s:2:\"id\";s:1:\"7\";s:9:\"form_name\";s:4:\"neqw\";s:14:\"form_structure\";s:1248:\"[[{\"form_identifier\":\"\",\"name\":\"fieldname2\",\"shortlabel\":\"\",\"index\":0,\"ftype\":\"fnumber\",\"userhelp\":\"\",\"userhelpTooltip\":false,\"csslayout\":\"\",\"title\":\"Number\",\"predefined\":\"5\",\"predefinedClick\":false,\"required\":false,\"readonly\":false,\"size\":\"small\",\"thousandSeparator\":\"\",\"decimalSymbol\":\".\",\"min\":\"\",\"max\":\"\",\"formatDynamically\":false,\"dformat\":\"digits\",\"formats\":[\"digits\",\"number\",\"percent\"],\"fBuild\":{},\"parent\":\"\"},{\"form_identifier\":\"\",\"name\":\"separator1\",\"shortlabel\":\"\",\"index\":1,\"ftype\":\"fSectionBreak\",\"userhelp\":\"\",\"userhelpTooltip\":false,\"csslayout\":\"\",\"title\":\"The field below will show the double of the number above.\",\"fBuild\":{},\"parent\":\"\"},{\"dependencies\":[{\"rule\":\"\",\"complex\":false,\"fields\":[\"\"]}],\"form_identifier\":\"\",\"name\":\"fieldname1\",\"shortlabel\":\"\",\"index\":2,\"ftype\":\"fCalculated\",\"userhelp\":\"\",\"userhelpTooltip\":false,\"csslayout\":\"\",\"title\":\"Calculated Value\",\"predefined\":\"\",\"required\":false,\"size\":\"medium\",\"eq\":\"fieldname2*2\",\"suffix\":\"\",\"prefix\":\"\",\"decimalsymbol\":\".\",\"groupingsymbol\":\"\",\"readonly\":true,\"hidefield\":false,\"fBuild\":{},\"parent\":\"\"}],[{\"title\":\"\",\"description\":\"\",\"formlayout\":\"top_aligned\",\"formtemplate\":\"\",\"evalequations\":1,\"evalequationsevent\":2,\"autocomplete\":1,\"persistence\":0,\"customstyles\":\"\"}]]\";s:13:\"fp_from_email\";s:0:\"\";s:21:\"fp_destination_emails\";s:0:\"\";s:10:\"fp_subject\";s:0:\"\";s:22:\"fp_inc_additional_info\";s:5:\"false\";s:14:\"fp_return_page\";s:0:\"\";s:10:\"fp_message\";s:0:\"\";s:14:\"fp_emailformat\";s:4:\"html\";s:22:\"cu_enable_copy_to_user\";s:5:\"false\";s:19:\"cu_user_email_field\";s:0:\"\";s:10:\"cu_subject\";s:0:\"\";s:10:\"cu_message\";s:0:\"\";s:14:\"cu_emailformat\";s:4:\"html\";s:18:\"fp_emailfrommethod\";s:0:\"\";s:24:\"enable_paypal_option_yes\";s:0:\"\";s:23:\"enable_paypal_option_no\";s:0:\"\";s:17:\"vs_use_validation\";s:4:\"true\";s:19:\"vs_text_is_required\";s:23:\"This field is required.\";s:16:\"vs_text_is_email\";s:35:\"Please enter a valid email address.\";s:20:\"vs_text_datemmddyyyy\";s:54:\"Please enter a valid date with this format(mm/dd/yyyy)\";s:20:\"vs_text_dateddmmyyyy\";s:54:\"Please enter a valid date with this format(dd/mm/yyyy)\";s:14:\"vs_text_number\";s:28:\"Please enter a valid number.\";s:14:\"vs_text_digits\";s:25:\"Please enter only digits.\";s:11:\"vs_text_max\";s:47:\"Please enter a value less than or equal to {0}.\";s:11:\"vs_text_min\";s:50:\"Please enter a value greater than or equal to {0}.\";s:17:\"vs_text_submitbtn\";s:0:\"\";s:19:\"vs_text_previousbtn\";s:8:\"Previous\";s:15:\"vs_text_nextbtn\";s:4:\"Next\";s:12:\"vs_all_texts\";s:631:\"a:2:{s:12:\"page_of_text\";a:1:{s:4:\"text\";s:15:\"Page {0} of {0}\";}s:6:\"errors\";a:7:{s:8:\"currency\";a:1:{s:4:\"text\";s:36:\"Please enter a valid currency value.\";}s:9:\"maxlength\";a:1:{s:4:\"text\";s:41:\"Please enter no more than {0} characters.\";}s:9:\"minlength\";a:1:{s:4:\"text\";s:37:\"Please enter at least {0} characters.\";}s:7:\"equalTo\";a:1:{s:4:\"text\";s:34:\"Please enter the same value again.\";}s:6:\"accept\";a:1:{s:4:\"text\";s:44:\"Please enter a value with a valid extension.\";}s:11:\"upload_size\";a:1:{s:4:\"text\";s:53:\"The file you\'ve chosen is too big, maximum is {0} kB.\";}s:5:\"phone\";a:1:{s:4:\"text\";s:21:\"Invalid phone number.\";}}}\";s:13:\"enable_paypal\";s:1:\"0\";s:13:\"enable_submit\";s:0:\"\";s:17:\"paypal_notiemails\";s:0:\"\";s:12:\"paypal_email\";s:0:\"\";s:12:\"request_cost\";s:0:\"\";s:19:\"paypal_product_name\";s:0:\"\";s:8:\"currency\";s:3:\"USD\";s:15:\"paypal_language\";s:2:\"EN\";s:11:\"paypal_mode\";s:10:\"production\";s:16:\"paypal_recurrent\";s:1:\"0\";s:22:\"paypal_recurrent_setup\";s:0:\"\";s:27:\"paypal_recurrent_setup_days\";s:0:\"\";s:22:\"paypal_identify_prices\";s:1:\"0\";s:19:\"paypal_zero_payment\";s:1:\"0\";s:18:\"paypal_base_amount\";N;s:14:\"paypal_address\";s:1:\"1\";s:17:\"cv_enable_captcha\";s:4:\"true\";s:8:\"cv_width\";s:3:\"180\";s:9:\"cv_height\";s:2:\"60\";s:8:\"cv_chars\";s:1:\"5\";s:7:\"cv_font\";s:10:\"font-1.ttf\";s:16:\"cv_min_font_size\";s:2:\"25\";s:16:\"cv_max_font_size\";s:2:\"35\";s:8:\"cv_noise\";s:3:\"200\";s:15:\"cv_noise_length\";s:1:\"4\";s:13:\"cv_background\";s:6:\"ffffff\";s:9:\"cv_border\";s:6:\"000000\";s:27:\"cv_text_enter_valid_captcha\";s:34:\"Please enter a valid captcha code.\";s:5:\"cache\";s:0:\"\";}'),
(12, 7, '2019-12-20 21:29:10', 'a:60:{s:2:\"id\";s:1:\"7\";s:9:\"form_name\";s:4:\"neqw\";s:14:\"form_structure\";s:1248:\"[[{\"form_identifier\":\"\",\"name\":\"fieldname2\",\"shortlabel\":\"\",\"index\":0,\"ftype\":\"fnumber\",\"userhelp\":\"\",\"userhelpTooltip\":false,\"csslayout\":\"\",\"title\":\"Number\",\"predefined\":\"5\",\"predefinedClick\":false,\"required\":false,\"readonly\":false,\"size\":\"small\",\"thousandSeparator\":\"\",\"decimalSymbol\":\".\",\"min\":\"\",\"max\":\"\",\"formatDynamically\":false,\"dformat\":\"digits\",\"formats\":[\"digits\",\"number\",\"percent\"],\"fBuild\":{},\"parent\":\"\"},{\"form_identifier\":\"\",\"name\":\"separator1\",\"shortlabel\":\"\",\"index\":1,\"ftype\":\"fSectionBreak\",\"userhelp\":\"\",\"userhelpTooltip\":false,\"csslayout\":\"\",\"title\":\"The field below will show the double of the number above.\",\"fBuild\":{},\"parent\":\"\"},{\"dependencies\":[{\"rule\":\"\",\"complex\":false,\"fields\":[\"\"]}],\"form_identifier\":\"\",\"name\":\"fieldname1\",\"shortlabel\":\"\",\"index\":2,\"ftype\":\"fCalculated\",\"userhelp\":\"\",\"userhelpTooltip\":false,\"csslayout\":\"\",\"title\":\"Calculated Value\",\"predefined\":\"\",\"required\":false,\"size\":\"medium\",\"eq\":\"fieldname2*2\",\"suffix\":\"\",\"prefix\":\"\",\"decimalsymbol\":\".\",\"groupingsymbol\":\"\",\"readonly\":true,\"hidefield\":false,\"fBuild\":{},\"parent\":\"\"}],[{\"title\":\"\",\"description\":\"\",\"formlayout\":\"top_aligned\",\"formtemplate\":\"\",\"evalequations\":1,\"evalequationsevent\":2,\"autocomplete\":1,\"persistence\":0,\"customstyles\":\"\"}]]\";s:13:\"fp_from_email\";s:0:\"\";s:21:\"fp_destination_emails\";s:0:\"\";s:10:\"fp_subject\";s:0:\"\";s:22:\"fp_inc_additional_info\";s:5:\"false\";s:14:\"fp_return_page\";s:0:\"\";s:10:\"fp_message\";s:0:\"\";s:14:\"fp_emailformat\";s:4:\"html\";s:22:\"cu_enable_copy_to_user\";s:5:\"false\";s:19:\"cu_user_email_field\";s:0:\"\";s:10:\"cu_subject\";s:0:\"\";s:10:\"cu_message\";s:0:\"\";s:14:\"cu_emailformat\";s:4:\"html\";s:18:\"fp_emailfrommethod\";s:0:\"\";s:24:\"enable_paypal_option_yes\";s:0:\"\";s:23:\"enable_paypal_option_no\";s:0:\"\";s:17:\"vs_use_validation\";s:4:\"true\";s:19:\"vs_text_is_required\";s:23:\"This field is required.\";s:16:\"vs_text_is_email\";s:35:\"Please enter a valid email address.\";s:20:\"vs_text_datemmddyyyy\";s:54:\"Please enter a valid date with this format(mm/dd/yyyy)\";s:20:\"vs_text_dateddmmyyyy\";s:54:\"Please enter a valid date with this format(dd/mm/yyyy)\";s:14:\"vs_text_number\";s:28:\"Please enter a valid number.\";s:14:\"vs_text_digits\";s:25:\"Please enter only digits.\";s:11:\"vs_text_max\";s:47:\"Please enter a value less than or equal to {0}.\";s:11:\"vs_text_min\";s:50:\"Please enter a value greater than or equal to {0}.\";s:17:\"vs_text_submitbtn\";s:0:\"\";s:19:\"vs_text_previousbtn\";s:8:\"Previous\";s:15:\"vs_text_nextbtn\";s:4:\"Next\";s:12:\"vs_all_texts\";s:631:\"a:2:{s:12:\"page_of_text\";a:1:{s:4:\"text\";s:15:\"Page {0} of {0}\";}s:6:\"errors\";a:7:{s:8:\"currency\";a:1:{s:4:\"text\";s:36:\"Please enter a valid currency value.\";}s:9:\"maxlength\";a:1:{s:4:\"text\";s:41:\"Please enter no more than {0} characters.\";}s:9:\"minlength\";a:1:{s:4:\"text\";s:37:\"Please enter at least {0} characters.\";}s:7:\"equalTo\";a:1:{s:4:\"text\";s:34:\"Please enter the same value again.\";}s:6:\"accept\";a:1:{s:4:\"text\";s:44:\"Please enter a value with a valid extension.\";}s:11:\"upload_size\";a:1:{s:4:\"text\";s:53:\"The file you\'ve chosen is too big, maximum is {0} kB.\";}s:5:\"phone\";a:1:{s:4:\"text\";s:21:\"Invalid phone number.\";}}}\";s:13:\"enable_paypal\";s:1:\"0\";s:13:\"enable_submit\";s:0:\"\";s:17:\"paypal_notiemails\";s:0:\"\";s:12:\"paypal_email\";s:0:\"\";s:12:\"request_cost\";s:0:\"\";s:19:\"paypal_product_name\";s:0:\"\";s:8:\"currency\";s:3:\"USD\";s:15:\"paypal_language\";s:2:\"EN\";s:11:\"paypal_mode\";s:10:\"production\";s:16:\"paypal_recurrent\";s:1:\"0\";s:22:\"paypal_recurrent_setup\";s:0:\"\";s:27:\"paypal_recurrent_setup_days\";s:0:\"\";s:22:\"paypal_identify_prices\";s:1:\"0\";s:19:\"paypal_zero_payment\";s:1:\"0\";s:18:\"paypal_base_amount\";N;s:14:\"paypal_address\";s:1:\"1\";s:17:\"cv_enable_captcha\";s:4:\"true\";s:8:\"cv_width\";s:3:\"180\";s:9:\"cv_height\";s:2:\"60\";s:8:\"cv_chars\";s:1:\"5\";s:7:\"cv_font\";s:10:\"font-1.ttf\";s:16:\"cv_min_font_size\";s:2:\"25\";s:16:\"cv_max_font_size\";s:2:\"35\";s:8:\"cv_noise\";s:3:\"200\";s:15:\"cv_noise_length\";s:1:\"4\";s:13:\"cv_background\";s:6:\"ffffff\";s:9:\"cv_border\";s:6:\"000000\";s:27:\"cv_text_enter_valid_captcha\";s:34:\"Please enter a valid captcha code.\";s:5:\"cache\";s:0:\"\";}'),
(13, 7, '2019-12-20 21:30:54', 'a:60:{s:2:\"id\";s:1:\"7\";s:9:\"form_name\";s:4:\"neqw\";s:14:\"form_structure\";s:1248:\"[[{\"form_identifier\":\"\",\"name\":\"fieldname2\",\"shortlabel\":\"\",\"index\":0,\"ftype\":\"fnumber\",\"userhelp\":\"\",\"userhelpTooltip\":false,\"csslayout\":\"\",\"title\":\"Number\",\"predefined\":\"5\",\"predefinedClick\":false,\"required\":false,\"readonly\":false,\"size\":\"small\",\"thousandSeparator\":\"\",\"decimalSymbol\":\".\",\"min\":\"\",\"max\":\"\",\"formatDynamically\":false,\"dformat\":\"digits\",\"formats\":[\"digits\",\"number\",\"percent\"],\"fBuild\":{},\"parent\":\"\"},{\"form_identifier\":\"\",\"name\":\"separator1\",\"shortlabel\":\"\",\"index\":1,\"ftype\":\"fSectionBreak\",\"userhelp\":\"\",\"userhelpTooltip\":false,\"csslayout\":\"\",\"title\":\"The field below will show the double of the number above.\",\"fBuild\":{},\"parent\":\"\"},{\"dependencies\":[{\"rule\":\"\",\"complex\":false,\"fields\":[\"\"]}],\"form_identifier\":\"\",\"name\":\"fieldname1\",\"shortlabel\":\"\",\"index\":2,\"ftype\":\"fCalculated\",\"userhelp\":\"\",\"userhelpTooltip\":false,\"csslayout\":\"\",\"title\":\"Calculated Value\",\"predefined\":\"\",\"required\":false,\"size\":\"medium\",\"eq\":\"fieldname2*3\",\"suffix\":\"\",\"prefix\":\"\",\"decimalsymbol\":\".\",\"groupingsymbol\":\"\",\"readonly\":true,\"hidefield\":false,\"fBuild\":{},\"parent\":\"\"}],[{\"title\":\"\",\"description\":\"\",\"formlayout\":\"top_aligned\",\"formtemplate\":\"\",\"evalequations\":1,\"evalequationsevent\":2,\"autocomplete\":1,\"persistence\":0,\"customstyles\":\"\"}]]\";s:13:\"fp_from_email\";s:0:\"\";s:21:\"fp_destination_emails\";s:0:\"\";s:10:\"fp_subject\";s:0:\"\";s:22:\"fp_inc_additional_info\";s:5:\"false\";s:14:\"fp_return_page\";s:0:\"\";s:10:\"fp_message\";s:0:\"\";s:14:\"fp_emailformat\";s:4:\"html\";s:22:\"cu_enable_copy_to_user\";s:5:\"false\";s:19:\"cu_user_email_field\";s:0:\"\";s:10:\"cu_subject\";s:0:\"\";s:10:\"cu_message\";s:0:\"\";s:14:\"cu_emailformat\";s:4:\"html\";s:18:\"fp_emailfrommethod\";s:0:\"\";s:24:\"enable_paypal_option_yes\";s:0:\"\";s:23:\"enable_paypal_option_no\";s:0:\"\";s:17:\"vs_use_validation\";s:4:\"true\";s:19:\"vs_text_is_required\";s:23:\"This field is required.\";s:16:\"vs_text_is_email\";s:35:\"Please enter a valid email address.\";s:20:\"vs_text_datemmddyyyy\";s:54:\"Please enter a valid date with this format(mm/dd/yyyy)\";s:20:\"vs_text_dateddmmyyyy\";s:54:\"Please enter a valid date with this format(dd/mm/yyyy)\";s:14:\"vs_text_number\";s:28:\"Please enter a valid number.\";s:14:\"vs_text_digits\";s:25:\"Please enter only digits.\";s:11:\"vs_text_max\";s:47:\"Please enter a value less than or equal to {0}.\";s:11:\"vs_text_min\";s:50:\"Please enter a value greater than or equal to {0}.\";s:17:\"vs_text_submitbtn\";s:0:\"\";s:19:\"vs_text_previousbtn\";s:8:\"Previous\";s:15:\"vs_text_nextbtn\";s:4:\"Next\";s:12:\"vs_all_texts\";s:631:\"a:2:{s:12:\"page_of_text\";a:1:{s:4:\"text\";s:15:\"Page {0} of {0}\";}s:6:\"errors\";a:7:{s:8:\"currency\";a:1:{s:4:\"text\";s:36:\"Please enter a valid currency value.\";}s:9:\"maxlength\";a:1:{s:4:\"text\";s:41:\"Please enter no more than {0} characters.\";}s:9:\"minlength\";a:1:{s:4:\"text\";s:37:\"Please enter at least {0} characters.\";}s:7:\"equalTo\";a:1:{s:4:\"text\";s:34:\"Please enter the same value again.\";}s:6:\"accept\";a:1:{s:4:\"text\";s:44:\"Please enter a value with a valid extension.\";}s:11:\"upload_size\";a:1:{s:4:\"text\";s:53:\"The file you\'ve chosen is too big, maximum is {0} kB.\";}s:5:\"phone\";a:1:{s:4:\"text\";s:21:\"Invalid phone number.\";}}}\";s:13:\"enable_paypal\";s:1:\"0\";s:13:\"enable_submit\";s:0:\"\";s:17:\"paypal_notiemails\";s:0:\"\";s:12:\"paypal_email\";s:0:\"\";s:12:\"request_cost\";s:0:\"\";s:19:\"paypal_product_name\";s:0:\"\";s:8:\"currency\";s:3:\"USD\";s:15:\"paypal_language\";s:2:\"EN\";s:11:\"paypal_mode\";s:10:\"production\";s:16:\"paypal_recurrent\";s:1:\"0\";s:22:\"paypal_recurrent_setup\";s:0:\"\";s:27:\"paypal_recurrent_setup_days\";s:0:\"\";s:22:\"paypal_identify_prices\";s:1:\"0\";s:19:\"paypal_zero_payment\";s:1:\"0\";s:18:\"paypal_base_amount\";N;s:14:\"paypal_address\";s:1:\"1\";s:17:\"cv_enable_captcha\";s:4:\"true\";s:8:\"cv_width\";s:3:\"180\";s:9:\"cv_height\";s:2:\"60\";s:8:\"cv_chars\";s:1:\"5\";s:7:\"cv_font\";s:10:\"font-1.ttf\";s:16:\"cv_min_font_size\";s:2:\"25\";s:16:\"cv_max_font_size\";s:2:\"35\";s:8:\"cv_noise\";s:3:\"200\";s:15:\"cv_noise_length\";s:1:\"4\";s:13:\"cv_background\";s:6:\"ffffff\";s:9:\"cv_border\";s:6:\"000000\";s:27:\"cv_text_enter_valid_captcha\";s:34:\"Please enter a valid captcha code.\";s:5:\"cache\";s:0:\"\";}'),
(14, 7, '2019-12-20 21:33:51', 'a:60:{s:2:\"id\";s:1:\"7\";s:9:\"form_name\";s:4:\"neqw\";s:14:\"form_structure\";s:1655:\"[[{\"fBuild\":{},\"name\":\"fieldname3\",\"index\":0,\"parent\":\"\",\"form_identifier\":\"\",\"shortlabel\":\"\",\"ftype\":\"fslider\",\"userhelp\":\"\",\"userhelpTooltip\":false,\"csslayout\":\"\",\"title\":\"Slider\",\"predefined\":\"\",\"predefinedMin\":\"\",\"predefinedMax\":\"\",\"predefinedClick\":false,\"size\":\"small\",\"thousandSeparator\":\",\",\"centSeparator\":\".\",\"min\":0,\"max\":100,\"step\":1,\"range\":false,\"caption\":\"{0}\",\"minCaption\":\"\",\"maxCaption\":\"\"},{\"form_identifier\":\"\",\"name\":\"fieldname2\",\"shortlabel\":\"\",\"index\":1,\"ftype\":\"fnumber\",\"userhelp\":\"\",\"userhelpTooltip\":false,\"csslayout\":\"\",\"title\":\"Number\",\"predefined\":\"5\",\"predefinedClick\":false,\"required\":false,\"readonly\":false,\"size\":\"small\",\"thousandSeparator\":\"\",\"decimalSymbol\":\".\",\"min\":\"\",\"max\":\"\",\"formatDynamically\":false,\"dformat\":\"digits\",\"formats\":[\"digits\",\"number\",\"percent\"],\"fBuild\":{},\"parent\":\"\"},{\"form_identifier\":\"\",\"name\":\"separator1\",\"shortlabel\":\"\",\"index\":2,\"ftype\":\"fSectionBreak\",\"userhelp\":\"\",\"userhelpTooltip\":false,\"csslayout\":\"\",\"title\":\"The field below will show the double of the number above.\",\"fBuild\":{},\"parent\":\"\"},{\"dependencies\":[{\"rule\":\"\",\"complex\":false,\"fields\":[\"\"]}],\"form_identifier\":\"\",\"name\":\"fieldname1\",\"shortlabel\":\"\",\"index\":3,\"ftype\":\"fCalculated\",\"userhelp\":\"\",\"userhelpTooltip\":false,\"csslayout\":\"\",\"title\":\"Calculated Value\",\"predefined\":\"\",\"required\":false,\"size\":\"medium\",\"eq\":\"fieldname2*3\",\"suffix\":\"\",\"prefix\":\"\",\"decimalsymbol\":\".\",\"groupingsymbol\":\"\",\"readonly\":true,\"hidefield\":false,\"fBuild\":{},\"parent\":\"\"}],[{\"title\":\"\",\"description\":\"\",\"formlayout\":\"top_aligned\",\"formtemplate\":\"\",\"evalequations\":1,\"evalequationsevent\":2,\"autocomplete\":1,\"persistence\":0,\"customstyles\":\"\"}]]\";s:13:\"fp_from_email\";s:0:\"\";s:21:\"fp_destination_emails\";s:0:\"\";s:10:\"fp_subject\";s:0:\"\";s:22:\"fp_inc_additional_info\";s:5:\"false\";s:14:\"fp_return_page\";s:0:\"\";s:10:\"fp_message\";s:0:\"\";s:14:\"fp_emailformat\";s:4:\"html\";s:22:\"cu_enable_copy_to_user\";s:5:\"false\";s:19:\"cu_user_email_field\";s:0:\"\";s:10:\"cu_subject\";s:0:\"\";s:10:\"cu_message\";s:0:\"\";s:14:\"cu_emailformat\";s:4:\"html\";s:18:\"fp_emailfrommethod\";s:0:\"\";s:24:\"enable_paypal_option_yes\";s:0:\"\";s:23:\"enable_paypal_option_no\";s:0:\"\";s:17:\"vs_use_validation\";s:4:\"true\";s:19:\"vs_text_is_required\";s:23:\"This field is required.\";s:16:\"vs_text_is_email\";s:35:\"Please enter a valid email address.\";s:20:\"vs_text_datemmddyyyy\";s:54:\"Please enter a valid date with this format(mm/dd/yyyy)\";s:20:\"vs_text_dateddmmyyyy\";s:54:\"Please enter a valid date with this format(dd/mm/yyyy)\";s:14:\"vs_text_number\";s:28:\"Please enter a valid number.\";s:14:\"vs_text_digits\";s:25:\"Please enter only digits.\";s:11:\"vs_text_max\";s:47:\"Please enter a value less than or equal to {0}.\";s:11:\"vs_text_min\";s:50:\"Please enter a value greater than or equal to {0}.\";s:17:\"vs_text_submitbtn\";s:0:\"\";s:19:\"vs_text_previousbtn\";s:8:\"Previous\";s:15:\"vs_text_nextbtn\";s:4:\"Next\";s:12:\"vs_all_texts\";s:631:\"a:2:{s:12:\"page_of_text\";a:1:{s:4:\"text\";s:15:\"Page {0} of {0}\";}s:6:\"errors\";a:7:{s:8:\"currency\";a:1:{s:4:\"text\";s:36:\"Please enter a valid currency value.\";}s:9:\"maxlength\";a:1:{s:4:\"text\";s:41:\"Please enter no more than {0} characters.\";}s:9:\"minlength\";a:1:{s:4:\"text\";s:37:\"Please enter at least {0} characters.\";}s:7:\"equalTo\";a:1:{s:4:\"text\";s:34:\"Please enter the same value again.\";}s:6:\"accept\";a:1:{s:4:\"text\";s:44:\"Please enter a value with a valid extension.\";}s:11:\"upload_size\";a:1:{s:4:\"text\";s:53:\"The file you\'ve chosen is too big, maximum is {0} kB.\";}s:5:\"phone\";a:1:{s:4:\"text\";s:21:\"Invalid phone number.\";}}}\";s:13:\"enable_paypal\";s:1:\"0\";s:13:\"enable_submit\";s:0:\"\";s:17:\"paypal_notiemails\";s:0:\"\";s:12:\"paypal_email\";s:0:\"\";s:12:\"request_cost\";s:0:\"\";s:19:\"paypal_product_name\";s:0:\"\";s:8:\"currency\";s:3:\"USD\";s:15:\"paypal_language\";s:2:\"EN\";s:11:\"paypal_mode\";s:10:\"production\";s:16:\"paypal_recurrent\";s:1:\"0\";s:22:\"paypal_recurrent_setup\";s:0:\"\";s:27:\"paypal_recurrent_setup_days\";s:0:\"\";s:22:\"paypal_identify_prices\";s:1:\"0\";s:19:\"paypal_zero_payment\";s:1:\"0\";s:18:\"paypal_base_amount\";N;s:14:\"paypal_address\";s:1:\"1\";s:17:\"cv_enable_captcha\";s:4:\"true\";s:8:\"cv_width\";s:3:\"180\";s:9:\"cv_height\";s:2:\"60\";s:8:\"cv_chars\";s:1:\"5\";s:7:\"cv_font\";s:10:\"font-1.ttf\";s:16:\"cv_min_font_size\";s:2:\"25\";s:16:\"cv_max_font_size\";s:2:\"35\";s:8:\"cv_noise\";s:3:\"200\";s:15:\"cv_noise_length\";s:1:\"4\";s:13:\"cv_background\";s:6:\"ffffff\";s:9:\"cv_border\";s:6:\"000000\";s:27:\"cv_text_enter_valid_captcha\";s:34:\"Please enter a valid captcha code.\";s:5:\"cache\";s:0:\"\";}'),
(15, 7, '2019-12-20 21:34:37', 'a:60:{s:2:\"id\";s:1:\"7\";s:9:\"form_name\";s:4:\"neqw\";s:14:\"form_structure\";s:1655:\"[[{\"fBuild\":{},\"name\":\"fieldname3\",\"index\":0,\"parent\":\"\",\"form_identifier\":\"\",\"shortlabel\":\"\",\"ftype\":\"fslider\",\"userhelp\":\"\",\"userhelpTooltip\":false,\"csslayout\":\"\",\"title\":\"Slider\",\"predefined\":\"\",\"predefinedMin\":\"\",\"predefinedMax\":\"\",\"predefinedClick\":false,\"size\":\"small\",\"thousandSeparator\":\",\",\"centSeparator\":\".\",\"min\":0,\"max\":100,\"step\":1,\"range\":false,\"caption\":\"{0}\",\"minCaption\":\"\",\"maxCaption\":\"\"},{\"form_identifier\":\"\",\"name\":\"fieldname2\",\"shortlabel\":\"\",\"index\":1,\"ftype\":\"fnumber\",\"userhelp\":\"\",\"userhelpTooltip\":false,\"csslayout\":\"\",\"title\":\"Number\",\"predefined\":\"5\",\"predefinedClick\":false,\"required\":false,\"readonly\":false,\"size\":\"small\",\"thousandSeparator\":\"\",\"decimalSymbol\":\".\",\"min\":\"\",\"max\":\"\",\"formatDynamically\":false,\"dformat\":\"digits\",\"formats\":[\"digits\",\"number\",\"percent\"],\"fBuild\":{},\"parent\":\"\"},{\"form_identifier\":\"\",\"name\":\"separator1\",\"shortlabel\":\"\",\"index\":2,\"ftype\":\"fSectionBreak\",\"userhelp\":\"\",\"userhelpTooltip\":false,\"csslayout\":\"\",\"title\":\"The field below will show the double of the number above.\",\"fBuild\":{},\"parent\":\"\"},{\"dependencies\":[{\"rule\":\"\",\"complex\":false,\"fields\":[\"\"]}],\"form_identifier\":\"\",\"name\":\"fieldname1\",\"shortlabel\":\"\",\"index\":3,\"ftype\":\"fCalculated\",\"userhelp\":\"\",\"userhelpTooltip\":false,\"csslayout\":\"\",\"title\":\"Calculated Value\",\"predefined\":\"\",\"required\":false,\"size\":\"medium\",\"eq\":\"fieldname2*3\",\"suffix\":\"\",\"prefix\":\"\",\"decimalsymbol\":\".\",\"groupingsymbol\":\"\",\"readonly\":true,\"hidefield\":false,\"fBuild\":{},\"parent\":\"\"}],[{\"title\":\"\",\"description\":\"\",\"formlayout\":\"top_aligned\",\"formtemplate\":\"\",\"evalequations\":1,\"evalequationsevent\":2,\"autocomplete\":1,\"persistence\":0,\"customstyles\":\"\"}]]\";s:13:\"fp_from_email\";s:0:\"\";s:21:\"fp_destination_emails\";s:0:\"\";s:10:\"fp_subject\";s:0:\"\";s:22:\"fp_inc_additional_info\";s:5:\"false\";s:14:\"fp_return_page\";s:0:\"\";s:10:\"fp_message\";s:0:\"\";s:14:\"fp_emailformat\";s:4:\"html\";s:22:\"cu_enable_copy_to_user\";s:5:\"false\";s:19:\"cu_user_email_field\";s:0:\"\";s:10:\"cu_subject\";s:0:\"\";s:10:\"cu_message\";s:0:\"\";s:14:\"cu_emailformat\";s:4:\"html\";s:18:\"fp_emailfrommethod\";s:0:\"\";s:24:\"enable_paypal_option_yes\";s:0:\"\";s:23:\"enable_paypal_option_no\";s:0:\"\";s:17:\"vs_use_validation\";s:4:\"true\";s:19:\"vs_text_is_required\";s:23:\"This field is required.\";s:16:\"vs_text_is_email\";s:35:\"Please enter a valid email address.\";s:20:\"vs_text_datemmddyyyy\";s:54:\"Please enter a valid date with this format(mm/dd/yyyy)\";s:20:\"vs_text_dateddmmyyyy\";s:54:\"Please enter a valid date with this format(dd/mm/yyyy)\";s:14:\"vs_text_number\";s:28:\"Please enter a valid number.\";s:14:\"vs_text_digits\";s:25:\"Please enter only digits.\";s:11:\"vs_text_max\";s:47:\"Please enter a value less than or equal to {0}.\";s:11:\"vs_text_min\";s:50:\"Please enter a value greater than or equal to {0}.\";s:17:\"vs_text_submitbtn\";s:0:\"\";s:19:\"vs_text_previousbtn\";s:8:\"Previous\";s:15:\"vs_text_nextbtn\";s:4:\"Next\";s:12:\"vs_all_texts\";s:631:\"a:2:{s:12:\"page_of_text\";a:1:{s:4:\"text\";s:15:\"Page {0} of {0}\";}s:6:\"errors\";a:7:{s:8:\"currency\";a:1:{s:4:\"text\";s:36:\"Please enter a valid currency value.\";}s:9:\"maxlength\";a:1:{s:4:\"text\";s:41:\"Please enter no more than {0} characters.\";}s:9:\"minlength\";a:1:{s:4:\"text\";s:37:\"Please enter at least {0} characters.\";}s:7:\"equalTo\";a:1:{s:4:\"text\";s:34:\"Please enter the same value again.\";}s:6:\"accept\";a:1:{s:4:\"text\";s:44:\"Please enter a value with a valid extension.\";}s:11:\"upload_size\";a:1:{s:4:\"text\";s:53:\"The file you\'ve chosen is too big, maximum is {0} kB.\";}s:5:\"phone\";a:1:{s:4:\"text\";s:21:\"Invalid phone number.\";}}}\";s:13:\"enable_paypal\";s:1:\"0\";s:13:\"enable_submit\";s:0:\"\";s:17:\"paypal_notiemails\";s:0:\"\";s:12:\"paypal_email\";s:0:\"\";s:12:\"request_cost\";s:0:\"\";s:19:\"paypal_product_name\";s:0:\"\";s:8:\"currency\";s:3:\"USD\";s:15:\"paypal_language\";s:2:\"EN\";s:11:\"paypal_mode\";s:10:\"production\";s:16:\"paypal_recurrent\";s:1:\"0\";s:22:\"paypal_recurrent_setup\";s:0:\"\";s:27:\"paypal_recurrent_setup_days\";s:0:\"\";s:22:\"paypal_identify_prices\";s:1:\"0\";s:19:\"paypal_zero_payment\";s:1:\"0\";s:18:\"paypal_base_amount\";N;s:14:\"paypal_address\";s:1:\"1\";s:17:\"cv_enable_captcha\";s:4:\"true\";s:8:\"cv_width\";s:3:\"180\";s:9:\"cv_height\";s:2:\"60\";s:8:\"cv_chars\";s:1:\"5\";s:7:\"cv_font\";s:10:\"font-1.ttf\";s:16:\"cv_min_font_size\";s:2:\"25\";s:16:\"cv_max_font_size\";s:2:\"35\";s:8:\"cv_noise\";s:3:\"200\";s:15:\"cv_noise_length\";s:1:\"4\";s:13:\"cv_background\";s:6:\"ffffff\";s:9:\"cv_border\";s:6:\"000000\";s:27:\"cv_text_enter_valid_captcha\";s:34:\"Please enter a valid captcha code.\";s:5:\"cache\";s:0:\"\";}'),
(16, 7, '2019-12-20 21:36:39', 'a:60:{s:2:\"id\";s:1:\"7\";s:9:\"form_name\";s:4:\"neqw\";s:14:\"form_structure\";s:1655:\"[[{\"fBuild\":{},\"name\":\"fieldname3\",\"index\":0,\"parent\":\"\",\"form_identifier\":\"\",\"shortlabel\":\"\",\"ftype\":\"fslider\",\"userhelp\":\"\",\"userhelpTooltip\":false,\"csslayout\":\"\",\"title\":\"Slider\",\"predefined\":\"\",\"predefinedMin\":\"\",\"predefinedMax\":\"\",\"predefinedClick\":false,\"size\":\"small\",\"thousandSeparator\":\",\",\"centSeparator\":\".\",\"min\":0,\"max\":100,\"step\":1,\"range\":false,\"caption\":\"{0}\",\"minCaption\":\"\",\"maxCaption\":\"\"},{\"form_identifier\":\"\",\"name\":\"fieldname2\",\"shortlabel\":\"\",\"index\":1,\"ftype\":\"fnumber\",\"userhelp\":\"\",\"userhelpTooltip\":false,\"csslayout\":\"\",\"title\":\"Number\",\"predefined\":\"5\",\"predefinedClick\":false,\"required\":false,\"readonly\":false,\"size\":\"small\",\"thousandSeparator\":\"\",\"decimalSymbol\":\".\",\"min\":\"\",\"max\":\"\",\"formatDynamically\":false,\"dformat\":\"digits\",\"formats\":[\"digits\",\"number\",\"percent\"],\"fBuild\":{},\"parent\":\"\"},{\"form_identifier\":\"\",\"name\":\"separator1\",\"shortlabel\":\"\",\"index\":2,\"ftype\":\"fSectionBreak\",\"userhelp\":\"\",\"userhelpTooltip\":false,\"csslayout\":\"\",\"title\":\"The field below will show the double of the number above.\",\"fBuild\":{},\"parent\":\"\"},{\"dependencies\":[{\"rule\":\"\",\"complex\":false,\"fields\":[\"\"]}],\"form_identifier\":\"\",\"name\":\"fieldname1\",\"shortlabel\":\"\",\"index\":3,\"ftype\":\"fCalculated\",\"userhelp\":\"\",\"userhelpTooltip\":false,\"csslayout\":\"\",\"title\":\"Calculated Value\",\"predefined\":\"\",\"required\":false,\"size\":\"medium\",\"eq\":\"fieldname2*3\",\"suffix\":\"\",\"prefix\":\"\",\"decimalsymbol\":\".\",\"groupingsymbol\":\"\",\"readonly\":true,\"hidefield\":false,\"fBuild\":{},\"parent\":\"\"}],[{\"title\":\"\",\"description\":\"\",\"formlayout\":\"top_aligned\",\"formtemplate\":\"\",\"evalequations\":1,\"evalequationsevent\":2,\"autocomplete\":1,\"persistence\":0,\"customstyles\":\"\"}]]\";s:13:\"fp_from_email\";s:0:\"\";s:21:\"fp_destination_emails\";s:0:\"\";s:10:\"fp_subject\";s:0:\"\";s:22:\"fp_inc_additional_info\";s:5:\"false\";s:14:\"fp_return_page\";s:0:\"\";s:10:\"fp_message\";s:0:\"\";s:14:\"fp_emailformat\";s:4:\"html\";s:22:\"cu_enable_copy_to_user\";s:5:\"false\";s:19:\"cu_user_email_field\";s:0:\"\";s:10:\"cu_subject\";s:0:\"\";s:10:\"cu_message\";s:0:\"\";s:14:\"cu_emailformat\";s:4:\"html\";s:18:\"fp_emailfrommethod\";s:0:\"\";s:24:\"enable_paypal_option_yes\";s:0:\"\";s:23:\"enable_paypal_option_no\";s:0:\"\";s:17:\"vs_use_validation\";s:4:\"true\";s:19:\"vs_text_is_required\";s:23:\"This field is required.\";s:16:\"vs_text_is_email\";s:35:\"Please enter a valid email address.\";s:20:\"vs_text_datemmddyyyy\";s:54:\"Please enter a valid date with this format(mm/dd/yyyy)\";s:20:\"vs_text_dateddmmyyyy\";s:54:\"Please enter a valid date with this format(dd/mm/yyyy)\";s:14:\"vs_text_number\";s:28:\"Please enter a valid number.\";s:14:\"vs_text_digits\";s:25:\"Please enter only digits.\";s:11:\"vs_text_max\";s:47:\"Please enter a value less than or equal to {0}.\";s:11:\"vs_text_min\";s:50:\"Please enter a value greater than or equal to {0}.\";s:17:\"vs_text_submitbtn\";s:0:\"\";s:19:\"vs_text_previousbtn\";s:8:\"Previous\";s:15:\"vs_text_nextbtn\";s:4:\"Next\";s:12:\"vs_all_texts\";s:631:\"a:2:{s:12:\"page_of_text\";a:1:{s:4:\"text\";s:15:\"Page {0} of {0}\";}s:6:\"errors\";a:7:{s:8:\"currency\";a:1:{s:4:\"text\";s:36:\"Please enter a valid currency value.\";}s:9:\"maxlength\";a:1:{s:4:\"text\";s:41:\"Please enter no more than {0} characters.\";}s:9:\"minlength\";a:1:{s:4:\"text\";s:37:\"Please enter at least {0} characters.\";}s:7:\"equalTo\";a:1:{s:4:\"text\";s:34:\"Please enter the same value again.\";}s:6:\"accept\";a:1:{s:4:\"text\";s:44:\"Please enter a value with a valid extension.\";}s:11:\"upload_size\";a:1:{s:4:\"text\";s:53:\"The file you\'ve chosen is too big, maximum is {0} kB.\";}s:5:\"phone\";a:1:{s:4:\"text\";s:21:\"Invalid phone number.\";}}}\";s:13:\"enable_paypal\";s:1:\"0\";s:13:\"enable_submit\";s:0:\"\";s:17:\"paypal_notiemails\";s:0:\"\";s:12:\"paypal_email\";s:0:\"\";s:12:\"request_cost\";s:0:\"\";s:19:\"paypal_product_name\";s:0:\"\";s:8:\"currency\";s:3:\"USD\";s:15:\"paypal_language\";s:2:\"EN\";s:11:\"paypal_mode\";s:10:\"production\";s:16:\"paypal_recurrent\";s:1:\"0\";s:22:\"paypal_recurrent_setup\";s:0:\"\";s:27:\"paypal_recurrent_setup_days\";s:0:\"\";s:22:\"paypal_identify_prices\";s:1:\"0\";s:19:\"paypal_zero_payment\";s:1:\"0\";s:18:\"paypal_base_amount\";N;s:14:\"paypal_address\";s:1:\"1\";s:17:\"cv_enable_captcha\";s:4:\"true\";s:8:\"cv_width\";s:3:\"180\";s:9:\"cv_height\";s:2:\"60\";s:8:\"cv_chars\";s:1:\"5\";s:7:\"cv_font\";s:10:\"font-1.ttf\";s:16:\"cv_min_font_size\";s:2:\"25\";s:16:\"cv_max_font_size\";s:2:\"35\";s:8:\"cv_noise\";s:3:\"200\";s:15:\"cv_noise_length\";s:1:\"4\";s:13:\"cv_background\";s:6:\"ffffff\";s:9:\"cv_border\";s:6:\"000000\";s:27:\"cv_text_enter_valid_captcha\";s:34:\"Please enter a valid captcha code.\";s:5:\"cache\";s:0:\"\";}');
INSERT INTO `wp_cp_calculated_fields_form_revision` (`id`, `formid`, `time`, `revision`) VALUES
(17, 7, '2019-12-20 21:53:04', 'a:60:{s:2:\"id\";s:1:\"7\";s:9:\"form_name\";s:4:\"neqw\";s:14:\"form_structure\";s:1657:\"[[{\"form_identifier\":\"\",\"name\":\"fieldname3\",\"shortlabel\":\"\",\"index\":0,\"ftype\":\"fslider\",\"userhelp\":\"\",\"userhelpTooltip\":false,\"csslayout\":\"\",\"title\":\"Slider\",\"predefined\":\"\",\"predefinedMin\":\"\",\"predefinedMax\":\"\",\"predefinedClick\":false,\"size\":\"small\",\"thousandSeparator\":\",\",\"centSeparator\":\".\",\"min\":0,\"max\":100,\"step\":1,\"range\":false,\"caption\":\"{0}\",\"minCaption\":\"\",\"maxCaption\":\"\",\"fBuild\":{},\"parent\":\"\"},{\"form_identifier\":\"\",\"name\":\"fieldname2\",\"shortlabel\":\"\",\"index\":1,\"ftype\":\"fnumber\",\"userhelp\":\"\",\"userhelpTooltip\":false,\"csslayout\":\"\",\"title\":\"Number\",\"predefined\":\"5\",\"predefinedClick\":false,\"required\":false,\"readonly\":false,\"size\":\"small\",\"thousandSeparator\":\"\",\"decimalSymbol\":\".\",\"min\":\"\",\"max\":\"\",\"formatDynamically\":false,\"dformat\":\"digits\",\"formats\":[\"digits\",\"number\",\"percent\"],\"fBuild\":{},\"parent\":\"\"},{\"form_identifier\":\"\",\"name\":\"separator1\",\"shortlabel\":\"\",\"index\":2,\"ftype\":\"fSectionBreak\",\"userhelp\":\"\",\"userhelpTooltip\":false,\"csslayout\":\"\",\"title\":\"The field below will show the double of the number above.\",\"fBuild\":{},\"parent\":\"\"},{\"dependencies\":[{\"rule\":\"\",\"complex\":false,\"fields\":[\"\"]}],\"form_identifier\":\"\",\"name\":\"fieldname1\",\"shortlabel\":\"\",\"index\":3,\"ftype\":\"fCalculated\",\"userhelp\":\"\",\"userhelpTooltip\":false,\"csslayout\":\"\",\"title\":\"Calculated Value\",\"predefined\":\"\",\"required\":false,\"size\":\"medium\",\"eq\":\"fieldname2*3\\n\",\"suffix\":\"\",\"prefix\":\"\",\"decimalsymbol\":\".\",\"groupingsymbol\":\"\",\"readonly\":true,\"hidefield\":false,\"fBuild\":{},\"parent\":\"\"}],[{\"title\":\"\",\"description\":\"\",\"formlayout\":\"top_aligned\",\"formtemplate\":\"\",\"evalequations\":1,\"evalequationsevent\":2,\"autocomplete\":1,\"persistence\":0,\"customstyles\":\"\"}]]\";s:13:\"fp_from_email\";s:0:\"\";s:21:\"fp_destination_emails\";s:0:\"\";s:10:\"fp_subject\";s:0:\"\";s:22:\"fp_inc_additional_info\";s:5:\"false\";s:14:\"fp_return_page\";s:0:\"\";s:10:\"fp_message\";s:0:\"\";s:14:\"fp_emailformat\";s:4:\"html\";s:22:\"cu_enable_copy_to_user\";s:5:\"false\";s:19:\"cu_user_email_field\";s:0:\"\";s:10:\"cu_subject\";s:0:\"\";s:10:\"cu_message\";s:0:\"\";s:14:\"cu_emailformat\";s:4:\"html\";s:18:\"fp_emailfrommethod\";s:0:\"\";s:24:\"enable_paypal_option_yes\";s:0:\"\";s:23:\"enable_paypal_option_no\";s:0:\"\";s:17:\"vs_use_validation\";s:4:\"true\";s:19:\"vs_text_is_required\";s:23:\"This field is required.\";s:16:\"vs_text_is_email\";s:35:\"Please enter a valid email address.\";s:20:\"vs_text_datemmddyyyy\";s:54:\"Please enter a valid date with this format(mm/dd/yyyy)\";s:20:\"vs_text_dateddmmyyyy\";s:54:\"Please enter a valid date with this format(dd/mm/yyyy)\";s:14:\"vs_text_number\";s:28:\"Please enter a valid number.\";s:14:\"vs_text_digits\";s:25:\"Please enter only digits.\";s:11:\"vs_text_max\";s:47:\"Please enter a value less than or equal to {0}.\";s:11:\"vs_text_min\";s:50:\"Please enter a value greater than or equal to {0}.\";s:17:\"vs_text_submitbtn\";s:0:\"\";s:19:\"vs_text_previousbtn\";s:8:\"Previous\";s:15:\"vs_text_nextbtn\";s:4:\"Next\";s:12:\"vs_all_texts\";s:631:\"a:2:{s:12:\"page_of_text\";a:1:{s:4:\"text\";s:15:\"Page {0} of {0}\";}s:6:\"errors\";a:7:{s:8:\"currency\";a:1:{s:4:\"text\";s:36:\"Please enter a valid currency value.\";}s:9:\"maxlength\";a:1:{s:4:\"text\";s:41:\"Please enter no more than {0} characters.\";}s:9:\"minlength\";a:1:{s:4:\"text\";s:37:\"Please enter at least {0} characters.\";}s:7:\"equalTo\";a:1:{s:4:\"text\";s:34:\"Please enter the same value again.\";}s:6:\"accept\";a:1:{s:4:\"text\";s:44:\"Please enter a value with a valid extension.\";}s:11:\"upload_size\";a:1:{s:4:\"text\";s:53:\"The file you\'ve chosen is too big, maximum is {0} kB.\";}s:5:\"phone\";a:1:{s:4:\"text\";s:21:\"Invalid phone number.\";}}}\";s:13:\"enable_paypal\";s:1:\"0\";s:13:\"enable_submit\";s:0:\"\";s:17:\"paypal_notiemails\";s:0:\"\";s:12:\"paypal_email\";s:0:\"\";s:12:\"request_cost\";s:0:\"\";s:19:\"paypal_product_name\";s:0:\"\";s:8:\"currency\";s:3:\"USD\";s:15:\"paypal_language\";s:2:\"EN\";s:11:\"paypal_mode\";s:10:\"production\";s:16:\"paypal_recurrent\";s:1:\"0\";s:22:\"paypal_recurrent_setup\";s:0:\"\";s:27:\"paypal_recurrent_setup_days\";s:0:\"\";s:22:\"paypal_identify_prices\";s:1:\"0\";s:19:\"paypal_zero_payment\";s:1:\"0\";s:18:\"paypal_base_amount\";N;s:14:\"paypal_address\";s:1:\"1\";s:17:\"cv_enable_captcha\";s:4:\"true\";s:8:\"cv_width\";s:3:\"180\";s:9:\"cv_height\";s:2:\"60\";s:8:\"cv_chars\";s:1:\"5\";s:7:\"cv_font\";s:10:\"font-1.ttf\";s:16:\"cv_min_font_size\";s:2:\"25\";s:16:\"cv_max_font_size\";s:2:\"35\";s:8:\"cv_noise\";s:3:\"200\";s:15:\"cv_noise_length\";s:1:\"4\";s:13:\"cv_background\";s:6:\"ffffff\";s:9:\"cv_border\";s:6:\"000000\";s:27:\"cv_text_enter_valid_captcha\";s:34:\"Please enter a valid captcha code.\";s:5:\"cache\";s:0:\"\";}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_cp_calculated_fields_form_settings`
--

CREATE TABLE `wp_cp_calculated_fields_form_settings` (
  `id` mediumint(9) NOT NULL,
  `form_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `form_structure` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `fp_from_email` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `fp_destination_emails` text COLLATE utf8mb4_unicode_520_ci,
  `fp_subject` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `fp_inc_additional_info` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `fp_return_page` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `fp_message` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `fp_emailformat` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cu_enable_copy_to_user` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cu_user_email_field` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `cu_subject` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cu_message` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `cu_emailformat` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `fp_emailfrommethod` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `enable_paypal_option_yes` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `enable_paypal_option_no` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `vs_use_validation` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `vs_text_is_required` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `vs_text_is_email` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `vs_text_datemmddyyyy` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `vs_text_dateddmmyyyy` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `vs_text_number` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `vs_text_digits` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `vs_text_max` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `vs_text_min` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `vs_text_submitbtn` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `vs_text_previousbtn` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `vs_text_nextbtn` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `vs_all_texts` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `enable_paypal` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `enable_submit` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `paypal_notiemails` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `paypal_email` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `request_cost` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `paypal_product_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `currency` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `paypal_language` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `paypal_mode` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `paypal_recurrent` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `paypal_recurrent_setup` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `paypal_recurrent_setup_days` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `paypal_identify_prices` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `paypal_zero_payment` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `paypal_base_amount` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `paypal_address` tinyint(4) NOT NULL DEFAULT '1',
  `cv_enable_captcha` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cv_width` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cv_height` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cv_chars` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cv_font` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cv_min_font_size` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cv_max_font_size` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cv_noise` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cv_noise_length` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cv_background` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cv_border` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cv_text_enter_valid_captcha` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cache` text COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_cp_calculated_fields_form_settings`
--

INSERT INTO `wp_cp_calculated_fields_form_settings` (`id`, `form_name`, `form_structure`, `fp_from_email`, `fp_destination_emails`, `fp_subject`, `fp_inc_additional_info`, `fp_return_page`, `fp_message`, `fp_emailformat`, `cu_enable_copy_to_user`, `cu_user_email_field`, `cu_subject`, `cu_message`, `cu_emailformat`, `fp_emailfrommethod`, `enable_paypal_option_yes`, `enable_paypal_option_no`, `vs_use_validation`, `vs_text_is_required`, `vs_text_is_email`, `vs_text_datemmddyyyy`, `vs_text_dateddmmyyyy`, `vs_text_number`, `vs_text_digits`, `vs_text_max`, `vs_text_min`, `vs_text_submitbtn`, `vs_text_previousbtn`, `vs_text_nextbtn`, `vs_all_texts`, `enable_paypal`, `enable_submit`, `paypal_notiemails`, `paypal_email`, `request_cost`, `paypal_product_name`, `currency`, `paypal_language`, `paypal_mode`, `paypal_recurrent`, `paypal_recurrent_setup`, `paypal_recurrent_setup_days`, `paypal_identify_prices`, `paypal_zero_payment`, `paypal_base_amount`, `paypal_address`, `cv_enable_captcha`, `cv_width`, `cv_height`, `cv_chars`, `cv_font`, `cv_min_font_size`, `cv_max_font_size`, `cv_noise`, `cv_noise_length`, `cv_background`, `cv_border`, `cv_text_enter_valid_captcha`, `cache`) VALUES
(1, 'Simple Operations', '[[{\"name\":\"fieldname5\",\"index\":0,\"title\":\"Simple Sum of two numbers\",\"userhelp\":\"\",\"ftype\":\"fSectionBreak\",\"csslayout\":\"\"},{\"name\":\"fieldname2\",\"index\":1,\"title\":\"First Number\",\"userhelp\":\"\",\"dformat\":\"number\",\"min\":\"\",\"max\":\"\",\"predefined\":\"3\",\"ftype\":\"fnumber\",\"csslayout\":\"\",\"required\":false,\"size\":\"small\",\"formats\":[\"digits\",\"number\"]},{\"name\":\"fieldname6\",\"index\":2,\"title\":\"Second Number\",\"predefined\":\"2\",\"ftype\":\"fnumber\",\"userhelp\":\"\",\"csslayout\":\"\",\"required\":false,\"size\":\"small\",\"min\":\"\",\"max\":\"\",\"dformat\":\"digits\",\"formats\":[\"digits\",\"number\"]},{\"name\":\"fieldname4\",\"index\":3,\"readonly\":true,\"title\":\"Sum\",\"predefined\":\"\",\"userhelp\":\"Note: Sum of First Number + Second Number\",\"eq\":\"fieldname2+fieldname6\",\"ftype\":\"fCalculated\",\"csslayout\":\"\",\"required\":false,\"size\":\"medium\"},{\"name\":\"fieldname7\",\"index\":4,\"title\":\"Sum of selected fields\",\"userhelp\":\"\",\"ftype\":\"fSectionBreak\",\"csslayout\":\"\"},{\"choices\":[\"Item A: $10\",\"Item B: $20\",\"Item C: $40\"],\"choiceSelected\":[true,true,false],\"name\":\"fieldname8\",\"index\":5,\"title\":\"Select/un-select some items\",\"ftype\":\"fcheck\",\"userhelp\":\"\",\"csslayout\":\"\",\"layout\":\"one_column\",\"required\":false},{\"name\":\"fieldname9\",\"index\":6,\"title\":\"Sum of selected items\",\"eq\":\"fieldname8\",\"ftype\":\"fCalculated\",\"userhelp\":\"\",\"csslayout\":\"\",\"predefined\":\"\",\"required\":false,\"size\":\"medium\",\"readonly\":false}],[{\"title\":\"Simple Operations\",\"description\":\"Below you can test two simple and frequent operations.\",\"formlayout\":\"top_aligned\"}]]', 'admin@a-wordpress2', 'webdesign-x@bk.ru', 'Contact from the blog...', 'true', 'http://a-wordpress2/', 'The following contact message has been sent:\n\n<%INFO%>\n\n', 'text', 'true', '', 'Confirmation: Message received...', 'Thank you for your message. We will reply you as soon as possible.\n\nThis is a copy of the data sent:\n\n<%INFO%>\n\nBest Regards.', 'text', '', '', '', 'true', 'This field is required.', 'Please enter a valid email address.', 'Please enter a valid date with this format(mm/dd/yyyy)', 'Please enter a valid date with this format(dd/mm/yyyy)', 'Please enter a valid number.', 'Please enter only digits.', 'Please enter a value less than or equal to {0}.', 'Please enter a value greater than or equal to {0}.', 'Submit', 'Previous', 'Next', '', '1', '', '0', 'put_your@email_here.com', '25', 'Reservation', 'USD', 'EN', 'production', '0', '', '15', '0', '0', NULL, 1, 'true', '180', '60', '5', 'font-1.ttf', '25', '35', '200', '4', 'ffffff', '000000', 'Please enter a valid captcha code.', ''),
(2, 'Calculation with Dates', '[[{\"name\":\"fieldname1\",\"index\":0,\"title\":\"Check-in\",\"ftype\":\"fdate\",\"userhelp\":\"\",\"csslayout\":\"\",\"predefined\":\"\",\"size\":\"medium\",\"required\":false,\"dformat\":\"mm/dd/yyyy\",\"showDropdown\":false,\"dropdownRange\":\"-10:+10\",\"formats\":[\"mm/dd/yyyy\",\"dd/mm/yyyy\"]},{\"name\":\"fieldname2\",\"index\":1,\"title\":\"Check-out\",\"ftype\":\"fdate\",\"userhelp\":\"\",\"csslayout\":\"\",\"predefined\":\"\",\"size\":\"medium\",\"required\":false,\"dformat\":\"mm/dd/yyyy\",\"showDropdown\":false,\"dropdownRange\":\"-10:+10\",\"formats\":[\"mm/dd/yyyy\",\"dd/mm/yyyy\"]},{\"choices\":[\"Parking - $10\",\"Breakfast - $20\",\"Premium Internet Access - $3\"],\"choiceSelected\":[false,false,false],\"name\":\"fieldname3\",\"index\":2,\"title\":\"Optional Services\",\"ftype\":\"fcheck\",\"userhelp\":\"\",\"csslayout\":\"\",\"layout\":\"one_column\",\"required\":false,\"choicesVal\":[\"10\",\"20\",\"3\"]},{\"name\":\"fieldname4\",\"index\":3,\"title\":\"\",\"userhelp\":\"Note: The cost of the optional services are per each night.\",\"ftype\":\"fSectionBreak\",\"csslayout\":\"\"},{\"name\":\"fieldname5\",\"index\":4,\"title\":\"Total Cost\",\"eq\":\"abs(fieldname2-fieldname1) * (fieldname3+50)\",\"userhelp\":\"The formula is: (checkout - checkin) * (optionals + base rate)<br />Without the optional services the formula would be: (checkout-checkin) * base rate\",\"ftype\":\"fCalculated\",\"csslayout\":\"\",\"predefined\":\"\",\"required\":false,\"size\":\"medium\",\"readonly\":false}],[{\"title\":\"Calculation with Dates\",\"description\":\"The form below gives a quote for a stay in a hotel based in the check-in date, check-out date and some optional services. The base rate used is $50 per night.\",\"formlayout\":\"top_aligned\"}]]', 'admin@a-wordpress2', 'webdesign-x@bk.ru', 'Contact from the blog...', 'true', 'http://a-wordpress2/', 'The following contact message has been sent:\n\n<%INFO%>\n\n', 'text', 'true', '', 'Confirmation: Message received...', 'Thank you for your message. We will reply you as soon as possible.\n\nThis is a copy of the data sent:\n\n<%INFO%>\n\nBest Regards.', 'text', '', '', '', 'true', 'This field is required.', 'Please enter a valid email address.', 'Please enter a valid date with this format(mm/dd/yyyy)', 'Please enter a valid date with this format(dd/mm/yyyy)', 'Please enter a valid number.', 'Please enter only digits.', 'Please enter a value less than or equal to {0}.', 'Please enter a value greater than or equal to {0}.', 'Submit', 'Previous', 'Next', '', '1', '', '0', 'put_your@email_here.com', '25', 'Reservation', 'USD', 'EN', 'production', '0', '', '15', '0', '0', NULL, 1, 'true', '180', '60', '5', 'font-1.ttf', '25', '35', '200', '4', 'ffffff', '000000', 'Please enter a valid captcha code.', ''),
(3, 'Ideal Weight Calculator', '[[{\"name\":\"fieldname2\",\"index\":0,\"title\":\"Height\",\"userhelp\":\"In centimeters\",\"dformat\":\"number\",\"min\":\"30\",\"max\":\"250\",\"predefined\":\"180\",\"ftype\":\"fnumber\",\"csslayout\":\"\",\"required\":false,\"size\":\"small\",\"formats\":[\"digits\",\"number\"]},{\"choices\":[\"Male\",\"Female\"],\"name\":\"fieldname3\",\"index\":1,\"choiceSelected\":\"Male\",\"title\":\"Sex\",\"ftype\":\"fdropdown\",\"userhelp\":\"\",\"csslayout\":\"\",\"size\":\"medium\",\"required\":false},{\"name\":\"fieldname5\",\"index\":2,\"title\":\"Ideal Weight\",\"userhelp\":\"Formula used:<br />Men: (height - 100)*0.90<br />Woman: (height - 100)*0.85\",\"ftype\":\"fSectionBreak\",\"csslayout\":\"\"},{\"name\":\"fieldname4\",\"index\":3,\"readonly\":true,\"title\":\"Ideal Weight\",\"predefined\":\"\",\"userhelp\":\"Note: Based in the above data and formula\",\"eq\":\"(fieldname2-100)*(fieldname3==\'Male\'?0.90:0.85)\",\"ftype\":\"fCalculated\",\"csslayout\":\"\",\"required\":false,\"size\":\"medium\"}],[{\"title\":\"Ideal Weight Calculator\",\"description\":\"This sample uses a simple formula but with a conditional rule (if male or female).  The conditional expression is built using the JavaScript ternary operator. It\'s basically as follows: <em>condition ? value_if_true : value_if_false</em>.\",\"formlayout\":\"top_aligned\"}]]', 'admin@a-wordpress2', 'webdesign-x@bk.ru', 'Contact from the blog...', 'true', 'http://a-wordpress2/', 'The following contact message has been sent:\n\n<%INFO%>\n\n', 'text', 'true', '', 'Confirmation: Message received...', 'Thank you for your message. We will reply you as soon as possible.\n\nThis is a copy of the data sent:\n\n<%INFO%>\n\nBest Regards.', 'text', '', '', '', 'true', 'This field is required.', 'Please enter a valid email address.', 'Please enter a valid date with this format(mm/dd/yyyy)', 'Please enter a valid date with this format(dd/mm/yyyy)', 'Please enter a valid number.', 'Please enter only digits.', 'Please enter a value less than or equal to {0}.', 'Please enter a value greater than or equal to {0}.', 'Submit', 'Previous', 'Next', '', '1', '', '0', 'put_your@email_here.com', '25', 'Reservation', 'USD', 'EN', 'production', '0', '', '15', '0', '0', NULL, 1, 'true', '180', '60', '5', 'font-1.ttf', '25', '35', '200', '4', 'ffffff', '000000', 'Please enter a valid captcha code.', ''),
(4, 'Pregnancy Calculator', '[[{\"name\":\"fieldname1\",\"index\":0,\"title\":\"Enter the first day of last menstrual period\",\"ftype\":\"fdate\",\"userhelp\":\"\",\"csslayout\":\"\",\"predefined\":\"01/01/2013\",\"size\":\"medium\",\"required\":false,\"dformat\":\"mm/dd/yyyy\",\"showDropdown\":false,\"dropdownRange\":\"-10:+10\",\"formats\":[\"mm/dd/yyyy\",\"dd/mm/yyyy\"]},{\"name\":\"fieldname4\",\"index\":1,\"title\":\"\",\"userhelp\":\"Note: The dates below are approximate calculations. The real date may be slightly different.\",\"ftype\":\"fSectionBreak\",\"csslayout\":\"\"},{\"name\":\"fieldname5\",\"index\":2,\"title\":\"Conception Date\",\"eq\":\"cdate(fieldname1+14)\",\"userhelp\":\"\",\"ftype\":\"fCalculated\",\"csslayout\":\"\",\"predefined\":\"\",\"required\":false,\"size\":\"medium\",\"readonly\":false},{\"name\":\"fieldname6\",\"index\":3,\"title\":\"Due Date\",\"eq\":\"cdate(fieldname1+40*7)\",\"ftype\":\"fCalculated\",\"userhelp\":\"\",\"csslayout\":\"\",\"predefined\":\"\",\"required\":false,\"size\":\"medium\",\"readonly\":false}],[{\"title\":\"Pregnancy Calculator\",\"description\":\"The form below calculates the conception date and due date based in the first day of last menstrual period. The calculated values are converted to date again after the calculation.\",\"formlayout\":\"top_aligned\"}]]', 'admin@a-wordpress2', 'webdesign-x@bk.ru', 'Contact from the blog...', 'true', 'http://a-wordpress2/', 'The following contact message has been sent:\n\n<%INFO%>\n\n', 'text', 'true', '', 'Confirmation: Message received...', 'Thank you for your message. We will reply you as soon as possible.\n\nThis is a copy of the data sent:\n\n<%INFO%>\n\nBest Regards.', 'text', '', '', '', 'true', 'This field is required.', 'Please enter a valid email address.', 'Please enter a valid date with this format(mm/dd/yyyy)', 'Please enter a valid date with this format(dd/mm/yyyy)', 'Please enter a valid number.', 'Please enter only digits.', 'Please enter a value less than or equal to {0}.', 'Please enter a value greater than or equal to {0}.', 'Submit', 'Previous', 'Next', '', '1', '', '0', 'put_your@email_here.com', '25', 'Reservation', 'USD', 'EN', 'production', '0', '', '15', '0', '0', NULL, 1, 'true', '180', '60', '5', 'font-1.ttf', '25', '35', '200', '4', 'ffffff', '000000', 'Please enter a valid captcha code.', ''),
(5, 'Lease Calculator', '[[{\"name\":\"fieldname2\",\"index\":0,\"title\":\"Loan Amount\",\"userhelp\":\"\",\"dformat\":\"number\",\"min\":\"\",\"max\":\"\",\"predefined\":\"20000\",\"ftype\":\"fnumber\",\"csslayout\":\"\",\"required\":false,\"size\":\"small\",\"formats\":[\"digits\",\"number\"]},{\"name\":\"fieldname6\",\"index\":1,\"title\":\"Residual Value\",\"userhelp\":\"\",\"predefined\":\"10000\",\"ftype\":\"fnumber\",\"csslayout\":\"\",\"required\":false,\"size\":\"small\",\"min\":\"\",\"max\":\"\",\"dformat\":\"number\",\"formats\":[\"digits\",\"number\"]},{\"name\":\"fieldname7\",\"index\":2,\"predefined\":\"7.5\",\"title\":\"Interest Rate %\",\"ftype\":\"fnumber\",\"userhelp\":\"\",\"csslayout\":\"\",\"required\":false,\"size\":\"small\",\"min\":\"\",\"max\":\"\",\"dformat\":\"number\",\"formats\":[\"digits\",\"number\"]},{\"name\":\"fieldname8\",\"index\":3,\"title\":\"Number of Months\",\"dformat\":\"number\",\"predefined\":\"36\",\"ftype\":\"fnumber\",\"userhelp\":\"\",\"csslayout\":\"\",\"required\":false,\"size\":\"small\",\"min\":\"\",\"max\":\"\",\"formats\":[\"digits\",\"number\"]},{\"name\":\"fieldname5\",\"index\":4,\"title\":\"\",\"userhelp\":\"Results based in the data entered above:\",\"ftype\":\"fSectionBreak\",\"csslayout\":\"\"},{\"name\":\"fieldname4\",\"index\":5,\"readonly\":true,\"title\":\"Monthly Payment\",\"predefined\":\"\",\"userhelp\":\"\",\"eq\":\"prec((fieldname2*fieldname7/1200*pow(1+fieldname7/1200,fieldname8)-fieldname6*fieldname7/1200)/(pow(1+fieldname7/1200,fieldname8)-1),2)\",\"ftype\":\"fCalculated\",\"csslayout\":\"\",\"required\":false,\"size\":\"medium\",\"dformat\":\"number\"},{\"name\":\"fieldname9\",\"index\":6,\"title\":\"Total Payment\",\"readonly\":true,\"eq\":\"prec(fieldname4*fieldname8,2)\",\"ftype\":\"fCalculated\",\"userhelp\":\"\",\"csslayout\":\"\",\"predefined\":\"\",\"required\":false,\"size\":\"medium\"},{\"name\":\"fieldname10\",\"index\":7,\"title\":\"Interest Amount\",\"eq\":\"prec(fieldname6+fieldname9-fieldname2,2)\",\"ftype\":\"fCalculated\",\"userhelp\":\"\",\"csslayout\":\"\",\"predefined\":\"\",\"required\":false,\"size\":\"medium\",\"readonly\":false}],[{\"title\":\"Lease Calculator\",\"description\":\"This sample uses a more complex formula for a lease calculator. It includes the \\\"power\\\" (pow) and \\\"precision\\\" (prec) functions.\",\"formlayout\":\"top_aligned\"}]]', 'admin@a-wordpress2', 'webdesign-x@bk.ru', 'Contact from the blog...', 'true', 'http://a-wordpress2/', 'The following contact message has been sent:\n\n<%INFO%>\n\n', 'text', 'true', '', 'Confirmation: Message received...', 'Thank you for your message. We will reply you as soon as possible.\n\nThis is a copy of the data sent:\n\n<%INFO%>\n\nBest Regards.', 'text', '', '', '', 'true', 'This field is required.', 'Please enter a valid email address.', 'Please enter a valid date with this format(mm/dd/yyyy)', 'Please enter a valid date with this format(dd/mm/yyyy)', 'Please enter a valid number.', 'Please enter only digits.', 'Please enter a value less than or equal to {0}.', 'Please enter a value greater than or equal to {0}.', 'Submit', 'Previous', 'Next', '', '1', '', '0', 'put_your@email_here.com', '25', 'Reservation', 'USD', 'EN', 'production', '0', '', '15', '0', '0', NULL, 1, 'true', '180', '60', '5', 'font-1.ttf', '25', '35', '200', '4', 'ffffff', '000000', 'Please enter a valid captcha code.', ''),
(7, 'neqw', '[[{\"form_identifier\":\"\",\"name\":\"fieldname3\",\"shortlabel\":\"\",\"index\":0,\"ftype\":\"fslider\",\"userhelp\":\"\",\"userhelpTooltip\":false,\"csslayout\":\"\",\"title\":\"Slider\",\"predefined\":\"\",\"predefinedMin\":\"\",\"predefinedMax\":\"\",\"predefinedClick\":false,\"size\":\"small\",\"thousandSeparator\":\",\",\"centSeparator\":\".\",\"min\":0,\"max\":100,\"step\":1,\"range\":false,\"caption\":\"{0}\",\"minCaption\":\"\",\"maxCaption\":\"\",\"fBuild\":{},\"parent\":\"\"},{\"form_identifier\":\"\",\"name\":\"fieldname2\",\"shortlabel\":\"\",\"index\":1,\"ftype\":\"fnumber\",\"userhelp\":\"\",\"userhelpTooltip\":false,\"csslayout\":\"\",\"title\":\"Number\",\"predefined\":\"5\",\"predefinedClick\":false,\"required\":false,\"readonly\":false,\"size\":\"small\",\"thousandSeparator\":\"\",\"decimalSymbol\":\".\",\"min\":\"\",\"max\":\"\",\"formatDynamically\":false,\"dformat\":\"digits\",\"formats\":[\"digits\",\"number\",\"percent\"],\"fBuild\":{},\"parent\":\"\"},{\"form_identifier\":\"\",\"name\":\"separator1\",\"shortlabel\":\"\",\"index\":2,\"ftype\":\"fSectionBreak\",\"userhelp\":\"\",\"userhelpTooltip\":false,\"csslayout\":\"\",\"title\":\"The field below will show the double of the number above.\",\"fBuild\":{},\"parent\":\"\"},{\"dependencies\":[{\"rule\":\"\",\"complex\":false,\"fields\":[\"\"]}],\"form_identifier\":\"\",\"name\":\"fieldname1\",\"shortlabel\":\"\",\"index\":3,\"ftype\":\"fCalculated\",\"userhelp\":\"\",\"userhelpTooltip\":false,\"csslayout\":\"\",\"title\":\"Calculated Value\",\"predefined\":\"\",\"required\":false,\"size\":\"medium\",\"eq\":\"fieldname2*3\\n\",\"suffix\":\"\",\"prefix\":\"\",\"decimalsymbol\":\".\",\"groupingsymbol\":\"\",\"readonly\":true,\"hidefield\":false,\"fBuild\":{},\"parent\":\"\"}],[{\"title\":\"\",\"description\":\"\",\"formlayout\":\"top_aligned\",\"formtemplate\":\"\",\"evalequations\":1,\"evalequationsevent\":2,\"autocomplete\":1,\"persistence\":0,\"customstyles\":\"\"}]]', '', '', '', 'false', '', '', 'html', 'false', '', '', '', 'html', '', '', '', 'true', 'This field is required.', 'Please enter a valid email address.', 'Please enter a valid date with this format(mm/dd/yyyy)', 'Please enter a valid date with this format(dd/mm/yyyy)', 'Please enter a valid number.', 'Please enter only digits.', 'Please enter a value less than or equal to {0}.', 'Please enter a value greater than or equal to {0}.', '', 'Previous', 'Next', 'a:2:{s:12:\"page_of_text\";a:1:{s:4:\"text\";s:15:\"Page {0} of {0}\";}s:6:\"errors\";a:7:{s:8:\"currency\";a:1:{s:4:\"text\";s:36:\"Please enter a valid currency value.\";}s:9:\"maxlength\";a:1:{s:4:\"text\";s:41:\"Please enter no more than {0} characters.\";}s:9:\"minlength\";a:1:{s:4:\"text\";s:37:\"Please enter at least {0} characters.\";}s:7:\"equalTo\";a:1:{s:4:\"text\";s:34:\"Please enter the same value again.\";}s:6:\"accept\";a:1:{s:4:\"text\";s:44:\"Please enter a value with a valid extension.\";}s:11:\"upload_size\";a:1:{s:4:\"text\";s:53:\"The file you\'ve chosen is too big, maximum is {0} kB.\";}s:5:\"phone\";a:1:{s:4:\"text\";s:21:\"Invalid phone number.\";}}}', '0', '', '', '', '', '', 'USD', 'EN', 'production', '0', '', '', '0', '0', NULL, 1, 'true', '180', '60', '5', 'font-1.ttf', '25', '35', '200', '4', 'ffffff', '000000', 'Please enter a valid captcha code.', '');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_my_venues`
--

CREATE TABLE `wp_my_venues` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `poster` varchar(255) NOT NULL,
  `plot` text NOT NULL,
  `genres` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_my_venues`
--

INSERT INTO `wp_my_venues` (`id`, `name`, `title`, `poster`, `plot`, `genres`) VALUES
(1, 'ыаыва', '', '', '', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://a-wordpress2', 'yes'),
(2, 'home', 'http://a-wordpress2', 'yes'),
(3, 'blogname', 'a-wordpress2', 'yes'),
(4, 'blogdescription', 'Ещё один сайт на WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'webdesign-x@bk.ru', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%category%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:114:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:29:\"^my_venues/([^/]+)/([\\d]+)/?$\";s:76:\"index.php?mvc_controller=my_venues&mvc_action=$matches[1]&mvc_id=$matches[2]\";s:21:\"^my_venues/([\\d]+)/?$\";s:69:\"index.php?mvc_controller=my_venues&mvc_id=$matches[1]&mvc_action=show\";s:13:\"^my_venues/?$\";s:51:\"index.php?mvc_controller=my_venues&mvc_action=index\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:32:\"news/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"news/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"news/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"news/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"news/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"news/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"news/([^/]+)/embed/?$\";s:37:\"index.php?news=$matches[1]&embed=true\";s:25:\"news/([^/]+)/trackback/?$\";s:31:\"index.php?news=$matches[1]&tb=1\";s:33:\"news/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?news=$matches[1]&paged=$matches[2]\";s:40:\"news/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?news=$matches[1]&cpage=$matches[2]\";s:29:\"news/([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?news=$matches[1]&page=$matches[2]\";s:21:\"news/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:31:\"news/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:51:\"news/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"news/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"news/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:27:\"news/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=8&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:31:\".+?/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\".+?/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\".+?/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\".+?/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"(.+?)/([^/]+)/embed/?$\";s:63:\"index.php?category_name=$matches[1]&name=$matches[2]&embed=true\";s:26:\"(.+?)/([^/]+)/trackback/?$\";s:57:\"index.php?category_name=$matches[1]&name=$matches[2]&tb=1\";s:46:\"(.+?)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:41:\"(.+?)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:34:\"(.+?)/([^/]+)/page/?([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&paged=$matches[3]\";s:41:\"(.+?)/([^/]+)/comment-page-([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&cpage=$matches[3]\";s:30:\"(.+?)/([^/]+)(?:/([0-9]+))?/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&page=$matches[3]\";s:20:\".+?/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:30:\".+?/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:50:\".+?/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\".+?/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:14:\"(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:26:\"(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:33:\"(.+?)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&cpage=$matches[2]\";s:8:\"(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:9:{i:0;s:41:\"advanced-custom-fields-pro-master/acf.php\";i:1;s:53:\"agp-ajax-taxonomy-filter/agp-ajax-taxonomy-filter.php\";i:2;s:37:\"breadcrumb-navxt/breadcrumb-navxt.php\";i:3;s:45:\"cf7-phone-mask-field/cf7-phone-mask-field.php\";i:4;s:33:\"classic-editor/classic-editor.php\";i:5;s:36:\"contact-form-7/wp-contact-form-7.php\";i:6;s:23:\"my-plugin/my_plugin.php\";i:7;s:17:\"wp-mvc/wp_mvc.php\";i:8;s:35:\"wpcf7-recaptcha/wpcf7-recaptcha.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'main', 'yes'),
(41, 'stylesheet', 'main', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '45805', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:3:{s:33:\"classic-editor/classic-editor.php\";a:2:{i:0;s:14:\"Classic_Editor\";i:1;s:9:\"uninstall\";}s:69:\"contact-form-7-multi-step-module/contact-form-7-multi-step-module.php\";a:2:{i:0;s:8:\"Freemius\";i:1;s:22:\"_uninstall_plugin_hook\";}s:27:\"wp-pagenavi/wp-pagenavi.php\";s:14:\"__return_false\";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '8', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1592306618', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', 'ru_RU', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"true_side\";a:0:{}s:9:\"true_foot\";a:0:{}s:9:\"true_hleb\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:9:{i:1578255822;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1578266624;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1578266625;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1578266626;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1578309819;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1578309841;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1578309843;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1578333275;a:1:{s:22:\"cpcff_clean_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(116, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1576760212;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(131, 'can_compress_scripts', '1', 'no'),
(147, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:17:\"webdesign-x@bk.ru\";s:7:\"version\";s:5:\"5.3.2\";s:9:\"timestamp\";i:1576754732;}', 'no'),
(150, 'recently_activated', 'a:4:{s:27:\"wp-pagenavi/wp-pagenavi.php\";i:1578130007;s:64:\"popup-message-contact-form-7/popupmessage-for-contact-form-7.php\";i:1578129994;s:39:\"siteorigin-panels/siteorigin-panels.php\";i:1578091385;s:52:\"pvb-contact-form-7-calculator/pvb-cf7-calculator.php\";i:1577740552;}', 'yes'),
(151, 'acf_version', '5.8.3', 'yes'),
(155, 'current_theme', '', 'yes'),
(156, 'theme_mods_main', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(157, 'theme_switched', '', 'yes'),
(177, 'wpcf7', 'a:6:{s:7:\"version\";s:5:\"5.1.6\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1576789805;s:7:\"version\";s:5:\"5.1.6\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}s:23:\"recaptcha_v2_v3_warning\";b:0;s:15:\"iqfix_recaptcha\";i:2;s:22:\"iqfix_recaptcha_source\";s:10:\"google.com\";s:9:\"recaptcha\";a:1:{s:40:\"6LdqqcgUAAAAAJQBMQ5Sllp32obzF4tcvQcBrkYa\";s:40:\"6LdqqcgUAAAAANMWdsCld7Uv19cNrbCXIGr50i3B\";}}', 'yes'),
(203, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(210, 'widget_bcn_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(211, 'bcn_version', '6.3.0', 'no'),
(212, 'bcn_options_bk', 'a:72:{s:17:\"bmainsite_display\";b:1;s:18:\"Hmainsite_template\";s:263:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Перейти к %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:28:\"Hmainsite_template_no_anchor\";s:36:\"<span class=\"%type%\">%htitle%</span>\";s:13:\"bhome_display\";b:1;s:14:\"Hhome_template\";s:271:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Перейти к %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%Главная%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:24:\"Hhome_template_no_anchor\";s:36:\"<span class=\"%type%\">%htitle%</span>\";s:13:\"bblog_display\";b:0;s:10:\"hseparator\";s:6:\" &gt; \";s:12:\"blimit_title\";b:0;s:17:\"amax_title_length\";i:20;s:20:\"bcurrent_item_linked\";b:0;s:28:\"bpost_page_hierarchy_display\";b:1;s:33:\"bpost_page_hierarchy_parent_first\";b:1;s:25:\"Spost_page_hierarchy_type\";s:15:\"BCN_POST_PARENT\";s:19:\"Hpost_page_template\";s:263:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Перейти к %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:29:\"Hpost_page_template_no_anchor\";s:36:\"<span class=\"%type%\">%htitle%</span>\";s:15:\"apost_page_root\";s:1:\"8\";s:15:\"Hpaged_template\";s:53:\"<span class=\"%type%\">Страница %htitle%</span>\";s:14:\"bpaged_display\";b:0;s:19:\"Hpost_post_template\";s:263:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Перейти к %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:29:\"Hpost_post_template_no_anchor\";s:36:\"<span class=\"%type%\">%htitle%</span>\";s:15:\"apost_post_root\";s:1:\"8\";s:28:\"bpost_post_hierarchy_display\";b:1;s:33:\"bpost_post_hierarchy_parent_first\";b:0;s:27:\"bpost_post_taxonomy_referer\";b:0;s:25:\"Spost_post_hierarchy_type\";s:8:\"category\";s:34:\"bpost_attachment_hierarchy_display\";b:0;s:39:\"bpost_attachment_hierarchy_parent_first\";b:0;s:31:\"Spost_attachment_hierarchy_type\";s:15:\"BCN_POST_PARENT\";s:21:\"apost_attachment_root\";i:0;s:25:\"Hpost_attachment_template\";s:263:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Перейти к %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:35:\"Hpost_attachment_template_no_anchor\";s:36:\"<span class=\"%type%\">%htitle%</span>\";s:13:\"H404_template\";s:36:\"<span class=\"%type%\">%htitle%</span>\";s:10:\"S404_title\";s:41:\"404. Страница не найдена\";s:16:\"Hsearch_template\";s:405:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\">Результаты поиска для запроса: &#039;<a property=\"item\" typeof=\"WebPage\" title=\"Перейти к первой странице результатов поиска для %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current>%htitle%</a>&#039;</span><meta property=\"position\" content=\"%position%\"></span>\";s:26:\"Hsearch_template_no_anchor\";s:105:\"<span class=\"%type%\">Результаты поиска для запроса: &#039;%htitle%&#039;</span>\";s:22:\"Htax_post_tag_template\";s:296:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Перейти к архивам для метки %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:32:\"Htax_post_tag_template_no_anchor\";s:36:\"<span class=\"%type%\">%htitle%</span>\";s:25:\"Htax_post_format_template\";s:286:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Перейти к архивам для  %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:35:\"Htax_post_format_template_no_anchor\";s:36:\"<span class=\"%type%\">%htitle%</span>\";s:16:\"Hauthor_template\";s:299:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\">Статьи по: <a title=\"Перейти к первой странице записей по %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current>%htitle%</a></span><meta property=\"position\" content=\"%position%\"></span>\";s:26:\"Hauthor_template_no_anchor\";s:55:\"<span class=\"%type%\">Статьи по: %htitle%</span>\";s:12:\"Sauthor_name\";s:12:\"display_name\";s:12:\"aauthor_root\";i:0;s:22:\"Htax_category_template\";s:291:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Перейти к архиву рубрики %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:32:\"Htax_category_template_no_anchor\";s:36:\"<span class=\"%type%\">%htitle%</span>\";s:14:\"Hdate_template\";s:286:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Перейти к архивам для  %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:24:\"Hdate_template_no_anchor\";s:36:\"<span class=\"%type%\">%htitle%</span>\";s:38:\"bpost_acf-field-group_taxonomy_referer\";b:0;s:30:\"Hpost_acf-field-group_template\";s:263:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Перейти к %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:40:\"Hpost_acf-field-group_template_no_anchor\";s:36:\"<span class=\"%type%\">%htitle%</span>\";s:26:\"apost_acf-field-group_root\";i:0;s:39:\"bpost_acf-field-group_hierarchy_display\";b:0;s:37:\"bpost_acf-field-group_archive_display\";b:0;s:36:\"Spost_acf-field-group_hierarchy_type\";s:10:\"BCN_PARENT\";s:44:\"bpost_acf-field-group_hierarchy_parent_first\";b:0;s:32:\"bpost_acf-field_taxonomy_referer\";b:0;s:24:\"Hpost_acf-field_template\";s:263:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Перейти к %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:34:\"Hpost_acf-field_template_no_anchor\";s:36:\"<span class=\"%type%\">%htitle%</span>\";s:20:\"apost_acf-field_root\";i:0;s:33:\"bpost_acf-field_hierarchy_display\";b:0;s:31:\"bpost_acf-field_archive_display\";b:0;s:30:\"Spost_acf-field_hierarchy_type\";s:10:\"BCN_PARENT\";s:38:\"bpost_acf-field_hierarchy_parent_first\";b:0;s:41:\"bpost_wpcf7_contact_form_taxonomy_referer\";b:0;s:33:\"Hpost_wpcf7_contact_form_template\";s:263:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Перейти к %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:43:\"Hpost_wpcf7_contact_form_template_no_anchor\";s:36:\"<span class=\"%type%\">%htitle%</span>\";s:29:\"apost_wpcf7_contact_form_root\";i:0;s:42:\"bpost_wpcf7_contact_form_hierarchy_display\";b:0;s:40:\"bpost_wpcf7_contact_form_archive_display\";b:0;s:39:\"Spost_wpcf7_contact_form_hierarchy_type\";s:8:\"BCN_DATE\";s:47:\"bpost_wpcf7_contact_form_hierarchy_parent_first\";b:0;}', 'yes'),
(213, 'bcn_options', 'a:72:{s:17:\"bmainsite_display\";b:1;s:18:\"Hmainsite_template\";s:263:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Перейти к %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:28:\"Hmainsite_template_no_anchor\";s:36:\"<span class=\"%type%\">%htitle%</span>\";s:13:\"bhome_display\";b:1;s:14:\"Hhome_template\";s:269:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Перейти к %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">Главная</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:24:\"Hhome_template_no_anchor\";s:36:\"<span class=\"%type%\">%htitle%</span>\";s:13:\"bblog_display\";b:0;s:10:\"hseparator\";s:6:\" &gt; \";s:12:\"blimit_title\";b:0;s:17:\"amax_title_length\";i:20;s:20:\"bcurrent_item_linked\";b:0;s:28:\"bpost_page_hierarchy_display\";b:1;s:33:\"bpost_page_hierarchy_parent_first\";b:1;s:25:\"Spost_page_hierarchy_type\";s:15:\"BCN_POST_PARENT\";s:19:\"Hpost_page_template\";s:263:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Перейти к %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:29:\"Hpost_page_template_no_anchor\";s:36:\"<span class=\"%type%\">%htitle%</span>\";s:15:\"apost_page_root\";s:1:\"8\";s:15:\"Hpaged_template\";s:53:\"<span class=\"%type%\">Страница %htitle%</span>\";s:14:\"bpaged_display\";b:0;s:19:\"Hpost_post_template\";s:263:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Перейти к %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:29:\"Hpost_post_template_no_anchor\";s:36:\"<span class=\"%type%\">%htitle%</span>\";s:15:\"apost_post_root\";s:1:\"8\";s:28:\"bpost_post_hierarchy_display\";b:1;s:33:\"bpost_post_hierarchy_parent_first\";b:0;s:27:\"bpost_post_taxonomy_referer\";b:0;s:25:\"Spost_post_hierarchy_type\";s:8:\"category\";s:34:\"bpost_attachment_hierarchy_display\";b:0;s:39:\"bpost_attachment_hierarchy_parent_first\";b:0;s:31:\"Spost_attachment_hierarchy_type\";s:15:\"BCN_POST_PARENT\";s:21:\"apost_attachment_root\";i:0;s:25:\"Hpost_attachment_template\";s:263:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Перейти к %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:35:\"Hpost_attachment_template_no_anchor\";s:36:\"<span class=\"%type%\">%htitle%</span>\";s:13:\"H404_template\";s:36:\"<span class=\"%type%\">%htitle%</span>\";s:10:\"S404_title\";s:41:\"404. Страница не найдена\";s:16:\"Hsearch_template\";s:405:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\">Результаты поиска для запроса: &#039;<a property=\"item\" typeof=\"WebPage\" title=\"Перейти к первой странице результатов поиска для %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current>%htitle%</a>&#039;</span><meta property=\"position\" content=\"%position%\"></span>\";s:26:\"Hsearch_template_no_anchor\";s:105:\"<span class=\"%type%\">Результаты поиска для запроса: &#039;%htitle%&#039;</span>\";s:22:\"Htax_post_tag_template\";s:296:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Перейти к архивам для метки %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:32:\"Htax_post_tag_template_no_anchor\";s:36:\"<span class=\"%type%\">%htitle%</span>\";s:25:\"Htax_post_format_template\";s:286:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Перейти к архивам для  %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:35:\"Htax_post_format_template_no_anchor\";s:36:\"<span class=\"%type%\">%htitle%</span>\";s:16:\"Hauthor_template\";s:299:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\">Статьи по: <a title=\"Перейти к первой странице записей по %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current>%htitle%</a></span><meta property=\"position\" content=\"%position%\"></span>\";s:26:\"Hauthor_template_no_anchor\";s:55:\"<span class=\"%type%\">Статьи по: %htitle%</span>\";s:12:\"Sauthor_name\";s:12:\"display_name\";s:12:\"aauthor_root\";i:0;s:22:\"Htax_category_template\";s:291:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Перейти к архиву рубрики %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:32:\"Htax_category_template_no_anchor\";s:36:\"<span class=\"%type%\">%htitle%</span>\";s:14:\"Hdate_template\";s:286:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Перейти к архивам для  %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:24:\"Hdate_template_no_anchor\";s:36:\"<span class=\"%type%\">%htitle%</span>\";s:38:\"bpost_acf-field-group_taxonomy_referer\";b:0;s:30:\"Hpost_acf-field-group_template\";s:263:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Перейти к %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:40:\"Hpost_acf-field-group_template_no_anchor\";s:36:\"<span class=\"%type%\">%htitle%</span>\";s:26:\"apost_acf-field-group_root\";i:0;s:39:\"bpost_acf-field-group_hierarchy_display\";b:0;s:37:\"bpost_acf-field-group_archive_display\";b:0;s:36:\"Spost_acf-field-group_hierarchy_type\";s:10:\"BCN_PARENT\";s:44:\"bpost_acf-field-group_hierarchy_parent_first\";b:0;s:32:\"bpost_acf-field_taxonomy_referer\";b:0;s:24:\"Hpost_acf-field_template\";s:263:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Перейти к %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:34:\"Hpost_acf-field_template_no_anchor\";s:36:\"<span class=\"%type%\">%htitle%</span>\";s:20:\"apost_acf-field_root\";i:0;s:33:\"bpost_acf-field_hierarchy_display\";b:0;s:31:\"bpost_acf-field_archive_display\";b:0;s:30:\"Spost_acf-field_hierarchy_type\";s:10:\"BCN_PARENT\";s:38:\"bpost_acf-field_hierarchy_parent_first\";b:0;s:41:\"bpost_wpcf7_contact_form_taxonomy_referer\";b:0;s:33:\"Hpost_wpcf7_contact_form_template\";s:263:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Перейти к %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:43:\"Hpost_wpcf7_contact_form_template_no_anchor\";s:36:\"<span class=\"%type%\">%htitle%</span>\";s:29:\"apost_wpcf7_contact_form_root\";i:0;s:42:\"bpost_wpcf7_contact_form_hierarchy_display\";b:0;s:40:\"bpost_wpcf7_contact_form_archive_display\";b:0;s:39:\"Spost_wpcf7_contact_form_hierarchy_type\";s:8:\"BCN_DATE\";s:47:\"bpost_wpcf7_contact_form_hierarchy_parent_first\";b:0;}', 'yes'),
(259, 'CP_CALCULATEDFIELDSF_VERSION', '1.0.348', 'yes'),
(260, '_transient_codepeople_promote_banner_codepeople-calculated-fields-form', '1576864474', 'yes'),
(267, 'CP_CFF_LOAD_SCRIPTS', '1', 'yes'),
(268, 'CP_CALCULATEDFIELDSF_USE_CACHE', '0', 'yes'),
(269, 'CP_CALCULATEDFIELDSF_EXCLUDE_CRAWLERS', '0', 'yes'),
(274, 'fs_active_plugins', 'O:8:\"stdClass\":3:{s:7:\"plugins\";a:1:{s:41:\"contact-form-7-multi-step-module/freemius\";O:8:\"stdClass\":4:{s:7:\"version\";s:5:\"2.3.1\";s:4:\"type\";s:6:\"plugin\";s:9:\"timestamp\";i:1576868210;s:11:\"plugin_path\";s:36:\"contact-form-7/wp-contact-form-7.php\";}}s:7:\"abspath\";s:32:\"D:\\OSPanel\\domains\\A-WORDPRESS2/\";s:6:\"newest\";O:8:\"stdClass\":5:{s:11:\"plugin_path\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:8:\"sdk_path\";s:41:\"contact-form-7-multi-step-module/freemius\";s:7:\"version\";s:5:\"2.3.1\";s:13:\"in_activation\";b:0;s:9:\"timestamp\";i:1576868288;}}', 'yes'),
(275, 'fs_debug_mode', '', 'yes'),
(276, 'fs_accounts', 'a:6:{s:21:\"id_slug_type_path_map\";a:1:{i:1614;a:2:{s:4:\"slug\";s:32:\"contact-form-7-multi-step-module\";s:4:\"type\";s:6:\"plugin\";}}s:11:\"plugin_data\";a:1:{s:32:\"contact-form-7-multi-step-module\";a:16:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:9:\"prev_path\";s:69:\"contact-form-7-multi-step-module/contact-form-7-multi-step-module.php\";}s:20:\"is_network_activated\";b:0;s:17:\"install_timestamp\";i:1576868210;s:17:\"was_plugin_loaded\";b:1;s:21:\"is_plugin_new_install\";b:0;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:5:\"2.3.1\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";N;s:14:\"plugin_version\";s:3:\"4.0\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";b:1;s:4:\"host\";s:12:\"a-wordpress2\";s:9:\"server_ip\";s:9:\"127.0.0.1\";s:9:\"is_active\";b:1;s:9:\"timestamp\";i:1576868210;s:7:\"version\";s:3:\"4.0\";}s:15:\"prev_is_premium\";b:0;s:12:\"is_anonymous\";a:3:{s:2:\"is\";b:1;s:9:\"timestamp\";i:1576868240;s:7:\"version\";s:3:\"4.0\";}}}s:13:\"file_slug_map\";a:1:{s:69:\"contact-form-7-multi-step-module/contact-form-7-multi-step-module.php\";s:32:\"contact-form-7-multi-step-module\";}s:7:\"plugins\";a:1:{s:32:\"contact-form-7-multi-step-module\";O:9:\"FS_Plugin\":23:{s:16:\"parent_plugin_id\";N;s:5:\"title\";s:31:\"Contact Form 7 Multi-Step Forms\";s:4:\"slug\";s:32:\"contact-form-7-multi-step-module\";s:12:\"premium_slug\";s:40:\"contact-form-7-multi-step-module-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";b:0;s:19:\"is_wp_org_compliant\";b:1;s:22:\"premium_releases_count\";N;s:4:\"file\";s:69:\"contact-form-7-multi-step-module/contact-form-7-multi-step-module.php\";s:7:\"version\";s:3:\"4.0\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:3:\"Pro\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:10:\"public_key\";s:32:\"pk_b445061ad8b540f6a89c2c4f4df19\";s:10:\"secret_key\";N;s:2:\"id\";s:4:\"1614\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:9:\"unique_id\";s:32:\"c2a1ef419b7ca5a8630349a830ff7234\";s:13:\"admin_notices\";a:1:{s:32:\"contact-form-7-multi-step-module\";a:0:{}}}', 'yes'),
(277, 'fs_gdpr', 'a:1:{s:2:\"u1\";a:1:{s:8:\"required\";b:0;}}', 'yes'),
(278, 'fs_api_cache', 'a:0:{}', 'no'),
(285, 'pvb_cf7_calculator_settings_general_settings', 'a:3:{s:24:\"features_show_powered_by\";s:1:\"1\";s:33:\"features_hide_promo_admin_notices\";s:1:\"1\";s:39:\"features_hide_promo_admin_notices_until\";s:10:\"2019-12-22\";}', 'yes'),
(321, 'siteorigin_panels_settings', 'a:26:{s:10:\"post-types\";a:2:{i:0;s:4:\"page\";i:1;s:4:\"post\";}s:11:\"use-classic\";b:1;s:22:\"live-editor-quick-link\";b:1;s:16:\"admin-post-state\";b:1;s:18:\"admin-widget-count\";b:0;s:15:\"parallax-motion\";s:0:\"\";s:17:\"sidebars-emulator\";b:1;s:14:\"display-teaser\";b:1;s:14:\"load-on-attach\";b:1;s:25:\"layout-block-default-mode\";s:7:\"preview\";s:10:\"title-html\";s:39:\"<h3 class=\"widget-title\">{{title}}</h3>\";s:16:\"add-widget-class\";b:1;s:15:\"bundled-widgets\";b:0;s:19:\"recommended-widgets\";b:1;s:20:\"instant-open-widgets\";b:0;s:10:\"responsive\";b:1;s:13:\"tablet-layout\";b:0;s:13:\"legacy-layout\";s:4:\"auto\";s:12:\"tablet-width\";i:1024;s:12:\"mobile-width\";i:780;s:13:\"margin-bottom\";i:30;s:22:\"margin-bottom-last-row\";b:0;s:12:\"margin-sides\";i:30;s:20:\"full-width-container\";s:4:\"body\";s:12:\"copy-content\";b:1;s:11:\"copy-styles\";b:0;}', 'yes'),
(322, 'siteorigin_panels_initial_version', '2.10.13', 'no'),
(325, 'siteorigin_panels_active_version', '2.10.13', 'yes'),
(326, 'widget_siteorigin-panels-post-content', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(327, 'widget_siteorigin-panels-postloop', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(328, 'widget_siteorigin-panels-builder', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(437, '_site_transient_timeout_php_check_7322ac3ae994a535cf43c2a90d17ee79', '1578307417', 'no'),
(438, '_site_transient_php_check_7322ac3ae994a535cf43c2a90d17ee79', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:0;s:13:\"is_acceptable\";b:1;}', 'no'),
(463, 'mvc_plugins', 'a:1:{i:0;s:9:\"my-plugin\";}', 'yes'),
(464, 'my_plugin_db_version', '1.0', 'yes'),
(471, 'test_plugin_db_version', '1.0', 'yes'),
(472, 'recovery_mode_email_last_sent', '1578077169', 'yes'),
(528, '_transient_timeout_acf_plugin_updates', '1578241974', 'no'),
(529, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:41:\"advanced-custom-fields-pro-master/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:41:\"advanced-custom-fields-pro-master/acf.php\";s:11:\"new_version\";s:5:\"5.8.7\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.3.0\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:41:\"advanced-custom-fields-pro-master/acf.php\";s:5:\"5.8.3\";}}', 'no'),
(549, 'category_children', 'a:0:{}', 'yes'),
(575, '_transient_timeout_plugin_slugs', '1578245470', 'no'),
(576, '_transient_plugin_slugs', 'a:17:{i:0;s:41:\"advanced-custom-fields-pro-master/acf.php\";i:1;s:53:\"agp-ajax-taxonomy-filter/agp-ajax-taxonomy-filter.php\";i:2;s:19:\"akismet/akismet.php\";i:3;s:37:\"breadcrumb-navxt/breadcrumb-navxt.php\";i:4;s:52:\"calculated-fields-form/cp_calculatedfieldsf_free.php\";i:5;s:33:\"classic-editor/classic-editor.php\";i:6;s:36:\"contact-form-7/wp-contact-form-7.php\";i:7;s:45:\"cf7-phone-mask-field/cf7-phone-mask-field.php\";i:8;s:69:\"contact-form-7-multi-step-module/contact-form-7-multi-step-module.php\";i:9;s:9:\"hello.php\";i:10;s:23:\"my-plugin/my_plugin.php\";i:11;s:39:\"siteorigin-panels/siteorigin-panels.php\";i:12;s:64:\"popup-message-contact-form-7/popupmessage-for-contact-form-7.php\";i:13;s:52:\"pvb-contact-form-7-calculator/pvb-cf7-calculator.php\";i:14;s:35:\"wpcf7-recaptcha/wpcf7-recaptcha.php\";i:15;s:27:\"wp-pagenavi/wp-pagenavi.php\";i:16;s:17:\"wp-mvc/wp_mvc.php\";}', 'no'),
(582, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.3.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1578231572;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:0:{}}', 'no'),
(584, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1578231583;s:7:\"checked\";a:4:{s:4:\"main\";s:0:\"\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:12:\"twentytwenty\";s:3:\"1.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(585, 'pagenavi_options', 'a:15:{s:10:\"pages_text\";s:50:\"Страница %CURRENT_PAGE% из %TOTAL_PAGES%\";s:12:\"current_text\";s:13:\"%PAGE_NUMBER%\";s:9:\"page_text\";s:13:\"%PAGE_NUMBER%\";s:10:\"first_text\";s:20:\"&laquo; Первая\";s:9:\"last_text\";s:26:\"Последняя &raquo;\";s:9:\"prev_text\";s:7:\"&laquo;\";s:9:\"next_text\";s:7:\"&raquo;\";s:12:\"dotleft_text\";s:3:\"...\";s:13:\"dotright_text\";s:3:\"...\";s:9:\"num_pages\";i:5;s:23:\"num_larger_page_numbers\";i:3;s:28:\"larger_page_numbers_multiple\";i:10;s:11:\"always_show\";b:0;s:16:\"use_pagenavi_css\";b:1;s:5:\"style\";i:1;}', 'yes'),
(631, 'widget_atf_taxonomy_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(647, '_site_transient_timeout_theme_roots', '1578233382', 'no'),
(648, '_site_transient_theme_roots', 'a:4:{s:4:\"main\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(649, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1578231584;s:7:\"checked\";a:17:{s:41:\"advanced-custom-fields-pro-master/acf.php\";s:5:\"5.8.3\";s:53:\"agp-ajax-taxonomy-filter/agp-ajax-taxonomy-filter.php\";s:5:\"1.1.0\";s:19:\"akismet/akismet.php\";s:5:\"4.1.3\";s:37:\"breadcrumb-navxt/breadcrumb-navxt.php\";s:5:\"6.3.0\";s:52:\"calculated-fields-form/cp_calculatedfieldsf_free.php\";s:7:\"1.0.348\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.5\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.6\";s:45:\"cf7-phone-mask-field/cf7-phone-mask-field.php\";s:5:\"1.4.1\";s:69:\"contact-form-7-multi-step-module/contact-form-7-multi-step-module.php\";s:3:\"4.0\";s:9:\"hello.php\";s:5:\"1.7.2\";s:23:\"my-plugin/my_plugin.php\";s:0:\"\";s:39:\"siteorigin-panels/siteorigin-panels.php\";s:7:\"2.10.13\";s:64:\"popup-message-contact-form-7/popupmessage-for-contact-form-7.php\";s:3:\"1.0\";s:52:\"pvb-contact-form-7-calculator/pvb-cf7-calculator.php\";s:5:\"1.0.9\";s:35:\"wpcf7-recaptcha/wpcf7-recaptcha.php\";s:5:\"1.2.3\";s:27:\"wp-pagenavi/wp-pagenavi.php\";s:6:\"2.93.1\";s:17:\"wp-mvc/wp_mvc.php\";s:6:\"1.3.20\";}s:8:\"response\";a:4:{s:37:\"breadcrumb-navxt/breadcrumb-navxt.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:30:\"w.org/plugins/breadcrumb-navxt\";s:4:\"slug\";s:16:\"breadcrumb-navxt\";s:6:\"plugin\";s:37:\"breadcrumb-navxt/breadcrumb-navxt.php\";s:11:\"new_version\";s:5:\"6.4.0\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/breadcrumb-navxt/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/breadcrumb-navxt.6.4.0.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:68:\"https://ps.w.org/breadcrumb-navxt/assets/icon-256x256.png?rev=971477\";s:2:\"1x\";s:61:\"https://ps.w.org/breadcrumb-navxt/assets/icon.svg?rev=1927103\";s:3:\"svg\";s:61:\"https://ps.w.org/breadcrumb-navxt/assets/icon.svg?rev=1927103\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/breadcrumb-navxt/assets/banner-1544x500.png?rev=1927103\";s:2:\"1x\";s:71:\"https://ps.w.org/breadcrumb-navxt/assets/banner-772x250.png?rev=1927103\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.4.0\";s:12:\"requires_php\";s:3:\"5.5\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:52:\"calculated-fields-form/cp_calculatedfieldsf_free.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:36:\"w.org/plugins/calculated-fields-form\";s:4:\"slug\";s:22:\"calculated-fields-form\";s:6:\"plugin\";s:52:\"calculated-fields-form/cp_calculatedfieldsf_free.php\";s:11:\"new_version\";s:7:\"1.0.350\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/calculated-fields-form/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/calculated-fields-form.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/calculated-fields-form/assets/icon-256x256.jpg?rev=1734377\";s:2:\"1x\";s:75:\"https://ps.w.org/calculated-fields-form/assets/icon-128x128.jpg?rev=1734377\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/calculated-fields-form/assets/banner-1544x500.png?rev=1734377\";s:2:\"1x\";s:77:\"https://ps.w.org/calculated-fields-form/assets/banner-772x250.png?rev=1734395\";}s:11:\"banners_rtl\";a:0:{}s:14:\"upgrade_notice\";s:220:\"<p>Important note: If you are using the Professional version don&#039;t update via the WP dashboard but using your personal update link. Contact us if you need further information: http://cff.dwbooster.com/contact-us</p>\";s:6:\"tested\";s:5:\"5.3.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:35:\"wpcf7-recaptcha/wpcf7-recaptcha.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:29:\"w.org/plugins/wpcf7-recaptcha\";s:4:\"slug\";s:15:\"wpcf7-recaptcha\";s:6:\"plugin\";s:35:\"wpcf7-recaptcha/wpcf7-recaptcha.php\";s:11:\"new_version\";s:5:\"1.2.4\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/wpcf7-recaptcha/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/wpcf7-recaptcha.1.2.4.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:68:\"https://ps.w.org/wpcf7-recaptcha/assets/icon-256x256.png?rev=2003053\";s:2:\"1x\";s:60:\"https://ps.w.org/wpcf7-recaptcha/assets/icon.svg?rev=2003053\";s:3:\"svg\";s:60:\"https://ps.w.org/wpcf7-recaptcha/assets/icon.svg?rev=2003053\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/wpcf7-recaptcha/assets/banner-1544x500.png?rev=2003053\";s:2:\"1x\";s:70:\"https://ps.w.org/wpcf7-recaptcha/assets/banner-772x250.png?rev=2003053\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/wpcf7-recaptcha/assets/banner-1544x500-rtl.png?rev=2003053\";s:2:\"1x\";s:74:\"https://ps.w.org/wpcf7-recaptcha/assets/banner-772x250-rtl.png?rev=2003053\";}s:6:\"tested\";s:5:\"5.3.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:41:\"advanced-custom-fields-pro-master/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:41:\"advanced-custom-fields-pro-master/acf.php\";s:11:\"new_version\";s:5:\"5.8.7\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.3.0\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:12:{s:53:\"agp-ajax-taxonomy-filter/agp-ajax-taxonomy-filter.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/agp-ajax-taxonomy-filter\";s:4:\"slug\";s:24:\"agp-ajax-taxonomy-filter\";s:6:\"plugin\";s:53:\"agp-ajax-taxonomy-filter/agp-ajax-taxonomy-filter.php\";s:11:\"new_version\";s:5:\"1.1.0\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/agp-ajax-taxonomy-filter/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/agp-ajax-taxonomy-filter.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/agp-ajax-taxonomy-filter/assets/icon-256x256.png?rev=1119597\";s:2:\"1x\";s:77:\"https://ps.w.org/agp-ajax-taxonomy-filter/assets/icon-128x128.png?rev=1119597\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:80:\"https://ps.w.org/agp-ajax-taxonomy-filter/assets/banner-1544x500.png?rev=1114045\";s:2:\"1x\";s:79:\"https://ps.w.org/agp-ajax-taxonomy-filter/assets/banner-772x250.png?rev=1114045\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"cf7-phone-mask-field/cf7-phone-mask-field.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:34:\"w.org/plugins/cf7-phone-mask-field\";s:4:\"slug\";s:20:\"cf7-phone-mask-field\";s:6:\"plugin\";s:45:\"cf7-phone-mask-field/cf7-phone-mask-field.php\";s:11:\"new_version\";s:5:\"1.4.1\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/cf7-phone-mask-field/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/cf7-phone-mask-field.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:64:\"https://s.w.org/plugins/geopattern-icon/cf7-phone-mask-field.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:69:\"contact-form-7-multi-step-module/contact-form-7-multi-step-module.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:46:\"w.org/plugins/contact-form-7-multi-step-module\";s:4:\"slug\";s:32:\"contact-form-7-multi-step-module\";s:6:\"plugin\";s:69:\"contact-form-7-multi-step-module/contact-form-7-multi-step-module.php\";s:11:\"new_version\";s:3:\"4.0\";s:3:\"url\";s:63:\"https://wordpress.org/plugins/contact-form-7-multi-step-module/\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/plugin/contact-form-7-multi-step-module.4.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:85:\"https://ps.w.org/contact-form-7-multi-step-module/assets/icon-256x256.png?rev=1793363\";s:2:\"1x\";s:85:\"https://ps.w.org/contact-form-7-multi-step-module/assets/icon-128x128.png?rev=1793363\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:88:\"https://ps.w.org/contact-form-7-multi-step-module/assets/banner-1544x500.jpg?rev=1793363\";s:2:\"1x\";s:87:\"https://ps.w.org/contact-form-7-multi-step-module/assets/banner-772x250.jpg?rev=1793363\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"siteorigin-panels/siteorigin-panels.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/siteorigin-panels\";s:4:\"slug\";s:17:\"siteorigin-panels\";s:6:\"plugin\";s:39:\"siteorigin-panels/siteorigin-panels.php\";s:11:\"new_version\";s:7:\"2.10.13\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/siteorigin-panels/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/siteorigin-panels.2.10.13.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/siteorigin-panels/assets/icon-256x256.png?rev=1044755\";s:2:\"1x\";s:70:\"https://ps.w.org/siteorigin-panels/assets/icon-128x128.png?rev=1044755\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/siteorigin-panels/assets/banner-772x250.jpg?rev=1044755\";}s:11:\"banners_rtl\";a:0:{}}s:64:\"popup-message-contact-form-7/popupmessage-for-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:42:\"w.org/plugins/popup-message-contact-form-7\";s:4:\"slug\";s:28:\"popup-message-contact-form-7\";s:6:\"plugin\";s:64:\"popup-message-contact-form-7/popupmessage-for-contact-form-7.php\";s:11:\"new_version\";s:3:\"1.0\";s:3:\"url\";s:59:\"https://wordpress.org/plugins/popup-message-contact-form-7/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/popup-message-contact-form-7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:81:\"https://ps.w.org/popup-message-contact-form-7/assets/icon-256x256.png?rev=2201039\";s:2:\"1x\";s:81:\"https://ps.w.org/popup-message-contact-form-7/assets/icon-128x128.png?rev=2201039\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:84:\"https://ps.w.org/popup-message-contact-form-7/assets/banner-1544x500.png?rev=2201039\";s:2:\"1x\";s:83:\"https://ps.w.org/popup-message-contact-form-7/assets/banner-772x250.png?rev=2201039\";}s:11:\"banners_rtl\";a:0:{}}s:52:\"pvb-contact-form-7-calculator/pvb-cf7-calculator.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:43:\"w.org/plugins/pvb-contact-form-7-calculator\";s:4:\"slug\";s:29:\"pvb-contact-form-7-calculator\";s:6:\"plugin\";s:52:\"pvb-contact-form-7-calculator/pvb-cf7-calculator.php\";s:11:\"new_version\";s:5:\"1.0.9\";s:3:\"url\";s:60:\"https://wordpress.org/plugins/pvb-contact-form-7-calculator/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/pvb-contact-form-7-calculator.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:82:\"https://ps.w.org/pvb-contact-form-7-calculator/assets/icon-256x256.png?rev=1837175\";s:2:\"1x\";s:82:\"https://ps.w.org/pvb-contact-form-7-calculator/assets/icon-128x128.png?rev=1837175\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:85:\"https://ps.w.org/pvb-contact-form-7-calculator/assets/banner-1544x500.png?rev=1837175\";s:2:\"1x\";s:84:\"https://ps.w.org/pvb-contact-form-7-calculator/assets/banner-772x250.png?rev=1837175\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"wp-pagenavi/wp-pagenavi.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/wp-pagenavi\";s:4:\"slug\";s:11:\"wp-pagenavi\";s:6:\"plugin\";s:27:\"wp-pagenavi/wp-pagenavi.php\";s:11:\"new_version\";s:6:\"2.93.1\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/wp-pagenavi/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wp-pagenavi.2.93.1.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:55:\"https://ps.w.org/wp-pagenavi/assets/icon.svg?rev=977997\";s:3:\"svg\";s:55:\"https://ps.w.org/wp-pagenavi/assets/icon.svg?rev=977997\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/wp-pagenavi/assets/banner-1544x500.jpg?rev=1206758\";s:2:\"1x\";s:66:\"https://ps.w.org/wp-pagenavi/assets/banner-772x250.jpg?rev=1206758\";}s:11:\"banners_rtl\";a:0:{}}s:17:\"wp-mvc/wp_mvc.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:20:\"w.org/plugins/wp-mvc\";s:4:\"slug\";s:6:\"wp-mvc\";s:6:\"plugin\";s:17:\"wp-mvc/wp_mvc.php\";s:11:\"new_version\";s:6:\"1.3.20\";s:3:\"url\";s:37:\"https://wordpress.org/plugins/wp-mvc/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/wp-mvc.1.3.20.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/wp-mvc/assets/icon-256x256.png?rev=1167836\";s:2:\"1x\";s:59:\"https://ps.w.org/wp-mvc/assets/icon-128x128.png?rev=1167836\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:62:\"https://ps.w.org/wp-mvc/assets/banner-1544x500.png?rev=1167836\";s:2:\"1x\";s:61:\"https://ps.w.org/wp-mvc/assets/banner-772x250.png?rev=1167836\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(3, 1, '_edit_lock', '1576755092:1'),
(10, 8, '_edit_last', '1'),
(11, 8, '_edit_lock', '1577560324:1'),
(12, 8, '_wp_page_template', 'home.php'),
(13, 10, '_edit_last', '1'),
(14, 10, '_edit_lock', '1577021468:1'),
(17, 8, 'slider', 'a:2:{i:0;s:2:\"21\";i:1;s:2:\"22\";}'),
(18, 8, '_slider', 'field_5dfb8610f534c'),
(19, 13, 'slider', 'a:1:{i:0;s:2:\"12\";}'),
(20, 13, '_slider', 'field_5dfb8610f534c'),
(21, 14, 'slider', 'a:1:{i:0;s:2:\"12\";}'),
(22, 14, '_slider', 'field_5dfb8610f534c'),
(23, 15, 'slider', ''),
(24, 15, '_slider', 'field_5dfb8610f534c'),
(29, 18, 'slider', 'a:2:{i:0;s:2:\"17\";i:1;s:2:\"16\";}'),
(30, 18, '_slider', 'field_5dfb8610f534c'),
(31, 19, 'slider', 'a:2:{i:0;s:2:\"17\";i:1;s:2:\"16\";}'),
(32, 19, '_slider', 'field_5dfb8610f534c'),
(33, 20, 'slider', 'a:2:{i:0;s:2:\"16\";i:1;s:2:\"17\";}'),
(34, 20, '_slider', 'field_5dfb8610f534c'),
(35, 21, '_wp_attached_file', '2019/12/1920x1080_752916_wwwartfileru.jpg'),
(36, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1893;s:6:\"height\";i:1026;s:4:\"file\";s:41:\"2019/12/1920x1080_752916_wwwartfileru.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"1920x1080_752916_wwwartfileru-300x163.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:163;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:42:\"1920x1080_752916_wwwartfileru-1024x555.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"1920x1080_752916_wwwartfileru-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:41:\"1920x1080_752916_wwwartfileru-768x416.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:42:\"1920x1080_752916_wwwartfileru-1536x833.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:833;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(37, 22, '_wp_attached_file', '2019/12/Breaking-Bad.jpg'),
(38, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1200;s:4:\"file\";s:24:\"2019/12/Breaking-Bad.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"Breaking-Bad-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"Breaking-Bad-1024x640.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"Breaking-Bad-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"Breaking-Bad-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:25:\"Breaking-Bad-1536x960.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:960;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(39, 23, 'slider', 'a:2:{i:0;s:2:\"21\";i:1;s:2:\"22\";}'),
(40, 23, '_slider', 'field_5dfb8610f534c'),
(41, 24, 'slider', 'a:2:{i:0;s:2:\"21\";i:1;s:2:\"22\";}'),
(42, 24, '_slider', 'field_5dfb8610f534c'),
(43, 28, '_wp_attached_file', '2019/12/587c88912b7a8c71d6395d9e34c0a62f.jpg'),
(44, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:667;s:4:\"file\";s:44:\"2019/12/587c88912b7a8c71d6395d9e34c0a62f.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"587c88912b7a8c71d6395d9e34c0a62f-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"587c88912b7a8c71d6395d9e34c0a62f-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(45, 8, 'acters_0_Фото актера', '28'),
(46, 8, '_acters_0_Фото актера', 'field_5dfb8f1f1054c'),
(47, 8, 'acters_0_desc_acter', 'Джесси'),
(48, 8, '_acters_0_desc_acter', 'field_5dfb8f371054d'),
(49, 8, 'acters', '2'),
(50, 8, '_acters', 'field_5dfb8f071054b'),
(51, 29, 'slider', 'a:2:{i:0;s:2:\"21\";i:1;s:2:\"22\";}'),
(52, 29, '_slider', 'field_5dfb8610f534c'),
(53, 29, 'acters_0_Фото актера', '28'),
(54, 29, '_acters_0_Фото актера', 'field_5dfb8f1f1054c'),
(55, 29, 'acters_0_desc_acter', 'Джесси'),
(56, 29, '_acters_0_desc_acter', 'field_5dfb8f371054d'),
(57, 29, 'acters', '1'),
(58, 29, '_acters', 'field_5dfb8f071054b'),
(59, 8, 'acters_0_photo_act', '28'),
(60, 8, '_acters_0_photo_act', 'field_5dfb8f1f1054c'),
(61, 8, 'acters_1_photo_act', '31'),
(62, 8, '_acters_1_photo_act', 'field_5dfb8f1f1054c'),
(63, 8, 'acters_1_desc_acter', 'Уолтер Вайт'),
(64, 8, '_acters_1_desc_acter', 'field_5dfb8f371054d'),
(65, 30, 'slider', 'a:2:{i:0;s:2:\"21\";i:1;s:2:\"22\";}'),
(66, 30, '_slider', 'field_5dfb8610f534c'),
(67, 30, 'acters_0_Фото актера', '28'),
(68, 30, '_acters_0_Фото актера', 'field_5dfb8f1f1054c'),
(69, 30, 'acters_0_desc_acter', 'Джесси'),
(70, 30, '_acters_0_desc_acter', 'field_5dfb8f371054d'),
(71, 30, 'acters', '2'),
(72, 30, '_acters', 'field_5dfb8f071054b'),
(73, 30, 'acters_0_photo_act', '28'),
(74, 30, '_acters_0_photo_act', 'field_5dfb8f1f1054c'),
(75, 30, 'acters_1_photo_act', ''),
(76, 30, '_acters_1_photo_act', 'field_5dfb8f1f1054c'),
(77, 30, 'acters_1_desc_acter', ''),
(78, 30, '_acters_1_desc_acter', 'field_5dfb8f371054d'),
(79, 31, '_wp_attached_file', '2019/12/images.jpg'),
(80, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:194;s:6:\"height\";i:259;s:4:\"file\";s:18:\"2019/12/images.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"images-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(81, 32, 'slider', 'a:2:{i:0;s:2:\"21\";i:1;s:2:\"22\";}'),
(82, 32, '_slider', 'field_5dfb8610f534c'),
(83, 32, 'acters_0_Фото актера', '28'),
(84, 32, '_acters_0_Фото актера', 'field_5dfb8f1f1054c'),
(85, 32, 'acters_0_desc_acter', 'Джесси'),
(86, 32, '_acters_0_desc_acter', 'field_5dfb8f371054d'),
(87, 32, 'acters', '2'),
(88, 32, '_acters', 'field_5dfb8f071054b'),
(89, 32, 'acters_0_photo_act', '28'),
(90, 32, '_acters_0_photo_act', 'field_5dfb8f1f1054c'),
(91, 32, 'acters_1_photo_act', '31'),
(92, 32, '_acters_1_photo_act', 'field_5dfb8f1f1054c'),
(93, 32, 'acters_1_desc_acter', 'Уолтер Вайт'),
(94, 32, '_acters_1_desc_acter', 'field_5dfb8f371054d'),
(95, 33, '_form', '[text* username id:Editbox5 placeholder \"Ваше имя\"]\n[mask* phone id:Editbox6 \"+7 (___) ___-__-__\"]\n<div id=\"wb_Text3\">\n<span id=\"wb_uid37\">* - поля, обязательные к заполнению</span><span id=\"wb_uid38\"><br>Нажимая на кнопку, вы даете согласие на обработку ваших персональных данных</span>\n</div>\n[recaptcha]\n[submit id:Button2]'),
(96, 33, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:29:\"a-wordpress2 \"[your-subject]\"\";s:6:\"sender\";s:37:\"a-wordpress2 <wordpress@a-wordpress2>\";s:9:\"recipient\";s:17:\"webdesign-x@bk.ru\";s:4:\"body\";s:247:\"От: [your-name] <[your-email]>\nТема: [your-subject]\n\nАктер: [_post_tltle]\nСсылка: [_post_url]\n\nСообщение:\n[your-message]\n\n-- \nЭто сообщение отправлено с сайта a-wordpress2 (http://a-wordpress2)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(97, 33, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:29:\"a-wordpress2 \"[your-subject]\"\";s:6:\"sender\";s:37:\"a-wordpress2 <wordpress@a-wordpress2>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:135:\"Сообщение:\n[your-message]\n\n-- \nЭто сообщение отправлено с сайта a-wordpress2 (http://a-wordpress2)\";s:18:\"additional_headers\";s:27:\"Reply-To: webdesign-x@bk.ru\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(98, 33, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:92:\"Спасибо за Ваше сообщение. Оно успешно отправлено.\";s:12:\"mail_sent_ng\";s:144:\"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\";s:16:\"validation_error\";s:180:\"Одно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.\";s:4:\"spam\";s:144:\"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\";s:12:\"accept_terms\";s:132:\"Вы должны принять условия и положения перед отправкой вашего сообщения.\";s:16:\"invalid_required\";s:60:\"Поле обязательно для заполнения.\";s:16:\"invalid_too_long\";s:39:\"Поле слишком длинное.\";s:17:\"invalid_too_short\";s:41:\"Поле слишком короткое.\";s:12:\"invalid_date\";s:45:\"Формат даты некорректен.\";s:14:\"date_too_early\";s:74:\"Введённая дата слишком далеко в прошлом.\";s:13:\"date_too_late\";s:74:\"Введённая дата слишком далеко в будущем.\";s:13:\"upload_failed\";s:90:\"При загрузке файла произошла неизвестная ошибка.\";s:24:\"upload_file_type_invalid\";s:81:\"Вам не разрешено загружать файлы этого типа.\";s:21:\"upload_file_too_large\";s:39:\"Файл слишком большой.\";s:23:\"upload_failed_php_error\";s:67:\"При загрузке файла произошла ошибка.\";s:14:\"invalid_number\";s:47:\"Формат числа некорректен.\";s:16:\"number_too_small\";s:68:\"Число меньше минимально допустимого.\";s:16:\"number_too_large\";s:70:\"Число больше максимально допустимого.\";s:23:\"quiz_answer_not_correct\";s:69:\"Неверный ответ на проверочный вопрос.\";s:13:\"invalid_email\";s:62:\"Неверно введён электронный адрес.\";s:11:\"invalid_url\";s:53:\"Введён некорректный URL адрес.\";s:11:\"invalid_tel\";s:70:\"Введён некорректный телефонный номер.\";}'),
(99, 33, '_additional_settings', ''),
(100, 33, '_locale', 'ru_RU'),
(113, 33, 'enabled-popup', ''),
(114, 33, 'enabled-popup-failure', ''),
(115, 33, 'popup_message', 'Ваше сообщение отправлено'),
(116, 33, 'm_popup_width', ''),
(117, 33, 'm_popup_radius', ''),
(118, 33, 'm_popup_duration', ''),
(119, 33, 'popup_templet', 'templet1'),
(120, 33, 'popup_background_option', 'bg_color'),
(121, 33, 'popup_background_color', '#34495e'),
(122, 33, 'popup_text_color', '#ffffff'),
(123, 33, 'popup_button_background_color', '#27ad5f'),
(138, 34, '_form', '<label> Ваше имя (обязательно)\n    [text* your-name] </label>\n\n<label> Ваш e-mail (обязательно)\n    [email* your-email] </label>\n\n<label> Тема\n    [text your-subject] </label>\n\n<label> Сообщение\n    [textarea your-message] </label>\n\n[submit \"Отправить\"]'),
(139, 34, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:29:\"a-wordpress2 \"[your-subject]\"\";s:6:\"sender\";s:37:\"a-wordpress2 <wordpress@a-wordpress2>\";s:9:\"recipient\";s:17:\"webdesign-x@bk.ru\";s:4:\"body\";s:194:\"От: [your-name] <[your-email]>\nТема: [your-subject]\n\nСообщение:\n[your-message]\n\n-- \nЭто сообщение отправлено с сайта a-wordpress2 (http://a-wordpress2)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(140, 34, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:29:\"a-wordpress2 \"[your-subject]\"\";s:6:\"sender\";s:37:\"a-wordpress2 <wordpress@a-wordpress2>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:135:\"Сообщение:\n[your-message]\n\n-- \nЭто сообщение отправлено с сайта a-wordpress2 (http://a-wordpress2)\";s:18:\"additional_headers\";s:27:\"Reply-To: webdesign-x@bk.ru\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(141, 34, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:92:\"Спасибо за Ваше сообщение. Оно успешно отправлено.\";s:12:\"mail_sent_ng\";s:144:\"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\";s:16:\"validation_error\";s:180:\"Одно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.\";s:4:\"spam\";s:144:\"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\";s:12:\"accept_terms\";s:132:\"Вы должны принять условия и положения перед отправкой вашего сообщения.\";s:16:\"invalid_required\";s:60:\"Поле обязательно для заполнения.\";s:16:\"invalid_too_long\";s:39:\"Поле слишком длинное.\";s:17:\"invalid_too_short\";s:41:\"Поле слишком короткое.\";s:12:\"invalid_date\";s:45:\"Формат даты некорректен.\";s:14:\"date_too_early\";s:74:\"Введённая дата слишком далеко в прошлом.\";s:13:\"date_too_late\";s:74:\"Введённая дата слишком далеко в будущем.\";s:13:\"upload_failed\";s:90:\"При загрузке файла произошла неизвестная ошибка.\";s:24:\"upload_file_type_invalid\";s:81:\"Вам не разрешено загружать файлы этого типа.\";s:21:\"upload_file_too_large\";s:39:\"Файл слишком большой.\";s:23:\"upload_failed_php_error\";s:67:\"При загрузке файла произошла ошибка.\";s:14:\"invalid_number\";s:47:\"Формат числа некорректен.\";s:16:\"number_too_small\";s:68:\"Число меньше минимально допустимого.\";s:16:\"number_too_large\";s:70:\"Число больше максимально допустимого.\";s:23:\"quiz_answer_not_correct\";s:69:\"Неверный ответ на проверочный вопрос.\";s:13:\"invalid_email\";s:62:\"Неверно введён электронный адрес.\";s:11:\"invalid_url\";s:53:\"Введён некорректный URL адрес.\";s:11:\"invalid_tel\";s:70:\"Введён некорректный телефонный номер.\";}'),
(142, 34, '_additional_settings', ''),
(143, 34, '_locale', 'ru_RU'),
(144, 34, 'enabled-popup', ''),
(145, 34, 'enabled-popup-failure', ''),
(146, 34, 'popup_message', ''),
(147, 34, 'm_popup_width', ''),
(148, 34, 'm_popup_radius', ''),
(149, 34, 'm_popup_duration', ''),
(150, 34, 'popup_templet', 'templet1'),
(151, 34, 'popup_background_option', 'bg_color'),
(152, 34, 'popup_background_color', '#34495e'),
(153, 34, 'popup_text_color', '#ffffff'),
(154, 34, 'popup_button_background_color', '#27ad5f'),
(155, 34, '_config_errors', 'a:1:{s:11:\"mail.sender\";a:1:{i:0;a:2:{s:4:\"code\";i:102;s:4:\"args\";a:3:{s:7:\"message\";s:0:\"\";s:6:\"params\";a:0:{}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}}'),
(157, 1, '_wp_trash_meta_status', 'publish'),
(158, 1, '_wp_trash_meta_time', '1576787124'),
(159, 1, '_wp_desired_post_slug', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80'),
(160, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(161, 36, '_edit_last', '1'),
(162, 36, '_edit_lock', '1578158919:1'),
(163, 36, '_wp_page_template', 'default'),
(168, 38, '_edit_last', '1'),
(169, 38, '_edit_lock', '1578131021:1'),
(170, 38, '_wp_page_template', 'default'),
(175, 40, '_edit_last', '1'),
(176, 40, '_edit_lock', '1578079105:1'),
(179, 38, 'photo_act', '31'),
(180, 38, '_photo_act', 'field_5dfbdf767f6b1'),
(181, 42, 'photo_act', '31'),
(182, 42, '_photo_act', 'field_5dfbdf767f6b1'),
(185, 36, 'photo_act', '28'),
(186, 36, '_photo_act', 'field_5dfbdf767f6b1'),
(187, 43, 'photo_act', '28'),
(188, 43, '_photo_act', 'field_5dfbdf767f6b1'),
(189, 44, '_menu_item_type', 'post_type'),
(190, 44, '_menu_item_menu_item_parent', '0'),
(191, 44, '_menu_item_object_id', '8'),
(192, 44, '_menu_item_object', 'page'),
(193, 44, '_menu_item_target', ''),
(194, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(195, 44, '_menu_item_xfn', ''),
(196, 44, '_menu_item_url', ''),
(198, 45, '_menu_item_type', 'taxonomy'),
(199, 45, '_menu_item_menu_item_parent', '95'),
(200, 45, '_menu_item_object_id', '2'),
(201, 45, '_menu_item_object', 'category'),
(202, 45, '_menu_item_target', ''),
(203, 45, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(204, 45, '_menu_item_xfn', ''),
(205, 45, '_menu_item_url', ''),
(206, 47, '_edit_last', '1'),
(207, 47, '_edit_lock', '1577557685:1'),
(208, 47, '_wp_page_template', 'calculator.php'),
(209, 50, '_menu_item_type', 'post_type'),
(210, 50, '_menu_item_menu_item_parent', '0'),
(211, 50, '_menu_item_object_id', '47'),
(212, 50, '_menu_item_object', 'page'),
(213, 50, '_menu_item_target', ''),
(214, 50, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(215, 50, '_menu_item_xfn', ''),
(216, 50, '_menu_item_url', ''),
(221, 55, '_form', '[select menu-668 \"33\" \"33\" \"11\" \"14\"]\n[select menu-669 \"55\" \"11\" \"46\" \"146\"]\n[calculation calculation-552 \"(menu-668 + menu-669) * 6\"]\n[calculate_button \"РАСЧИТАТЬ\"]'),
(222, 55, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:0:\"\";s:6:\"sender\";s:0:\"\";s:9:\"recipient\";s:0:\"\";s:4:\"body\";s:0:\"\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(223, 55, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:29:\"a-wordpress2 \"[your-subject]\"\";s:6:\"sender\";s:37:\"a-wordpress2 <wordpress@a-wordpress2>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:135:\"Сообщение:\n[your-message]\n\n-- \nЭто сообщение отправлено с сайта a-wordpress2 (http://a-wordpress2)\";s:18:\"additional_headers\";s:27:\"Reply-To: webdesign-x@bk.ru\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(224, 55, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:92:\"Спасибо за Ваше сообщение. Оно успешно отправлено.\";s:12:\"mail_sent_ng\";s:144:\"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\";s:16:\"validation_error\";s:180:\"Одно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.\";s:4:\"spam\";s:144:\"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\";s:12:\"accept_terms\";s:132:\"Вы должны принять условия и положения перед отправкой вашего сообщения.\";s:16:\"invalid_required\";s:60:\"Поле обязательно для заполнения.\";s:16:\"invalid_too_long\";s:39:\"Поле слишком длинное.\";s:17:\"invalid_too_short\";s:41:\"Поле слишком короткое.\";s:12:\"invalid_date\";s:45:\"Формат даты некорректен.\";s:14:\"date_too_early\";s:74:\"Введённая дата слишком далеко в прошлом.\";s:13:\"date_too_late\";s:74:\"Введённая дата слишком далеко в будущем.\";s:13:\"upload_failed\";s:90:\"При загрузке файла произошла неизвестная ошибка.\";s:24:\"upload_file_type_invalid\";s:81:\"Вам не разрешено загружать файлы этого типа.\";s:21:\"upload_file_too_large\";s:39:\"Файл слишком большой.\";s:23:\"upload_failed_php_error\";s:67:\"При загрузке файла произошла ошибка.\";s:14:\"invalid_number\";s:47:\"Формат числа некорректен.\";s:16:\"number_too_small\";s:68:\"Число меньше минимально допустимого.\";s:16:\"number_too_large\";s:70:\"Число больше максимально допустимого.\";s:23:\"quiz_answer_not_correct\";s:69:\"Неверный ответ на проверочный вопрос.\";s:13:\"invalid_email\";s:62:\"Неверно введён электронный адрес.\";s:11:\"invalid_url\";s:53:\"Введён некорректный URL адрес.\";s:11:\"invalid_tel\";s:70:\"Введён некорректный телефонный номер.\";}'),
(225, 55, '_additional_settings', ''),
(226, 55, '_locale', 'ru_RU'),
(227, 55, 'enabled-popup', ''),
(228, 55, 'enabled-popup-failure', ''),
(229, 55, 'popup_message', ''),
(230, 55, 'm_popup_width', ''),
(231, 55, 'm_popup_radius', ''),
(232, 55, 'm_popup_duration', ''),
(233, 55, 'popup_templet', 'templet1'),
(234, 55, 'popup_background_option', 'bg_color'),
(235, 55, 'popup_background_color', '#34495e'),
(236, 55, 'popup_text_color', '#ffffff'),
(237, 55, 'popup_button_background_color', '#27ad5f'),
(256, 55, '_config_errors', 'a:4:{s:12:\"mail.subject\";a:1:{i:0;a:2:{s:4:\"code\";i:101;s:4:\"args\";a:3:{s:7:\"message\";s:0:\"\";s:6:\"params\";a:0:{}s:4:\"link\";s:57:\"https://contactform7.com/configuration-errors/maybe-empty\";}}}s:11:\"mail.sender\";a:1:{i:0;a:2:{s:4:\"code\";i:102;s:4:\"args\";a:3:{s:7:\"message\";s:0:\"\";s:6:\"params\";a:0:{}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}s:14:\"mail.recipient\";a:1:{i:0;a:2:{s:4:\"code\";i:102;s:4:\"args\";a:3:{s:7:\"message\";s:0:\"\";s:6:\"params\";a:0:{}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}s:9:\"mail.body\";a:1:{i:0;a:2:{s:4:\"code\";i:101;s:4:\"args\";a:3:{s:7:\"message\";s:0:\"\";s:6:\"params\";a:0:{}s:4:\"link\";s:57:\"https://contactform7.com/configuration-errors/maybe-empty\";}}}}'),
(257, 58, 'slider', 'a:2:{i:0;s:2:\"21\";i:1;s:2:\"22\";}'),
(258, 58, '_slider', 'field_5dfb8610f534c'),
(259, 58, 'acters_0_Фото актера', '28'),
(260, 58, '_acters_0_Фото актера', 'field_5dfb8f1f1054c'),
(261, 58, 'acters_0_desc_acter', 'Джесси'),
(262, 58, '_acters_0_desc_acter', 'field_5dfb8f371054d'),
(263, 58, 'acters', '2'),
(264, 58, '_acters', 'field_5dfb8f071054b'),
(265, 58, 'acters_0_photo_act', '28'),
(266, 58, '_acters_0_photo_act', 'field_5dfb8f1f1054c'),
(267, 58, 'acters_1_photo_act', '31'),
(268, 58, '_acters_1_photo_act', 'field_5dfb8f1f1054c'),
(269, 58, 'acters_1_desc_acter', 'Уолтер Вайт'),
(270, 58, '_acters_1_desc_acter', 'field_5dfb8f371054d'),
(271, 59, 'slider', 'a:2:{i:0;s:2:\"21\";i:1;s:2:\"22\";}'),
(272, 59, '_slider', 'field_5dfb8610f534c'),
(273, 59, 'acters_0_Фото актера', '28'),
(274, 59, '_acters_0_Фото актера', 'field_5dfb8f1f1054c'),
(275, 59, 'acters_0_desc_acter', 'Джесси'),
(276, 59, '_acters_0_desc_acter', 'field_5dfb8f371054d'),
(277, 59, 'acters', '2'),
(278, 59, '_acters', 'field_5dfb8f071054b'),
(279, 59, 'acters_0_photo_act', '28'),
(280, 59, '_acters_0_photo_act', 'field_5dfb8f1f1054c'),
(281, 59, 'acters_1_photo_act', '31'),
(282, 59, '_acters_1_photo_act', 'field_5dfb8f1f1054c'),
(283, 59, 'acters_1_desc_acter', 'Уолтер Вайт'),
(284, 59, '_acters_1_desc_acter', 'field_5dfb8f371054d'),
(285, 60, 'slider', 'a:2:{i:0;s:2:\"21\";i:1;s:2:\"22\";}'),
(286, 60, '_slider', 'field_5dfb8610f534c'),
(287, 60, 'acters_0_Фото актера', '28'),
(288, 60, '_acters_0_Фото актера', 'field_5dfb8f1f1054c'),
(289, 60, 'acters_0_desc_acter', 'Джесси'),
(290, 60, '_acters_0_desc_acter', 'field_5dfb8f371054d'),
(291, 60, 'acters', '2'),
(292, 60, '_acters', 'field_5dfb8f071054b'),
(293, 60, 'acters_0_photo_act', '28'),
(294, 60, '_acters_0_photo_act', 'field_5dfb8f1f1054c'),
(295, 60, 'acters_1_photo_act', '31'),
(296, 60, '_acters_1_photo_act', 'field_5dfb8f1f1054c'),
(297, 60, 'acters_1_desc_acter', 'Уолтер Вайт'),
(298, 60, '_acters_1_desc_acter', 'field_5dfb8f371054d'),
(299, 62, '_edit_lock', '1576953473:1'),
(300, 62, '_edit_last', '1'),
(337, 68, '_menu_item_type', 'taxonomy'),
(338, 68, '_menu_item_menu_item_parent', '0'),
(339, 68, '_menu_item_object_id', '2'),
(340, 68, '_menu_item_object', 'category'),
(341, 68, '_menu_item_target', ''),
(342, 68, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(343, 68, '_menu_item_xfn', ''),
(344, 68, '_menu_item_url', ''),
(345, 68, '_menu_item_orphaned', '1577557146'),
(382, 73, '_menu_item_type', 'taxonomy'),
(383, 73, '_menu_item_menu_item_parent', '0'),
(384, 73, '_menu_item_object_id', '2'),
(385, 73, '_menu_item_object', 'category'),
(386, 73, '_menu_item_target', ''),
(387, 73, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(388, 73, '_menu_item_xfn', ''),
(389, 73, '_menu_item_url', ''),
(391, 74, 'slider', 'a:2:{i:0;s:2:\"21\";i:1;s:2:\"22\";}'),
(392, 74, '_slider', 'field_5dfb8610f534c'),
(393, 74, 'acters_0_Фото актера', '28'),
(394, 74, '_acters_0_Фото актера', 'field_5dfb8f1f1054c'),
(395, 74, 'acters_0_desc_acter', 'Джесси'),
(396, 74, '_acters_0_desc_acter', 'field_5dfb8f371054d'),
(397, 74, 'acters', '2'),
(398, 74, '_acters', 'field_5dfb8f071054b'),
(399, 74, 'acters_0_photo_act', '28'),
(400, 74, '_acters_0_photo_act', 'field_5dfb8f1f1054c'),
(401, 74, 'acters_1_photo_act', '31'),
(402, 74, '_acters_1_photo_act', 'field_5dfb8f1f1054c'),
(403, 74, 'acters_1_desc_acter', 'Уолтер Вайт'),
(404, 74, '_acters_1_desc_acter', 'field_5dfb8f371054d'),
(405, 75, 'slider', 'a:2:{i:0;s:2:\"21\";i:1;s:2:\"22\";}'),
(406, 75, '_slider', 'field_5dfb8610f534c'),
(407, 75, 'acters_0_photo_act', '28'),
(408, 75, '_acters_0_photo_act', 'field_5dfb8f1f1054c'),
(409, 75, 'acters_0_desc_acter', 'Джесси'),
(410, 75, '_acters_0_desc_acter', 'field_5dfb8f371054d'),
(411, 75, 'acters_1_photo_act', '31'),
(412, 75, '_acters_1_photo_act', 'field_5dfb8f1f1054c'),
(413, 75, 'acters_1_desc_acter', 'Уолтер Вайт'),
(414, 75, '_acters_1_desc_acter', 'field_5dfb8f371054d'),
(415, 75, 'acters', '2'),
(416, 75, '_acters', 'field_5dfb8f071054b'),
(417, 75, 'acters_0_Фото актера', '28'),
(418, 75, '_acters_0_Фото актера', 'field_5dfb8f1f1054c'),
(421, 76, 'slider', 'a:2:{i:0;s:2:\"21\";i:1;s:2:\"22\";}'),
(422, 76, '_slider', 'field_5dfb8610f534c'),
(423, 76, 'acters_0_Фото актера', '28'),
(424, 76, '_acters_0_Фото актера', 'field_5dfb8f1f1054c'),
(425, 76, 'acters_0_desc_acter', 'Джесси'),
(426, 76, '_acters_0_desc_acter', 'field_5dfb8f371054d'),
(427, 76, 'acters', '2'),
(428, 76, '_acters', 'field_5dfb8f071054b'),
(429, 76, 'acters_0_photo_act', '28'),
(430, 76, '_acters_0_photo_act', 'field_5dfb8f1f1054c'),
(431, 76, 'acters_1_photo_act', '31'),
(432, 76, '_acters_1_photo_act', 'field_5dfb8f1f1054c'),
(433, 76, 'acters_1_desc_acter', 'Уолтер Вайт'),
(434, 76, '_acters_1_desc_acter', 'field_5dfb8f371054d'),
(435, 77, 'slider', 'a:2:{i:0;s:2:\"21\";i:1;s:2:\"22\";}'),
(436, 77, '_slider', 'field_5dfb8610f534c'),
(437, 77, 'acters_0_Фото актера', '28'),
(438, 77, '_acters_0_Фото актера', 'field_5dfb8f1f1054c'),
(439, 77, 'acters_0_desc_acter', 'Джесси'),
(440, 77, '_acters_0_desc_acter', 'field_5dfb8f371054d'),
(441, 77, 'acters', '2'),
(442, 77, '_acters', 'field_5dfb8f071054b'),
(443, 77, 'acters_0_photo_act', '28'),
(444, 77, '_acters_0_photo_act', 'field_5dfb8f1f1054c'),
(445, 77, 'acters_1_photo_act', '31'),
(446, 77, '_acters_1_photo_act', 'field_5dfb8f1f1054c'),
(447, 77, 'acters_1_desc_acter', 'Уолтер Вайт'),
(448, 77, '_acters_1_desc_acter', 'field_5dfb8f371054d'),
(451, 78, 'photo_act', '31'),
(452, 78, '_photo_act', 'field_5dfbdf767f6b1'),
(454, 33, '_config_errors', 'a:2:{s:11:\"mail.sender\";a:1:{i:0;a:2:{s:4:\"code\";i:102;s:4:\"args\";a:3:{s:7:\"message\";s:0:\"\";s:6:\"params\";a:0:{}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}s:23:\"mail.additional_headers\";a:1:{i:0;a:2:{s:4:\"code\";i:102;s:4:\"args\";a:3:{s:7:\"message\";s:125:\"Был использован некорректный синтаксис почтового адреса в поле %name%.\";s:6:\"params\";a:1:{s:4:\"name\";s:8:\"Reply-To\";}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}}'),
(457, 79, 'photo_act', '31'),
(458, 79, '_photo_act', 'field_5dfbdf767f6b1'),
(459, 80, '_edit_last', '1'),
(460, 80, '_wp_page_template', 'test.php'),
(461, 80, '_edit_lock', '1577722246:1'),
(462, 82, '_menu_item_type', 'post_type'),
(463, 82, '_menu_item_menu_item_parent', '0'),
(464, 82, '_menu_item_object_id', '80'),
(465, 82, '_menu_item_object', 'page'),
(466, 82, '_menu_item_target', ''),
(467, 82, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(468, 82, '_menu_item_xfn', ''),
(469, 82, '_menu_item_url', ''),
(470, 84, '_edit_lock', '1578069650:1'),
(471, 85, '_edit_lock', '1578081808:1'),
(472, 85, '_edit_last', '1'),
(473, 85, '_wp_page_template', 'default'),
(484, 89, '_wp_attached_file', '2020/01/m16143.jpg'),
(485, 89, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:220;s:6:\"height\";i:330;s:4:\"file\";s:18:\"2020/01/m16143.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"m16143-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"m16143-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(488, 85, 'photo_act', '89'),
(489, 85, '_photo_act', 'field_5dfbdf767f6b1'),
(490, 90, 'photo_act', '89'),
(491, 90, '_photo_act', 'field_5dfbdf767f6b1'),
(494, 85, 'ves', '50'),
(495, 85, '_ves', 'field_5e0f9249ecaa7'),
(496, 92, 'photo_act', '89'),
(497, 92, '_photo_act', 'field_5dfbdf767f6b1'),
(498, 92, 'ves', '50'),
(499, 92, '_ves', 'field_5e0f9249ecaa7'),
(502, 38, 'ves', '70'),
(503, 38, '_ves', 'field_5e0f9249ecaa7'),
(504, 93, 'photo_act', '31'),
(505, 93, '_photo_act', 'field_5dfbdf767f6b1'),
(506, 93, 'ves', '78'),
(507, 93, '_ves', 'field_5e0f9249ecaa7'),
(510, 36, 'ves', '70'),
(511, 36, '_ves', 'field_5e0f9249ecaa7'),
(512, 94, 'photo_act', '28'),
(513, 94, '_photo_act', 'field_5dfbdf767f6b1'),
(514, 94, 'ves', '63'),
(515, 94, '_ves', 'field_5e0f9249ecaa7'),
(516, 95, '_menu_item_type', 'custom'),
(517, 95, '_menu_item_menu_item_parent', '0'),
(518, 95, '_menu_item_object_id', '95'),
(519, 95, '_menu_item_object', 'custom'),
(520, 95, '_menu_item_target', ''),
(521, 95, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(522, 95, '_menu_item_xfn', ''),
(523, 95, '_menu_item_url', '#'),
(525, 96, '_menu_item_type', 'taxonomy'),
(526, 96, '_menu_item_menu_item_parent', '95'),
(527, 96, '_menu_item_object_id', '5'),
(528, 96, '_menu_item_object', 'category'),
(529, 96, '_menu_item_target', ''),
(530, 96, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(531, 96, '_menu_item_xfn', ''),
(532, 96, '_menu_item_url', ''),
(540, 97, '_edit_lock', '1578082961:1'),
(541, 97, '_edit_last', '1'),
(542, 97, '_wp_page_template', 'default'),
(547, 97, 'photo_act', '99'),
(548, 97, '_photo_act', 'field_5dfbdf767f6b1'),
(549, 97, 'ves', '70'),
(550, 97, '_ves', 'field_5e0f9249ecaa7'),
(551, 98, 'photo_act', ''),
(552, 98, '_photo_act', 'field_5dfbdf767f6b1'),
(553, 98, 'ves', ''),
(554, 98, '_ves', 'field_5e0f9249ecaa7'),
(555, 99, '_wp_attached_file', '2020/01/rj_mitte_03.jpg'),
(556, 99, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:570;s:6:\"height\";i:383;s:4:\"file\";s:23:\"2020/01/rj_mitte_03.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"rj_mitte_03-300x202.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:202;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"rj_mitte_03-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(559, 100, 'photo_act', '99'),
(560, 100, '_photo_act', 'field_5dfbdf767f6b1'),
(561, 100, 'ves', ''),
(562, 100, '_ves', 'field_5e0f9249ecaa7'),
(565, 101, 'photo_act', '99'),
(566, 101, '_photo_act', 'field_5dfbdf767f6b1'),
(567, 101, 'ves', '70'),
(568, 101, '_ves', 'field_5e0f9249ecaa7'),
(571, 102, 'photo_act', '31'),
(572, 102, '_photo_act', 'field_5dfbdf767f6b1'),
(573, 102, 'ves', '70'),
(574, 102, '_ves', 'field_5e0f9249ecaa7'),
(577, 103, 'photo_act', '28'),
(578, 103, '_photo_act', 'field_5dfbdf767f6b1'),
(579, 103, 'ves', '70'),
(580, 103, '_ves', 'field_5e0f9249ecaa7');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-12-19 14:23:39', '2019-12-19 11:23:39', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'trash', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80__trashed', '', '', '2019-12-19 23:25:24', '2019-12-19 20:25:24', '', 0, 'http://a-wordpress2/?p=1', 0, 'post', '', 1),
(8, 1, '2019-12-19 17:14:46', '2019-12-19 14:14:46', 'Школьный учитель химии Уолтер Уайт узнаёт, что болен раком лёгких. Учитывая сложное финансовое состояние дел семьи, а также перспективы, Уолтер решает заняться изготовлением метамфетамина. Для этого он привлекает своего бывшего ученика Джесси Пинкмана, когда-то исключённого из школы при активном содействии Уайта. Пинкман сам занимался «варкой мета», но накануне, в ходе рейда УБН, он лишился подельника и лаборатории…\r\n<pre></pre>', 'Главная', '', 'publish', 'closed', 'closed', '', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f', '', '', '2019-12-28 22:14:27', '2019-12-28 19:14:27', '', 0, 'http://a-wordpress2/?page_id=8', 0, 'page', '', 3),
(9, 1, '2019-12-19 17:14:46', '2019-12-19 14:14:46', 'Предлагаем инжиниринг, поставку оборудования и сервисное обслуживание.\r\n\r\nИндивидуальный подход к работе с заказчиками создает прочные связи и перспективы дальнейшего сотрудничества.\r\n\r\nДля оказания услуг высокого уровня коллектив нашей компании состоит из профессионалов с большим опытом работы.', 'Главная', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-12-19 17:14:46', '2019-12-19 14:14:46', '', 8, 'http://a-wordpress2/?p=9', 0, 'revision', '', 0),
(10, 1, '2019-12-19 17:17:28', '2019-12-19 14:17:28', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"8\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Для главной', '%d0%b4%d0%bb%d1%8f-%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%be%d0%b9', 'publish', 'closed', 'closed', '', 'group_5dfb85f11f199', '', '', '2019-12-19 18:04:48', '2019-12-19 15:04:48', '', 0, 'http://a-wordpress2/?post_type=acf-field-group&#038;p=10', 0, 'acf-field-group', '', 0),
(11, 1, '2019-12-19 17:17:28', '2019-12-19 14:17:28', 'a:18:{s:4:\"type\";s:7:\"gallery\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:6:\"insert\";s:6:\"append\";s:7:\"library\";s:3:\"all\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Слайдер', 'slider', 'publish', 'closed', 'closed', '', 'field_5dfb8610f534c', '', '', '2019-12-19 17:17:28', '2019-12-19 14:17:28', '', 10, 'http://a-wordpress2/?post_type=acf-field&p=11', 0, 'acf-field', '', 0),
(13, 1, '2019-12-19 17:21:40', '2019-12-19 14:21:40', 'Предлагаем инжиниринг, поставку оборудования и сервисное обслуживание.\r\n\r\nИндивидуальный подход к работе с заказчиками создает прочные связи и перспективы дальнейшего сотрудничества.\r\n\r\nДля оказания услуг высокого уровня коллектив нашей компании состоит из профессионалов с большим опытом работы.', 'Главная', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-12-19 17:21:40', '2019-12-19 14:21:40', '', 8, 'http://a-wordpress2/?p=13', 0, 'revision', '', 0),
(14, 1, '2019-12-19 17:31:52', '2019-12-19 14:31:52', 'Предлагаем инжиниринг, поставку оборудования и сервисное обслуживание.\r\n\r\nИндивидуальный подход к работе с заказчиками создает прочные связи и перспективы дальнейшего сотрудничества.\r\n\r\nДля оказания услуг высокого уровня коллектив нашей компании состоит из профессионалов с большим опытом работы.', 'Главная', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-12-19 17:31:52', '2019-12-19 14:31:52', '', 8, 'http://a-wordpress2/?p=14', 0, 'revision', '', 0),
(15, 1, '2019-12-19 17:33:39', '2019-12-19 14:33:39', 'Предлагаем инжиниринг, поставку оборудования и сервисное обслуживание.\r\n\r\nИндивидуальный подход к работе с заказчиками создает прочные связи и перспективы дальнейшего сотрудничества.\r\n\r\nДля оказания услуг высокого уровня коллектив нашей компании состоит из профессионалов с большим опытом работы.', 'Главная', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-12-19 17:33:39', '2019-12-19 14:33:39', '', 8, 'http://a-wordpress2/?p=15', 0, 'revision', '', 0),
(18, 1, '2019-12-19 17:35:26', '2019-12-19 14:35:26', 'Предлагаем инжиниринг, поставку оборудования и сервисное обслуживание.\r\n\r\nИндивидуальный подход к работе с заказчиками создает прочные связи и перспективы дальнейшего сотрудничества.\r\n\r\nДля оказания услуг высокого уровня коллектив нашей компании состоит из профессионалов с большим опытом работы.', 'Главная', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-12-19 17:35:26', '2019-12-19 14:35:26', '', 8, 'http://a-wordpress2/?p=18', 0, 'revision', '', 0),
(19, 1, '2019-12-19 17:37:21', '2019-12-19 14:37:21', 'Предлагаем инжиниринг, поставку оборудования и сервисное обслуживание.\r\n\r\nИндивидуальный подход к работе с заказчиками создает прочные связи и перспективы дальнейшего сотрудничества.\r\n\r\nДля оказания услуг высокого уровня коллектив нашей компании состоит из профессионалов с большим опытом работы.', 'Главная', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-12-19 17:37:21', '2019-12-19 14:37:21', '', 8, 'http://a-wordpress2/?p=19', 0, 'revision', '', 0),
(20, 1, '2019-12-19 17:37:29', '2019-12-19 14:37:29', 'Предлагаем инжиниринг, поставку оборудования и сервисное обслуживание.\r\n\r\nИндивидуальный подход к работе с заказчиками создает прочные связи и перспективы дальнейшего сотрудничества.\r\n\r\nДля оказания услуг высокого уровня коллектив нашей компании состоит из профессионалов с большим опытом работы.', 'Главная', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-12-19 17:37:29', '2019-12-19 14:37:29', '', 8, 'http://a-wordpress2/?p=20', 0, 'revision', '', 0),
(21, 1, '2019-12-19 17:39:08', '2019-12-19 14:39:08', 'смотреть онлайн все серии', 'ВО ВСЕ ТЯЖКИИ', '', 'inherit', 'open', 'closed', '', '1920x1080_752916_wwwartfileru', '', '', '2019-12-19 17:47:10', '2019-12-19 14:47:10', '', 8, 'http://a-wordpress2/wp-content/uploads/2019/12/1920x1080_752916_wwwartfileru.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2019-12-19 17:39:09', '2019-12-19 14:39:09', 'смотреть онлайн все серии', 'Breaking-Bad', '', 'inherit', 'open', 'closed', '', 'breaking-bad', '', '', '2019-12-19 17:47:17', '2019-12-19 14:47:17', '', 8, 'http://a-wordpress2/wp-content/uploads/2019/12/Breaking-Bad.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2019-12-19 17:39:15', '2019-12-19 14:39:15', 'Предлагаем инжиниринг, поставку оборудования и сервисное обслуживание.\r\n\r\nИндивидуальный подход к работе с заказчиками создает прочные связи и перспективы дальнейшего сотрудничества.\r\n\r\nДля оказания услуг высокого уровня коллектив нашей компании состоит из профессионалов с большим опытом работы.', 'Главная', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-12-19 17:39:15', '2019-12-19 14:39:15', '', 8, 'http://a-wordpress2/?p=23', 0, 'revision', '', 0),
(24, 1, '2019-12-19 17:47:19', '2019-12-19 14:47:19', 'Предлагаем инжиниринг, поставку оборудования и сервисное обслуживание.\r\n\r\nИндивидуальный подход к работе с заказчиками создает прочные связи и перспективы дальнейшего сотрудничества.\r\n\r\nДля оказания услуг высокого уровня коллектив нашей компании состоит из профессионалов с большим опытом работы.', 'Главная', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-12-19 17:47:19', '2019-12-19 14:47:19', '', 8, 'http://a-wordpress2/?p=24', 0, 'revision', '', 0),
(25, 1, '2019-12-19 17:55:07', '2019-12-19 14:55:07', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Актеры', 'acters', 'publish', 'closed', 'closed', '', 'field_5dfb8f071054b', '', '', '2019-12-19 17:55:07', '2019-12-19 14:55:07', '', 10, 'http://a-wordpress2/?post_type=acf-field&p=25', 1, 'acf-field', '', 0),
(26, 1, '2019-12-19 17:55:07', '2019-12-19 14:55:07', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Фото актера', 'photo_act', 'publish', 'closed', 'closed', '', 'field_5dfb8f1f1054c', '', '', '2019-12-19 18:04:48', '2019-12-19 15:04:48', '', 25, 'http://a-wordpress2/?post_type=acf-field&#038;p=26', 0, 'acf-field', '', 0),
(27, 1, '2019-12-19 17:55:07', '2019-12-19 14:55:07', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Описание', 'desc_acter', 'publish', 'closed', 'closed', '', 'field_5dfb8f371054d', '', '', '2019-12-19 17:55:07', '2019-12-19 14:55:07', '', 25, 'http://a-wordpress2/?post_type=acf-field&p=27', 1, 'acf-field', '', 0),
(28, 1, '2019-12-19 17:56:09', '2019-12-19 14:56:09', '', '587c88912b7a8c71d6395d9e34c0a62f', '', 'inherit', 'open', 'closed', '', '587c88912b7a8c71d6395d9e34c0a62f', '', '', '2019-12-19 17:56:09', '2019-12-19 14:56:09', '', 8, 'http://a-wordpress2/wp-content/uploads/2019/12/587c88912b7a8c71d6395d9e34c0a62f.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2019-12-19 17:56:21', '2019-12-19 14:56:21', 'Предлагаем инжиниринг, поставку оборудования и сервисное обслуживание.\r\n\r\nИндивидуальный подход к работе с заказчиками создает прочные связи и перспективы дальнейшего сотрудничества.\r\n\r\nДля оказания услуг высокого уровня коллектив нашей компании состоит из профессионалов с большим опытом работы.', 'Главная', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-12-19 17:56:21', '2019-12-19 14:56:21', '', 8, 'http://a-wordpress2/?p=29', 0, 'revision', '', 0),
(30, 1, '2019-12-19 18:05:30', '2019-12-19 15:05:30', 'Предлагаем инжиниринг, поставку оборудования и сервисное обслуживание.\r\n\r\nИндивидуальный подход к работе с заказчиками создает прочные связи и перспективы дальнейшего сотрудничества.\r\n\r\nДля оказания услуг высокого уровня коллектив нашей компании состоит из профессионалов с большим опытом работы.', 'Главная', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-12-19 18:05:30', '2019-12-19 15:05:30', '', 8, 'http://a-wordpress2/?p=30', 0, 'revision', '', 0),
(31, 1, '2019-12-19 18:09:09', '2019-12-19 15:09:09', '', 'images', '', 'inherit', 'open', 'closed', '', 'images', '', '', '2019-12-19 18:09:09', '2019-12-19 15:09:09', '', 8, 'http://a-wordpress2/wp-content/uploads/2019/12/images.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2019-12-19 18:09:31', '2019-12-19 15:09:31', 'Предлагаем инжиниринг, поставку оборудования и сервисное обслуживание.\r\n\r\nИндивидуальный подход к работе с заказчиками создает прочные связи и перспективы дальнейшего сотрудничества.\r\n\r\nДля оказания услуг высокого уровня коллектив нашей компании состоит из профессионалов с большим опытом работы.', 'Главная', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-12-19 18:09:31', '2019-12-19 15:09:31', '', 8, 'http://a-wordpress2/?p=32', 0, 'revision', '', 0),
(33, 1, '2019-12-19 21:10:05', '2019-12-19 18:10:05', '[text* username id:Editbox5 placeholder \"Ваше имя\"]\r\n[mask* phone id:Editbox6 \"+7 (___) ___-__-__\"]\r\n<div id=\"wb_Text3\">\r\n<span id=\"wb_uid37\">* - поля, обязательные к заполнению</span><span id=\"wb_uid38\"><br>Нажимая на кнопку, вы даете согласие на обработку ваших персональных данных</span>\r\n</div>\r\n[recaptcha]\r\n[submit id:Button2]\n1\na-wordpress2 \"[your-subject]\"\na-wordpress2 <wordpress@a-wordpress2>\nwebdesign-x@bk.ru\nОт: [your-name] <[your-email]>\r\nТема: [your-subject]\r\n\r\nАктер: [_post_tltle]\r\nСсылка: [_post_url]\r\n\r\nСообщение:\r\n[your-message]\r\n\r\n-- \r\nЭто сообщение отправлено с сайта a-wordpress2 (http://a-wordpress2)\nReply-To: [your-email]\n\n\n\n\na-wordpress2 \"[your-subject]\"\na-wordpress2 <wordpress@a-wordpress2>\n[your-email]\nСообщение:\r\n[your-message]\r\n\r\n-- \r\nЭто сообщение отправлено с сайта a-wordpress2 (http://a-wordpress2)\nReply-To: webdesign-x@bk.ru\n\n\n\nСпасибо за Ваше сообщение. Оно успешно отправлено.\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nОдно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nВы должны принять условия и положения перед отправкой вашего сообщения.\nПоле обязательно для заполнения.\nПоле слишком длинное.\nПоле слишком короткое.\nФормат даты некорректен.\nВведённая дата слишком далеко в прошлом.\nВведённая дата слишком далеко в будущем.\nПри загрузке файла произошла неизвестная ошибка.\nВам не разрешено загружать файлы этого типа.\nФайл слишком большой.\nПри загрузке файла произошла ошибка.\nФормат числа некорректен.\nЧисло меньше минимально допустимого.\nЧисло больше максимально допустимого.\nНеверный ответ на проверочный вопрос.\nНеверно введён электронный адрес.\nВведён некорректный URL адрес.\nВведён некорректный телефонный номер.', 'Заказать звонок', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d0%bd%d0%b0%d1%8f-%d1%84%d0%be%d1%80%d0%bc%d0%b0-1', '', '', '2019-12-28 22:21:15', '2019-12-28 19:21:15', '', 0, 'http://a-wordpress2/?post_type=wpcf7_contact_form&#038;p=33', 0, 'wpcf7_contact_form', '', 0),
(34, 1, '2019-12-19 22:45:40', '2019-12-19 19:45:40', '<label> Ваше имя (обязательно)\r\n    [text* your-name] </label>\r\n\r\n<label> Ваш e-mail (обязательно)\r\n    [email* your-email] </label>\r\n\r\n<label> Тема\r\n    [text your-subject] </label>\r\n\r\n<label> Сообщение\r\n    [textarea your-message] </label>\r\n\r\n[submit \"Отправить\"]\n1\na-wordpress2 \"[your-subject]\"\na-wordpress2 <wordpress@a-wordpress2>\nwebdesign-x@bk.ru\nОт: [your-name] <[your-email]>\r\nТема: [your-subject]\r\n\r\nСообщение:\r\n[your-message]\r\n\r\n-- \r\nЭто сообщение отправлено с сайта a-wordpress2 (http://a-wordpress2)\nReply-To: [your-email]\n\n\n\n\na-wordpress2 \"[your-subject]\"\na-wordpress2 <wordpress@a-wordpress2>\n[your-email]\nСообщение:\r\n[your-message]\r\n\r\n-- \r\nЭто сообщение отправлено с сайта a-wordpress2 (http://a-wordpress2)\nReply-To: webdesign-x@bk.ru\n\n\n\nСпасибо за Ваше сообщение. Оно успешно отправлено.\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nОдно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nВы должны принять условия и положения перед отправкой вашего сообщения.\nПоле обязательно для заполнения.\nПоле слишком длинное.\nПоле слишком короткое.\nФормат даты некорректен.\nВведённая дата слишком далеко в прошлом.\nВведённая дата слишком далеко в будущем.\nПри загрузке файла произошла неизвестная ошибка.\nВам не разрешено загружать файлы этого типа.\nФайл слишком большой.\nПри загрузке файла произошла ошибка.\nФормат числа некорректен.\nЧисло меньше минимально допустимого.\nЧисло больше максимально допустимого.\nНеверный ответ на проверочный вопрос.\nНеверно введён электронный адрес.\nВведён некорректный URL адрес.\nВведён некорректный телефонный номер.', 'Отправьте заявку прямо сейчас (внизу страницы)', '', 'publish', 'closed', 'closed', '', '%d0%be%d1%82%d0%bf%d1%80%d0%b0%d0%b2%d1%8c%d1%82%d0%b5-%d0%b7%d0%b0%d1%8f%d0%b2%d0%ba%d1%83-%d0%bf%d1%80%d1%8f%d0%bc%d0%be-%d1%81%d0%b5%d0%b9%d1%87%d0%b0%d1%81-%d0%b2%d0%bd%d0%b8%d0%b7%d1%83-%d1%81', '', '', '2019-12-19 22:45:40', '2019-12-19 19:45:40', '', 0, 'http://a-wordpress2/?post_type=wpcf7_contact_form&p=34', 0, 'wpcf7_contact_form', '', 0),
(35, 1, '2019-12-19 23:25:24', '2019-12-19 20:25:24', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-12-19 23:25:24', '2019-12-19 20:25:24', '', 1, 'http://a-wordpress2/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/1-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2019-12-19 23:26:19', '2019-12-19 20:26:19', '<b>Джесси Брюс Пинкман</b> (<a title=\"Английский язык\" href=\"https://ru.wikipedia.org/wiki/%D0%90%D0%BD%D0%B3%D0%BB%D0%B8%D0%B9%D1%81%D0%BA%D0%B8%D0%B9_%D1%8F%D0%B7%D1%8B%D0%BA\">англ.</a> <span lang=\"en\">Jesse Bruce Pinkman</span>) — персонаж американского драматического сериала «<a title=\"Во все тяжкие\" href=\"https://ru.wikipedia.org/wiki/%D0%92%D0%BE_%D0%B2%D1%81%D0%B5_%D1%82%D1%8F%D0%B6%D0%BA%D0%B8%D0%B5\">Во все тяжкие</a>» и полнометражного «<a title=\"Путь: Во все тяжкие. Фильм\" href=\"https://ru.wikipedia.org/wiki/%D0%9F%D1%83%D1%82%D1%8C:_%D0%92%D0%BE_%D0%B2%D1%81%D0%B5_%D1%82%D1%8F%D0%B6%D0%BA%D0%B8%D0%B5._%D0%A4%D0%B8%D0%BB%D1%8C%D0%BC\">Путь: Во все тяжкие. Фильм</a>». Персонаж, которого сыграл <a title=\"Пол, Аарон\" href=\"https://ru.wikipedia.org/wiki/%D0%9F%D0%BE%D0%BB,_%D0%90%D0%B0%D1%80%D0%BE%D0%BD\">Аарон Пол</a>, был создан сценаристом и режиссёром сериала Винсом Гиллиганом, а также это единственный персонаж, кроме <a title=\"Уолтер Уайт\" href=\"https://ru.wikipedia.org/wiki/%D0%A3%D0%BE%D0%BB%D1%82%D0%B5%D1%80_%D0%A3%D0%B0%D0%B9%D1%82\">Уолтера Уайта</a>, который появляется в каждом эпизоде шоу.\r\n\r\nПерсонаж получил похвалу от критиков и поклонников сериала. Благодаря этой роли Аарон Пол выиграл прайм-тайм премию Эмми за выдающуюся мужскую роль второго плана в драматическом сериале в 2010, 2012 и 2014.\r\n\r\nПинкман хорошо известен своим использованием слов «Yeah» и «Bitch».', 'ДЖЕССИ', '', 'publish', 'open', 'open', '', '%d0%b4%d0%b6%d0%b5%d1%81%d1%81%d0%b8', '', '', '2020-01-04 12:46:14', '2020-01-04 09:46:14', '', 0, 'http://a-wordpress2/?p=36', 0, 'post', '', 0),
(37, 1, '2019-12-19 23:26:19', '2019-12-19 20:26:19', '<b>Джесси Брюс Пинкман</b> (<a title=\"Английский язык\" href=\"https://ru.wikipedia.org/wiki/%D0%90%D0%BD%D0%B3%D0%BB%D0%B8%D0%B9%D1%81%D0%BA%D0%B8%D0%B9_%D1%8F%D0%B7%D1%8B%D0%BA\">англ.</a> <span lang=\"en\">Jesse Bruce Pinkman</span>) — персонаж американского драматического сериала «<a title=\"Во все тяжкие\" href=\"https://ru.wikipedia.org/wiki/%D0%92%D0%BE_%D0%B2%D1%81%D0%B5_%D1%82%D1%8F%D0%B6%D0%BA%D0%B8%D0%B5\">Во все тяжкие</a>» и полнометражного «<a title=\"Путь: Во все тяжкие. Фильм\" href=\"https://ru.wikipedia.org/wiki/%D0%9F%D1%83%D1%82%D1%8C:_%D0%92%D0%BE_%D0%B2%D1%81%D0%B5_%D1%82%D1%8F%D0%B6%D0%BA%D0%B8%D0%B5._%D0%A4%D0%B8%D0%BB%D1%8C%D0%BC\">Путь: Во все тяжкие. Фильм</a>». Персонаж, которого сыграл <a title=\"Пол, Аарон\" href=\"https://ru.wikipedia.org/wiki/%D0%9F%D0%BE%D0%BB,_%D0%90%D0%B0%D1%80%D0%BE%D0%BD\">Аарон Пол</a>, был создан сценаристом и режиссёром сериала Винсом Гиллиганом, а также это единственный персонаж, кроме <a title=\"Уолтер Уайт\" href=\"https://ru.wikipedia.org/wiki/%D0%A3%D0%BE%D0%BB%D1%82%D0%B5%D1%80_%D0%A3%D0%B0%D0%B9%D1%82\">Уолтера Уайта</a>, который появляется в каждом эпизоде шоу.\r\n\r\nПерсонаж получил похвалу от критиков и поклонников сериала. Благодаря этой роли Аарон Пол выиграл прайм-тайм премию Эмми за выдающуюся мужскую роль второго плана в драматическом сериале в 2010, 2012 и 2014.\r\n\r\nПинкман хорошо известен своим использованием слов «Yeah» и «Bitch».', 'ДЖЕССИ', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2019-12-19 23:26:19', '2019-12-19 20:26:19', '', 36, 'http://a-wordpress2/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/36-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2019-12-19 23:27:17', '2019-12-19 20:27:17', '<b>Уолтер \"Уолт\" Хартвелл Уайт</b>, так же известный под псевдонимом <b>\"Хайзенберг</b>\", химик и бывший учитель старших классов школы в <a class=\"new\" title=\"Albuquerque (страница не существует)\" rel=\"nofollow\" data-uncrawlable-url=\"L3J1L3dpa2kvQWxidXF1ZXJxdWU/YWN0aW9uPWVkaXQmcmVkbGluaz0x\">Альбукерке</a>, штат Нью Мексико, который после диагностирования у него неоперабельного рака легких в 3-й стадии, начал производство кристаллического метамфетамина как для оплаты своего лечения, так и для финансовой поддержки семьи в случае собственной смерти. Является главным действующим лицом всего сериала.\r\n<pre></pre>', 'Уолтер Уайт', '', 'publish', 'open', 'open', '', '%d1%83%d0%be%d0%bb%d1%82%d0%b5%d1%80-%d1%83%d0%b0%d0%b9%d1%82', '', '', '2020-01-04 12:41:45', '2020-01-04 09:41:45', '', 0, 'http://a-wordpress2/?p=38', 0, 'post', '', 0),
(39, 1, '2019-12-19 23:27:17', '2019-12-19 20:27:17', '<b>Уолтер \"Уолт\" Хартвелл Уайт</b>, так же известный под псевдонимом <b>\"Хайзенберг</b>\", химик и бывший учитель старших классов школы в <a class=\"new\" title=\"Albuquerque (страница не существует)\" rel=\"nofollow\" data-uncrawlable-url=\"L3J1L3dpa2kvQWxidXF1ZXJxdWU/YWN0aW9uPWVkaXQmcmVkbGluaz0x\">Альбукерке</a>, штат Нью Мексико, который после диагностирования у него неоперабельного рака легких в 3-й стадии, начал производство кристаллического метамфетамина как для оплаты своего лечения, так и для финансовой поддержки семьи в случае собственной смерти. Является главным действующим лицом всего сериала.', 'Уолтер Уайт', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2019-12-19 23:27:17', '2019-12-19 20:27:17', '', 38, 'http://a-wordpress2/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/38-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2019-12-19 23:37:38', '2019-12-19 20:37:38', 'a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"post_category\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:15:\"category:acters\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"post_category\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:23:\"category:%d0%b0ctresses\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Для актеров', '%d0%b4%d0%bb%d1%8f-%d0%b0%d0%ba%d1%82%d0%b5%d1%80%d0%be%d0%b2', 'publish', 'closed', 'closed', '', 'group_5dfbdf649ebb5', '', '', '2020-01-03 22:17:07', '2020-01-03 19:17:07', '', 0, 'http://a-wordpress2/?post_type=acf-field-group&#038;p=40', 0, 'acf-field-group', '', 0),
(41, 1, '2019-12-19 23:37:38', '2019-12-19 20:37:38', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Фото актера', 'photo_act', 'publish', 'closed', 'closed', '', 'field_5dfbdf767f6b1', '', '', '2019-12-19 23:49:08', '2019-12-19 20:49:08', '', 40, 'http://a-wordpress2/?post_type=acf-field&#038;p=41', 0, 'acf-field', '', 0),
(42, 1, '2019-12-19 23:38:11', '2019-12-19 20:38:11', '<b>Уолтер \"Уолт\" Хартвелл Уайт</b>, так же известный под псевдонимом <b>\"Хайзенберг</b>\", химик и бывший учитель старших классов школы в <a class=\"new\" title=\"Albuquerque (страница не существует)\" rel=\"nofollow\" data-uncrawlable-url=\"L3J1L3dpa2kvQWxidXF1ZXJxdWU/YWN0aW9uPWVkaXQmcmVkbGluaz0x\">Альбукерке</a>, штат Нью Мексико, который после диагностирования у него неоперабельного рака легких в 3-й стадии, начал производство кристаллического метамфетамина как для оплаты своего лечения, так и для финансовой поддержки семьи в случае собственной смерти. Является главным действующим лицом всего сериала.', 'Уолтер Уайт', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2019-12-19 23:38:11', '2019-12-19 20:38:11', '', 38, 'http://a-wordpress2/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/38-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2019-12-19 23:38:22', '2019-12-19 20:38:22', '<b>Джесси Брюс Пинкман</b> (<a title=\"Английский язык\" href=\"https://ru.wikipedia.org/wiki/%D0%90%D0%BD%D0%B3%D0%BB%D0%B8%D0%B9%D1%81%D0%BA%D0%B8%D0%B9_%D1%8F%D0%B7%D1%8B%D0%BA\">англ.</a> <span lang=\"en\">Jesse Bruce Pinkman</span>) — персонаж американского драматического сериала «<a title=\"Во все тяжкие\" href=\"https://ru.wikipedia.org/wiki/%D0%92%D0%BE_%D0%B2%D1%81%D0%B5_%D1%82%D1%8F%D0%B6%D0%BA%D0%B8%D0%B5\">Во все тяжкие</a>» и полнометражного «<a title=\"Путь: Во все тяжкие. Фильм\" href=\"https://ru.wikipedia.org/wiki/%D0%9F%D1%83%D1%82%D1%8C:_%D0%92%D0%BE_%D0%B2%D1%81%D0%B5_%D1%82%D1%8F%D0%B6%D0%BA%D0%B8%D0%B5._%D0%A4%D0%B8%D0%BB%D1%8C%D0%BC\">Путь: Во все тяжкие. Фильм</a>». Персонаж, которого сыграл <a title=\"Пол, Аарон\" href=\"https://ru.wikipedia.org/wiki/%D0%9F%D0%BE%D0%BB,_%D0%90%D0%B0%D1%80%D0%BE%D0%BD\">Аарон Пол</a>, был создан сценаристом и режиссёром сериала Винсом Гиллиганом, а также это единственный персонаж, кроме <a title=\"Уолтер Уайт\" href=\"https://ru.wikipedia.org/wiki/%D0%A3%D0%BE%D0%BB%D1%82%D0%B5%D1%80_%D0%A3%D0%B0%D0%B9%D1%82\">Уолтера Уайта</a>, который появляется в каждом эпизоде шоу.\r\n\r\nПерсонаж получил похвалу от критиков и поклонников сериала. Благодаря этой роли Аарон Пол выиграл прайм-тайм премию Эмми за выдающуюся мужскую роль второго плана в драматическом сериале в 2010, 2012 и 2014.\r\n\r\nПинкман хорошо известен своим использованием слов «Yeah» и «Bitch».', 'ДЖЕССИ', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2019-12-19 23:38:22', '2019-12-19 20:38:22', '', 36, 'http://a-wordpress2/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/36-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2019-12-19 23:56:57', '2019-12-19 20:56:57', ' ', '', '', 'publish', 'closed', 'closed', '', '44', '', '', '2020-01-03 22:44:31', '2020-01-03 19:44:31', '', 0, 'http://a-wordpress2/?p=44', 1, 'nav_menu_item', '', 0),
(45, 1, '2019-12-19 23:56:58', '2019-12-19 20:56:58', ' ', '', '', 'publish', 'closed', 'closed', '', '45', '', '', '2020-01-03 22:44:31', '2020-01-03 19:44:31', '', 0, 'http://a-wordpress2/?p=45', 3, 'nav_menu_item', '', 0),
(47, 1, '2019-12-20 21:03:42', '2019-12-20 18:03:42', '[contact-form-7 id=\"55\" title=\"Калькулятор\"]', 'Тест калькулятора', '', 'publish', 'closed', 'closed', '', '%d1%82%d0%b5%d1%81%d1%82-%d0%ba%d0%b0%d0%bb%d1%8c%d0%ba%d1%83%d0%bb%d1%8f%d1%82%d0%be%d1%80%d0%b0', '', '', '2019-12-20 22:04:19', '2019-12-20 19:04:19', '', 0, 'http://a-wordpress2/?page_id=47', 0, 'page', '', 0),
(49, 1, '2019-12-20 21:03:42', '2019-12-20 18:03:42', '<table class=\"cff-custom-table cff-forms-list\" cellspacing=\"10\">\r\n<tbody>\r\n<tr>\r\n<td nowrap=\"nowrap\">[CP_CALCULATED_FIELDS id=\"6\"]</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'Тест калькулятора', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2019-12-20 21:03:42', '2019-12-20 18:03:42', '', 47, 'http://a-wordpress2/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/47-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2019-12-20 21:04:02', '2019-12-20 18:04:02', ' ', '', '', 'publish', 'closed', 'closed', '', '50', '', '', '2020-01-03 22:44:31', '2020-01-03 19:44:31', '', 0, 'http://a-wordpress2/?p=50', 5, 'nav_menu_item', '', 0),
(51, 1, '2019-12-20 21:05:58', '2019-12-20 18:05:58', '<table class=\"cff-custom-table cff-forms-list\" cellspacing=\"10\">\r\n<tbody>\r\n<tr>\r\n<td nowrap=\"nowrap\">[CP_CALCULATED_FIELDS id=\"6\"]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\nadsfasfasfasfasdfasadsf', 'Тест калькулятора', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2019-12-20 21:05:58', '2019-12-20 18:05:58', '', 47, 'http://a-wordpress2/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/47-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2019-12-20 21:20:18', '2019-12-20 18:20:18', '<table class=\"cff-custom-table cff-forms-list\" cellspacing=\"10\">\r\n<tbody>\r\n<tr>\r\n<td nowrap=\"nowrap\">[CP_CALCULATED_FIELDS id=\"5\"]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\nadsfasfasfasfasdfasadsf', 'Тест калькулятора', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2019-12-20 21:20:18', '2019-12-20 18:20:18', '', 47, 'http://a-wordpress2/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/47-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2019-12-20 21:23:55', '2019-12-20 18:23:55', 'adsfasfasfasfasdfasadsf', 'Тест калькулятора', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2019-12-20 21:23:55', '2019-12-20 18:23:55', '', 47, 'http://a-wordpress2/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/47-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2019-12-20 21:25:21', '2019-12-20 18:25:21', '<span class=\"cff-form-name-shortcode\"> [CP_CALCULATED_FIELDS id=\"7\"]</span>', 'Тест калькулятора', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2019-12-20 21:25:21', '2019-12-20 18:25:21', '', 47, 'http://a-wordpress2/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/47-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2019-12-20 22:03:51', '2019-12-20 19:03:51', '[select menu-668 \"33\" \"33\" \"11\" \"14\"]\r\n[select menu-669 \"55\" \"11\" \"46\" \"146\"]\r\n[calculation calculation-552 \"(menu-668 + menu-669) * 6\"]\r\n[calculate_button \"РАСЧИТАТЬ\"]\n1\n\n\n\n\n\n\n\n\n\na-wordpress2 \"[your-subject]\"\na-wordpress2 <wordpress@a-wordpress2>\n[your-email]\nСообщение:\r\n[your-message]\r\n\r\n-- \r\nЭто сообщение отправлено с сайта a-wordpress2 (http://a-wordpress2)\nReply-To: webdesign-x@bk.ru\n\n\n\nСпасибо за Ваше сообщение. Оно успешно отправлено.\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nОдно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nВы должны принять условия и положения перед отправкой вашего сообщения.\nПоле обязательно для заполнения.\nПоле слишком длинное.\nПоле слишком короткое.\nФормат даты некорректен.\nВведённая дата слишком далеко в прошлом.\nВведённая дата слишком далеко в будущем.\nПри загрузке файла произошла неизвестная ошибка.\nВам не разрешено загружать файлы этого типа.\nФайл слишком большой.\nПри загрузке файла произошла ошибка.\nФормат числа некорректен.\nЧисло меньше минимально допустимого.\nЧисло больше максимально допустимого.\nНеверный ответ на проверочный вопрос.\nНеверно введён электронный адрес.\nВведён некорректный URL адрес.\nВведён некорректный телефонный номер.', 'Калькулятор', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%b0%d0%bb%d1%8c%d0%ba%d1%83%d0%bb%d1%8f%d1%82%d0%be%d1%80', '', '', '2019-12-20 22:25:41', '2019-12-20 19:25:41', '', 0, 'http://a-wordpress2/?post_type=wpcf7_contact_form&#038;p=55', 0, 'wpcf7_contact_form', '', 0),
(56, 1, '2019-12-20 22:04:19', '2019-12-20 19:04:19', '[contact-form-7 id=\"55\" title=\"Калькулятор\"]', 'Тест калькулятора', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2019-12-20 22:04:19', '2019-12-20 19:04:19', '', 47, 'http://a-wordpress2/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/47-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2019-12-21 21:18:41', '2019-12-21 18:18:41', '<p>Предлагаем инжиниринг, поставку оборудования и сервисное обслуживание.</p>\n<p>Индивидуальный подход к работе с заказчиками создает прочные связи и перспективы дальнейшего сотрудничества.</p>\n<p>Для оказания услуг высокого уровня коллектив нашей компании состоит из профессионалов с большим опытом работы.</p>\n\n<!-- wp:heading -->\n<h2>wefasf</h2>\n<!-- /wp:heading -->', 'Главная', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-12-21 21:18:41', '2019-12-21 18:18:41', '', 8, 'http://a-wordpress2/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/8-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2019-12-21 21:21:44', '2019-12-21 18:21:44', '<!-- wp:heading -->\n<h2>wefasf</h2>\n<!-- /wp:heading -->\n\n<p>Предлагаем инжиниринг, поставку оборудования и сервисное обслуживание.</p>\n<p>Индивидуальный подход к работе с заказчиками создает прочные связи и перспективы дальнейшего сотрудничества.</p>\n<p>Для оказания услуг высокого уровня коллектив нашей компании состоит из профессионалов с большим опытом работы.</p>\n<p>Предлагаем инжиниринг, поставку оборудования и сервисное обслуживание.</p>\n<p>Индивидуальный подход к работе с заказчиками создает прочные связи и перспективы дальнейшего сотрудничества.</p>\n<p>Для оказания услуг высокого уровня коллектив нашей компании состоит из профессионалов с большим опытом работы.</p>', 'Главная', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-12-21 21:21:44', '2019-12-21 18:21:44', '', 8, 'http://a-wordpress2/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/8-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2019-12-21 21:22:02', '2019-12-21 18:22:02', 'Предлагаем инжиниринг, поставку оборудования и сервисное обслуживание.\n\nИндивидуальный подход к работе с заказчиками создает прочные связи и перспективы дальнейшего сотрудничества.\n\nДля оказания услуг высокого уровня коллектив нашей компании состоит из профессионалов с большим опытом работы.\n\nПредлагаем инжиниринг, поставку оборудования и сервисное обслуживание.\n\nИндивидуальный подход к работе с заказчиками создает прочные связи и перспективы дальнейшего сотрудничества.\n\nДля оказания услуг высокого уровня коллектив нашей компании состоит из профессионалов с большим опытом работы.', 'Главная', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-12-21 21:22:02', '2019-12-21 18:22:02', '', 8, 'http://a-wordpress2/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/8-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2019-12-21 21:33:53', '0000-00-00 00:00:00', '', 'фывафыв', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-21 21:33:53', '2019-12-21 18:33:53', '', 0, 'http://a-wordpress2/?page_id=62', 0, 'page', '', 0),
(68, 1, '2019-12-28 21:19:06', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-28 21:19:06', '0000-00-00 00:00:00', '', 0, 'http://a-wordpress2/?p=68', 1, 'nav_menu_item', '', 0),
(73, 1, '2019-12-28 21:34:42', '2019-12-28 18:34:42', ' ', '', '', 'publish', 'closed', 'closed', '', '73', '', '', '2019-12-28 21:34:42', '2019-12-28 18:34:42', '', 0, 'http://a-wordpress2/?p=73', 1, 'nav_menu_item', '', 0),
(74, 1, '2019-12-28 21:47:38', '2019-12-28 18:47:38', 'Школьный учитель химии Уолтер Уайт узнаёт, что болен раком лёгких. Учитывая сложное финансовое состояние дел семьи, а также перспективы, Уолтер решает заняться изготовлением метамфетамина. Для этого он привлекает своего бывшего ученика Джесси Пинкмана, когда-то исключённого из школы при активном содействии Уайта. Пинкман сам занимался «варкой мета», но накануне, в ходе рейда УБН, он лишился подельника и лаборатории…', 'Главная', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-12-28 21:47:38', '2019-12-28 18:47:38', '', 8, 'http://a-wordpress2/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/8-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2019-12-28 21:47:50', '2019-12-28 18:47:50', 'Школьный учитель химии Уолтер Уайт узнаёт, что болен раком лёгких. Учитывая сложное финансовое состояние дел семьи, а также перспективы, Уолтер решает заняться изготовлением метамфетамина. Для этого он привлекает своего бывшего ученика Джесси Пинкмана, когда-то исключённого из школы при активном содействии Уайта. Пинкман сам занимался «варкой мета», но накануне, в ходе рейда УБН, он лишился подельника и лаборатории…', 'Главная', '', 'inherit', 'closed', 'closed', '', '8-autosave-v1', '', '', '2019-12-28 21:47:50', '2019-12-28 18:47:50', '', 8, 'http://a-wordpress2/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/8-autosave-v1/', 0, 'revision', '', 0),
(76, 1, '2019-12-28 22:14:10', '2019-12-28 19:14:10', 'Школьный учитель химии Уолтер Уайт узнаёт, что болен раком лёгких. Учитывая сложное финансовое состояние дел семьи, а также перспективы, Уолтер решает заняться изготовлением метамфетамина. Для этого он привлекает своего бывшего ученика Джесси Пинкмана, когда-то исключённого из школы при активном содействии Уайта. Пинкман сам занимался «варкой мета», но накануне, в ходе рейда УБН, он лишился подельника и лаборатории…\r\n\r\n&nbsp;\r\n<pre>[contact-form-7 id=\"33\" title=\"Заказать звонок\"]</pre>', 'Главная', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-12-28 22:14:10', '2019-12-28 19:14:10', '', 8, 'http://a-wordpress2/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/8-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2019-12-28 22:14:27', '2019-12-28 19:14:27', 'Школьный учитель химии Уолтер Уайт узнаёт, что болен раком лёгких. Учитывая сложное финансовое состояние дел семьи, а также перспективы, Уолтер решает заняться изготовлением метамфетамина. Для этого он привлекает своего бывшего ученика Джесси Пинкмана, когда-то исключённого из школы при активном содействии Уайта. Пинкман сам занимался «варкой мета», но накануне, в ходе рейда УБН, он лишился подельника и лаборатории…\r\n<pre></pre>', 'Главная', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-12-28 22:14:27', '2019-12-28 19:14:27', '', 8, 'http://a-wordpress2/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/8-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2019-12-28 22:14:36', '2019-12-28 19:14:36', '<b>Уолтер \"Уолт\" Хартвелл Уайт</b>, так же известный под псевдонимом <b>\"Хайзенберг</b>\", химик и бывший учитель старших классов школы в <a class=\"new\" title=\"Albuquerque (страница не существует)\" rel=\"nofollow\" data-uncrawlable-url=\"L3J1L3dpa2kvQWxidXF1ZXJxdWU/YWN0aW9uPWVkaXQmcmVkbGluaz0x\">Альбукерке</a>, штат Нью Мексико, который после диагностирования у него неоперабельного рака легких в 3-й стадии, начал производство кристаллического метамфетамина как для оплаты своего лечения, так и для финансовой поддержки семьи в случае собственной смерти. Является главным действующим лицом всего сериала.\r\n\r\n&nbsp;\r\n<pre>[contact-form-7 id=\"33\" title=\"Заказать звонок\"]</pre>', 'Уолтер Уайт', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2019-12-28 22:14:36', '2019-12-28 19:14:36', '', 38, 'http://a-wordpress2/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/38-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2019-12-28 22:22:12', '2019-12-28 19:22:12', '<b>Уолтер \"Уолт\" Хартвелл Уайт</b>, так же известный под псевдонимом <b>\"Хайзенберг</b>\", химик и бывший учитель старших классов школы в <a class=\"new\" title=\"Albuquerque (страница не существует)\" rel=\"nofollow\" data-uncrawlable-url=\"L3J1L3dpa2kvQWxidXF1ZXJxdWU/YWN0aW9uPWVkaXQmcmVkbGluaz0x\">Альбукерке</a>, штат Нью Мексико, который после диагностирования у него неоперабельного рака легких в 3-й стадии, начал производство кристаллического метамфетамина как для оплаты своего лечения, так и для финансовой поддержки семьи в случае собственной смерти. Является главным действующим лицом всего сериала.\r\n<pre></pre>', 'Уолтер Уайт', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2019-12-28 22:22:12', '2019-12-28 19:22:12', '', 38, 'http://a-wordpress2/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/38-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2019-12-30 19:04:43', '2019-12-30 16:04:43', '', 'Тест mvc', '', 'publish', 'closed', 'closed', '', '%d1%82%d0%b5%d1%81%d1%82-mvc', '', '', '2019-12-30 19:07:02', '2019-12-30 16:07:02', '', 0, 'http://a-wordpress2/?page_id=80', 0, 'page', '', 0),
(81, 1, '2019-12-30 19:04:43', '2019-12-30 16:04:43', '', 'Тест mvc', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2019-12-30 19:04:43', '2019-12-30 16:04:43', '', 80, 'http://a-wordpress2/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/80-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2019-12-30 19:05:05', '2019-12-30 16:05:05', ' ', '', '', 'publish', 'closed', 'closed', '', '82', '', '', '2020-01-03 22:44:31', '2020-01-03 19:44:31', '', 0, 'http://a-wordpress2/?p=82', 6, 'nav_menu_item', '', 0),
(83, 1, '2020-01-03 19:40:00', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-01-03 19:40:00', '0000-00-00 00:00:00', '', 0, 'http://a-wordpress2/?post_type=news&p=83', 0, 'news', '', 0),
(84, 1, '2020-01-03 19:40:14', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-01-03 19:40:14', '0000-00-00 00:00:00', '', 0, 'http://a-wordpress2/?post_type=news&p=84', 0, 'news', '', 0),
(85, 1, '2020-01-03 19:45:17', '2020-01-03 16:45:17', 'Жена Уолтера Уайта, писательница, бухгалтер, домохозяйка. Умная, принципиальная, неуступчивая и ведомая была вынуждена уйти с работы и взять в свои руки управление семьей и бюджетом, когда оказалось, что сын болен ДЦП.', 'Скайлер Уайт', '', 'publish', 'open', 'open', '', 'skyler-white', '', '', '2020-01-03 23:05:05', '2020-01-03 20:05:05', '', 0, 'http://a-wordpress2/?p=85', 0, 'post', '', 0),
(86, 1, '2020-01-03 19:45:17', '2020-01-03 16:45:17', '', 'Skyler White', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2020-01-03 19:45:17', '2020-01-03 16:45:17', '', 85, 'http://a-wordpress2/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/85-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2020-01-03 19:46:44', '2020-01-03 16:46:44', '', 'Скайлер Уайт', '', 'inherit', 'closed', 'closed', '', '85-autosave-v1', '', '', '2020-01-03 19:46:44', '2020-01-03 16:46:44', '', 85, 'http://a-wordpress2/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/85-autosave-v1/', 0, 'revision', '', 0),
(88, 1, '2020-01-03 19:46:46', '2020-01-03 16:46:46', 'Жена Уолтера Уайта, писательница, бухгалтер, домохозяйка. Умная, принципиальная, неуступчивая и ведомая была вынуждена уйти с работы и взять в свои руки управление семьей и бюджетом, когда оказалось, что сын болен ДЦП.', 'Скайлер Уайт', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2020-01-03 19:46:46', '2020-01-03 16:46:46', '', 85, 'http://a-wordpress2/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/85-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2020-01-03 22:02:50', '2020-01-03 19:02:50', '', 'm16143', '', 'inherit', 'open', 'closed', '', 'm16143', '', '', '2020-01-03 22:02:50', '2020-01-03 19:02:50', '', 85, 'http://a-wordpress2/wp-content/uploads/2020/01/m16143.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2020-01-03 22:02:53', '2020-01-03 19:02:53', 'Жена Уолтера Уайта, писательница, бухгалтер, домохозяйка. Умная, принципиальная, неуступчивая и ведомая была вынуждена уйти с работы и взять в свои руки управление семьей и бюджетом, когда оказалось, что сын болен ДЦП.', 'Скайлер Уайт', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2020-01-03 22:02:53', '2020-01-03 19:02:53', '', 85, 'http://a-wordpress2/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/85-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2020-01-03 22:13:28', '2020-01-03 19:13:28', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}', 'Вес', 'ves', 'publish', 'closed', 'closed', '', 'field_5e0f9249ecaa7', '', '', '2020-01-03 22:17:07', '2020-01-03 19:17:07', '', 40, 'http://a-wordpress2/?post_type=acf-field&#038;p=91', 1, 'acf-field', '', 0),
(92, 1, '2020-01-03 22:17:22', '2020-01-03 19:17:22', 'Жена Уолтера Уайта, писательница, бухгалтер, домохозяйка. Умная, принципиальная, неуступчивая и ведомая была вынуждена уйти с работы и взять в свои руки управление семьей и бюджетом, когда оказалось, что сын болен ДЦП.', 'Скайлер Уайт', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2020-01-03 22:17:22', '2020-01-03 19:17:22', '', 85, 'http://a-wordpress2/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/85-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2020-01-03 22:17:33', '2020-01-03 19:17:33', '<b>Уолтер \"Уолт\" Хартвелл Уайт</b>, так же известный под псевдонимом <b>\"Хайзенберг</b>\", химик и бывший учитель старших классов школы в <a class=\"new\" title=\"Albuquerque (страница не существует)\" rel=\"nofollow\" data-uncrawlable-url=\"L3J1L3dpa2kvQWxidXF1ZXJxdWU/YWN0aW9uPWVkaXQmcmVkbGluaz0x\">Альбукерке</a>, штат Нью Мексико, который после диагностирования у него неоперабельного рака легких в 3-й стадии, начал производство кристаллического метамфетамина как для оплаты своего лечения, так и для финансовой поддержки семьи в случае собственной смерти. Является главным действующим лицом всего сериала.\r\n<pre></pre>', 'Уолтер Уайт', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2020-01-03 22:17:33', '2020-01-03 19:17:33', '', 38, 'http://a-wordpress2/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/38-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2020-01-03 22:17:46', '2020-01-03 19:17:46', '<b>Джесси Брюс Пинкман</b> (<a title=\"Английский язык\" href=\"https://ru.wikipedia.org/wiki/%D0%90%D0%BD%D0%B3%D0%BB%D0%B8%D0%B9%D1%81%D0%BA%D0%B8%D0%B9_%D1%8F%D0%B7%D1%8B%D0%BA\">англ.</a> <span lang=\"en\">Jesse Bruce Pinkman</span>) — персонаж американского драматического сериала «<a title=\"Во все тяжкие\" href=\"https://ru.wikipedia.org/wiki/%D0%92%D0%BE_%D0%B2%D1%81%D0%B5_%D1%82%D1%8F%D0%B6%D0%BA%D0%B8%D0%B5\">Во все тяжкие</a>» и полнометражного «<a title=\"Путь: Во все тяжкие. Фильм\" href=\"https://ru.wikipedia.org/wiki/%D0%9F%D1%83%D1%82%D1%8C:_%D0%92%D0%BE_%D0%B2%D1%81%D0%B5_%D1%82%D1%8F%D0%B6%D0%BA%D0%B8%D0%B5._%D0%A4%D0%B8%D0%BB%D1%8C%D0%BC\">Путь: Во все тяжкие. Фильм</a>». Персонаж, которого сыграл <a title=\"Пол, Аарон\" href=\"https://ru.wikipedia.org/wiki/%D0%9F%D0%BE%D0%BB,_%D0%90%D0%B0%D1%80%D0%BE%D0%BD\">Аарон Пол</a>, был создан сценаристом и режиссёром сериала Винсом Гиллиганом, а также это единственный персонаж, кроме <a title=\"Уолтер Уайт\" href=\"https://ru.wikipedia.org/wiki/%D0%A3%D0%BE%D0%BB%D1%82%D0%B5%D1%80_%D0%A3%D0%B0%D0%B9%D1%82\">Уолтера Уайта</a>, который появляется в каждом эпизоде шоу.\r\n\r\nПерсонаж получил похвалу от критиков и поклонников сериала. Благодаря этой роли Аарон Пол выиграл прайм-тайм премию Эмми за выдающуюся мужскую роль второго плана в драматическом сериале в 2010, 2012 и 2014.\r\n\r\nПинкман хорошо известен своим использованием слов «Yeah» и «Bitch».', 'ДЖЕССИ', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2020-01-03 22:17:46', '2020-01-03 19:17:46', '', 36, 'http://a-wordpress2/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/36-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2020-01-03 22:44:04', '2020-01-03 19:44:04', '', 'Категории', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%b0%d1%82%d0%b5%d0%b3%d0%be%d1%80%d0%b8%d0%b8', '', '', '2020-01-03 22:44:31', '2020-01-03 19:44:31', '', 0, 'http://a-wordpress2/?p=95', 2, 'nav_menu_item', '', 0),
(96, 1, '2020-01-03 22:44:31', '2020-01-03 19:44:31', ' ', '', '', 'publish', 'closed', 'closed', '', '96', '', '', '2020-01-03 22:44:31', '2020-01-03 19:44:31', '', 0, 'http://a-wordpress2/?p=96', 4, 'nav_menu_item', '', 0),
(97, 1, '2020-01-03 23:07:20', '2020-01-03 20:07:20', 'Школьный учитель химии Уолтер Уайт узнаёт, что болен раком лёгких. Учитывая сложное финансовое состояние дел семьи, а также перспективы, Уолтер решает заняться изготовлением метамфетамина. Для этого он привлекает своего бывшего ученика Джесси Пинкмана, когда-то исключённого из школы при активном содействии Уайта. Пинкман сам занимался «варкой мета», но накануне, в ходе рейда УБН, он лишился подельника и лаборатории…', 'Уолтер младший', '', 'publish', 'open', 'open', '', '%d1%83%d0%be%d0%bb%d1%82%d0%b5%d1%80-%d0%bc%d0%bb%d0%b0%d0%b4%d1%88%d0%b8%d0%b9', '', '', '2020-01-03 23:10:15', '2020-01-03 20:10:15', '', 0, 'http://a-wordpress2/?p=97', 0, 'post', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(98, 1, '2020-01-03 23:07:20', '2020-01-03 20:07:20', '', 'Уолтер младший', '', 'inherit', 'closed', 'closed', '', '97-revision-v1', '', '', '2020-01-03 23:07:20', '2020-01-03 20:07:20', '', 97, 'http://a-wordpress2/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/97-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2020-01-03 23:07:47', '2020-01-03 20:07:47', '', 'rj_mitte_03', '', 'inherit', 'open', 'closed', '', 'rj_mitte_03', '', '', '2020-01-03 23:07:47', '2020-01-03 20:07:47', '', 97, 'http://a-wordpress2/wp-content/uploads/2020/01/rj_mitte_03.jpg', 0, 'attachment', 'image/jpeg', 0),
(100, 1, '2020-01-03 23:08:03', '2020-01-03 20:08:03', 'Школьный учитель химии Уолтер Уайт узнаёт, что болен раком лёгких. Учитывая сложное финансовое состояние дел семьи, а также перспективы, Уолтер решает заняться изготовлением метамфетамина. Для этого он привлекает своего бывшего ученика Джесси Пинкмана, когда-то исключённого из школы при активном содействии Уайта. Пинкман сам занимался «варкой мета», но накануне, в ходе рейда УБН, он лишился подельника и лаборатории…', 'Уолтер младший', '', 'inherit', 'closed', 'closed', '', '97-revision-v1', '', '', '2020-01-03 23:08:03', '2020-01-03 20:08:03', '', 97, 'http://a-wordpress2/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/97-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2020-01-03 23:10:15', '2020-01-03 20:10:15', 'Школьный учитель химии Уолтер Уайт узнаёт, что болен раком лёгких. Учитывая сложное финансовое состояние дел семьи, а также перспективы, Уолтер решает заняться изготовлением метамфетамина. Для этого он привлекает своего бывшего ученика Джесси Пинкмана, когда-то исключённого из школы при активном содействии Уайта. Пинкман сам занимался «варкой мета», но накануне, в ходе рейда УБН, он лишился подельника и лаборатории…', 'Уолтер младший', '', 'inherit', 'closed', 'closed', '', '97-revision-v1', '', '', '2020-01-03 23:10:15', '2020-01-03 20:10:15', '', 97, 'http://a-wordpress2/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/97-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2020-01-04 12:41:45', '2020-01-04 09:41:45', '<b>Уолтер \"Уолт\" Хартвелл Уайт</b>, так же известный под псевдонимом <b>\"Хайзенберг</b>\", химик и бывший учитель старших классов школы в <a class=\"new\" title=\"Albuquerque (страница не существует)\" rel=\"nofollow\" data-uncrawlable-url=\"L3J1L3dpa2kvQWxidXF1ZXJxdWU/YWN0aW9uPWVkaXQmcmVkbGluaz0x\">Альбукерке</a>, штат Нью Мексико, который после диагностирования у него неоперабельного рака легких в 3-й стадии, начал производство кристаллического метамфетамина как для оплаты своего лечения, так и для финансовой поддержки семьи в случае собственной смерти. Является главным действующим лицом всего сериала.\r\n<pre></pre>', 'Уолтер Уайт', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2020-01-04 12:41:45', '2020-01-04 09:41:45', '', 38, 'http://a-wordpress2/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/38-revision-v1/', 0, 'revision', '', 0),
(103, 1, '2020-01-04 12:46:14', '2020-01-04 09:46:14', '<b>Джесси Брюс Пинкман</b> (<a title=\"Английский язык\" href=\"https://ru.wikipedia.org/wiki/%D0%90%D0%BD%D0%B3%D0%BB%D0%B8%D0%B9%D1%81%D0%BA%D0%B8%D0%B9_%D1%8F%D0%B7%D1%8B%D0%BA\">англ.</a> <span lang=\"en\">Jesse Bruce Pinkman</span>) — персонаж американского драматического сериала «<a title=\"Во все тяжкие\" href=\"https://ru.wikipedia.org/wiki/%D0%92%D0%BE_%D0%B2%D1%81%D0%B5_%D1%82%D1%8F%D0%B6%D0%BA%D0%B8%D0%B5\">Во все тяжкие</a>» и полнометражного «<a title=\"Путь: Во все тяжкие. Фильм\" href=\"https://ru.wikipedia.org/wiki/%D0%9F%D1%83%D1%82%D1%8C:_%D0%92%D0%BE_%D0%B2%D1%81%D0%B5_%D1%82%D1%8F%D0%B6%D0%BA%D0%B8%D0%B5._%D0%A4%D0%B8%D0%BB%D1%8C%D0%BC\">Путь: Во все тяжкие. Фильм</a>». Персонаж, которого сыграл <a title=\"Пол, Аарон\" href=\"https://ru.wikipedia.org/wiki/%D0%9F%D0%BE%D0%BB,_%D0%90%D0%B0%D1%80%D0%BE%D0%BD\">Аарон Пол</a>, был создан сценаристом и режиссёром сериала Винсом Гиллиганом, а также это единственный персонаж, кроме <a title=\"Уолтер Уайт\" href=\"https://ru.wikipedia.org/wiki/%D0%A3%D0%BE%D0%BB%D1%82%D0%B5%D1%80_%D0%A3%D0%B0%D0%B9%D1%82\">Уолтера Уайта</a>, который появляется в каждом эпизоде шоу.\r\n\r\nПерсонаж получил похвалу от критиков и поклонников сериала. Благодаря этой роли Аарон Пол выиграл прайм-тайм премию Эмми за выдающуюся мужскую роль второго плана в драматическом сериале в 2010, 2012 и 2014.\r\n\r\nПинкман хорошо известен своим использованием слов «Yeah» и «Bitch».', 'ДЖЕССИ', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2020-01-04 12:46:14', '2020-01-04 09:46:14', '', 36, 'http://a-wordpress2/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/36-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'Актеры', 'acters', 0),
(3, 'Верхнее меню', '%d0%b2%d0%b5%d1%80%d1%85%d0%bd%d0%b5%d0%b5-%d0%bc%d0%b5%d0%bd%d1%8e', 0),
(4, 'Боковое меню', '%d0%b1%d0%be%d0%ba%d0%be%d0%b2%d0%be%d0%b5-%d0%bc%d0%b5%d0%bd%d1%8e', 0),
(5, 'Актрисы', '%d0%b0ctresses', 0),
(6, 'наркоман', '%d0%bd%d0%b0%d1%80%d0%ba%d0%be%d0%bc%d0%b0%d0%bd', 0),
(7, 'пинкман', '%d0%bf%d0%b8%d0%bd%d0%ba%d0%bc%d0%b0%d0%bd', 0),
(8, 'Хайзенберг', '%d1%85%d0%b0%d0%b9%d0%b7%d0%b5%d0%bd%d0%b1%d0%b5%d1%80%d0%b3', 0),
(9, 'химик', '%d1%85%d0%b8%d0%bc%d0%b8%d0%ba', 0),
(10, 'учитель', '%d1%83%d1%87%d0%b8%d1%82%d0%b5%d0%bb%d1%8c', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(36, 2, 0),
(36, 6, 0),
(36, 7, 0),
(38, 2, 0),
(38, 8, 0),
(38, 9, 0),
(38, 10, 0),
(44, 3, 0),
(45, 3, 0),
(50, 3, 0),
(73, 4, 0),
(82, 3, 0),
(85, 2, 0),
(95, 3, 0),
(96, 3, 0),
(97, 2, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', '', 0, 4),
(3, 3, 'nav_menu', '', 0, 6),
(4, 4, 'nav_menu', '', 0, 1),
(5, 5, 'category', '', 0, 0),
(6, 6, 'post_tag', '', 0, 1),
(7, 7, 'post_tag', '', 0, 1),
(8, 8, 'post_tag', '', 0, 1),
(9, 9, 'post_tag', '', 0, 1),
(10, 10, 'post_tag', '', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"4c7303c07bab5f0ca399d8f7eccff869289172ee3c07a8b67e2c3464bd8029ae\";a:4:{s:10:\"expiration\";i:1578242329;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36\";s:5:\"login\";i:1578069529;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '67'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&siteorigin_panels_setting_tab=general&editor=tinymce&posts_list_mode=list'),
(20, 1, 'wp_user-settings-time', '1578130180'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(23, 1, 'nav_menu_recently_edited', '3'),
(24, 2, 'nickname', 'sashaxxd'),
(25, 2, 'first_name', ''),
(26, 2, 'last_name', ''),
(27, 2, 'description', ''),
(28, 2, 'rich_editing', 'true'),
(29, 2, 'syntax_highlighting', 'true'),
(30, 2, 'comment_shortcuts', 'false'),
(31, 2, 'admin_color', 'fresh'),
(32, 2, 'use_ssl', '0'),
(33, 2, 'show_admin_bar_front', 'true'),
(34, 2, 'locale', ''),
(35, 2, 'wp_capabilities', 'a:1:{s:6:\"editor\";b:1;}'),
(36, 2, 'wp_user_level', '7'),
(37, 2, 'dismissed_wp_pointers', ''),
(39, 2, 'wp_dashboard_quick_press_last_post_id', '57'),
(40, 2, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(41, 1, 'closedpostboxes_page', 'a:0:{}'),
(42, 1, 'metaboxhidden_page', 'a:0:{}'),
(43, 1, 'closedpostboxes_post', 'a:0:{}'),
(44, 1, 'metaboxhidden_post', 'a:6:{i:0;s:16:\"so-panels-panels\";i:1;s:11:\"postexcerpt\";i:2;s:13:\"trackbacksdiv\";i:3;s:16:\"commentstatusdiv\";i:4;s:7:\"slugdiv\";i:5;s:9:\"authordiv\";}'),
(45, 1, 'edit_post_per_page', '10');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BPZ5sArC.di9RlTqNiPgn5trGy8OnB.', 'admin', 'webdesign-x@bk.ru', '', '2019-12-19 11:23:38', '', 0, 'admin'),
(2, 'sashaxxd', '$P$BssQIXofTTHA83W9zcLw/1JpfJp4D/0', 'sashaxxd', 'sasha.kotik@pochta.ru', '', '2019-12-21 09:42:58', '1576921378:$P$Ba7Q/l7LEkE1../UuVxl6/aYniCfzQ1', 0, 'sashaxxd');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_venues`
--

CREATE TABLE `wp_venues` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_cp_calculated_fields_form_discount_codes`
--
ALTER TABLE `wp_cp_calculated_fields_form_discount_codes`
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `wp_cp_calculated_fields_form_posts`
--
ALTER TABLE `wp_cp_calculated_fields_form_posts`
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `wp_cp_calculated_fields_form_revision`
--
ALTER TABLE `wp_cp_calculated_fields_form_revision`
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `wp_cp_calculated_fields_form_settings`
--
ALTER TABLE `wp_cp_calculated_fields_form_settings`
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_my_venues`
--
ALTER TABLE `wp_my_venues`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Индексы таблицы `wp_venues`
--
ALTER TABLE `wp_venues`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `wp_cp_calculated_fields_form_discount_codes`
--
ALTER TABLE `wp_cp_calculated_fields_form_discount_codes`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_cp_calculated_fields_form_posts`
--
ALTER TABLE `wp_cp_calculated_fields_form_posts`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_cp_calculated_fields_form_revision`
--
ALTER TABLE `wp_cp_calculated_fields_form_revision`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `wp_cp_calculated_fields_form_settings`
--
ALTER TABLE `wp_cp_calculated_fields_form_settings`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_my_venues`
--
ALTER TABLE `wp_my_venues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=657;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=581;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `wp_venues`
--
ALTER TABLE `wp_venues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
