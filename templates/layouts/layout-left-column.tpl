{extends file='layouts/layout-both-columns.tpl'}


{block name="layout_wrapper"}
    <div class="container md:px-0">
        <div class="grid gap-5 lg:grid-cols-[20rem_1fr] xl:grid-cols-[25rem_1fr]">

            {block name="left_column"}
                <div id="left-column">
                    {if $page.page_name == 'product'}
                        {hook h='displayLeftColumnProduct' product=$product category=$category}
                    {else}
                        {hook h="displayLeftColumn"}
                    {/if}
                </div>
            {/block}

            {block name="content_wrapper"}
                <div id="content-wrapper" class="js-content-wrapper">
                    {hook h="displayContentWrapperTop"}

                    {block name="content"}
                        <p>Hello world! This is HTML5 Boilerplate.</p>
                    {/block}

                    {hook h="displayContentWrapperBottom"}
                </div>
            {/block}

            {block name="right_column"}{/block}

        </div>
    </div>
{/block}