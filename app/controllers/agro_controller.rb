class AgroController < ApplicationController
  before_filter :setSession
  
  def index
    
  end
  
  def setSession
    session[:modulo] = "agro"
  end
end
