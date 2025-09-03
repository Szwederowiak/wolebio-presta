
{block name='product_flags'}
    <ul class="js-product-flags">
        {foreach from=$product.flags item=flag}
            <li class="{$flag.type}">{$flag.label}</li>
        {/foreach}
    </ul>
{/block}
