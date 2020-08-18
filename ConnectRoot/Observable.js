// navbar

$(function onscroll() {
    $(window).on('scroll', function () {
        if ( $(window).scrollTop() > 5 ) {
            console.log("active length")
            $('.navbar').addClass('active');
        } else {
            console.log("disabled length")
            $('.navbar').removeClass('active');
        }
    });
});

// about-us page transitions

$(document).ready(function() {
    $(window).scroll( function(){
        $('.fade-in-left').each( function(i){
            
            var bottom_of_element = $(this).offset().top + $(this).outerHeight();
            var bottom_of_window = $(window).scrollTop() + $(window).height();
            
            if( bottom_of_window > bottom_of_element ){
                $(this).animate({'opacity':'1','margin-left':'0px'},1000);
            }
            
        }); 
    });
});

$(document).ready(function() {
    $(window).scroll( function(){
        $('.fade-in-right').each( function(i){
            
            var bottom_of_element = $(this).offset().top + $(this).outerHeight();
            var bottom_of_window = $(window).scrollTop() + $(window).height();
            
            if( bottom_of_window > bottom_of_element ){
                $(this).animate({'opacity':'1','margin-right':'0px'},1000);
            }
            
        }); 
    });
});