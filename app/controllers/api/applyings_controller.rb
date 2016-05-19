module Api
  class ApplyingsController < ApplicationController
    def update
      event_speaker = EventSpeaker.find(params[:id])
      event_speaker.application_status = params[:status]
      event_speaker.save
      render json: event_speaker.to_json
    end

    def destroy
      event_speaker = EventSpeaker.find(params[:id])
      event_speaker.destroy
      render json: event_speaker.to_json
    end
  end
end