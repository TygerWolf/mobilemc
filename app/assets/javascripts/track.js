$(document).ready(function(){

var counter = 0
var hook = 0

  $('body').keypress(function(e){
    if(e.which === 13){
      counter+=1;
      if (counter == 1) {setTimeout(function(){counter=0},500)}
      else if (counter == 2){
        saveTrack();
        }
      }  
  });  

  function saveTrack(){
    var $this = $('#new_track');
    var url = $this.attr('action');
    var method = $this.attr('method');
    var data = $this.serialize();

    $.ajax({
      url: url,
      type: method,
      dataType: 'script',
      data: data
    });
  }

  $('p').first().prepend('<h2>HOOK</h2>');
  $( "p:gt(0)" ).prepend('<h2>VERSE</h2>');

});

