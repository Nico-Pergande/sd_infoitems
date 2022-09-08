$(function () {
  window.onload = (e) => {
    window.addEventListener("message", (event) => {
      var ui = event.data;
      if (ui.open == "true") {
        document.getElementById("screen").style.display = "flex";
        $( "#titel" ).append(  ui.title );
        $( "#pdf" ).append( '<embed width="100%" height="900" src="data/' + ui.filename + '.pdf">' );
      } else if (ui.open == "false") {
        document.getElementById("screen").style.display = "none";
        $( "#titel" ).empty();
        $( "#pdf" ).empty();
      }
    })
  }
  document.onkeyup = function (data) {
    if (data.which == 27) {
      $.post("https://sd_infoitems/close", JSON.stringify({}));
      return;
    }
  }
  $("#close").click(function() {
    $.post("https://sd_infoitems/close", JSON.stringify({}));
  })
})
