import "bootstrap";
import { initUpdateNavbarOnScroll } from '../components/navbar';
initUpdateNavbarOnScroll();
import { bindSweetAlertButtonDemo } from '../components/sweetalert';
bindSweetAlertButtonDemo();
import { removeAlert } from '../components/flashes';
if (document.querySelector(".alert")) removeAlert();
