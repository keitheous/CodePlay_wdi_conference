module Api
  class ApplyingsController < ApplicationController
    def update
      event_speaker = EventSpeaker.find(params[:id])
      event_time = event_speaker.event.time
      hourArray = params[:time].split(":")
      talk_time = DateTime.new(event_time.year,event_time.month, event_time.day,hourArray[0].to_i,hourArray[1].to_i)
      event_speaker.talk_time = talk_time
      event_speaker.application_status = params[:status]
      event_speaker.save
      render json: event_speaker.to_json
    end

    def destroy
      event_speaker = EventSpeaker.find(params[:id])
      event_speaker.destroy
      @pendingApplyings = EventSpeaker.where(application_status: "applying")
      render json: @pendingApplyings.to_json
    end
  end
end