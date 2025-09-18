<div class="user-info">
  {if $customer.is_logged}
    <a class="logout"  href="{$urls.actions.logout}" rel="nofollow" title="{l s='Log me out' d='Shop.Theme.Customeraccount'}">{l s='Sign out' d='Shop.Theme.Actions'}</a>
    <a class="account" href="{$urls.pages.my_account}" title="{l s='View my customer account' d='Shop.Theme.Customeraccount'}" rel="nofollow"><span>{$customerName}</span></a>
  {else}
    <a class="grid h-8 w-8 md:h-11 md:w-11 bg-[#FCDED4] place-items-center rounded-full relative" href="{$urls.pages.authentication}?back={$urls.current_url}" rel="nofollow" title="{l s='Log in to your customer account' d='Shop.Theme.Customeraccount'}">
      <img src="{$urls.theme_assets}img/common/icons/user.svg" class="w-6 md:w-auto" />
    </a>
  {/if}
</div>
