
window.addEventListener("load", () => {
  $('#items').sortable({
    update: function(e, ui) {
      console.log($(this).sortable('serialize'))
    }
  });
})
