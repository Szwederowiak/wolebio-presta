
<section class="">
  cimcirimcim
  <h2 class="h2 products-section-title text-uppercase">
    {l s='Popular Products' d='Shop.Theme.Catalog'}
  </h2>

  {*{include file="catalog/_partials/productlist.tpl" products=$products cssClass="" productClass=""}*}



  <a class="all-product-link float-xs-left float-md-right h4" href="{$allProductsLink}">
    {l s='All products' d='Shop.Theme.Catalog'}<i class="material-icons">&#xE315;</i>
  </a>
</section>


<section class="py-10 lg:py-16">
    <div id="featured-products-slider" class="py-8 md:py-12 lg:py-16">
        <div class="container relative">
            <div class="swiper">
                <div class="swiper-wrapper">
                    {foreach from=$products item="product" key="position"}
                      <div class="swiper-slide">
                        {include file="catalog/_partials/miniatures/product.tpl" product=$product position=$position}
                      </div>
                    {/foreach}
                </div>
            </div>

            <div class="slider-arrow swiper-prev right-full top-1/2 md:translate-x-1/2 -translate-y-1/2 absolute z-10"><i class="fa-solid fa-chevron-left"></i></div>
            <div class="slider-arrow swiper-next left-full top-1/2 md:-translate-x-1/2 -translate-y-1/2 absolute z-10"><i class="fa-solid fa-chevron-right"></i></div>
            <div class="flex items-center justify-center gap-x-4" id="about-slider"></div>
        </div>
    </div>
</section>
