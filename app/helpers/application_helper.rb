module ApplicationHelper
  def usuario_atual
    @usuario_atual ||= Sistema::Usuario.find(session[:usuario_id]) if session[:usuario_id]
  end

  def modulos
    if usuario_atual
      @modulos ||= usuario_atual.acoes_modulos
    else
      nil
    end
  end
  
  def submodulos
    if usuario_atual
      @submodulos = usuario_atual.acoes_submodulos_by_modulo(session[:modulo])
    else
      nil
    end
  end

end
