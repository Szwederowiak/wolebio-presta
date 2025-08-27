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

        this.aboutSlider;
        this.partnersSlider;
        this.reviewsSlider;
    }

    init = () => {
        this.bindAboutSlider();
        this.bindPartnersSlider();
        this.bindReviewsSlider();
    }

    bindReviewsSlider = () => {
        this.reviewsSlider = new Swiper('#reviews-slider .swiper',
            {
                slidesPerView: 1,
                spaceBetween: 10,
                slidesPerGroup: 1,
                loop: true,
                loopFillGroupWithBlank: true,
                modules: [Navigation],
                breakpoints: {
                    768: {
                        slidesPerView: 1,
                    },
                    1200: {
                        slidesPerView: 2,
                    },
                    1680: {
                        slidesPerView: 3,
                    },
                },

                on: {
                    init: () => {
                        document.querySelector('#reviews-slider .swiper-prev').addEventListener('click', () => {
                            this.reviewsSlider.slidePrev();
                        });

                        document.querySelector('#reviews-slider .swiper-next').addEventListener('click', () => {
                            this.reviewsSlider.slideNext();
                        });
                    }
                }
            }
        );
    }

    bindAboutSlider = () => {
        this.aboutSlider = new Swiper('#about-slider .swiper',
            {
                slidesPerView: 1,
                spaceBetween: 10,
                slidesPerGroup: 1,
                loop: true,
                loopFillGroupWithBlank: true,
                modules: [Navigation],
                breakpoints: {
                    768: {
                        slidesPerView: 1,
                    },
                    1200: {
                        slidesPerView: 2,
                    },
                    1680: {
                        slidesPerView: 3,
                    },
                },

                on: {
                    init: () => {
                        document.querySelector('#about-slider .swiper-prev').addEventListener('click', () => {
                            this.aboutSlider.slidePrev();
                        });

                        document.querySelector('#about-slider .swiper-next').addEventListener('click', () => {
                            this.aboutSlider.slideNext();
                        });
                    }
                }
            }
        );
    }

    bindPartnersSlider = () => {
        this.partnersSlider = new Swiper('#partners-slider .swiper',
            {
                slidesPerView: 1,
                spaceBetween: 10,
                slidesPerGroup: 1,
                loop: true,
                loopFillGroupWithBlank: true,
                modules: [Navigation],
                breakpoints: {
                    768: {
                        slidesPerView: 2,
                    },
                    1200: {
                        slidesPerView: 3,
                    },
                    1680: {
                        slidesPerView: 4,
                    },
                },

                on: {
                    init: () => {
                        document.querySelector('#partners-slider .swiper-prev').addEventListener('click', () => {
                            this.partnersSlider.slidePrev();
                        });

                        document.querySelector('#partners-slider .swiper-next').addEventListener('click', () => {
                            this.partnersSlider.slideNext();
                        });
                    }
                }
            }
        );
    }
}

new Home();