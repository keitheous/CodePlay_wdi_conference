class HomesController < ApplicationController
  def index
    event_speakers = EventSpeaker.where(application_status: "approved")
    @speakers = []
    event_speakers.each do |event_speaker|
      @speakers << event_speaker.user
    end
    @speakers.uniq!
  end
end