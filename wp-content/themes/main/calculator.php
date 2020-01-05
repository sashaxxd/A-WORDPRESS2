<?php get_header(); ?>
<?php
/*
Template Name: Страница для калькулятора
Template Post Type: post, page, product
*/
?>



<div class="act_s">
    <div id="single_acters_LayoutGrid_single_acters8">
        <div id="LayoutGrid_single_acters8">
            <div class="row">
                <div class="col-1">
                    <div id="single_acters_Text14">
                        <?php dynamic_sidebar( 'true_hleb' ); ?>
                        <div class="dsf" style="font-size: 10px;"
                        <?php
                        get_page_template();
                        ?>
                    </div>
                    <span id="single_acters_uid0">
                        <?php

                        if(function_exists('bcn_display'))
                        {
                            bcn_display();
                        }
                        ?>
                    </span>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="gf" style="color: #00a699;">
    <?php the_title()?>
    <?php




    the_post();
    the_content();
    ?>
</div>
</div>
<?php get_footer(); ?>

