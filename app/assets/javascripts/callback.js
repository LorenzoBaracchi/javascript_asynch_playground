$( document ).ready(function() {

  $.ajax({
  url: "/callback/calling",
  })
  .done(function( data ) {
      $('#container').append("<p>I'm done calling</p>");
  });

});


function endOfExec() {
  window.setTimeout(function(){
    $('#container').append("<p>I'm called by the server!</p>");
  }, 2000);
}
