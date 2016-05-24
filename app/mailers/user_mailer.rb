class UserMailer < ApplicationMailer

  def signup_confirmation(user)
    @user = user

    mail to: user.email, subject: "Sign Up Confirmation"
  end

  def checkout_confirmation(ticket)
    @ticket = ticket
    mail to: ticket.email, subject: "Purchase WDICONF Ticket Confrimation"
  end
end
