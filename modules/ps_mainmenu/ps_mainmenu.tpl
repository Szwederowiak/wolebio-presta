{assign var=_counter value=0}

{function name="menu" nodes=[] depth=0 parent=null}
	{if $nodes|count}
		<button class="absolute leading-none text-white cursor-pointer top-7 right-7 text-12xl lg:hidden" id="mxb-close-menu-button">
			<span class="fa-solid fa-xmark"></span>
		</button>

		<ul class="flex flex-col w-full text-xl text-white lg:flex-row top-menu gap-y-5 p-7 lg:text-lg lg:items-center lg:justify-between xl:justify-start xl:gap-10 lg:py-3" {if $depth == 0}id="top-menu"{/if} data-depth="{$depth}">
			<li class=""><a href="/">O nas</a></li>

			{foreach from=$nodes item=node}
				<li class=" {$node.type}{if $node.current} current {/if}" id="{$node.page_identifier}">
					{assign var=_counter value=$_counter+1}
					<a class="{if $depth >= 0}dropdown-item{/if}{if $depth === 1} dropdown-submenu{/if}" href="{$node.url}" data-depth="{$depth}" {if $node.open_in_new_window} target="_blank" {/if}>
						{$node.label}
					</a>
				</li>
			{/foreach}

			<li class=""><a href="/">Sprzedaż hurtowa</a></li>
			<li class=""><a href="/">Składy opału</a></li>
			<li class=""><a href="/">Program lojalnościowy</a></li>
			<li class=""><a href="/">Blog</a></li>
			<li class=""><a href="/">Kontakt</a></li>
		
		</ul>
	{/if}
{/function}

<div class="menu js-top-menu bg-primary/50 md:bg-primary md:p-0 fixed hidden lg:block left-0 top-0 bottom-0 w-full md:max-w-sm lg:max-w-none p-2.5 z-50 lg:static" id="mxb-main-menu">
	<div class="relative h-full lg:container bg-primary md:bg-transparent lg:h-auto">
		{menu nodes=$menu.children}
	</div>
</div>