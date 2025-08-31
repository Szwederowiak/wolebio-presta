<section
    style="--newsletter-background: url('{$urls.theme_assets}img/common/newsletter/newsletter-bg.png')"
    class="bg-[image:var(--newsletter-background)] rounded-xl md:bg-none md:rounded-none block_newsletter -mb-10 md:-mb-48 lg:-mb-64 relative z-10"
    id="blockEmailSubscription_{$hookName}"
>

    <div class="container text-white px-2.5 md:px-5 pt-8 pb-8 md:pb-20 lg:px-36 md:bg-[image:var(--newsletter-background)] md:rounded-xl">
        <form action="{$urls.current_url}#blockEmailSubscription_{$hookName}" method="post">
            <div class="max-w-[33.5rem] mx-auto lg:mx-0">
                <h2 class="text-22xl text-center pb-9 lg:text-left">
                    Newsletter
                </h2>
                <h2 class=""></h2>
                <p
                    id="block-newsletter-label"
                    class="text-lg mb-24 md:text-xl md:mb-12 leading-tight"
                >
                    {* LANG TODO: l s='Get our latest news and special sales' d='Shop.Theme.Global' *} 
                    
                    Zapisz się do naszego newslettera,
                    aby być na bieżąco z najnowszymi promocjami, ofertami
                    specjalnymi oraz informacjami o naszych produktach.
                </p>

                <div class="grid grid-cols-[1fr_auto] mb-10 md:mb-8">
                    <input
                        name="email"
                        type="email"
                        value="{$value}"
                        placeholder="{l s='Your email address' d='Shop.Forms.Labels'}"
                        aria-labelledby="block-newsletter-label"
                        required
                        class="bg-white block rounded-l-full h-[46px] w-full text-black px-4"
                    />
                    <button
                        class="rounded-r-full bg-primary flex items-center justify-center gap-3.5 text-lg px-2.5 w-max disabled:bg-gray"
                        name="submitNewsletter"
                        type="submit"
                    >
                        <span class="material-symbols-outlined font-normal"
                            >mail</span
                        >
                        Zapisz się {* LANG TODO: l s='Subscribe' d='Shop.Theme.Actions' *}
                    </button>
                </div>

                <div>
                    {if isset($id_module)}
                        {hook h='displayGDPRConsent' id_module=$id_module}
                    {/if}
                </div>

                {if $conditions}
                    <p>{* $conditions *}</p>
                {/if} {if $msg}
                    <p class="alert {if $nw_error}alert-danger{else}alert-success{/if}">{$msg}</p>
                {/if} 
                
                {* hook h='displayNewsletterRegistration' *} 
                


                <input type="hidden" name="blockHookName" value="{$hookName}" />
                <input type="hidden" name="action" value="0" />
            </div>
        </form>
    </div>
</section>