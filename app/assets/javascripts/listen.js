$(document).ready(function() {
  $('#blue').click(function(){
    $('#blue').css('width','150px');
    alert('ho!');
    $('#green').resize();
  });

  $('#green').resize(function(){
    var h = $('#green').height();
    var w = $('#green').width()
    $('#green').height(w);
    $('#green').width(h);
  });

  $('#red').resize(function(){
    var h = $('#red').height();
    var w = $('#red').width()
    $('#red').height(h+5);
    $('#red').width(w+5);
  });

  $('#red').click(function(){
    var button= $('<button class="butt">I am a button!</button>');
    $('.container').append(button);
    button.click(function(){
      $('#green').resize();
      $('#red').resize();
    });
  });

  $('#red').on('dblclick', function(){
    $('#blue').click();
  });
});
