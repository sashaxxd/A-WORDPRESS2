<?php
/**
 * Основные параметры WordPress.
 *
 * Скрипт для создания wp-config.php использует этот файл в процессе
 * установки. Необязательно использовать веб-интерфейс, можно
 * скопировать файл в "wp-config.php" и заполнить значения вручную.
 *
 * Этот файл содержит следующие параметры:
 *
 * * Настройки MySQL
 * * Секретные ключи
 * * Префикс таблиц базы данных
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** Параметры MySQL: Эту информацию можно получить у вашего хостинг-провайдера ** //
/** Имя базы данных для WordPress */
define( 'DB_NAME', 'a-wordpress2' );

/** Имя пользователя MySQL */
define( 'DB_USER', 'root' );

/** Пароль к базе данных MySQL */
define( 'DB_PASSWORD', '' );

/** Имя сервера MySQL */
define( 'DB_HOST', 'localhost' );

/** Кодировка базы данных для создания таблиц. */
define( 'DB_CHARSET', 'utf8mb4' );

/** Схема сопоставления. Не меняйте, если не уверены. */
define( 'DB_COLLATE', '' );

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу.
 * Можно сгенерировать их с помощью {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными. Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'K[!3Z;3y_u[;]QJRsbJ?L0QXFk?@oVPF4ssNrp8SQ&DJiR<da7eI0ZfOgrJ#f62?' );
define( 'SECURE_AUTH_KEY',  'vf`_dBYpjKVD@:E^r?{K-S,TWx~<GW*!>:9D~Oc&CDyiSExlg@ccd1]mZ,6bcHu2' );
define( 'LOGGED_IN_KEY',    't>Cl8OR.I9s.0voSwm$2iY4W[_]Tj!zrO{I~XtTe[<?u=l#9Gu|1QWm`+C6;Up-d' );
define( 'NONCE_KEY',        '?5vW`@,qQ#1W]2q&N14UmA7btw@I!Hyh(~,&z*-cq/tmHRuZs?I5F?5^$CS.rADK' );
define( 'AUTH_SALT',        '|;1B`|)7+V+;pG*Sl`7h9PbhFdVil7bEVIxn}4T/L>X;w(:K=:#.+]9KVJwC[b_x' );
define( 'SECURE_AUTH_SALT', 'zM6ef4!P_3~0o<s6l<B<8:4K=3{6vZ~gy= 2$y,cRgP]3R19<?%tvE3FS72 o&G9' );
define( 'LOGGED_IN_SALT',   '}tyl_<{sP}P1FIAp6*N-q>g>ThmE=^IqD[MA{Xj p(YRXYN[JT52`&YD@)Ao^#:;' );
define( 'NONCE_SALT',       'ErzUh_:EvA9B-`j.*K+eDP:+|%3Zf:z:~BTCd8cN]:klL[T_[:}yf~iAUky=:l|}' );

/**#@-*/

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Можно установить несколько сайтов в одну базу данных, если использовать
 * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.
 */
$table_prefix = 'wp_';

/**
 * Для разработчиков: Режим отладки WordPress.
 *
 * Измените это значение на true, чтобы включить отображение уведомлений при разработке.
 * Разработчикам плагинов и тем настоятельно рекомендуется использовать WP_DEBUG
 * в своём рабочем окружении.
 *
 * Информацию о других отладочных константах можно найти в Кодексе.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Инициализирует переменные WordPress и подключает файлы. */
require_once( ABSPATH . 'wp-settings.php' );



