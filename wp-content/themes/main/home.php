<?php get_header(); ?>
<?php
/*
Template Name: Главная
Template Post Type: post, page, product
*/
?>



<div id="wb_LayoutGrid1">
    <div id="LayoutGrid1">
        <div class="row">
            <div class="col-1">
                <div id="owl-demo" class="owl-carousel owl-theme">
                    <?php $sliders = get_field('slider'); ?>
                    <!--<div class="test" style="font-size: 20px; color: green">-->
                    <!--    --><?php //Debug($sliders);?>
                    <!--</div>-->
                    <?php foreach ($sliders as $slide): ?>

                    <div class="item">
                        <div class="spacer"><?=$slide['title']?></div>
                        <div class="spacer2"><?=$slide['description']?></div>
                        <img src="<?=$slide['sizes']['1536x1536']?>" class="in_slide_img" alt="The Last of us">
                    </div>
                    <?php endforeach;?>


                </div>
            </div>
        </div>
    </div>
</div>


<div id="wb_catalog_cont">
    <div id="catalog_cont">
        <div class="row">
            <div class="col-1">
                <div id="wb_Text17">
                    <span id="wb_uid2">АКТЕРЫ</span>
                </div>
                <div id="wb_LayoutGrid3">
                    <div id="LayoutGrid3">
                        <div class="row">
                            <div class="col-1">
                            </div>
                        </div>
                    </div>
                </div>



                <nav class="animated bounceInDown">
                    <?php
                    $category_acters = get_the_category();
                    $catID = $category_acters[0]->term_id;
                    $args = array(
                        'numberposts' => -1,
                        'category' => $catID
                    );
                    $actersPosts = get_posts($args);

                    ?>

                    <ul>

                        <?php foreach ($actersPosts as $acter):?>
                            <li>
                                <a href="#message">

                                    <?= $acter->post_title ?>
                                </a>
                            </li>
                        <?php endforeach; ?>



                    </ul>
                </nav>
            </div>
            <div class="col-2">
                <div id="wb_Text1">
                    <span id="wb_uid3"><?= the_title() ?></span>
                </div>
                <div id="wb_LayoutGrid2">
                    <div id="LayoutGrid2">
                        <div class="row">
                            <div class="col-1">
                            </div>
                        </div>
                    </div>
                </div>
                <div id="wb_Text2">
                    <span id="wb_uid4"><?= the_post(); the_content(); ?><br><br></span>
                </div>


                <div id="wb_block_h1">
                    <div id="block_h1">
                        <div class="row">
                            <?php $comments = get_comments() ?>

                            <?php foreach ($comments as $comment):?>
                            <div class="col-1">
                                <div class="line_block"></div>
                                <div id="wb_Text13">
                                    <span id="wb_uid5">✔&nbsp; </span><span id="wb_uid6"><?= $comment->comment_content ?></span>
                                </div>
                            </div>
                            <?php endforeach; ?>

                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
<div id="wb_LayoutGrid10">
    <div id="LayoutGrid10">
        <div class="row">
            <div class="col-1">
            </div>
        </div>
    </div>
</div>
<div id="wb_title_form">
    <div id="title_form">
        <div class="row">
            <div class="col-1">
                <div id="wb_Text9">
                    <span id="wb_uid17">Отправьте заявку прямо сейчас</span>
                </div>
                <div id="wb_LayoutGrid6">
                    <div id="LayoutGrid6">
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
<div id="wb_form_gl_container">
    <div id="form_gl_container">
        <div class="row">
            <div class="col-1">
                <input type="text" id="Editbox1" name="name" value="" spellcheck="false" placeholder="&#1042;&#1072;&#1096;&#1077; &#1080;&#1084;&#1103;">
                <input type="text" id="Editbox2" name="lastname" value="" spellcheck="false" placeholder="&#1060;&#1072;&#1084;&#1080;&#1083;&#1080;&#1103;">
            </div>
            <div class="col-2">
                <input type="text" id="Editbox3" name="phone" value="" spellcheck="false" placeholder="&#1042;&#1072;&#1096;  &#1058;&#1077;&#1083;&#1077;&#1092;&#1086;&#1085;*">
                <input type="text" id="Editbox4" name="email" value="" spellcheck="false" placeholder="&#1042;&#1072;&#1096;  Email*">
            </div>
            <div class="col-3">
                <textarea name="message" id="TextArea1" rows="2" cols="26" spellcheck="false" placeholder="&#1063;&#1090;&#1086; &#1074;&#1099; &#1093;&#1086;&#1090;&#1080;&#1090;&#1077; &#1091;&#1079;&#1085;&#1072;&#1090;&#1100;?"></textarea>
            </div>
            <div class="col-4">
                <input type="submit" id="Button1" name="" value="ОТПРАВИТЬ" class="button_m">
            </div>
        </div>
    </div>
</div>
<div id="wb_form_bott">
    <div id="form_bott">
        <div class="row">
            <div class="col-1">
                <div id="wb_Text60">
                    <span id="wb_uid18">* - поля, обязательные к заполнению</span>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="wb_LayoutGrid8">
    <div id="LayoutGrid8">
        <div class="row">
            <div class="col-1">
            </div>
        </div>
    </div>
</div>
<div id="wb_zad_title">
    <div id="zad_title">
        <div class="row">
            <div class="col-1">
                <div id="wb_Text10">
                    <span id="wb_uid19">В фильме снимались:</span>
                </div>
                <div id="wb_LayoutGrid9">
                    <div id="LayoutGrid9">
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
<div id="wb_zad_block1">
    <div id="zad_block1">
        <div class="row">
            <div class="col-1">
            </div>
            <?php $acters= get_field('acters'); ?>
<!--            <div class="test" style="font-size: 20px; color: green">-->
<!--                --><?php //Debug($acters);?>
<!--            </div>-->
<?php foreach ($acters as $acter): ?>
            <div class="col-2">
                <div id="wb_Image2">
                    <img src="<?= $acter['photo_act']['sizes']['thumbnail']?>" id="Image2" alt="">
                </div>
                <div id="wb_Text11">
                    <span id="wb_uid20"> </span><span id="wb_uid21"><?= $acter['desc_acter']?></span>
                </div>
            </div>
<?php endforeach; ?>
            <div class="col-7">
            </div>
        </div>
    </div>
</div>


<?php get_footer(); ?>