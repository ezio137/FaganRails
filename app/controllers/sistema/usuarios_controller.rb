class Sistema::UsuariosController < ApplicationController
  def new
    @usuario = Sistema::Usuario.new
  end
  
  def create
    @usuario = Sistema::Usuario.new(params[:sistema_usuario])
    if @usuario.save
      redirect_to root_url, :notice => "Usu&aacute;rio criado"
    else
      render "new"
    end
  end
end
