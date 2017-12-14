$(document).on('ready', function() {

  // If there is a loader, hide it when the page has loaded
  // if($('.loader')){
  //   $('.loader').fadeOut("slow", function () {
  //     $(this).remove();
  //   });
  // }

  $.each($('.card-front'), function () {
  }).promise().done(function () {



    var i = 0,
        numberOfCards = $('.students-list-item').length,
        cardsPerRow = $('.students-list-item').data('per-row'),
        cardsPerColumn = numberOfCards/cardsPerRow,
        numberOfIterations = cardsPerRow + cardsPerColumn - 1;

    /**
     * calls the function flipCards() : line 43
     */
    setTimeout(flipCards, 500);

    /**
     * flips the cards in cascading (w timeout)
     */
    function flipCards(){

      //timeout each level of cascade
      setTimeout(function () {
        let cardsToFlip = getCardElements(i, cardsPerColumn, cardsPerRow);

        $.each(cardsToFlip, function () {
          var card = $(this);
          card.removeClass('hovered');
        });

        if(++i < numberOfIterations){
          flipCards();
        }
      }, 299);
    } // end of flipcards
  });

function getCardElements(ind, numCols, numRows){
  let elements = [];
  if(ind < numRows){
    for (let j = 0; j <= ind && j < numCols; j++) {
      let index = ind + j*(numRows-1);
      elements.push($('#' + index));
    }
  } else {
    for(let j = ind-numRows+1 ; j < numCols; j++){
      let index = ind + j*(numRows-1);
      elements.push($('#' + index));
    }
  }
  return elements;
}
});
