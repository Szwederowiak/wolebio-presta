{block name='facet_item_other'}
    <ul id="facet_{$_expand_id}">
        {foreach from=$facet.filters key=filter_key item="filter"}
            {if !$filter.displayed}
                {continue}
            {/if}

            <li>
                <label class="facet-label{if $filter.active} active {/if}" for="facet_input_{$_expand_id}_{$filter_key}">
                    {if $facet.multipleSelectionAllowed}
                        <span class="custom-checkbox">
                            <input id="facet_input_{$_expand_id}_{$filter_key}" data-search-url="{$filter.nextEncodedFacetsURL}" type="checkbox" {if $filter.active }checked{/if}>

                            {if isset($filter.properties.color)}
                                <span class="color" style="background-color:{$filter.properties.color}"></span>
                            {elseif isset($filter.properties.texture)}
                                <span class="color texture" style="background-image:url({$filter.properties.texture})"></span>
                            {else}
                                <span {if !$js_enabled} class="ps-shown-by-js" {/if}><i class="material-icons rtl-no-flip checkbox-checked">&#xE5CA;</i></span>
                            {/if}
                        </span>
                    {else}
                        <span class="custom-radio">
                            <input
                                id="facet_input_{$_expand_id}_{$filter_key}"
                                data-search-url="{$filter.nextEncodedFacetsURL}"
                                type="radio"
                                name="filter {$facet.label}"
                                {if $filter.active }checked{/if}
                            >
                            <span {if !$js_enabled} class="ps-shown-by-js" {/if}></span>
                        </span>
                    {/if}

                    <a href="{$filter.nextEncodedFacetsURL}" class="_gray-darker search-link js-search-link" rel="nofollow">
                        {$filter.label}
                        {if $filter.magnitude and $show_quantities}
                            <span class="magnitude">({$filter.magnitude})</span>
                        {/if}
                    </a>
                </label>
            </li>
        {/foreach}
    </ul>
{/block}