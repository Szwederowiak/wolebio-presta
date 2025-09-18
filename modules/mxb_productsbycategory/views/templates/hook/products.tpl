{if $categories}
<section id="mxb-products-by-category" class="py-14 lg:py-32">
    <div class="container">
        <div class="mb-6 text-center lg:mb-8">
            <span class="mb-1 text-lg lg:text-2xl text-primary">Produkty</span>
            <p class="text-7xl lg:text-15xl text-gray">Kupuj wg kategorii</p>
        </div>

        <div class="flex items-center justify-center gap-2 lg:gap-4 mb-7 lg:mb-20">
            {foreach $categories as $cat}
            <button
                class="text-white rounded-2xs text-xs leading-none py-2 px-4 lg:py-3 lg:px-5 md:text-base lg:text-lg cursor-pointer {if $cat@index == 0} bg-primary {else} bg-gray {/if}"
                data-pbc-category="{$cat.id}"
            >
                {$cat.name}
            </button>
            {/foreach}
        </div>

        <div>
          {foreach $categories as $cat}
            <div class="gap-2 md:grid-cols-2 lg:grid-cols-4 {if $cat@index == 0} grid {else} hidden {/if}" data-pbc-row="{$cat.id}">
              {foreach $cat.products as $product}
                {include file='catalog/_partials/miniatures/product.tpl' product=$product}
              {/foreach}
            </div>
          {/foreach}
        </div>
    </div>
</section>
{/if}
