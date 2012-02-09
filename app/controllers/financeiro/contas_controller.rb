class Financeiro::ContasController < ApplicationController
  # GET /financeiro/contas
  # GET /financeiro/contas.json
  def index
    @financeiro_contas = Financeiro::Conta.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @financeiro_contas }
    end
  end

  # GET /financeiro/contas/1
  # GET /financeiro/contas/1.json
  def show
    @financeiro_conta = Financeiro::Conta.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @financeiro_conta }
    end
  end

  # GET /financeiro/contas/new
  # GET /financeiro/contas/new.json
  def new
    @financeiro_conta = Financeiro::Conta.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @financeiro_conta }
    end
  end

  # GET /financeiro/contas/1/edit
  def edit
    @financeiro_conta = Financeiro::Conta.find(params[:id])
  end

  # POST /financeiro/contas
  # POST /financeiro/contas.json
  def create
    @financeiro_conta = Financeiro::Conta.new(params[:financeiro_conta])

    respond_to do |format|
      if @financeiro_conta.save
        format.html { redirect_to @financeiro_conta, notice: 'Conta foi criada com sucesso.' }
        format.json { render json: @financeiro_conta, status: :created, location: @financeiro_conta }
      else
        format.html { render action: "new" }
        format.json { render json: @financeiro_conta.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /financeiro/contas/1
  # PUT /financeiro/contas/1.json
  def update
    @financeiro_conta = Financeiro::Conta.find(params[:id])

    respond_to do |format|
      if @financeiro_conta.update_attributes(params[:financeiro_conta])
        format.html { redirect_to @financeiro_conta, notice: 'Conta foi atualizada com sucesso.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @financeiro_conta.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /financeiro/contas/1
  # DELETE /financeiro/contas/1.json
  def destroy
    @financeiro_conta = Financeiro::Conta.find(params[:id])
    @financeiro_conta.destroy

    respond_to do |format|
      format.html { redirect_to financeiro_contas_url }
      format.json { head :ok }
    end
  end
end
