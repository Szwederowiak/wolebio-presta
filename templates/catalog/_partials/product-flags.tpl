{block name='product_flags'}
    <ul class="grid gap-1 js-product-flags">
        {foreach from=$product.flags item=flag}
        <li class="{$flag.type} text-white [.new]:bg-gray [.discount]:bg-primary [.pack]:bg-blue-400 rounded-full text-center uppercase leading-none py-1 lg:py-3.5 min-w-20 md:py-1.5 md:min-w-28 lg:min-w-[140px] text-xs md:text-sm lg:text-lg">
            {$flag.label}
        </li>
        {/foreach}
    </ul>
{/block}
