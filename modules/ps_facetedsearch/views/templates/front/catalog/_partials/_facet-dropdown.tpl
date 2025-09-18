{block name='facet_item_dropdown'}
    <ul id="facet_{$_expand_id}">
        <li>
            <div class="col-sm-12 col-xs-12 col-md-12 facet-dropdown dropdown">
                <a class="select-title" rel="nofollow" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    {$active_found = false}
                    <span>
                        {foreach from=$facet.filters item="filter"}
                            {if $filter.active}
                                {$filter.label}

                                {if $filter.magnitude and $show_quantities}
                                    ({$filter.magnitude})
                                {/if}

                                {$active_found = true}
                            {/if}
                        {/foreach}

                        {if !$active_found}
                            {l s='(no filter)' d='Shop.Theme.Global'}
                        {/if}
                    </span>
                    <i class="material-icons float-xs-right">&#xE5C5;</i>
                </a>

                <div class="dropdown-menu">
                    {foreach from=$facet.filters item="filter"}
                        {if !$filter.active}
                            <a
                                rel="nofollow"
                                href="{$filter.nextEncodedFacetsURL}"
                                class="select-list js-search-link"
                            >
                                {$filter.label}
                                {if $filter.magnitude and $show_quantities}
                                    ({$filter.magnitude})
                                {/if}
                            </a>
                        {/if}
                    {/foreach}
                </div>
            </div>
        </li>
    </ul>
{/block}