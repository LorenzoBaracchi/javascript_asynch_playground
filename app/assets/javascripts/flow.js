function compute(op, callback){
  var operation = encodeURIComponent(op);
  $.ajax({url: "/flow/compute.js?q="+operation,})
   .done(function( data ) {
     callback(null, data);
   });
}
function computedelay(op, callback){
  var operation = encodeURIComponent(op);
  $.ajax({url: "/flow/computedelay.js?q="+operation,})
   .done(function( data ) {
     callback(null, data);
   });
}
