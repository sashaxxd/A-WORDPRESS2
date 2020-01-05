
<div class="footer">
<div id="wb_main_footer">
    <div id="main_footer">
        <div class="row">
            <div class="col-1">
                <div id="wb_Image12">
                     <img src="<?php echo get_template_directory_uri() ?>/assets/images/breaking-bad-logo-kulon-brba.png" id="Image12" alt="">
                </div>
                <div id="wb_footer_txt1">
                    <span id="wb_uid32">ВО ВСЕ ТЯЖКИЕ</span><span id="wb_uid33">, 2019.</span>
                </div>
            </div>
            <div class="col-2">
                <input type="submit" id="Button3" onclick="$('#modal_window').modal('show');return false;" name="" value="ЗАКАЗАТЬ ЗВОНОК" class="button_m">
            </div>
            <div class="col-3">
<!--                <div id="wb_email_cont_f">-->
<!--                    <div id="email_cont_f">-->
<!--                        <div class="row">-->
<!--                            <div class="col-1">-->
<!--                                <div id="wb_email_img_f">-->
<!--                                    <div id="email_img_f"><i class="fa fa-envelope-o">&nbsp;</i></div>-->
<!--                                </div>-->
<!--                                <div id="wb_email_footer">-->
<!--                                    <span id="wb_uid34">Info@tehmachine.ru</span>-->
<!--                                </div>-->
<!--                            </div>-->
<!--                        </div>-->
<!--                    </div>-->
<!--                </div>-->
<!--                <div id="wb_phone_cont_f">-->
<!--                    <div id="phone_cont_f">-->
<!--                        <div class="row">-->
<!--                            <div class="col-1">-->
<!---->
<!--                                <div id="wb_phone_footer">-->
<!--                                    <span id="wb_uid35">Во все тяжкие</span>-->
<!--                                </div>-->
<!--                            </div>-->
<!--                        </div>-->
<!--                    </div>-->
<!--                </div>-->
            </div>
        </div>
    </div>
</div>






    <div id="modal_window" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-body">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <hr id="modal_line">
                    <div id="wb_mod_cont">
                        <div id="mod_cont">
                            <div class="row">
                                <div class="col-1">
                                    <div id="wb_modal_title">
                                        <span id="wb_uid36"><strong>ЗАПОЛНИТЕ ФОРМУ</strong></span>
                                    </div>
                                    <?php echo do_shortcode( '[contact-form-7 id="33" title="Заказать звонок"]' );   define ('WPCF7_AUTOP', false );?>

                                    <!--                                <input type="text" id="Editbox5" name="name" value="" spellcheck="false" placeholder="&#1042;&#1072;&#1096;&#1077; &#1080;&#1084;&#1103;">-->
                                    <!--                                <input type="text" id="Editbox6" name="name" value="" spellcheck="false" placeholder="&#1042;&#1072;&#1096; &#1090;&#1077;&#1083;&#1077;&#1092;&#1086;&#1085;*">-->

                                    <!--                                <input type="submit" id="Button2" onclick="$('#modal_window').modal('show');return false;" name="" value="ОТПРАВИТЬ" class="button_m">-->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>




    <div id="toTop">
        <div id="toTop_Container">
            <div id="wb_FontAwesomeIcon1">
                <a href="#header"><div id="FontAwesomeIcon1"><i class="fa fa-angle-up">&nbsp;</i></div></a></div>
        </div>
    </div>


    <!-- Сообщения -->

    <!--Удачно-->
    <div id="mess_msg-cntain">
        <div id="msg-cntain">
            <div class="row">
                <div class="col-1">
                    <div id="mess_message_ok">
                        <div id="message_ok">
                            <div class="row">
                                <div class="col-1">
                                    <div id="mess_message_text">
                                        <span id="mess_uid0">Ваше сообщение успешно отправлено в ближайшее время мы свяжемся с вами!</span>
                                    </div>
                                </div>
                                <div class="col-2">
                                    <div id="mess_message_close">
                                        <div id="message_close"><i class="fa fa-window-close">&nbsp;</i></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--Ошибка-->
    <div id="message_msg-cntain-error">
        <div id="msg-cntain-error">
            <div class="row">
                <div class="col-1">
                    <div id="message_message_error">
                        <div id="message_error">
                            <div class="row">
                                <div class="col-1">
                                    <div id="message_message_error_text">
                                        <span id="message_uid0">Ваше сообщение успешно отправлено в ближайшее время мы свяжемся с вами!</span>
                                    </div>
                                </div>
                                <div class="col-2">
                                    <div id="message_message_close_error">
                                        <div id="message_close_error"><i class="fa fa-window-close">&nbsp;</i></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>




<!-- end #footer -->
<?php wp_footer(); ?>
</body>
</html>