<?php
/**
Cтили и скрипты
 */


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



