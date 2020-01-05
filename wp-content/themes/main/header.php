<!DOCTYPE html>
<html>
<head>

	<?php wp_head(); ?>
    <title><?php echo wp_get_document_title(); ?></title>
    
</head>
<body id="index" <?php body_class(); ?>>


<?php
// Глобальная переменная вордпресс
//Debug($wp_query );


//Debug(wp_get_nav_menu_items('Верхнее меню'));




?>





<div id="wb_header">
    <div id="header">
        <div class="row">
            <div class="col-1">
                <div id="wb_Image1">
                    <img src="<?php echo get_template_directory_uri() ?>/assets/images/breaking-bad-logo-kulon-brba.png" id="Image1" alt="">
                </div>
            </div>
            <div class="col-2">
            </div>
            <div class="col-3">
<!--                <div id="wb_email_cont_h">-->
<!--                    <div id="email_cont_h">-->
<!--                        <div class="row">-->
<!--                            <div class="col-1">-->
<!--                                <div id="wb_email_img">-->
<!--                                    <div id="email_img"><i class="fa fa-envelope-o">&nbsp;</i></div>-->
<!--                                </div>-->
<!--                                <div id="wb_email_header">-->
<!--                                    <span id="wb_uid0" class="size1"><strong>Info@tehmachine.ru</strong></span>-->
<!--                                </div>-->
<!--                            </div>-->
<!--                        </div>-->
<!--                    </div>-->
<!--                </div>-->
<!--                <div id="wb_phone_cont_h">-->
<!--                    <div id="phone_cont_h">-->
<!--                        <div class="row">-->
<!--                            <div class="col-1">-->
<!---->
<!--                                <div id="wb_phone_header">-->
<!--                                    <span id="wb_uid1"><strong>Во все тяжкие</strong></span>-->
<!--                                </div>-->
<!--                            </div>-->
<!--                        </div>-->
<!--                    </div>-->
<!--                </div>-->
            </div>
            <div class="col-4">
                <input type="submit" id="button_call_header" onclick="$('#modal_window').modal('show');return false;" name="" value="НАПИСАТЬ НАМ" class="button_m">
            </div>
        </div>
    </div>
</div>
<div id="wb_head_line_count">
    <div id="head_line_count">
        <div class="row">
            <div class="col-1">
                <div id="wb_LayoutGrid4">
                    <div id="LayoutGrid4">
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
<div id="wb_container_menu">
    <div id="container_menu">
        <div class="row">
            <div class="col-1">
                <div id="wb_menu">
                    <?php
                    $menu_items = wp_get_nav_menu_items('Верхнее меню');

                    foreach ($menu_items as $item) {
                        $item->subs = array();
                        $indexedItems[$item->ID] = $item;
                    }
                    $topLevel = array();
                    foreach ($indexedItems as $item) {
                        if ($item->menu_item_parent == 0) {
                            $topLevel[] = $item;
                        } else {
                            $indexedItems[$item->menu_item_parent]->subs[] = $item;
                        }
                    }
                    ?>
                    <label class="toggle" for="menu-submenu" id="menu-title"><span id="menu-icon"><span>&nbsp;</span><span>&nbsp;</span><span>&nbsp;</span></span></label>
                    <input type="checkbox" id="menu-submenu">
                    <ul class="menu" id="menu">


                        <?php foreach ($topLevel as $item) : ?>

                            <li><a href="<?= $item->url?>"><?= $item->title?>

                                <?php  if(!empty($item->subs)): ?><b class="arrow-down"></b><?php endif;?></a>
                            <?php  if(empty($item->subs)): ?></li><?php else:?><ul><?php endif;?>


                            <?php  if(!empty($item->subs)): ?>
                                <?php $i = 0; foreach ($item->subs as $item2) : ?>
                                    <?php $i++;?>
                                    <li><a href="<?= $item2->url?>"><?= $item2->title?></a></li><?php  if($i == count($item->subs)): ?></ul><?php endif;?>

                                <?php  endforeach; ?>
                            <?php endif; ?>

                        <?php  endforeach; ?>

<!--                        <li><a href="/">&#1043;&#1083;&#1072;&#1074;&#1085;&#1072;&#1103;</a></li>-->
<!--                        <li>-->
<!--                            <label for="menu-submenu-0" class="toggle">&#1050;&#1072;&#1090;&#1072;&#1083;&#1086;&#1075;&nbsp;&#1087;&#1088;&#1086;&#1076;&#1091;&#1082;&#1094;&#1080;&#1080;<b class="arrow-down"></b></label>-->
<!--                            <a href="http://">&#1050;&#1072;&#1090;&#1072;&#1083;&#1086;&#1075;&nbsp;&#1087;&#1088;&#1086;&#1076;&#1091;&#1082;&#1094;&#1080;&#1080;<b class="arrow-down"></b></a>-->
<!--                            <input type="checkbox" id="menu-submenu-0">-->
<!--                            <ul>-->
<!--                                <li>-->
<!--                                    <label for="menu-submenu-1" class="toggle">&#1054;&#1073;&#1086;&#1088;&#1091;&#1076;&#1086;&#1074;&#1072;&#1085;&#1080;&#1077;&nbsp;&#1040;&#1057;&#1050;&#1059;&#1069;<b class="arrow-down"></b></label>-->
<!--                                    <a href="http://">&#1054;&#1073;&#1086;&#1088;&#1091;&#1076;&#1086;&#1074;&#1072;&#1085;&#1080;&#1077;&nbsp;&#1040;&#1057;&#1050;&#1059;&#1069;<b class="arrow-left"></b></a>-->
<!--                                    <input type="checkbox" id="menu-submenu-1">-->
<!--                                    <ul>-->
<!--                                        <li><a href="http://">&#1044;&#1086;&#1087;&#1086;&#1083;&#1085;&#1080;&#1090;&#1077;&#1083;&#1100;&#1085;&#1086;&#1077;&nbsp;&#1086;&#1073;&#1086;&#1088;&#1091;&#1076;&#1086;&#1074;&#1072;&#1085;&#1080;&#1077;</a></li>-->
<!--                                        <li><a href="http://">&#1059;&#1089;&#1090;&#1088;&#1086;&#1081;&#1089;&#1090;&#1074;&#1072;&nbsp;&#1085;&#1080;&#1079;&#1082;&#1086;&#1074;&#1086;&#1083;&#1100;&#1090;&#1085;&#1099;&#1077;&nbsp;&#1082;&#1086;&#1084;&#1087;&#1083;&#1077;&#1082;&#1090;&#1085;&#1099;&#1077;</a></li>-->
<!--                                        <li><a href="http://">&#1059;&#1089;&#1090;&#1088;&#1086;&#1081;&#1089;&#1090;&#1074;&#1072;&nbsp;&#1089;&#1073;&#1086;&#1088;&#1072;&nbsp;&#1080;&nbsp;&#1087;&#1077;&#1088;&#1077;&#1076;&#1072;&#1095;&#1080;&nbsp;&#1076;&#1072;&#1085;&#1085;&#1099;&#1093;</a></li>-->
<!--                                    </ul>-->
<!--                                </li>-->
<!--                                <li><a href="http://">&#1059;&#1095;&#1077;&#1090;&nbsp;&#1101;&#1083;&#1077;&#1082;&#1090;&#1088;&#1086;&#1101;&#1085;&#1077;&#1088;&#1075;&#1080;&#1080;</a></li>-->
<!--                                <li><a href="http://">&#1059;&#1095;&#1077;&#1090;&nbsp;&#1090;&#1077;&#1087;&#1083;&#1072;&nbsp;&#1080;&nbsp;&#1089;&#1080;&#1089;&#1090;&#1077;&#1084;&#1099;&nbsp;&#1088;&#1077;&#1075;&#1091;&#1083;&#1080;&#1088;&#1086;&#1074;&#1072;&#1085;&#1080;&#1103;</a></li>-->
<!--                                <li><a href="http://">&#1059;&#1095;&#1077;&#1090;&nbsp;&#1074;&#1086;&#1076;&#1099;&nbsp;&#1080;&nbsp;&#1072;&#1088;&#1084;&#1072;&#1090;&#1091;&#1088;&#1072;&nbsp;&#1090;&#1088;&#1091;&#1073;&#1086;&#1087;&#1088;&#1086;&#1074;&#1086;&#1076;&#1085;&#1072;&#1103;</a></li>-->
<!--                            </ul>-->
<!--                        </li>-->
<!--                        <li><a href="http://">&#1057;&#1082;&#1072;&#1095;&#1072;&#1090;&#1100;&nbsp;&#1087;&#1088;&#1072;&#1081;&#1089;&#1083;&#1080;&#1089;&#1090;</a></li>-->
<!--                        <li><a href="http://">&#1050;&#1086;&#1085;&#1090;&#1072;&#1082;&#1090;&#1099;</a></li>-->
                    </ul>
                </div>
            </div>
            <div class="col-2">
                <form>
                    <div class="search"><input type="text" id="search" name="search" value="" spellcheck="false" placeholder="&#1055;&#1086;&#1080;&#1089;&#1082; &#1087;&#1086; &#1082;&#1072;&#1090;&#1072;&#1083;&#1086;&#1075;&#1091;">   <input type="submit" value="">
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<div id="wb_LayoutGrid7">
    <div id="LayoutGrid7">
        <div class="row">
            <div class="col-1">
                <div id="wb_line_pl2">
                    <div id="line_pl2">
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