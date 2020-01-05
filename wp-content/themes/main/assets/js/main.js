$(document).ready(function() {
    /**
     * Кнопка вверх
     */
    $(function() {

        $(window).scroll(function() {

            if($(this).scrollTop() > 400) {

                $('#toTop').fadeIn();

            } else {

                $('#toTop').fadeOut();

            }

        });



    });
    /**
     * Плавный скрол вверх
     * @type {*}
     */
    $("a[href*='#header']").click(function(event)
    {
        event.preventDefault();
        $('html, body').stop().animate({ scrollTop: $('#wb_header').offset().top }, 600, 'linear');
    });
    $("#wb_menu ul li a").click(function(event)
    {
        $("#wb_menu input").prop("checked", false);
    });





    /**
     * Настройки крусели
     * @type {*}
     */
    var owl = $('.owl-carousel');
    owl.owlCarousel({
        items: 1,
        nav: true,
        dots: true,

        loop: true,
        // margin: 10,
        autoplay: true,
        autoplayTimeout: 5000,
        autoplayHoverPause: true
    });





});

/**
 * Cобытие после клика по форме Contact form 7
 */
// document.addEventListener( 'wpcf7submit', function( event ) {
//     if(event.detail.contactFormId=="33"){ // 32 это id формы для отслеживания
//         alert("Нажали");
//     }
// }, false );

/**
 * Cобытие после успешной отправки Contact form 7
 */
document.addEventListener( 'wpcf7mailsent', function( event ) {
    if(event.detail.contactFormId=="33"){ // 33 это id формы для отслеживания

        $('#modal_window').modal('hide')
        $('#mess_msg-cntain').show()
    }
}, false );


//
// document.addEventListener( 'wpcf7invalid', function( event ) {
//     if(event.detail.contactFormId=="33"){ //
//         alert("Формы не была отправлена, заполнены не все поля");
//     }
// }, false );