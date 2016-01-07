$( document ).ready(function() {
  console.log("document ready fired");
  $('#change').text($('#change').text()+ " modified!");
  $.ajax('/promise/script');
});
