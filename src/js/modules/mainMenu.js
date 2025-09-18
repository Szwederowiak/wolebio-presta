export default class MainMenu {
    constructor() {
        this.isMenuOpened = false;
        this.isLocked = false;
        this.init();
    }

    init = () => {
        this.openButton = document.getElementById('mxb-open-menu-button');
        this.closeButton = document.getElementById('mxb-close-menu-button');
        this.menu = document.getElementById('mxb-main-menu');

        this.bindResizeHandler();
        this.bindClickOutside();
        this.bindOpenButton();
        this.bindCloseButton();
    }

    open = () => {
        if (this.isLocked) return;
        this.menu.classList.add('block');
        this.menu.classList.remove('hidden');
        this.isMenuOpened = true;
    }

    close = () => {
        if (this.isLocked) return;
        this.menu.classList.add('hidden');
        this.menu.classList.remove('block');
        this.isMenuOpened = false;
    }

    bindOpenButton = () => {
        this.openButton.addEventListener('click', (e) => {
            if (this.isLocked) return;
            e.stopPropagation();
            
            if (!this.isOpened) {
                this.open();
            } else {
                this.close();
            }
        });
    }

    bindCloseButton = () => {
        this.closeButton.addEventListener('click', (e) => {
            if (this.isLocked) return;
            e.stopPropagation();
            this.close();
        });
    }

    bindClickOutside = () => {
        window.addEventListener("click", (e) => {
            if (
                !this.menu.contains(e.target) &&
                e.target !== this.closeButton &&
                this.isMenuOpened &&
                !this.isLocked
            ) {
                this.close();
            }
        });
    };

    bindResizeHandler = () => {
        Utils.onBreakpointChange(() => { this.handleResize(); })
    }

    handleResize = () => {
        this.close();
        this.isLocked = Utils.currentBreakpoint >= Utils.Breakpoints.LG;
        this.isMenuOpened = false;
    }
}
