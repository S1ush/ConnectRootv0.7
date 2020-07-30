$(function onscroll() {
    $(window).on('scroll', function () {
<<<<<<< Updated upstream
        if ( $(window).scrollTop() > 10 ) {
            console.log("active length")
            $('.navbar').addClass('active');
=======
        if ( $(window).scrollTop() > 5 ) {
            console.log("active length 1")
            $('.navbar').addClass('active',1000,"easeIn");
>>>>>>> Stashed changes
        } else {
            console.log("disabled length 2")
            $('.navbar').removeClass('active',1000,"easeIn");
        }
    });
});