{block name='product_miniature_item'}
  <div class="border-[1px] rounded-[1.25rem] border-[#D6D6D6] overflow-clip p-5 px-6 xl:px-10 relative">
      <!-- <img src="img/home/produkt_1.png" alt="" width="" class="mx-auto mb-2"/> -->

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
          class="mx-auto mb-2"
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
        <p class="text-sm md:text-xl xl:text-2xl text-[#58585A] mb-2">
          <a href="{$product.url}" content="{$product.url}">{$product.name|truncate:30:'...'}</a>
        </p>
      {/block}

      <!-- Cena -->

      <div class="flex items-end mb-5 gap-x-4">
        {if $product.has_discount}
          <p class="text-2xl md:text-3xl lg:text-6xl xl:text-8xl text-[#58585A] leading-none line-through">{$product.regular_price} </p>
          <p class="text-5xl md:text-8xl lg:text-11xl xl:text-14xl text-[#58585A] leading-none">{$product.price}</p>
        {else}
          <p class="text-5xl md:text-8xl lg:text-11xl xl:text-14xl text-[#58585A] leading-none">{$product.regular_price}</p>
        {/if}
      </div>
      

      {if $product.add_to_cart_url}
        <form action="{$product.add_to_cart_url}" method="post" class="add-to-cart-or-refresh">
          <input type="hidden" name="id_product" value="{$product.id_product}">
          <input type="hidden" name="id_customization" value="0">
          <button
            class="bg-[#F1592A] rounded-full text-white leading-none text-sm md:text-base lg:text-lg px-3.5 py-2 xl:px-6 xl:py-3.5 mx-auto block w-max"
            data-button-action="add-to-cart"
            type="submit"
          >
            Dodaj do koszyka
          </button>
        </form>
      {/if}

      <div class="absolute top-5 left-5">
        {include file='catalog/_partials/product-flags.tpl'}
      </div>
  </div>
{/block}
