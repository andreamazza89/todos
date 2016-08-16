class SessionsController < ApplicationController
  def new
  end
  
  def create
    set_session_email(params[:session][:email])
    redirect_to root_path
  end
end
