
{capture assign="productClasses"}
    {if !empty($productClass)}
        {$productClass}
    {else}
        col-xs-12 col-sm-6 col-xl-4
    {/if}
{/capture}

<div class="grid gap-4 md:grid-cols-2 xl:grid-cols-3">
    {foreach from=$products item="product" key="position"}
        {include file="catalog/_partials/miniatures/product.tpl" product=$product position=$position productClasses=$productClasses}
    {/foreach}
</div>
