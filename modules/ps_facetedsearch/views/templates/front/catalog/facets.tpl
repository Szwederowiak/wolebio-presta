{if $displayedFacets|count}
    <div id="search_filters">
        <div class="border-[1px] rounded-lg border-lightgray py-5 px-8">
            {block name='facets_title'}
                <p class="text-2xl text-gray border-b-[1px] border-lightgray pb-4 mb-5">
                    {*l s='Filter By' d='Shop.Theme.Actions'*}
                    Filtrowanie
                </p>
            {/block}


            {foreach from=$displayedFacets item="facet"}
                <section class=" text-gray mb-5" data-type="{$facet.type}">
                    <p class="text-lg mb-2">{$facet.label}</p>

                    {assign var=_expand_id value=10|mt_rand:100000}
                    {assign var=_collapse value=true}

                    {foreach from=$facet.filters item="filter"}
                        {if $filter.active}{assign var=_collapse value=false}{/if}
                    {/foreach}

                    {if in_array($facet.widgetType, ['radio', 'checkbox'])}
                        {include file="module:ps_facetedsearch/views/templates/front/catalog/_partials/_facet-checkbox.tpl"}
                    {elseif $facet.widgetType == 'dropdown'}
                        {include file="module:ps_facetedsearch/views/templates/front/catalog/_partials/_facet-dropdown.tpl"}
                    {elseif $facet.widgetType == 'slider'}
                        {include file="module:ps_facetedsearch/views/templates/front/catalog/_partials/_facet-slider.tpl"}
                    {/if}

                </section>
            {/foreach}

            {include file="module:ps_facetedsearch/views/templates/front/catalog/_partials/_facet-clearall.tpl"}
        </div>
    </div>
{else}
    <div id="search_filters" style="display:none;"></div>  
{/if}