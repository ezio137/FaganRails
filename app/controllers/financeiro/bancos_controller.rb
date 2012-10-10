class BancosController < ApplicationController
  respond_to :html, :js

  def index
    @bancos = Banco.all
    respond_with @bancos
  end

  def show
    @banco = Banco.find(params[:id])
    respond_with @banco
  end

  def new
    @banco = Banco.new
    respond_with @banco
  end

  def edit
    @banco = Banco.find(params[:id])
    respond_with @banco
  end

  def create
    @banco = Banco.new(params[:banco])
    flash[:notice] = "Banco foi criado com sucesso." if @banco.save
    respond_with @banco
  end

  def update
    @banco = Banco.find(params[:id])
    flash[:notice] = 'Banco foi atualizado com sucesso.' if @banco.update_attributes(params[:banco])
    respond_with @banco
  end

  def destroy
    @banco = Banco.find(params[:id])
    @banco.destroy
    respond_with @banco
  end
end
