import MainMenu from "./mainMenu";
import HeaderSearch from "./headerSearch";
import Utils from "./utils";


class Global {
    constructor() {
        this.init();
        console.log('Global class');
    }

    init = () => {
        Utils.init();
        new MainMenu();
        new HeaderSearch();

        this.devUtils();
    }

    devUtils = () => {
        const box = document.createElement('div');
        box.classList.add('fixed', 'bottom-2.5', 'left-2.5', 'bg-grey-200', 'border-[1px]', 'border-black', 'bg-gray-200', 'p-2.5', 'z-9999');
        box.innerHTML = Utils.currentBreakpoint;
        document.body.appendChild(box);
        
        Utils.onBreakpointChange( () => {
            box.innerHTML = Utils.currentBreakpoint;
        });
    }
}


export default Global;