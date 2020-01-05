<?php
function Debug($arr)
{
    echo '<pre>'.print_r($arr, true).'</pre>';
}

/* Отключаем админ панель для всех пользователей. */
//show_admin_bar(false);

/**
 * Скрипты и стили
 */
//Обрубает ненужные скрипты с кода
function wpassist_remove_block_library_css(){
    wp_dequeue_style( 'wp-block-library' );
}
add_action( 'wp_enqueue_scripts', 'wpassist_remove_block_library_css' );
remove_action( 'wp_head', 'print_emoji_detection_script', 7 );
remove_action( 'wp_print_styles', 'print_emoji_styles' );
function my_deregister_scripts(){
    wp_deregister_script( 'wp-embed' );
}
add_action( 'wp_footer', 'my_deregister_scripts');



function my_scripts(){
    wp_enqueue_style( 'style-1', get_template_directory_uri() . '/assets/css/site.css', false, null );
    wp_enqueue_style( 'style-2', get_template_directory_uri() . '/assets/css/index.css', false, null );
    wp_enqueue_style( 'style-3', get_template_directory_uri() . '/assets/css/style.css', false, null );
    wp_enqueue_style( 'style-4', get_template_directory_uri() . '/assets/css/font-awesome.min.css', false, null );
    wp_enqueue_style( 'style-5', get_template_directory_uri() . '/assets/css/v_menu.css', false, null );

    wp_enqueue_style( 'style-7', get_template_directory_uri() . '/assets/css/owl.carousel.min.css', false, null );
    wp_enqueue_style( 'style-8', get_template_directory_uri() . '/assets/css/css-carousel.css', false, null );
    wp_enqueue_style( 'style-9', get_template_directory_uri() . '/assets/css/flash_message.css', false, null );
//    wp_enqueue_style( 'style-5', get_template_directory_uri() . '/assets/css/pagination.css', false, null );
//
    wp_enqueue_script( 'script-1', get_template_directory_uri() . '/assets/js/jquery-1.12.4.min.js', array(), null, true );
    wp_enqueue_script( 'script-2', get_template_directory_uri() . '/assets/js/transition.min.js', array(), null, true );
    wp_enqueue_script( 'script-3', get_template_directory_uri() . '/assets/js/modal.min.js', array(), null, true );
    wp_enqueue_script( 'script-4', get_template_directory_uri() . '/assets/js/wwb12.min.js', array(), null, true );
    wp_enqueue_script( 'script-5', get_template_directory_uri() . '/assets/js/main.js', array(), null, true );
    wp_enqueue_script( 'script-6', get_template_directory_uri() . '/assets/js/transition.min.js', array(), null, true );

    wp_enqueue_script( 'script-8', get_template_directory_uri() . '/assets/js/owl.carousel.js', array(), null, true );
    wp_enqueue_script( 'script-9', get_template_directory_uri() . '/assets/js/main.js', array(), null, true );
    wp_enqueue_script( 'script-7', get_template_directory_uri() . '/assets/js/v_menu.js', array(), null, true );
    wp_enqueue_script( 'script-10', get_template_directory_uri() . '/assets/js/flash_message.js', array(), null, true );
    // Если запись принадлежит определенной категории
    if(is_category('acters')){
        wp_enqueue_style( 'style-acters', get_template_directory_uri() . '/assets/css/acters.css', false, null );
        wp_enqueue_script( 'my-ajax-request', get_template_directory_uri() . '/assets/js/filters.js', array(), null, true );
        wp_localize_script( 'my-ajax-request', 'MyAjax', array( 'ajaxurl' => admin_url( 'admin-ajax.php' ) ) );

    }

    if ( is_single() && in_category( 'acters' )) {
        wp_enqueue_style( 'style-ss', get_template_directory_uri() . '/assets/css/single-acters.css', false, null );
        wp_enqueue_style( 'style-ss2', get_template_directory_uri() . '/assets/css/single-acters2.css', false, null );
        wp_enqueue_script( 'my-ajax-request', get_template_directory_uri() . '/assets/js/single.js', array(), null, true );

    }

}
add_action('wp_enqueue_scripts', 'my_scripts');

/**
 * @param $single_template
 * @return string
 * функиция для подкл. шаблона определенной категории как подкл. css?
 */
add_filter('single_template', create_function(
        '$the_template',
        'foreach( (array) get_the_category() as $cat ) {
		if ( file_exists(TEMPLATEPATH . "/single-{$cat->slug}.php") )
			return TEMPLATEPATH . "/single-{$cat->slug}.php"; }
		return $the_template;' )
);


/**
 * @param $single_template
 * @return string
 * функиция для подкл. шаблона определенной категории
 */
//function get_custom_cat_template($single_template) {
//
//
//    if ( in_category( 'acters' )) {
//        $single_template = dirname( __FILE__ ) . '/single-acters.php';
//    }
//    return $single_template;
//}
//add_filter( "single_template", "get_custom_cat_template" ) ;


/**
 * @param $single_template
 * @return string
 * функиция для подкл. css для записей определенной рубрики
 */
function my_scripts_single_css(){
    if ( is_single() && in_category( 'acters' )) {
        wp_enqueue_style( 'style-ss', get_template_directory_uri() . '/assets/css/single-acters.css', false, null );
        wp_enqueue_style( 'style-ss2', get_template_directory_uri() . '/assets/css/single-acters2.css', false, null );
    }
    if(is_page( '47' )){
        wp_enqueue_style( 'style-sss5', get_template_directory_uri() . '/assets/css/single-acters.css', false, null );
    }
}
add_action('wp_enqueue_scripts', 'my_scripts_single_css');
/**
 * Скрипты и стили для отдельных страниц
 */

//function wpse_enqueue_page_template_styles() {
//    // Если категория отзывы
//    if ( is_category( 'otzyvy' ) ) {
//        wp_enqueue_style( 'otzyvy-template', get_template_directory_uri() . '/assets/css/otzyvy.css' );
//    }
//    // Если шаблон такой то
//    if ( is_page_template( 'contacts.php' ) ) {
//        wp_enqueue_style( 'contacts-template', get_template_directory_uri() . '/assets/css/contacts.css' );
//    }
//
//    if ( is_page_template( 'services.php' ) ) {
//        wp_enqueue_style( 'services-template', get_template_directory_uri() . '/assets/css/uslugi.css' );
//    }
//
//
//    if ( is_category( 'projects' ) ) {
//        wp_enqueue_style( 'projects-template', get_template_directory_uri() . '/assets/css/projects.css' );
//    }
//    // Если запись принадлежит определенной категории
//    if(in_category('projects')){
//        wp_enqueue_style( 'single-project-css', get_template_directory_uri() . '/assets/css/single-project.css' );
//        wp_enqueue_style( 'single-project-magnific-popup', get_template_directory_uri() . '/assets/magnificpopup/magnific-popup.css' );
//    }
//}
//add_action( 'wp_enqueue_scripts', 'wpse_enqueue_page_template_styles' );






/**
 * Регистрируем меню
 */

register_nav_menus(array(
    'top'    => 'Верхнее меню',    //Название месторасположения меню в шаблоне
    'bottom' => 'Нижнее меню'      //Название другого месторасположения меню в шаблоне
));


/**
 * Функция для пагинации
 */
//function kriesi_pagination($pages = '', $range = 2)
//{
//    $showitems = ($range * 2)+1;
//
//    global $paged;
//    if(empty($paged)) $paged = 1;
//
//    if($pages == '')
//    {
//        global $wp_query;
//        $pages = $wp_query->max_num_pages;
//        if(!$pages)
//        {
//            $pages = 1;
//        }
//    }
//
//    if(1 != $pages)
//    {
//        echo "<div class='pagination'>";
//        if($paged > 2 && $paged > $range+1 && $showitems < $pages) echo "<a href='".get_pagenum_link(1)."'>&laquo;</a>";
//        if($paged > 1 && $showitems < $pages) echo "<a href='".get_pagenum_link($paged - 1)."'>&lsaquo;</a>";
//
//        for ($i=1; $i <= $pages; $i++)
//        {
//            if (1 != $pages &&( !($i >= $paged+$range+1 || $i <= $paged-$range-1) || $pages <= $showitems ))
//            {
//                echo ($paged == $i)? "<span class='current'>".$i."</span>":"<a href='".get_pagenum_link($i)."' class='inactive' >".$i."</a>";
//            }
//        }
//
//        if ($paged < $pages && $showitems < $pages) echo "<a href='".get_pagenum_link($paged + 1)."'>&rsaquo;</a>";
//        if ($paged < $pages-1 &&  $paged+$range-1 < $pages && $showitems < $pages) echo "<a href='".get_pagenum_link($pages)."'>&raquo;</a>";
//        echo "</div>\n";
//    }
//}

/**
 * Функция для работы пагинации
 */
// удаляет H2 из шаблона пагинации
add_filter('navigation_markup_template', 'my_navigation_template', 10, 2 );
function my_navigation_template( $template, $class ){
    /*
    Вид базового шаблона:
    <nav class="navigation %1$s" role="navigation">
        <h2 class="screen-reader-text">%2$s</h2>
        <div class="nav-links">%3$s</div>
    </nav>
    */

    return '
	<nav class="navigation %1$s" role="navigation">
		<div class="nav-links">%3$s</div>
	</nav>    
	';
}


/**
 * Функция для работы пагинации
 */
function my_request( $request ) {
    $dummy_query = new WP_Query();
    $dummy_query->parse_query( $request );

    if ( $dummy_query->is_archive() ) {
        $request['posts_per_page'] = 1;
    }
    elseif ( $dummy_query->is_search() ) {
        $request['posts_per_page'] = 1;
    }

    return $request;
}
add_filter( 'request', 'my_request' );

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





/** Фильтры */


function main_filter_function(){
    $args = array(
        'orderby' => 'date', // we will sort posts by date
        'order'	=> $_GET['date'] // ASC or DESC
    );



    if( isset( $_GET['category'] ) ) {

//        Debug($_GET);
        $args['tax_query'] = array(
            array(
                'taxonomy' => 'category',
                'field' => 'id',
                'terms' => $_GET['category']
            )
        );
    }


    if( isset( $_GET['ves'] ) && $_GET['ves'] > 0) {
        $args['meta_query'] = array(
            array(
                'key' => 'ves',
                'value' => $_GET['ves'],
            )
        );
    }

    global $wp_query;



    if( isset( $_GET['page'] ) ) {
        $paged = $_GET['page'];
    }
    else{
        $paged = get_query_var('paged') ? get_query_var('paged') : 1;
    }
//    echo 'Мы находимся на странице: '. $paged;
    $args['paged'] = $paged;
    $args['posts_per_page'] = '2';

    /*Чтобы работала штатная пагинация надо в массив запрос добавить параметр 'paged'=>$paged*/
    $wp_query = new WP_Query( $args );


//    Debug($query);

    if( $wp_query->have_posts() ) :

            get_template_part( 'parts/entry' );


        wp_reset_postdata();
    else :
        get_template_part( 'parts/not' );
    endif;

    die();
}

add_action('wp_ajax_myfilter', 'main_filter_function'); // wp_ajax_{ACTION HERE}
add_action('wp_ajax_nopriv_myfilter', 'main_filter_function');




