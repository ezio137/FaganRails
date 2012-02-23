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
  end

  def create
    @banco = Financeiro::Banco.new(params[:banco])

    respond_to do |format|
      if @banco.save
        format.html { redirect_to @banco, notice: 'Banco foi criado com sucesso.' }
        format.json { render json: @banco, status: :created, location: @banco }
      else
        format.html { render action: "new" }
        format.json { render json: @banco.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /financeiro/bancos/1
  # PUT /financeiro/bancos/1.json
  def update
    @banco = Financeiro::Banco.find(params[:id])

    respond_to do |format|
      if @banco.update_attributes(params[:banco])
        format.html { redirect_to @banco, notice: 'Banco foi atualizado com sucesso.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @banco.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @banco = Financeiro::Banco.find(params[:id])
    @banco.destroy

    respond_to do |format|
      format.html { redirect_to financeiro_bancos_url }
      format.json { head :ok }
    end
  end
end
