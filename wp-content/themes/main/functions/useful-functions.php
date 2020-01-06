<?php
/**
Получение  все значения произвольных полей ACF без повторения
 */

function get_meta_values( $meta_key, $post_type = 'post' ) {

    $posts = get_posts(
        array(
            'post_type'      => $post_type,
            'meta_key'       => $meta_key,
            'posts_per_page' => - 1,
        )
    );

    $meta_values = array();
    foreach ( $posts as $post ) {
        $meta_values[] = get_post_meta( $post->ID, $meta_key, true );
    }

    return array_unique( $meta_values );

}