<section class="py-10 lg:py-16">
    <div class="container">
        <div class="mb-6 text-center lg:mb-8">
            <span class="mb-1 text-lg lg:text-2xl text-primary"
                >Najchętniej kupowane</span
            >
            <p class="text-7xl lg:text-15xl text-gray">
                {l s='Popular Products' d='Shop.Theme.Catalog'}
            </p>
        </div>
    </div>

    <div id="featured-products-slider" class="py-8 md:py-12 lg:py-16">
        <div class="container relative">
            <div class="swiper">
                <div class="swiper-wrapper">
                    {foreach from=$products item="product" key="position"}
                    <div class="swiper-slide">
                        {include file="catalog/_partials/miniatures/product.tpl"
                        product=$product position=$position}
                    </div>
                    {/foreach}
                </div>
            </div>

            <div class="absolute z-10 -translate-y-1/2 slider-arrow swiper-prev right-full top-1/2 md:translate-x-1/2">
                <i class="fa-solid fa-chevron-left"></i>
            </div>
            
            <div class="absolute z-10 -translate-y-1/2 slider-arrow swiper-next left-full top-1/2 md:-translate-x-1/2">
                <i class="fa-solid fa-chevron-right"></i>
            </div>

            <div class="flex items-center justify-center gap-x-4" id="about-slider"></div>
        </div>
    </div>
</section>
