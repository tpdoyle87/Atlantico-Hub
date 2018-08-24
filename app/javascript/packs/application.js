import "bootstrap";
window.Sortable = require('sortablejs');
import { dragnDrop } from '../components/dragndrop_list';
dragnDrop();
import { initUpdateNavbarOnScroll } from '../components/navbar';
initUpdateNavbarOnScroll();
import { bindSweetAlertButtonDemo } from '../components/sweetalert';
bindSweetAlertButtonDemo();
