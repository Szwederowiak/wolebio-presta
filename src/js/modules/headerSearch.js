export default class HeaderSearch {
    constructor() {
        this.isOpened = false;
        this.isLocked = false;
        this.init();
    }

    init = () => {
        this.openButton = document.getElementById(
            "mxb-header-search-open-button"
        );
        this.searchWrapper = document.getElementById("mxb-header-search");

        this.bindResizeHandler();
        this.bindOpenButton();
        this.bindClickOutside();

        // ustaw stan początkowy
        this.handleResize();
    };

    open = () => {
        if (this.isLocked) return;
        this.searchWrapper.classList.add("block");
        this.searchWrapper.classList.remove("hidden");
        this.isOpened = true;
    };

    close = () => {
        if (this.isLocked) return;
        this.searchWrapper.classList.add("hidden");
        this.searchWrapper.classList.remove("block");
        this.isOpened = false;
    };

    bindOpenButton = () => {
        if (!this.openButton) return;
        this.openButton.addEventListener("click", (e) => {
            if (this.isLocked) return;
            e.stopPropagation();
            if (this.isOpened) {
                this.close();
            } else {
                this.open();
            }
        });
    };

    bindClickOutside = () => {
        window.addEventListener("click", (e) => {
            if (
                !this.isLocked &&
                this.isOpened &&
                !this.searchWrapper.contains(e.target) &&
                e.target !== this.openButton
            ) {
                this.close();
            }
        });
    };

    bindResizeHandler = () => {
        Utils.onBreakpointChange(() => this.handleResize());
    };

    handleResize = () => {
        this.close();
        this.isLocked = Utils.currentBreakpoint >= Utils.Breakpoints.MD;
        this.isOpened = false;
    };
}