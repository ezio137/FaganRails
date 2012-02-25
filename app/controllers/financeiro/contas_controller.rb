class Financeiro::ContasController < ApplicationController
  respond_to :html, :js
  
  def index
    @contas = Financeiro::Conta.all
    respond_with @contas
  end

  def show
    @conta = Financeiro::Conta.find(params[:id])
    respond_with @conta
  end

  def new
    @conta = Financeiro::Conta.new
    respond_with @conta
  end

  def edit
    @conta = Financeiro::Conta.find(params[:id])
    respond_with @conta
  end

  def create
    @conta = Financeiro::Conta.new(params[:conta])
    flash[:notice] = 'Conta foi criada com sucesso.' if @conta.save
    respond_with @conta
  end

  def update
    @conta = Financeiro::Conta.find(params[:id])
    flash[:notice] = 'Conta foi atualizada com sucesso.' if @conta.update_attributes(params[:conta])
    respond_with @conta
  end

  def destroy
    @conta = Financeiro::Conta.find(params[:id])
    @conta.destroy
    respond_with @conta
  end
end
