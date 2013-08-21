class DellsController < ApplicationController
  # GET /dells
  # GET /dells.json
  def index
    @dells = Dell.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dells }
    end
  end

  # GET /dells/1
  # GET /dells/1.json
  def show
    @dell = Dell.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dell }
    end
  end

  # GET /dells/new
  # GET /dells/new.json
  def new
    @dell = Dell.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dell }
    end
  end

  # GET /dells/1/edit
  def edit
    @dell = Dell.find(params[:id])
  end

  # POST /dells
  # POST /dells.json
  def create
    @dell = Dell.new(params[:dell])

    respond_to do |format|
      if @dell.save
        format.html { redirect_to @dell, notice: 'Dell was successfully created.' }
        format.json { render json: @dell, status: :created, location: @dell }
      else
        format.html { render action: "new" }
        format.json { render json: @dell.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dells/1
  # PUT /dells/1.json
  def update
    @dell = Dell.find(params[:id])

    respond_to do |format|
      if @dell.update_attributes(params[:dell])
        format.html { redirect_to @dell, notice: 'Dell was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dell.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dells/1
  # DELETE /dells/1.json
  def destroy
    @dell = Dell.find(params[:id])
    @dell.destroy

    respond_to do |format|
      format.html { redirect_to dells_url }
      format.json { head :no_content }
    end
  end
end
