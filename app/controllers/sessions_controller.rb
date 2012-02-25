class SessionsController < ApplicationController
  def new
    
  end
  
  def create
    usuario = Sistema::Usuario.find_by_login(params[:login])
    if usuario && usuario.authenticate(params[:password])
      session[:usuario_id] = usuario.id
      redirect_to session[:url_desejada], :notice => "Login efetuado!"
    else
      flash.now.alert = "Login ou senha incorretos"
      render "new"
    end
  end
  
  def destroy
    session[:usuario_id] = nil
    redirect_to root_url, :notice => "Logout efetuado!"
  end
end
