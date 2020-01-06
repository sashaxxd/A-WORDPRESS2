<?php
/**
Дебагер
 */
function Debug($arr)
{
    echo '<pre>'.print_r($arr, true).'</pre>';
}

/**
 * Отключаем админ панель для всех пользователей.
 */
show_admin_bar(false);


/**
 * Обрубает ненужные скрипты с кода
 */
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



/**
 * Регистрируем меню
 */

register_nav_menus(array(
    'top'    => 'Верхнее меню',    //Название месторасположения меню в шаблоне
    'bottom' => 'Нижнее меню'      //Название другого месторасположения меню в шаблоне
));



/**
 * Функция удаляет H2 из шаблона пагинации
 */
//
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
