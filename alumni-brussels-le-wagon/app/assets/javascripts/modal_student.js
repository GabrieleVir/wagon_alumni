$(document).on('turbolinks:load', function() {
  // If there is student in the URL, show the modal of the student
  if(parseParam('student')) {
    populateModalWithId(parseParam('student'));

  }

  // Clicking on a card
  $('.students-list-item').on('click', function(){
    // Finding all the datas in the DOM
    let id = $(this).attr('id');
    let next = $(this).data('next');
    let prev = $(this).data('previous');
    let href = $(this).attr('data-href');
    let project_id = $(this).data('project');
    //You can click only if it is not a fake
    if(!$(this).data('fake')) {
      addParam('student=' + id);
      initModal(id, href, prev, next, project_id);
    }

  });

  //Javascript when the modal is active starts
  $('.modal-student-cross').on('click', function(){
    closeModal();
  });

  $(document).on('keyup', function(e){
    //If the escape key is clicked, then close the modal
    if(e.keyCode == 27){
      closeModal();
    }
  });

  // click out modal
  $('.link-in-card, .github-in-card').on('click', function(e) { e.stopPropagation() });


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
  function initModal(id, href, prev, next, project_id){

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
    // Ajax call to ajaxController
    $.ajax({
      url: "/batches/ajax/" + project_id,
      data: {'_locale': parseUrlI18n},
      success: function (data) {
        $('.modal-student-container').html(data);
        // those functions exists only if the ajax is completed
          $('.modal-student-container').on('click', function() {
            closeModal();
          });

          $('.project-container').on('click', function(e) {
            e.stopPropagation();
          });


      }
    });
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
      initModal(id, el.data('href'), el.data('previous'), el.data('next'), el.data('project'));
    }
  }

  function closeModal(){
    $('.modal-student-container').removeClass('is-active');
    $('.modal-student-container').html('');
    $('.nav-items').removeClass('is-active');
    clearParams();
  }


});

  $(function() {
    $('[data-toggle="tooltip"]').tooltip();
  })
