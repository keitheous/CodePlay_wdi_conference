module Api
  class SeatsController < ApplicationController

    def index
      @seats = Seat.order(:id)
      render json: @seats.to_json(include: :ticket)
    end

    def update
      # expecting front end pass seat_id: params[:seat_id]
      seat = Seat.find(params[:id].to_i)
      # expecting front end pass seat status: params[:status]
      seat.status = params[:status]
      seat.save
      render json: seat.to_json
    end

  end

end
