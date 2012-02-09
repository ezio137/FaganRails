class Financeiro::TransacoesController < ApplicationController
  # GET /financeiro/transacoes
  # GET /financeiro/transacoes.json
  def index
    @financeiro_transacoes = Financeiro::Transacao.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @financeiro_transacoes }
    end
  end

  # GET /financeiro/transacoes/1
  # GET /financeiro/transacoes/1.json
  def show
    @financeiro_transacao = Financeiro::Transacao.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @financeiro_transacao }
    end
  end

  # GET /financeiro/transacoes/new
  # GET /financeiro/transacoes/new.json
  def new
    @financeiro_transacao = Financeiro::Transacao.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @financeiro_transacao }
    end
  end

  # GET /financeiro/transacoes/1/edit
  def edit
    @financeiro_transacao = Financeiro::Transacao.find(params[:id])
  end

  # POST /financeiro/transacoes
  # POST /financeiro/transacoes.json
  def create
    @financeiro_transacao = Financeiro::Transacao.new(params[:financeiro_transacao])

    respond_to do |format|
      if @financeiro_transacao.save
        format.html { redirect_to @financeiro_transacao, notice: 'Transacao was successfully created.' }
        format.json { render json: @financeiro_transacao, status: :created, location: @financeiro_transacao }
      else
        format.html { render action: "new" }
        format.json { render json: @financeiro_transacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /financeiro/transacoes/1
  # PUT /financeiro/transacoes/1.json
  def update
    @financeiro_transacao = Financeiro::Transacao.find(params[:id])

    respond_to do |format|
      if @financeiro_transacao.update_attributes(params[:financeiro_transacao])
        format.html { redirect_to @financeiro_transacao, notice: 'Transacao was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @financeiro_transacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /financeiro/transacoes/1
  # DELETE /financeiro/transacoes/1.json
  def destroy
    @financeiro_transacao = Financeiro::Transacao.find(params[:id])
    @financeiro_transacao.destroy

    respond_to do |format|
      format.html { redirect_to financeiro_transacoes_url }
      format.json { head :no_content }
    end
  end
end
