class SessionsController < ApplicationController
  def loginpage

  end

  def login
    @user = User.find_by(name: params[:name])
    if @user && @user.authenticate(params[:password])
      render :index
    else
      render :loginpage
    end
  end

end
