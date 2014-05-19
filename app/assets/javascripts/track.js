

$(document).ready(function(){

  $('#new_lyric').submit(function(){
    var $this = $('#new_lyric');
    var url = $this.attr('action');
    var method = $this.attr('method');
    var data = $this.serialize();

    // $.ajax({
    //   url: url,
    //   type: method,
    //   dataType: 'script',
    //   data: data
    // });
  }
});


// var counter = 0
// var hook = 0

  // $('#new_lyric').submit(function(e){
  //   // if(e.which === 13){
  //   //   counter+=1;
  //   //   if (counter == 1) {setTimeout(function(){counter=0},500)}
  //   //   else if (counter == 2){
  //       saveTrack();
  // });


