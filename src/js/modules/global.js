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
    }
}


export default Global;