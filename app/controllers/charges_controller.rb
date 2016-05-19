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
    @amount = 500

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

    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_charge_path

  end

end
