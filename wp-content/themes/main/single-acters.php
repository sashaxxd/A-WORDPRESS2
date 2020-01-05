
<div class="wrapper">
    <div class="content">
        <?php get_header(); ?>

<div class="act_s">
<div id="single_acters_LayoutGrid_single_acters8">
    <div id="LayoutGrid_single_acters8">
        <div class="row">
            <div class="col-1">
                <div id="single_acters_Text14">
                    <?php dynamic_sidebar( 'true_hleb' ); ?>
                    <div class="dsf" style="font-size: 10px;"></div>
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

<div id="s_catal_cont">
    <div id="catal_cont">
        <div class="row">
            <div class="col-1">
                <div id="s_catal_cont1">
                    <div id="catal_cont1">
                        <div class="row">
                            <div class="col-1">
                                <div id="s_Text18">
                                    <span id="s_uid0"><?php the_title(); ?></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="s_Shape1" >
                    <div id="Shape1" style="background-image: url(<?php the_field("photo_act", get_the_ID()); ?>);"></div>
                </div>
                <input type="submit" id="button_call_header" onclick="$('#modal_window').modal('show');return false;" name="" value="НАПИСАТЬ АКТЕРУ" class="button_m" >
            </div>
            <div class="col-2">
                <div id="s_cat_bl1">
                    <div id="cat_bl1">
                        <div class="row">
                            <div class="col-1">
                                <div id="s_Text10">
                                    <span id="s_uid1"><?php the_post(); the_content(); ?></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="line_block"></div>
            </div>
        </div>
    </div>
</div>


</div>
<?php get_footer(); ?>
</div>
