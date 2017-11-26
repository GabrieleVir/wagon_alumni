$(document).on('turbolinks:load', function() {

  // If there is student in the URL, show the modal of the student
  if(parseParam('student')) {
    populateModalWithId(parseParam('student'));

  }

  // Clicking on a card
  $('.students-list-item').on('click', function(){
    // Finding all the datas in the DOM
    var id = $(this).attr('id');
    var next = $(this).data('next');
    var prev = $(this).data('previous');
    var href = $(this).attr('data-href');
    //You can click only if it is not a fake
    if(!$(this).data('fake')) {
      addParam('student=' + id);
      initModal(id, href, prev, next);
    }

  })

  //Javascript when the modal is active starts
  $('.modal-student-cross').on('click', function(){
    closeModal();
  })

  $(document).on('keyup', function(e){
    //If the escape key is clicked, then close the modal
    if(e.keyCode == 27){
      closeModal();
    }
  })

  // click out modal
  $(document).on('click', '.modal-student-container', function() {
    escapeFromModal();
  });

  $('.modal-student, .link-in-card, .github-in-card').on('click', function(e) { e.stopPropagation() });


  // click on arrows
  $('.modal-student-arrow').on('click', function(e) {
    var id = $(this).attr('data-id');
    e.stopPropagation();

    if (id) {
      populateModalWithId(id);
      addParam('student=' + id);
    }
  });


  //Functions used for the modal
  function initModal(id,href,prev,next){
    /*Everything that has to be added in the modal
     * id (for all the datas)
     * href (for the links)
     * prev (for arrow back)
     * next (for arrow next)
     * avatarUrl for the avatar picture
     * name for the tooltip
     *There is a condition to put: If the picture is a student then show modal
     */
    var avatarUrl = $("#" + id).find('img').attr('src');
    var name = $('#' + id).find('h2').text();
    $('.modal-student-container').addClass('is-active');
    $('.nav-items').addClass('is-active');
    $('.container').addClass('no-scroll');

    //For the avatar
    $('.modal-student-avatar').css('background',"linear-gradient(rgba(0, 0, 0, 0.15), rgba(0, 0, 0, 0.15)), url('" + avatarUrl + "')")
    //For the tooltip to open
    $('.modal-student-avatar').attr('data-original-title', name)

    //For the link
    $('.modal-student-url').attr('href', href)

    initArrows(prev, next)
  }

  function initArrows(prev, next){
    if(prev !== false) {
      //Put the avatar, put the previous and next too in the arrows
      var prevName = $("#" + prev).find('h2').text();
      var prevUrl =  $("#" + prev).find('img').attr('src');
      $('[data-toggle="tooltip"].is-prev').tooltip('enable')
      $('.modal-student-arrow.is-prev').attr('data-id', prev);
      $('.modal-student-arrow.is-prev span').css('background', "linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url('" + prevUrl + "')")
      $('.modal-student-arrow.is-prev').attr('data-original-title', prevName)
      $('.modal-student-arrow.is-prev').attr('title', prevName)
      $('.tooltip-inner').text(prevName)
      $('.modal-student-arrow.is-prev').removeClass('is-disabled');
    } else {
      $('.tooltip').remove();
      $('[data-toggle="tooltip"].is-prev').tooltip('disable')
      $('.modal-student-arrow.is-prev').addClass('is-disabled');
    }

    if(next !== false) {
      var nextName = $("#" + next).find('h2').text();
      var nextUrl =  $("#" + next).find('img').attr('src');
      $('[data-toggle="tooltip"].is-next').tooltip('enable')
      $('.modal-student-arrow.is-next').attr('data-original-title', nextName)
      $('.modal-student-arrow.is-next').attr('title', nextName)
      $('.tooltip-inner').text(nextName)
      $('.modal-student-arrow.is-next').attr('data-id', next);
      $('.modal-student-arrow.is-next span').css('background', "linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url('" + nextUrl + "')")
      $('.modal-student-arrow.is-next').removeClass('is-disabled');
    } else {
      $('.tooltip').remove();
      $('[data-toggle="tooltip"].is-next').tooltip('disable')
      $('.modal-student-arrow.is-next').addClass('is-disabled');
    }
  }

  //Get the news data-prev and next for the modals
  function populateModalWithId(id) {
    var el = $("#" + id);

    if ($(el).length && !$(el).data('fake')) {
      initModal(id, el.data('href'), el.data('previous'), el.data('next'));
    }
  }

  function closeModal(){
    $('.modal-student-container').removeClass('is-active');
    $('.nav-items').removeClass('is-active');
    $('.container').removeClass('no-scroll');
    clearParams();
  }


});

  $(function() {
    $('[data-toggle="tooltip"]').tooltip();
  })
