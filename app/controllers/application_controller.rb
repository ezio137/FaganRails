class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :need_login, :unless => lambda { |controller|
    controller_name == 'sessions' || controller_name == 'home'
  }
  
  protected
  def need_login
    unless already_logged_in?
      session[:url_desejada] = request.url
      redirect_to new_session_path
    end
  end
  
  def already_logged_in?
    !session[:usuario_id].nil?
  end
end
