class UsersController < ApplicationController

  def index
    @user = current_user
    @events = Event.all
  end

  def new
  end

  def create
    @user = User.new
    @user.name = params[:name]
    @user.email = params[:email]
    @user.password = params[:password]
    @user.desc = params[:desc]
    @user.user_type_id = 2
    @user.img = "https://cdn3.iconfinder.com/data/icons/avatars-9/145/Avatar_Pig-512.png"
    if @user.save
      session[:user_id] = @user.id
      redirect_to '/users'
    else
      redirect_to '/'
    end
  end

  def show

  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.name = params[:name]
    user.email = params[:email]
    user.password = params[:password]
    user.desc = params[:desc]
    user.img = params[:img]
    if user.save
      redirect_to '/users'
    else
      render :edit
    end
  end

  def destroy

  end

  def apply
    event_speaker = EventSpeaker.new
    event_speaker.user_id = session[:user_id]
    event_speaker.event_id = params[:event]
    event_speaker.topic = params[:topic]
    event_speaker.content = params[:content]
    event_speaker.application_status = "applying"
    event_speaker.save
    redirect_to '/users'
  end

end
