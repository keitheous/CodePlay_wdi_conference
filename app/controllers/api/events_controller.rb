module Api
    class EventsController < ApplicationController

      def index
        @events = Event.all
        render json: @events.to_json
      end

      def new
      end

      def create
        event = Event.new
        event.name = Event.first
        event.time = params[:time]
        event.total_seats = params[:total_seats].to_id
        if event.save
          # generate seats after add event
          tatal_seats = event.total_seats
          seats_per_row = 10
          seats_arr = generate_seats(tatal_seats, seats_per_row,event)
          redirect_to '/events'
        else
          render :new
        end
      end

      def edit
        @event = Event.find(params[:id])
        render json: @event.to_json
      end

      def update
        event = Event.find(params[:id])
        event.name = Event.first
        event.time = params[:time]
        event.save
        render json: event.to_json
      end

      def destroy
        event = Event.find(params[:id])
        event.destroy
        render json: 200.to_json
      end

    end
end
