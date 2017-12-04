$(document).on('turbolinks:load', function() {

  $('#searchString').keyup(function(e) {
      clearTimeout($.data(this, 'timer'));
      if (e.keyCode == 13)
        search(true);
      else
        $(this).data('timer', setTimeout(search, 500));
  });

  //Clicking out of the search bar
  $('.batches-container').on('click', function(){
    $('#results').hide();
  });

  $('#results, .form-control').on('click', function(e) { e.stopPropagation() });

});


function search(force) {
    var existingString = $("#searchString").val();
    if (!force && existingString.length < 2) return; //wasn't enter, not > 2 char
    $.ajax({
      type: "GET",
      url: '/batches/batch_search/' + existingString,
      data: {'_searchLetter': existingString}
    }).done(function(response) {
        $('#results').html(response);
        $('#results').show();
    });
}
