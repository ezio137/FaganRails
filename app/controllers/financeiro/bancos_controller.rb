class Financeiro::BancosController < ApplicationController
  # GET /financeiro/bancos
  # GET /financeiro/bancos.json
  def index
    @financeiro_bancos = Financeiro::Banco.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @financeiro_bancos }
    end
  end

  # GET /financeiro/bancos/1
  # GET /financeiro/bancos/1.json
  def show
    @financeiro_banco = Financeiro::Banco.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @financeiro_banco }
    end
  end

  # GET /financeiro/bancos/new
  # GET /financeiro/bancos/new.json
  def new
    @financeiro_banco = Financeiro::Banco.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @financeiro_banco }
    end
  end

  # GET /financeiro/bancos/1/edit
  def edit
    @financeiro_banco = Financeiro::Banco.find(params[:id])
  end

  # POST /financeiro/bancos
  # POST /financeiro/bancos.json
  def create
    @financeiro_banco = Financeiro::Banco.new(params[:financeiro_banco])

    respond_to do |format|
      if @financeiro_banco.save
        format.html { redirect_to @financeiro_banco, notice: 'Banco was successfully created.' }
        format.json { render json: @financeiro_banco, status: :created, location: @financeiro_banco }
      else
        format.html { render action: "new" }
        format.json { render json: @financeiro_banco.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /financeiro/bancos/1
  # PUT /financeiro/bancos/1.json
  def update
    @financeiro_banco = Financeiro::Banco.find(params[:id])

    respond_to do |format|
      if @financeiro_banco.update_attributes(params[:financeiro_banco])
        format.html { redirect_to @financeiro_banco, notice: 'Banco was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @financeiro_banco.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /financeiro/bancos/1
  # DELETE /financeiro/bancos/1.json
  def destroy
    @financeiro_banco = Financeiro::Banco.find(params[:id])
    @financeiro_banco.destroy

    respond_to do |format|
      format.html { redirect_to financeiro_bancos_url }
      format.json { head :ok }
    end
  end
end
