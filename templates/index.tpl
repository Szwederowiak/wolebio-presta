{extends file='page.tpl'}

{block name='page_content_container'}
  <section id="content" class="page-home">
    {block name='page_content_top'}{/block}

    {block name='page_content'}
      {block name='hook_home'}
        {$HOOK_HOME nofilter}
      {/block}
    {/block}
  </section>

  {include file="_sections/about.tpl"}
  {include file="_sections/partners-slider.tpl"}
  {include file="_sections/promotion.tpl"}
  {include file="_sections/home-seo-text.tpl"}
  {include file="_sections/reviews-slider.tpl"}
  {include file="_sections/features-icon-boxes.tpl"}
{/block}
