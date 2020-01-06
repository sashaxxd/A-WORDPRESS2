<div id="acters_catalog_cont">
        <div id="catalog_cont">
            <div class="row">
                <div class="col-1">
                    <div id="acters_Text17">
                    <span id="acters_uid1">АКТЕРЫ ВО ВСЕ ТЯЖКИЕ </span>


                        <div id="filters_f" style="padding: 5px;">
                            <form

                                    method="GET" id="filter">
                                <?php
                                $meta_ves = get_meta_values( 'ves', 'post' );
                                ?>
                                <select name="ves" style="border: 1px solid #296029;"><option value="">Выбор веса...</option>
                                    <?php  foreach ($meta_ves as $value ) : ?>
                                        <option value="<?= $value ?>"

                                            <?php if(isset($_GET['ves']) && $_GET['ves'] == $value):?>
                                               selected
                                            <?php endif; ?>

                                        > <?= $value ?> </option>
                                    <?php  endforeach; ?>
                                </select>

                                <label>
                                    <input type="radio" name="date" value="ASC" style="border: 1px solid #296029;"
                                        <?php if(isset($_GET['date']) && $_GET['date'] == 'ASC'):?>
                                            checked
                                        <?php endif; ?>

                                    />  Дата: по возрастанию
                                </label>
                                <label>
                                    <input type="radio" name="date" value="DESC"  style="border: 1px solid #296029;"
                                        <?php if(isset($_GET['date']) && $_GET['date'] == 'DESC'):?>
                                            checked
                                        <?php endif; ?>
                                    /> Дата: по убыванию
                                </label>

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

<!--                    --><?php
//                    global $wp_query;
//
//                    $i = 0;
//                    $paged = get_query_var('paged') ? get_query_var('paged') : 1;
//                    //                echo 'Мы находимся на странице: '. $paged;
//                    /*Чтобы работала штатная пагинация надо в массив запрос добавить параметр 'paged'=>$paged*/
//
//                    $wp_query = new WP_Query(['category_name' => 'acters', 'orderby' => 'date', 'order' => 'DESC',  'paged' => $paged, 'posts_per_page' => '2',]);
//
//
//
//
//                    ?>

                    <?php if ($wp_query->have_posts()) : while ($wp_query->have_posts()) : $wp_query->the_post(); ?>
                        <?php $i++ ?>
                        <div class="col-1 posts_m">
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

                                <div id="Shape1" style="background-image: url(<?php the_field("photo_act", get_the_ID()); ?>);">

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

                    <?php endif; ?>

                </div>
            </div>
            <!-- Пагинация -->
            <div class="gr" style="background-color: #296029; margin-bottom: 20px; padding: 10px;">
                <?php
                $args = array(
                    'show_all'     => false, // показаны все страницы участвующие в пагинации
                    'end_size'     => 1,     // количество страниц на концах
                    'mid_size'     => 1,     // количество страниц вокруг текущей
                    'prev_next'    => true,  // выводить ли боковые ссылки "предыдущая/следующая страница".
//            'prev_text'    => __('« НАЗАД'),
//            'next_text'    => __('ДАЛЕЕ »'),
                    'add_args'     => false, // Массив аргументов (переменных запроса), которые нужно добавить к ссылкам.
                    'add_fragment' => '',     // Текст который добавиться ко всем ссылкам.
                    'screen_reader_text' => __( 'Posts navigation' ),
                );

                the_posts_pagination( $args ); ?>



            </div>

        </div>

    </div>
