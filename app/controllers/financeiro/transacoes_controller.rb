class Financeiro::TransacoesController < ApplicationController
  respond_to :html, :js

  def index
    @transacoes = Financeiro::Transacao.all
    respond_with @transacoes
  end

  def show
    @transacao = Financeiro::Transacao.find(params[:id])
    respond_with @transacao
  end

  def new
    @transacao = Financeiro::Transacao.new
    respond_with @transacao
  end

  def edit
    @transacao = Financeiro::Transacao.find(params[:id])
    respond_with @transacao
  end

  def create
    @transacao = Financeiro::Transacao.new(params[:transacao])
    flash[:notice] = 'Transação foi criada com sucesso.' if @transacao.save
    respond_with @transacao
  end

  def update
    @transacao = Financeiro::Transacao.find(params[:id])
    flash[:notice] = 'Transação foi atualizada com sucesso.' if @transacao.update_attributes(params[:transacao])
    respond_with @transacao
  end

  def destroy
    @transacao = Financeiro::Transacao.find(params[:id])
    @transacao.destroy
    respond_with @transacao
  end
end
