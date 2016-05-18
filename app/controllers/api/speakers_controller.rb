module Api
    class SpeakersController < ApplicationController
      def index
        @speakers = Speaker.all
        render json: @speakers.to_json
      end

      def new
      end

      def create
        speaker = Speaker.new
        speaker.name = params[:name]
        speaker.desc = params[:desc]
        speaker.img = params[:img]
        if speaker.save
          redirect_to '/speakers'
        else
          render :new
        end
      end

      def edit
        @speaker = Speaker.find(params[:id])
        render json: @speaker.to_json
      end

      def update
        speaker = Speaker.find(params[:id])
        speaker.name = params[:name]
        speaker.desc = params[:desc]
        speaker.img = params[:img]
        if speaker.save
          redirect_to '/speakers'
        else
          render :new
        end
      end

      def destroy
        speaker = Speaker.find(params[:id])
        speaker.destroy
        redirect_to '/speakers'
      end

    end
end
