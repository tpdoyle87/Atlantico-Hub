
window.addEventListener("load", () => {
  $('#items').sortable({
    update: function(e, ui) {
      Rails.ajax({
        url: $(this).data("url"),
        type: "PATCH",
        data: $(this).sortable('serialize'),
      });
    }
  });
  $( function() {
    $( "#items, #items-deny" ).sortable({
      connectWith: ".connectedSortable"
    });
  });
  $('#items-deny').on('sortreceive', () => {
      alert("Shits been dropped to deny")
    }
  );
  // $("#items-deny").sortable({
  //   update: function(e, ui) {
  //     Rails.ajax({
  //       url:
  //       type:
  //       data:

  //     });
  //   }
  // })

})

