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
  end

  def create
    @transacao = Financeiro::Transacao.new(params[:transacao])

    respond_to do |format|
      if @transacao.save
        format.html { redirect_to @transacao, notice: 'Transacao was successfully created.' }
        format.json { render json: @transacao, status: :created, location: @transacao }
      else
        format.html { render action: "new" }
        format.json { render json: @transacao.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @transacao = Financeiro::Transacao.find(params[:id])

    respond_to do |format|
      if @transacao.update_attributes(params[:transacao])
        format.html { redirect_to @transacao, notice: 'Transacao was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @transacao.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @transacao = Financeiro::Transacao.find(params[:id])
    @transacao.destroy

    respond_to do |format|
      format.html { redirect_to financeiro_transacoes_url }
      format.json { head :no_content }
    end
  end
end
