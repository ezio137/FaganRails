class HomeController < ApplicationController
  before_filter :setSession
  
  def index
    
  end
  
  def setSession
    session[:modulo] = "home"
  end
end
