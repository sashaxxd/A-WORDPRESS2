<?php
/*
Template Name: Тестовая
Template Post Type: post, page, product
*/
?>

<div class="wrapper">
    <div class="content">
        <?php get_header(); ?>
        <?php
        /*
        Template Name: Страница для актеров
        Template Post Type: post, page, product
        */
        ?>

        <?php
        $venue_model = mvc_model('MyVenue');
        $venues = $venue_model->find(array('limit' => 1));

        Debug( $venues );
        ?>



    </div>


<?php get_footer(); ?>