class ApplicationController < ActionController::Base
  protect_from_forgery
  
  private
  
  def modulos
  	if usuario_atual
  		@modulos ||= usuario_atual.acoes_by_nome_tipo_acao("modulo")
  	else
  		nil
  	end
  end
  
  def usuario_atual
    @usuario_atual ||= Sistema::Usuario.find(session[:usuario_id]) if session[:usuario_id]
  end
  helper_method :usuario_atual, :modulos
end
