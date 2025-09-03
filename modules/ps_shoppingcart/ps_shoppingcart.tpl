<div id="_desktop_cart">
    <div data-refresh-url="{$refresh_url}">
        <a
            rel="nofollow"
            aria-label="{l s='Shopping cart link containing %nbProducts% product(s)' sprintf=['%nbProducts%' => $cart.products_count] d='Shop.Theme.Checkout'}"
            href="{$cart_url}"
            class="grid h-8 w-8 md:h-11 md:w-11 bg-[#FCDED4] place-items-center rounded-full relative"
        >
            <img src="{$urls.theme_assets}img/common/icons/cart.svg" class="w-6 md:w-auto" />

            <span
                class="h-3.5 aspect-square text-white bg-primary leading-none text-2xs grid place-items-center absolute top-0 right-0 rounded-full"
            >
                {$cart.products_count}
            </span>
        </a>
    </div>
</div>
