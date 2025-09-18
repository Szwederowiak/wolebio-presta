{block name='facets_clearall_button'}
    {if $activeFilters|count}
        <div id="_desktop_search_filters_clear_all" class="clear-all-wrapper">
            <button class="w-full text-lg text-white bg-primary rounded-full px-10 py-2.5 cursor-pointer js-search-filters-clear-all" data-search-url="{$clear_all_link}">
                Wyczyść filtry
                {* l s='Clear all' d='Shop.Theme.Actions' *}
            </button>
        </div>
    {/if}
{/block}
