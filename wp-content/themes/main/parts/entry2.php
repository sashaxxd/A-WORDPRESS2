<div class="wrapper">
    <div class="content">
        <?php get_header(); ?>

        <div id="main-content">
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
                    <span id="acters_uid1">АКТЕРЫ ВО ВСЕ ТЯЖКИЕ   <?php

                        //                        echo STYLESHEETPATH . "/assets/css/single-acters.css";
                        ?></span>
                                <!--                    --><?php
                                //                    // вытаскиваем все рубрики в массив $categories, описание параметров функции смотрите чуть ниже
                                //                    $categories = get_terms('category', 'orderby=name&hide_empty=0');
                                //
                                //                    // если рубрики, соответствующие заданным параметрам, существуют,
                                //                    if($categories){
                                //
                                //                        // тогда создаем выпадающий список из них
                                //                        echo '<select>';
                                //
                                //                        // обращаемся к каждому объекту массива (в данном случае рубрика)
                                //                        foreach ($categories as $cat){
                                //
                                //                            // выводим элемент списка, где атрибут value равен ID рубрики, а $cat->name - название рубрики
                                //                            echo "<option value='{$cat->term_id}'>{$cat->name}</option>";
                                //                        }
                                //                        echo '</select>';
                                //                    }
                                //                    ?>

                                <div id="filters_f" style="padding: 5px;">
                                    <form

                                        method="GET" id="filter">
                                        <!--                        --><?php //$terms = get_term(2);
                                        //                         Debug($terms)?>
                                        <!--                        --><?php
                                        //                        if( $terms = get_terms( array( 'taxonomy' => 'category', 'orderby' => 'name' ) ) ) :
                                        //
                                        //                            echo '<select name="categoryfilter" style="border: 1px solid #296029;"><option value="">Выбор категории...</option>';
                                        //                            foreach ( $terms as $term ) :
                                        //                                echo '<option value="' . $term->term_id . '">' . $term->name . '</option>'; // ID of the category as the value of an option
                                        //                            endforeach;
                                        //                            echo '</select>';
                                        //                        endif;
                                        //                        ?>
                                        <input type="hidden" name="category" value="<?php
                                        $category = get_queried_object();
                                        echo $category->term_id;
                                        ?>"/>

                                        <input type="text" name="ves" placeholder="Bес" style="border: 1px solid #296029;"/>
                                        <!--                        <input type="text" name="price_min" placeholder="Минимальный вес" style="border: 1px solid #296029;"/>-->
                                        <!--                        <input type="text" name="price_max" placeholder="Максимальный вес" style="border: 1px solid #296029;"/>-->
                                        <label>
                                            <input type="radio" name="date" value="ASC" style="border: 1px solid #296029;"/>  Дата: по возрастанию
                                        </label>
                                        <label>
                                            <input type="radio" name="date" value="DESC" selected="selected" style="border: 1px solid #296029;"/> Дата: по убыванию
                                        </label>
                                        <!--                        <label>-->
                                        <!--                            <input type="checkbox" name="featured_image" /> Только с миниатюрой-->
                                        <!--                        </label>-->
                                        <button style="background-color: #296029; color: white; padding: 3px;">ФИЛЬТРОВАТЬ</button>
                                        <input type="hidden" name="action" value="myfilter">
                                    </form>
                                </div>


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


            <div id="response">
                <div id="acters_catal_cont">
                    <div id="catal_cont">
                        <div class="row">

                            <?php
                            global $wp_query;

                            $i = 0;
                            $paged = get_query_var('paged') ? get_query_var('paged') : 1;
                            echo 'Мы находимся на странице: '. $paged;
                            /*Чтобы работала штатная пагинация надо в массив запрос добавить параметр 'paged'=>$paged*/
                            $wp_query = new WP_Query(['category_name' => 'acters', 'orderby' => 'date', 'order' => 'ASC',  'paged' => $paged, 'posts_per_page' => '2',]);


                            ?>

                            <?php if ($wp_query->have_posts()) : while ($wp_query->have_posts()) : $wp_query->the_post(); ?>
                                <?php $i++ ?>
                                <div class="col-1">
                                    <div id="acters_catal_cont1">
                                        <div id="catal_cont1">
                                            <div class="row">
                                                <div class="col-1">
                                                    <div id="acters_Text18">
                                                        <a href="<?= get_the_permalink() ?>" style="color: white;">
                                                            <span id="acters_uid2"><?php the_title() ?></span>
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
                                                        <span id="acters_uid3"><?php the_content() ?></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="line_block"></div>
                                </div>
                                <?php if ($i == 2):?>
                                    <div class="line_bl" style="width: 100%; height: 40px; float: left;"></div>
                                <?php endif; ?>

                            <?php endwhile; ?>
                            <?php else: ?>

                                <!--                --><?php //wp_reset_query(); ?>
                            <?php endif; ?>

                        </div>
                    </div>
                    <!-- Пагинация -->
                    <div class="gr" style="background-color: green;">
                        <?php
                        $args = array(
                            'show_all'     => false, // показаны все страницы участвующие в пагинации
                            'end_size'     => 1,     // количество страниц на концах
                            'mid_size'     => 1,     // количество страниц вокруг текущей
                            'prev_next'    => true,  // выводить ли боковые ссылки "предыдущая/следующая страница".
                            'prev_text'    => __('« Previous'),
                            'next_text'    => __('Next »'),
                            'add_args'     => false, // Массив аргументов (переменных запроса), которые нужно добавить к ссылкам.
                            'add_fragment' => '',     // Текст который добавиться ко всем ссылкам.
                            'screen_reader_text' => __( 'Posts navigation' ),
                        );

                        the_posts_pagination( $args ); ?>

                    </div>

                </div>

            </div>
        </div>

        <?php get_footer(); ?>
    </div>