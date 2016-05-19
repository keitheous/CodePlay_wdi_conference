class SessionsController < ApplicationController
  def loginpage

  end

  def login
    @user = User.find_by(name: params[:name])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      render :index
    else
      render :loginpage
    end
  end

  def logout
    session[:user_id] = nil
    render :index
  end

end
