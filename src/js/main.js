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
        this.bindReviewsSlider();
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