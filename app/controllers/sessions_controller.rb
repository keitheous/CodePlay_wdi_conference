class SessionsController < ApplicationController
  def loginpage

  end

  def login
    @user = User.find_by(name: params[:name])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      if @user.user_type.group == "admin"
        redirect_to '/events'
      else 
        redirect_to "/" 
      end
    else
      redirect_to "/"
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to "/"
  end

end
