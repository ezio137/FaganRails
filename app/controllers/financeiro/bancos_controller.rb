class Financeiro::BancosController < ApplicationController
  respond_to :html, :js

  def index
    @bancos = Financeiro::Banco.all
    respond_with @bancos
  end

  def show
    @banco = Financeiro::Banco.find(params[:id])
    respond_with @banco
  end

  def new
    @banco = Financeiro::Banco.new
    respond_with @banco
  end

  def edit
    @banco = Financeiro::Banco.find(params[:id])
    respond_with @banco
  end

  def create
    @banco = Financeiro::Banco.new(params[:banco])
    flash[:notice] = "Banco foi criado com sucesso." if @banco.save
    respond_with @banco
  end

  def update
    @banco = Financeiro::Banco.find(params[:id])
    flash[:notice] = 'Banco foi atualizado com sucesso.' if @banco.update_attributes(params[:banco])
    respond_with @banco
  end

  def destroy
    @banco = Financeiro::Banco.find(params[:id])
    @banco.destroy
    respond_with @banco
  end
end
