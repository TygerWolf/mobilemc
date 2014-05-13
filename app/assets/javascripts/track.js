$(document).ready(function(){

var counter = 0

  $('body').keypress(function(e){
    if(e.which === 13){
      counter+=1;
      if (counter == 1) {setTimeout(function(){counter=0},500)}
      else if (counter == 2){alert('twice')}
    }
  });      

});