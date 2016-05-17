class SpeakersController < ApplicationController
  def index
    @speakers = Speaker.all
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