{if $mxb_notice_text}
    <div
        class="bg-[image:var(--notice-bg)] bg-no-repeat bg-cover py-3"
        style="--notice-bg: url('{$urls.theme_assets}img/common/header-notice/notice-bg.png');"
    >
        <div class="container text-white text-center text-xs md:text-base lg:text-lg xl:text-xl">
            <p>{$mxb_notice_text}</p>
        </div>
    </div>
{/if}
