<div id="search_widget" class="py-5 px-2.5 bg-white shadow-xl md:shadow-none md:bg-transparent md:p-0" data-search-controller-url="{$search_controller_url}">
    <form
        method="get"
        action="{$search_controller_url}"
        class="grid grid-cols-[auto_1fr] mx-auto w-sm md:w-auto"
    >
        <button class="grid w-20 text-white rounded-l-full bg-primary h-11 place-items-center">
            <span class="text-2xl fa-solid fa-magnifying-glass"></span>
        </button>

        <input type="hidden" name="controller" value="search" />

        <input
            type="text"
            name="s"
            value="{$search_string}"
            placeholder="{l s='Search our catalog' d='Shop.Theme.Catalog'}"
            aria-label="{l s='Search' d='Shop.Theme.Catalog'}"
            class="px-5 bg-gray-100 rounded-r-full h-11"
        />
    </form>
</div>
