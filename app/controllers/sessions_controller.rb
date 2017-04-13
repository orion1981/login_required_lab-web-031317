class SessionsController < ApplicationController



  def new

  end

  def show

  end

  def create
    if params[:name].blank?
      redirect_to :login
    else
      session[:name] = params[:name]
      redirect_to :profile
    end
  end

  def destroy
    session.clear
    redirect_to '/'
  end
end
