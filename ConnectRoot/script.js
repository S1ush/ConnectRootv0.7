$(function onscroll() {
    $(window).on('scroll', function () {
        if ( $(window).scrollTop() > 10 ) {
            console.log("active length")
            $('.navbar').addClass('active');
        } else {
            console.log("disabled length")
            $('.navbar').removeClass('active');
        }
    });
});