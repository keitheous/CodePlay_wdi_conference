class ChargesController < ApplicationController

  def index
    @seats = params[:seats_list]
    @seats = @seats.split(',')
    @seats = @seats.map do |seat_num|
      if seat_num[0] == "A"
        type = "Premium"
        price = 125
      else
        type = "General"
        price = 75
      end
      {type: type, price: price, seat_num: seat_num}
    end

    @total = 0
    @seats.each do |seat|
      @total = @total + seat[:price]
    end

    render :new
  end

  def create
    # Amount in cents
    # raise 'sdfdsf'
    @amount = params[:total].to_i*100

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Rails Stripe customer',
      :currency    => 'aud'
    )

    seats_list = eval(params[:tickets_list])
    byebug
    seats_list.each do |ticket|

      new_ticket = Ticket.new
      new_ticket.email = params[:stripeEmail]
      new_ticket.stripe_token = params[:stripeToken]
      new_ticket.save
      # raise err
      seat = Seat.find_by(seat_num: "C5")
      seat.ticket
      # new_ticket = ticket[:seat_num]


    end


    rescue Stripe::CardError => e
      flash[:error] = e.message
      # raise 'erer'
      redirect_to new_charge_path

    # num_of_tickets = params[:num_of_tickets].to_i
    # num_of_tickets.times do
    #   ticket = Ticket.new
    #   ticket.seat_no =
    #   ticket.event_id = Event.first.id
    #   ticket.user_id = User.first.id
    #   ticket.save
    # end

  end

end
