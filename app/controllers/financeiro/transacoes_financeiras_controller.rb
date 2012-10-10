class TransacoesController < ApplicationController
  respond_to :html, :js

  def index
    @transacoes = TransacaoFinanceira.all
    respond_with @transacoes
  end

  def show
    @transacao = TransacaoFinanceira.find(params[:id])
    respond_with @transacao
  end

  def new
    @transacao = TransacaoFinanceira.new
    respond_with @transacao
  end

  def edit
    @transacao = TransacaoFinanceira.find(params[:id])
    respond_with @transacao
  end

  def create
    @transacao = TransacaoFinanceira.new(params[:transacao])
    flash[:notice] = 'Transação foi criada com sucesso.' if @transacao.save
    respond_with @transacao
  end

  def update
    @transacao = TransacaoFinanceira.find(params[:id])
    flash[:notice] = 'Transação foi atualizada com sucesso.' if @transacao.update_attributes(params[:transacao])
    respond_with @transacao
  end

  def destroy
    @transacao = TransacaoFinanceira.find(params[:id])
    @transacao.destroy
    respond_with @transacao
  end
end
