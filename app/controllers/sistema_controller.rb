class SistemaController < ApplicationController
  before_filter :setSession
  
  def index
    
  end
  
  def setSession
    session[:modulo] = "sistema"
  end
end
