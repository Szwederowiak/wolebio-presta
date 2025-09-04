{block name='hook_footer_before'}
  {hook h='displayFooterBefore'}
{/block}

<div class="pt-10 bg-primary md:pt-48 lg:pt-64">
    <div class="container py-10">
        {include file="_sections/footer.tpl"}

        {* {block name='hook_footer'}{hook h='displayFooter'}{/block} *}
        {* {block name='hook_footer_after'}{hook h='displayFooterAfter'}{/block} *}
    </div>

    <div class="border-t-[1px] border-white text-white">
        <div class="container text-center p-2.5 lg:py-4 lg:flex lg:justify-between lg:text-left">
            <p class="mb-4 lg:mb-0">
                Copyright Wolebio.pl | Serwis korzysta z plików Cookie. Więcej o
                tym przeczytasz w polityce RODO
            </p>
            <p>realizacja: <a href="https://moxbee.pl" class="">MOXBEE</a></p>
        </div>
    </div>
</div>

{* LANG TODO: stopka copyright {block name='copyright_link'}
<a
    href="https://www.prestashop-project.org/"
    target="_blank"
    rel="noopener noreferrer nofollow"
>
    {l s='%copyright% %year% - Ecommerce software by %prestashop%'
    sprintf=['%prestashop%' => 'PrestaShop™', '%year%' => 'Y'|date,
    '%copyright%' => '©'] d='Shop.Theme.Global'}
</a>
{/block} *}
