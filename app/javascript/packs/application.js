import "bootstrap";
import $ from "jquery";
import "jquery-ujs";
import { move } from '../components/draganddrop'
move();
import { initUpdateNavbarOnScroll } from '../components/navbar';
initUpdateNavbarOnScroll();
import { bindSweetAlertButtonDemo } from '../components/sweetalert';
bindSweetAlertButtonDemo();
