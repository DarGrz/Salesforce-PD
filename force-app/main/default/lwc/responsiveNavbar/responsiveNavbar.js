import { LightningElement } from 'lwc';

export default class ResponsiveNavbar extends LightningElement {
    toggleNav() {
        const activateNav = this.template.querySelector(".toggle-nav");
        const mobileNavLinks = this.template.querySelector(".nav-links");
        mobileNavLinks.classList.toggle("active");
        activateNav.classList.toggle("active");
      }
}