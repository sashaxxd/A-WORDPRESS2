
$(document).ready(function(){


    $(document).on("submit", "#filter", function(e){
        e.preventDefault();
        alert(MyAjax.ajaxurl);

        var filter = $('#filter');
        $.ajax({
            // url:filter.attr('action'),
            url:MyAjax.ajaxurl,
            data:filter.serialize(), // form data
            type:filter.attr('method'), // POST
            beforeSend:function(xhr){
                filter.find('button').text('ФИЛЬТРУЕМ...'); // changing the button label
            },
            success:function(data){
                filter.find('button').text('ФИЛЬТРОВАТЬ'); // changing the button label back
                $('#main-content').html(data); // insert data
                // window.history.pushState( data, null, null);
                history.pushState(data, '',  window.location.pathname + '?'  + filter.serialize());
            }
        });

        return false;
    });
    $(document).on("click", ".nav-links a", function(e){
        e.preventDefault();

        var page = $(this).html();
        if (page === 'Назад'){
            page =  parseInt($('.nav-links .current').html()) - 1;
        }
        if (page === 'Далее'){
            page =  parseInt($('.nav-links .current').html()) + 1;
        }

        alert(page);
        var filter = $('#filter');
        $.ajax({
            // url:filter.attr('action'),
            url:MyAjax.ajaxurl,
            data:filter.serialize() + '&page=' + page,  // form data
            type:filter.attr('method'), // POST
            // beforeSend:function(xhr){
            //     filter.find('button').text('ФИЛЬТРУЕМ...'); // changing the button label
            // },
            success:function(data){
                filter.find('button').text('ФИЛЬТРОВАТЬ'); // changing the button label back
                $('#main-content').html(data); // insert data
                history.pushState(data, '',  window.location.pathname + '?' + filter.serialize() + '&page=' + page);
            }
        });

        return false;

    });


    $(window).bind('popstate', function(){
        alert('dsf')
        console.log(history.state)
                if(history.state !== null){
                    $('#main-content').html(history.state);
                }


    });
    console.log(history.state)
});



