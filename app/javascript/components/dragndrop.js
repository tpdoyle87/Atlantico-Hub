function move() {
  document.addEventListener("click", () => {
    $('#items').sortable();
    console.log(this);
  })
}

export { move }
