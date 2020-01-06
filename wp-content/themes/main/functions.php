<?php
/**
 * Подрубаем основные функции для разработки
 */
require_once 'functions/main-functions.php';

/**
 * Подрубаем скрипты и стили
 */

require_once 'functions/wp_enqueue_style.php';


/**
 * Подрубаем фильтры
 */

require_once 'functions/filters.php';


/**
 * Подрубаем различные функции полезные
 */


require_once 'functions/useful-functions.php';

/**
 * ВЫВОД ПЕРВОЙ КАРТИНКИ С ПОСТА
 */
function first_post_image() {
    global $post, $posts;
    $first_img = '';
    ob_start();
    ob_end_clean();
    $output = preg_match_all('/<img.+src=[\'"]([^\'"]+)[\'"].*>/i', $post->post_content, $matches);
    $first_img = $matches [1] [0];
    if(empty($first_img)){
        $first_img = "/wp-content/themes/main/assets/images/noimage.jpg";
// УКАЖИТЕ ПУТЬ К ИЗОБРАЖЕНИЮ, КОТОРОЕ БУДЕТ ВЫВОДИТСЯ ПО УМОЛЧАНИЮ.
    }
    return $first_img;
}


/**
 * НАСТРОЙКА body_class
 */
//add_filter( 'body_class', 'wpse15850_body_class', 10, 2 );
//
//function wpse15850_body_class( $wp_classes, $extra_classes ) {
//
//    // List of the only WP generated classes allowed
//    $whitelist = array( 'portfolio', 'home', 'error404' );
//
//    // Filter the body classes
//    $wp_classes = array_intersect( $wp_classes, $whitelist );
//
//    // Add the extra classes back untouched
//    return array_merge( $wp_classes, (array) $extra_classes );
//}


/**
 * ДОБАВЛЯЕМ ВИДЖЕТЫ
 */
function true_register_wp_sidebars() {

    /* В боковой колонке - первый сайдбар */
    register_sidebar(
        array(
            'id' => 'true_side', // уникальный id
            'name' => 'Боковая колонка', // название сайдбара
            'description' => 'Перетащите сюда виджеты, чтобы добавить их в сайдбар.', // описание
            'before_widget' => '<div id="%1$s" class="side widget %2$s">', // по умолчанию виджеты выводятся <li>-списком
            'after_widget' => '</div>',
            'before_title' => '<h3 class="widget-title">', // по умолчанию заголовки виджетов в <h2>
            'after_title' => '</h3>'
        )
    );

    /* В подвале - второй сайдбар */
    register_sidebar(
        array(
            'id' => 'true_foot',
            'name' => 'Футер',
            'description' => 'Перетащите сюда виджеты, чтобы добавить их в футер.',
            'before_widget' => '<div id="%1$s" class="foot widget %2$s">',
            'after_widget' => '</div>',
            'before_title' => '<h3 class="widget-title">',
            'after_title' => '</h3>'
        )
    );

    /* Хлебные крошки - третий сайдбар */
    register_sidebar(
        array(
            'id' => 'true_hleb',
            'name' => 'Хлебные крошки',
            'description' => 'Перетащите сюда виджеты, чтобы добавить их в футер.',
            'before_widget' => '<div id="%1$s" class="foot widget %2$s">',
            'after_widget' => '</div>',
            'before_title' => '<h3 class="widget-title">',
            'after_title' => '</h3>'
        )
    );
}

add_action( 'widgets_init', 'true_register_wp_sidebars' );





/**
удаляем якорь вида «#more-123» из ссылки «читать далее»
**/

function no_more_jumping($post) {
    return '<a href="'.get_permalink($post->ID).'" class="read-more">'.'Читать далее &raquo;'.'</a>';
}
add_filter('the_content_more_link', 'no_more_jumping');






/** Убираем теги из формы */
add_filter( 'wpcf7_autop_or_not', '__return_false' );






/** Cвой тип записи */
add_action( 'init', 'register_post_types6' );
function register_post_types6(){
    register_post_type('news', array(
        'label'  => null,
        'labels' => array(
            'name'               => 'Новости', // основное название для типа записи
            'singular_name'      => 'Новости', // название для одной записи этого типа
            'add_new'            => 'Добавить запись', // для добавления новой записи
            'add_new_item'       => 'Добавление записи', // заголовка у вновь создаваемой записи в админ-панели.
            'edit_item'          => 'Редактирование записи', // для редактирования типа записи
            'new_item'           => 'Новая запись', // текст новой записи
            'view_item'          => 'Смотреть записи', // для просмотра записи этого типа.
            'search_items'       => 'Искать записи', // для поиска по этим типам записи
            'not_found'          => 'Не найдено', // если в результате поиска ничего не было найдено
            'not_found_in_trash' => 'Не найдено в корзине', // если не было найдено в корзине
            'parent_item_colon'  => '', // для родителей (у древовидных типов)
            'menu_name'          => 'Новости', // название меню
        ),
        'description'         => 'Новости',
        'public'              => true,
        'publicly_queryable'  => true, // зависит от public
        'exclude_from_search' => true, // зависит от public
        'show_ui'             => true, // зависит от public
        'show_in_menu'        => true, // показывать ли в меню адмнки
        'show_in_admin_bar'   => true, // по умолчанию значение show_in_menu
        'show_in_nav_menus'   => true, // зависит от public
        'show_in_rest'        => null, // добавить в REST API. C WP 4.7
        'rest_base'           => 4, // $post_type. C WP 4.7
        'menu_position'       => null,
        'menu_icon'           => 'dashicons-text-page',
        //'capability_type'   => 'post',
        //'capabilities'      => 'post', // массив дополнительных прав для этого типа записи
        //'map_meta_cap'      => null, // Ставим true чтобы включить дефолтный обработчик специальных прав
        'hierarchical'        => false,
        'supports'            => array('title','editor','thumbnail'), // 'title','editor','author','thumbnail','excerpt','trackbacks','custom-fields','comments','revisions','page-attributes','post-formats'
        'taxonomies'          => array(),
        'has_archive'         => false,
        'rewrite'             => true,
        'query_var'           => true,
    ) );
};








