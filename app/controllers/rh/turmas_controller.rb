class Rh::TurmasController < ApplicationController
  # GET /rh/turmas
  # GET /rh/turmas.json
  def index
    @rh_turmas = Rh::Turma.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rh_turmas }
    end
  end

  # GET /rh/turmas/1
  # GET /rh/turmas/1.json
  def show
    @rh_turma = Rh::Turma.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rh_turma }
    end
  end

  # GET /rh/turmas/new
  # GET /rh/turmas/new.json
  def new
    @rh_turma = Rh::Turma.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rh_turma }
    end
  end

  # GET /rh/turmas/1/edit
  def edit
    @rh_turma = Rh::Turma.find(params[:id])
  end

  # POST /rh/turmas
  # POST /rh/turmas.json
  def create
    @rh_turma = Rh::Turma.new(params[:rh_turma])

    respond_to do |format|
      if @rh_turma.save
        format.html { redirect_to @rh_turma, notice: 'Turma was successfully created.' }
        format.json { render json: @rh_turma, status: :created, location: @rh_turma }
      else
        format.html { render action: "new" }
        format.json { render json: @rh_turma.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rh/turmas/1
  # PUT /rh/turmas/1.json
  def update
    @rh_turma = Rh::Turma.find(params[:id])

    respond_to do |format|
      if @rh_turma.update_attributes(params[:rh_turma])
        format.html { redirect_to @rh_turma, notice: 'Turma was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @rh_turma.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rh/turmas/1
  # DELETE /rh/turmas/1.json
  def destroy
    @rh_turma = Rh::Turma.find(params[:id])
    @rh_turma.destroy

    respond_to do |format|
      format.html { redirect_to rh_turmas_url }
      format.json { head :ok }
    end
  end
end
