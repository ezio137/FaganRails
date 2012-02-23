class MercadoController < ApplicationController
  before_filter :setSession
  
  def index
    
  end
  
  def setSession
    session[:modulo] = "mercado"
  end
end
