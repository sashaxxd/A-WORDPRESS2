/**
 * Сообщения флеш
 */
jQuery("#mess_message_close").on('click', function () {
    jQuery("#mess_msg-cntain").hide();
});

jQuery("#message_message_close_error").on('click', function () {
    jQuery("#message_msg-cntain-error").hide();
});

jQuery('.modal_button').click(function (){

    if (jQuery(".error-modal").find('*').length == 0) {
        if(!jQuery('div').is("#appen")){
            jQuery(".close").after('<div id="appen"></div>');
        }
        jQuery('#site_uid25').hide();
    }
});