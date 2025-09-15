{if $homeslider.slides}
    <div id="home-slider" class="relative">
        <div class="swiper">
            <div class="swiper-wrapper">
                {foreach from=$homeslider.slides item=slide name='homeslider'}
                    <div class="swiper-slide">
                        {if !empty($slide.url)}<a href="{$slide.url}">{/if}
                            <figure class="grid-container">
                                <img src="{$slide.image_url}" alt="{$slide.legend|escape}" loading="lazy" width="1110" height="340" class="w-full h-auto max-w-[1920px] mx-auto col-[1/2] sm:col-[1/4] row-[1/2]"/>
                                {if $slide.title || $slide.description}
                                    <figcaption class="caption col-[1/2] row-[1/2] sm:col-[2/3] hidden">
                                        <h2 class="display-1 text-uppercase">{$slide.title}</h2>
                                        <div class="caption-description">{$slide.description nofilter}</div>
                                    </figcaption>
                                {/if}
                            </figure>
                        {if !empty($slide.url)}</a>{/if}
                    </div>
                {/foreach}
            </div>
            <div class="swiper-pagination flex items-center gap-2 justify-center"></div>
        </div>
            <div class="grid-container !hidden md:grid top-1/2 absolute left-0 right-0 z-10 -translate-y-1/2 [&_>*]:col-[2/3] [&_>*]:row-[1/2] items-center pointer-events-none [&_>*]:pointer-events-auto">
            <div class="slider-arrow swiper-prev md:-translate-x-1/2 justify-self-start"><i class="fa-solid fa-chevron-left"></i></div>
            <div class="slider-arrow swiper-next md:translate-x-1/2 justify-self-end"><i class="fa-solid fa-chevron-right"></i></div>
        </div>
    </div>
{/if}