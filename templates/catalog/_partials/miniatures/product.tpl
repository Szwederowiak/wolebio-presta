{block name='product_miniature_item'}
    <div class="border-[1px] rounded-[1.25rem] border-[#D6D6D6] min-w-[250px] max-w-[360px] md:max-w-none relative overflow-clip">
        <div class="mb-2 pt-8 px-5 lg:pt-2.5">
            <picture>
                {if !empty($product.cover.bySize.home_default.sources.avif)}
                    <source srcset="{$product.cover.bySize.home_default.sources.avif}" type="image/avif"/>
                {/if} 
                
                {if !empty($product.cover.bySize.home_default.sources.webp)}
                    <source srcset="{$product.cover.bySize.home_default.sources.webp}" type="image/webp"/>
                {/if}

                <img
                    src="{$product.cover.bySize.home_default.url}"
                    alt="{if !empty($product.cover.legend)}{$product.cover.legend}{else}{$product.name|truncate:30:'...'}{/if}"
                    loading="lazy"
                    data-full-size-image-url="{$product.cover.large.url}"
                    width="{$product.cover.bySize.home_default.width}"
                    height="{$product.cover.bySize.home_default.height}"
                    class="w-auto h-[240px] lg:h-[330px] lg:max-w-[300px] object-contain justify-self-center max-w-52"
                />
            </picture>
        </div>

        <div class="px-8 pb-5 text-[#58585A]">
            <a href="{$product.url}" content="{$product.url}">
                <div class="mb-1 text-xs md:text-base lg:text-2xl">
                    <i class="fa-solid fa-star text-[#FDD835]"></i>
                    <i class="fa-solid fa-star text-[#FDD835]"></i>
                    <i class="fa-solid fa-star text-[#FDD835]"></i>
                    <i class="fa-solid fa-star text-[#FDD835]"></i>
                    <i class="fa-solid fa-star text-[#FDD835]"></i>
                </div>

                {block name='product_name'}
                    <p class="text-sm md:text-lg lg:text-2xl text-[#58585A] lg:h-16">
                        {$product.name|truncate:30:'...'}
                    </p>
                {/block}

                <p class="mb-4 text-[#58585A]">
                    {if $product.has_discount}
                        <span class="text-xl line-through md:text-3xl lg:text-8xl">{$product.price}</span>
                        <span class="text-5xl md:text-7xl lg:text-14xl">{$product.regular_price}</span>
                    {else}
                        <span class="text-5xl md:text-7xl lg:text-14xl">{$product.regular_price}</span>
                    {/if}
                </p>
            </a>

            {if $product.add_to_cart_url}
            <form
                action="{$product.add_to_cart_url}"
                method="post"
                class="add-to-cart-or-refresh"
            >
                <input type="hidden" name="id_product" value="{$product.id_product}"/>
                <input type="hidden" name="id_customization" value="0" />
                <button
                    type="submit"
                    data-button-action="add-to-cart"
                    class="bg-[#F1592A] rounded-full text-white leading-none text-sm md:text-base lg:text-lg px-3.5 py-2 md:py-2.5 md:px-4 lg:py-3.5 lg:px-6 mx-auto block w-max"
                >
                    Dodaj do koszyka
                </button>
            </form>
            {/if}
        </div>

        <div class="absolute top-3 left-3 lg:top-5 lg:left-5">
            {include file='catalog/_partials/product-flags.tpl'}
        </div>
    </div>
{/block}
