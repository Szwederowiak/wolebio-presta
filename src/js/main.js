import "./../css/style.css";
import "./../css/dev.css";
// import "@fontsource-variable/rubik/wght.css";
// import "@fontsource-variable/rubik/wght-italic.css";
// import "@fortawesome/fontawesome-free/css/all.min.css";
import 'swiper/swiper-bundle.css';
import { Pagination, Navigation } from 'swiper/modules';
import Swiper from 'swiper';

class Home {
    constructor() {
        console.log('test');
        this.init();

        this.aboutSlider = null;
        this.partnersSlider = null;
        this.reviewsSlider = null;
    }

    init = () => {
<<<<<<< Updated upstream
        this.bindReviewsSlider();
=======
        document.addEventListener('DOMContentLoaded', () => {
            new Global();

            this.bindHomeSlider();
            this.bindFeaturedProductsSlider()
            this.bindAboutSlider();
            this.bindPartnersSlider();
            this.bindReviewsSlider();

            // dev
            document.querySelectorAll('a').forEach(a => {
                a.addEventListener('click', e => {
                    e.preventDefault();
                })
            });
            // /dev
        });
    }

    bindHomeSlider = () => {
        this.homeSlider = new Swiper('#home-slider .swiper', {
            modules: [Pagination],
            loop: true,
            pagination: {
                el: ".swiper-pagination",
                clickable: true,
                bulletClass: "bg-white h-2 md:h-4 aspect-square rounded-full block",
                bulletActiveClass: "!bg-primary",
            },
            on: {
                init: () => {
                    document.querySelector('#home-slider .swiper-prev').addEventListener('click', () => {
                        this.homeSlider.slidePrev();
                    });

                    document.querySelector('#home-slider .swiper-next').addEventListener('click', () => {
                        this.homeSlider.slideNext();
                    });
                }
            }
        });
    }

    bindFeaturedProductsSlider = () => {
        this.featuredProductsSlider = new Swiper('#featured-products-slider .swiper',
            {
                modules: [Pagination],
                slidesPerView: 'auto',
                spaceBetween: 10,
                centeredSlides: true,
                pagination: {
                    el: "#featured-products-slider .swiper-pagination",
                    clickable: true,
                    bulletClass: "bg-gray-100 h-2 md:h-4 aspect-square rounded-full block",
                    bulletActiveClass: "!bg-primary",
                },
                breakpoints: {
                    768: {
                        slidesPerView: 2,
                        loop: true,
                        centeredSlides: false
                    },
                    1200: {
                        slidesPerView: 3,
                        loop: true,
                        centeredSlides: false
                    }
                },
                on: {
                    init: () => {
                        document.querySelector('#featured-products-slider .swiper-prev').addEventListener('click', () => {
                            this.featuredProductsSlider.slidePrev();
                        });

                        document.querySelector('#featured-products-slider .swiper-next').addEventListener('click', () => {
                            this.featuredProductsSlider.slideNext();
                        });
                    }
                }
            }
        );
>>>>>>> Stashed changes
    }

    bindReviewsSlider = () => {
        this.reviewsSlider = new Swiper('#reviews-slider',
            {
                slidesPerView: 1,
                spaceBetween: 10,
                slidesPerGroup: 1,
                loop: true,
                loopFillGroupWithBlank: true,
                modules: [Navigation],
                breakpoints: {
                    768: {
                    },
                    1200: {
                        slidesPerView: 2,
                    },
                    1680: {
                        slidesPerView: 3,
                    },
                },
                navigation: {
                    nextEl: '#reviews-slider .swiper-next',
                    prevEl: '#reviews-slider .swiper-prev',
                },
            }
        );
    }

    // bindAboutSlider = () => {
    // console.log(document.getElementById("about-slider"));
    // }

    // bindPartnersSlider = () => {
    // console.log(document.getElementById("partners-slider"));
    // }
}

new Home();