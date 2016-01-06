$( document ).ready(function() {
  console.log("document ready fired");
  $('#change').text($('#change').text()+ " modified with promise!");
  $.ajax('/promise/script');
});


var promise = Promise.resolve($(document).ready());
