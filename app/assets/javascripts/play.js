$(document).ready(function() {
    $('#button').click(function(e) {
    	e.preventDefault();
        $('#wrapper').animate({bottom:"+=700px"}, 6000);
     });
});