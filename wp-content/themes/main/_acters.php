<div class="wrapper">
    <div class="content">
<?php get_header(); ?>
<?php
/*
Template Name: Страница для актеров
Template Post Type: post, page, product
*/
?>


<div id="acters_LayoutGrid8">
    <div id="LayoutGrid8">
        <div class="row">
            <div class="col-1">
                <div id="acters_Text14">
                    <?php dynamic_sidebar( 'true_hleb' ); ?>

                    <span id="acters_uid0">
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
<div id="acters_catalog_cont">
    <div id="catalog_cont">
        <div class="row">
            <div class="col-1">
                <div id="acters_Text17">
                    <span id="acters_uid1">АКТЕРЫ ВО ВСЕ ТЯЖКИЕ</span>
                </div>
                <div id="acters_LayoutGrid3">
                    <div id="LayoutGrid3">
                        <div class="row">
                            <div class="col-1">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="acters_catal_cont">
    <div id="catal_cont">
        <div class="row">

            <?php
            if ( have_posts() ) : // если имеются записи в блоге.

                query_posts('cat=2');   // указываем ID рубрик, которые необходимо вывести.
                while (have_posts()) : the_post();  // запускаем цикл обхода материалов блога
                    ?>
                    <div class="col-1">
                        <div id="acters_catal_cont1">
                            <div id="catal_cont1">
                                <div class="row">
                                    <div class="col-1">
                                        <div id="acters_Text18">
                                            <a href="<?php the_permalink(); ?>">
                                                <span id="acters_uid2"><?php the_title(); the_ID();?></span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="acters_Shape1">
                            <!--                    <div class="sfd" style="color: green; font-size: 20px;">-->
                            <!---->
                            <!--                        --><?php //the_field("photo_act", get_the_ID()); ?>
                            <!--                    </div>-->
                            <div id="Shape1" style="background-image: url(<?php the_field("photo_act", get_the_ID()); ?>);">
                                <!--                        <img src=" --><?php //the_field("photo_act", get_the_ID()); ?><!--" alt="" style="width: 90px;">-->
                            </div>
                        </div>
                        <div id="acters_cat_bl1">
                            <div id="cat_bl1">
                                <div class="row">
                                    <div class="col-1">
                                        <div id="acters_Text10">
                                            <span id="acters_uid3"><?php the_content(); ?></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="line_block"></div>
                    </div>
                    <?php
                endwhile;  // завершаем цикл.
            endif;
            /* Сбрасываем настройки цикла. Если ниже по коду будет идти еще один цикл, чтобы не было сбоя. */
            wp_reset_query();
            ?>
        </div>
    </div>
</div>
    </div>
<?php get_footer(); ?>

</div>