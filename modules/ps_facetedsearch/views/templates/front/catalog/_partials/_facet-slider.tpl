{block name='facet_item_slider'}
    {foreach from=$facet.filters item="filter"}

        <ul 
            id="facet_{$_expand_id}"
            class="faceted-slider"
            data-slider-min="{$facet.properties.min}"
            data-slider-max="{$facet.properties.max}"
            data-slider-id="{$_expand_id}"
            data-slider-values="{$filter.value|@json_encode}"
            data-slider-unit="{$facet.properties.unit}"
            data-slider-label="{$facet.label}"
            data-slider-specifications="{$facet.properties.specifications|@json_encode}"
            data-slider-encoded-url="{$filter.nextEncodedFacetsURL}"
        >
            <li>
                <p id="facet_label_{$_expand_id}" class="mb-2">{$filter.label}</p>
                <div id="slider-range_{$_expand_id}"></div>
            </li>
        </ul>

    {/foreach}
{/block}