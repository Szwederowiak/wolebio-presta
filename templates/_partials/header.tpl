<header id="header" class="">
    {hook h='displayMXBHeaderNotice'} {include
    file="_sections/header-contact.tpl"}
    <div class="container py-10">
        <div
            class="grid grid-cols-[auto_1fr_auto] items-end lg:items-center gap-x-2.5 md:gap-x-5 lg:gap-x-10"
        >
            {block name='header_top'}
            <!-- Logo: -->
            {if $shop.logo_details}
            <div class="max-w-40 md:max-w-44 lg:max-w-none">{renderLogo}</div>
            {/if}

            <!-- Szukajka: -->
            <div class="w-max md:mx-auto md:w-full md:max-w-[50rem] justify-self-center">

                <div class="fixed top-0 left-0 right-0 z-40 md:static md:z-auto md:block" id="mxb-header-search">
                    {hook h='displayMXBHeaderSearch'}
                </div>
                
                <button class="md:hidden" id="mxb-header-search-open-button">
                    <span class="text-2xl fa-solid fa-magnifying-glass justify-self-center"></span>
                </button>
            </div>

            <div class="flex items-end lg:items-center gap-2.5">
                {hook h='displayMXBHeaderCart'} {hook h='displayMXBHeaderUser'}

                <button class="text-6xl cursor-pointer lg:hidden" id="mxb-open-menu-button"><span class="fa-solid fa-bars"></span></button>
            </div>
            {/block}

            <!-- Menu -->
        </div>
    </div>
    <div>
        {hook h='displayMXBHeaderMenu'}
    </div>
</header>