if (document.querySelector("#items-deny")) {
  window.addEventListener("load", () => {
    $('#items').sortable({
      update: function(e, ui) {
        Rails.ajax({
          url: '/categories/sort',
          async: true,
          type: "PATCH",
          data: $(this).sortable('serialize'),
        });
      }
    });

    $('#items-deny').sortable({
      update: function(e, ui) {
      Rails.ajax({
        url: '/categories/deny',
        async: true,
        type: "PATCH",
        data: $(this).sortable('serialize'),
      })
      }
    });

    $( function() {
      $( "#items, #items-deny" ).sortable({
        connectWith: ".connectedSortable"
      });
    });
  });
};

