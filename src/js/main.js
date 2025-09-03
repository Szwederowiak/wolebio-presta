import "./../css/style.css";
import "./../css/dev.css";
// import "@fontsource-variable/rubik/wght.css";
// import "@fontsource-variable/rubik/wght-italic.css";
// import "@fortawesome/fontawesome-free/css/all.min.css";
import 'swiper/swiper-bundle.css';
import { Pagination, Navigation } from 'swiper/modules';
import Swiper from 'swiper';
import Global from "./modules/global";

class Home {
    constructor() {
        this.init();

        this.homeSlider;
        this.featuredProductsSlider;
        this.aboutSlider;
        this.partnersSlider;
        this.reviewsSlider;
    }

    init = () => {
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
                slidesPerView: 1,
                spaceBetween: 10,
                slidesPerGroup: 1,
                loop: true,
                loopFillGroupWithBlank: true,
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
    }

    bindReviewsSlider = () => {
        this.reviewsSlider = new Swiper('#reviews-slider .swiper',
            {
                slidesPerView: 1,
                spaceBetween: 10,
                slidesPerGroup: 1,
                loop: true,
                loopFillGroupWithBlank: true,
                // modules: [Navigation],
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
                // modules: [Navigation],
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
                // modules: [Navigation],
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