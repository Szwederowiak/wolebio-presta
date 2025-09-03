{*
  {block name='product_miniature_item'}
    <div class="js-product product{if !empty($productClasses)} {$productClasses}{/if}">
      <article class="product-miniature js-product-miniature" data-id-product="{$product.id_product}" data-id-product-attribute="{$product.id_product_attribute}">
        <div class="thumbnail-container">
          <div class="thumbnail-top">

            {block name='product_reviews'}
              {hook h='displayProductListReviews' product=$product}
            {/block}
            
            {block name='product_thumbnail'}
              {if $product.cover}
                <a href="{$product.url}">
                  <picture>
                    {if !empty($product.cover.bySize.home_default.sources.avif)}<source srcset="{$product.cover.bySize.home_default.sources.avif}" type="image/avif">{/if}
                    {if !empty($product.cover.bySize.home_default.sources.webp)}<source srcset="{$product.cover.bySize.home_default.sources.webp}" type="image/webp">{/if}
                    <img
                      src="{$product.cover.bySize.home_default.url}"
                      alt="{if !empty($product.cover.legend)}{$product.cover.legend}{else}{$product.name|truncate:30:'...'}{/if}"
                      loading="lazy"
                      data-full-size-image-url="{$product.cover.large.url}"
                      width="{$product.cover.bySize.home_default.width}"
                      height="{$product.cover.bySize.home_default.height}"
                    />
                  </picture>
                </a>
              {else}
                <a href="{$product.url}">
                  <picture>
                    {if !empty($urls.no_picture_image.bySize.home_default.sources.avif)}<source srcset="{$urls.no_picture_image.bySize.home_default.sources.avif}" type="image/avif">{/if}
                    {if !empty($urls.no_picture_image.bySize.home_default.sources.webp)}<source srcset="{$urls.no_picture_image.bySize.home_default.sources.webp}" type="image/webp">{/if}
                    <img
                      src="{$urls.no_picture_image.bySize.home_default.url}"
                      loading="lazy"
                      width="{$urls.no_picture_image.bySize.home_default.width}"
                      height="{$urls.no_picture_image.bySize.home_default.height}"
                    />
                  </picture>
                </a>
              {/if}
            {/block}
          </div>

          <div class="product-description">
            {block name='product_name'}
                <h2 class="h3 product-title"><a href="{$product.url}" content="{$product.url}">{$product.name|truncate:30:'...'}</a></h2>
            {/block}


            <!-- CENA -->
            {block name='product_price_and_shipping'}
              {if $product.show_price}
                <div class="product-price-and-shipping">

                  {if $product.has_discount}
                    {hook h='displayProductPriceBlock' product=$product type="old_price"}

                    <span class="regular-price" aria-label="{l s='Regular price' d='Shop.Theme.Catalog'}">{$product.regular_price}</span>
                    {if $product.discount_type === 'percentage'}
                      <span class="discount-percentage discount-product">{$product.discount_percentage}</span>
                    {elseif $product.discount_type === 'amount'}
                      <span class="discount-amount discount-product">{$product.discount_amount_to_display}</span>
                    {/if}
                  {/if}

                  {hook h='displayProductPriceBlock' product=$product type="before_price"}

                  <span class="price" aria-label="{l s='Price' d='Shop.Theme.Catalog'}">
                    {capture name='custom_price'}{hook h='displayProductPriceBlock' product=$product type='custom_price' hook_origin='products_list'}{/capture}
                    {if '' !== $smarty.capture.custom_price}
                      {$smarty.capture.custom_price nofilter}
                    {else}
                      {$product.price}
                    {/if}
                  </span>

                  {hook h='displayProductPriceBlock' product=$product type='unit_price'}

                  {hook h='displayProductPriceBlock' product=$product type='weight'}
                </div>
              {/if}
            {/block}
          </div>

          {include file='catalog/_partials/product-flags.tpl'}
        </div>
      </article>
    </div>
  {/block}
*}

{block name='product_miniature_item'}
  <div class="border-[1px] rounded-[1.25rem] border-[#D6D6D6] overflow-clip p-5 px-6 xl:px-10">
      <!-- <img src="img/home/produkt_1.png" alt="" width="" class="mb-2 mx-auto"/> -->

      <picture>
        {if !empty($product.cover.bySize.home_default.sources.avif)}<source srcset="{$product.cover.bySize.home_default.sources.avif}" type="image/avif">{/if}
        {if !empty($product.cover.bySize.home_default.sources.webp)}<source srcset="{$product.cover.bySize.home_default.sources.webp}" type="image/webp">{/if}
        <img
          src="{$product.cover.bySize.home_default.url}"
          alt="{if !empty($product.cover.legend)}{$product.cover.legend}{else}{$product.name|truncate:30:'...'}{/if}"
          loading="lazy"
          data-full-size-image-url="{$product.cover.large.url}"
          width="{$product.cover.bySize.home_default.width}"
          height="{$product.cover.bySize.home_default.height}"
          class="mb-2 mx-auto"
        />
      </picture>

      <div class="flex items-center mb-1 text-xs md:text-lg lg:text-xl xl:text-2xl xl:mb-3">
          <i class="fa-solid fa-star text-[#FDD835]"></i>
          <i class="fa-solid fa-star text-[#FDD835]"></i>
          <i class="fa-solid fa-star text-[#FDD835]"></i>
          <i class="fa-solid fa-star text-[#FDD835]"></i>
          <i class="fa-solid fa-star text-[#FDD835]"></i>
      </div>
      
      {block name='product_name'}
        <p class="text-sm md:text-xl xl:text-2xl text-[#58585A]">
          <a href="{$product.url}" content="{$product.url}">{$product.name|truncate:30:'...'}</a>
        </p>
      {/block}

      <!-- Cena -->
      <p class="text-5xl md:text-8xl lg:text-11xl xl:text-14xl text-[#58585A] mb-5">
        1234 <span class="text-lg md:text-3xl lg:text-6xl xl:text-9xl">zł</span>
      </p>
      <!-- Cena -->
      <!-- Nowa cena -->
      {block name='product_price_and_shipping'}
        {if $product.show_price}

          <div class="product-price-and-shipping">
            {if $product.has_discount}
              {hook h='displayProductPriceBlock' product=$product type="old_price"}

              <span class="regular-price" aria-label="{l s='Regular price' d='Shop.Theme.Catalog'}">{$product.regular_price}</span>

              {if $product.discount_type === 'percentage'}
                <span class="discount-percentage discount-product">{$product.discount_percentage}</span>
              {elseif $product.discount_type === 'amount'}
                <span class="discount-amount discount-product">{$product.discount_amount_to_display}</span>
              {/if}
            {/if}

            {hook h='displayProductPriceBlock' product=$product type="before_price"}

            <span class="price" aria-label="{l s='Price' d='Shop.Theme.Catalog'}">
              {capture name='custom_price'}
                {hook h='displayProductPriceBlock' product=$product type='custom_price' hook_origin='products_list'}
              {/capture}

              {if '' !== $smarty.capture.custom_price}
                {$smarty.capture.custom_price nofilter}
              {else}
                {$product.price}
              {/if}
            </span>

            {hook h='displayProductPriceBlock' product=$product type='unit_price'}
            {hook h='displayProductPriceBlock' product=$product type='weight'}
          </div>
        {/if}
      {/block}
      <!-- Nowa cena -->

      <a href="#" class="bg-[#F1592A] rounded-full text-white leading-none text-sm md:text-base lg:text-lg px-3.5 py-2 xl:px-6 xl:py-3.5 mx-auto block w-max">Dodaj do koszyka</a>

      {if $product.add_to_cart_url}
        <form action="{$product.add_to_cart_url}" method="post" class="add-to-cart-or-refresh">
          <input type="hidden" name="id_product" value="{$product.id_product}">
          <input type="hidden" name="id_customization" value="0">
          <button
            class="btn btn-primary add-to-cart"
            data-button-action="add-to-cart"
            type="submit"
          >
            <i class="fa fa-shopping-cart"></i>
            Dodaj do koszyka
          </button>
        </form>
      {/if}

      {include file='catalog/_partials/product-flags.tpl'}
  </div>
{/block}
