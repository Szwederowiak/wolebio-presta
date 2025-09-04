
{block name='product_flags'}
    <ul class="grid gap-1 js-product-flags">
        {foreach from=$product.flags item=flag}
            <li class="{$flag.type} rounded-full p-3 w-32 text-lg leading-none text-center text-white [.new]:bg-gray [.discount]:bg-primary [.pack]:bg-blue-400 shadow-xl">{$flag.label}</li>
        {/foreach}
    </ul>
{/block}
