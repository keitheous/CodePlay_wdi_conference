$(document).ready(function() {
  $('.approve-button').on('click',function(event){
    $applyingList = $(this).closest('li');
    var event_speaker_id = $applyingList.data('event-speaker-id');
    $.ajax({
      url: '/api/apply',
      data: {id: event_speaker_id, status: 'approved'},
      method: 'put'
    }).done(function(response) {
      $applyingList.css('display','none');
    });
  });

  $('.reject-button').on('click',function(event){
    $applyingList = $(this).closest('li');
    var event_speaker_id = $applyingList.data('event-speaker-id');
    debugger
    $.ajax({
      url: '/api/apply',
      data: {id: event_speaker_id},
      method: 'delete'
    }).done(function() {
      debugger
      $applyingList.css('display','none');
    });
  });

  $('.admin-event-list').on('click','.edit-event-btn',function(event) {
    $eventList = $(this).closest('.admin-event-list');   
  });

});

