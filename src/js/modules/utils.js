export default class Utils {
  static Breakpoints = {
    XS: 0,
    SM: 400,
    MD: 768,
    LG: 1200,
    XL: 1680,
  };

  static currentBreakpoint = null;
  static previousBreakpoint = null;
  static listeners = [];

  static init() {
    this.updateCurrentBreakpoint();
    this.previousBreakpoint = this.currentBreakpoint;
    window.addEventListener("resize", () => this.checkBreakpointChange());

    window.Utils = this;
  }

  static updateCurrentBreakpoint() {
    const width = window.innerWidth;

    if (width < this.Breakpoints.SM) {
      this.currentBreakpoint = this.Breakpoints.XS;
    } else if (width < this.Breakpoints.MD) {
      this.currentBreakpoint = this.Breakpoints.SM;
    } else if (width < this.Breakpoints.LG) {
      this.currentBreakpoint = this.Breakpoints.MD;
    } else if (width < this.Breakpoints.XL) {
      this.currentBreakpoint = this.Breakpoints.LG;
    } else {
      this.currentBreakpoint = this.Breakpoints.XL;
    }
  }

  static checkBreakpointChange() {
    this.updateCurrentBreakpoint();

    if (this.currentBreakpoint !== this.previousBreakpoint) {
      this.listeners.forEach((callback) =>
        callback(this.previousBreakpoint, this.currentBreakpoint)
      );
      this.previousBreakpoint = this.currentBreakpoint;
    }
  }

  static onBreakpointChange(callback) {
    this.listeners.push(callback);
  }

  static isBreakpoint(bp) {
    return this.currentBreakpoint === this.Breakpoints[bp.toUpperCase()];
  }
}