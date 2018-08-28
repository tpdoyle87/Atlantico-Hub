
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
    console.log($(this).data("url"))
        Rails.ajax({
          url: $(this).data("url"),
          type: "PATCH",
          data: "{deny: true}",
        })

      })
    });



