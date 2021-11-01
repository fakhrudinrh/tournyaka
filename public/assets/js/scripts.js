// Owl Carousel
$(".owl-carousel").owlCarousel({
    autoplay: true,
    autoplayhoverpause: true,
    autoplaytimeout: 50,
    nav: true,
    dots: false,
    loop: true,
    lazyLoad: true,
    navText: [
        '<div class="bg-orange rounded-circle align-items-center justify-content-center d-flex pe-1" style="font-size:6vh; height: 7vh; width: 7vh;"><i class="fas fa-angle-left"></i></div>',
        '<div class="bg-orange rounded-circle align-items-center justify-content-center d-flex ps-1" style="font-size:6vh; height: 7vh; width: 7vh;"><i class="fas fa-angle-right"></i></div>'
    ],
    responsive: {
        0 : {
            items : 1
        },
        768 : {
            items : 2
        },
        992 : {
            items : 3
        }
    }
});

// End Owl Carousel