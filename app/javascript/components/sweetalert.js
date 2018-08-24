import swal from 'sweetalert';

function bindSweetAlertButtonDemo() {
  const swalButton = document.getElementById('sweet-alert-demo');
  if (swalButton) { // protect other pages
    swalButton.addEventListener('click', () => {
      swal({
        title: "A nice alert",
        text: "Your margin has been covered.",
        icon: "success"
      });
    });
  }
}

export { bindSweetAlertButtonDemo };
