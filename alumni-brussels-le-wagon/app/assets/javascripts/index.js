$(document).on('turbolinks:load', function() {

  $('#searchString').keyup(function(e) {
      clearTimeout($.data(this, 'timer'));
      if (e.keyCode == 13)
        search(true);
      else
        $(this).data('timer', setTimeout(search, 500));
  });

  //If the backspace is clicked then hide the results
  $('#searchString').keyup(function(e) {
    if(e.keyCode == 8){
      $('#results').hide();
    }
  });

  //If the escape key is clicked, then close the results
  $('#searchString').keyup(function(e) {
    if(e.keyCode == 27){
      $('#results').hide();
    }
  });
  //Clicking out of the search bar
  $('.batches-container').on('click', function(){
    $('#results').hide();
  });

  //Doesn't disappear if you click on the search bar or the results
  $('#results, .form-control').on('click', function(e) { e.stopPropagation() });

});


function search(force) {
    var existingString = $("#searchString").val();
    if (!force && existingString.length < 2) return; //wasn't enter, not > 2 char
    $.ajax({
      type: "GET",
      url: '/batches/batch_search/' + existingString,
      data: {
        '_searchLetter': existingString,
        '_locale': parseUrlI18n
      }
    }).done(function(response) {
        $('#results').html(response);
        if(response){
          $('#results').show();
        }
    });
}
