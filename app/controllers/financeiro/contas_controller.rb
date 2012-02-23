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
  end

  def create
    @conta = Financeiro::Conta.new(params[:conta])

    respond_to do |format|
      if @conta.save
        format.html { redirect_to @conta, notice: 'Conta foi criada com sucesso.' }
        format.json { render json: @conta, status: :created, location: @conta }
      else
        format.html { render action: "new" }
        format.json { render json: @conta.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @conta = Financeiro::Conta.find(params[:id])

    respond_to do |format|
      if @conta.update_attributes(params[:conta])
        format.html { redirect_to @conta, notice: 'Conta foi atualizada com sucesso.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @conta.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @conta = Financeiro::Conta.find(params[:id])
    @conta.destroy

    respond_to do |format|
      format.html { redirect_to financeiro_contas_url }
      format.json { head :ok }
    end
  end
end
