class ContasFinanceirasController < ApplicationController
  respond_to :html, :js
  
  def index
    @contas = ContaFinanceira.all
    respond_with @contas
  end

  def show
    @conta = ContaFinanceira.find(params[:id])
    respond_with @conta
  end

  def new
    @conta = ContaFinanceira.new
    respond_with @conta
  end

  def edit
    @conta = ContaFinanceira.find(params[:id])
    respond_with @conta
  end

  def create
    @conta = ContaFinanceira.new(params[:conta])
    flash[:notice] = 'Conta foi criada com sucesso.' if @conta.save
    respond_with @conta
  end

  def update
    @conta = ContaFinanceira.find(params[:id])
    flash[:notice] = 'Conta foi atualizada com sucesso.' if @conta.update_attributes(params[:conta])
    respond_with @conta
  end

  def destroy
    @conta = ContaFinanceira.find(params[:id])
    @conta.destroy
    respond_with @conta
  end
end
