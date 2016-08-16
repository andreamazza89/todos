class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def authenticate
    if !signed_in?
      redirect_to new_session_path
    end
  end

  def set_session_email(email)
    session[:current_email] = email 
  end

  def get_session_email
    session[:current_email]
  end

#private

  def signed_in?
    get_session_email.present?
  end
end
