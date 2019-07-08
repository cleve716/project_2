
var API = {
    deleteCart: function (id) {
      return $.ajax({
        url: "api/carts/" + id,
        type: "DELETE"
      });
    }
  };
  
  var handleDeleteBtnClick = function () {
    var idToDelete = $(this).parent().attr("data-id");
  
    API.deleteCart(idToDelete).then(function () {
      location.reload();
    });
  };
  
  $("#example-list").on("click", ".delete", handleDeleteBtnClick);
  