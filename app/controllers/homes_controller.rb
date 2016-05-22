class HomesController < ApplicationController
  def index
    event_speakers = EventSpeaker.where(application_status: "approved")
    @speakers = []
    event_speakers.each do |event_speaker|
      @speakers << event_speaker.user
    end
    @speakers.uniq!

    # ====== show all events on the schedule of homepage====
    @events = Event.all  
  end
end
