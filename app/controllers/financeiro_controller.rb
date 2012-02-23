class FinanceiroController < ApplicationController
  before_filter :setSession
  
  def index
    
  end
  
  def setSession
    session[:modulo] = "financeiro"
  end
end
