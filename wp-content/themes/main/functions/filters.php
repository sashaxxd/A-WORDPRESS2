<?php
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

