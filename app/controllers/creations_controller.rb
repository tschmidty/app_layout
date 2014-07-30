class CreationsController < ApplicationController
  before_action :set_creation, only: [:show, :edit, :update, :destroy]

  # GET /creations
  # GET /creations.json
  def index
    @creations = Creation.all
  end

  # GET /creations/1
  # GET /creations/1.json
  def show
        @creation = Creation.find(params[:id])
  end

  # GET /creations/new
  def new
    @creation = Creation.new
  end

  # GET /creations/1/edit
  def edit
  end

  # POST /creations
  # POST /creations.json
  def create
    @creation = Creation.new(creation_params)

    respond_to do |format|
      if @creation.save
        format.html { redirect_to @creation, notice: 'Creation was successfully created.' }
        format.json { render action: 'show', status: :created, location: @creation }
      else
        format.html { render action: 'new' }
        format.json { render json: @creation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /creations/1
  # PATCH/PUT /creations/1.json
  def update
    respond_to do |format|
      if @creation.update(creation_params)
        format.html { redirect_to @creation, notice: 'Creation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @creation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /creations/1
  # DELETE /creations/1.json
  def destroy
    @creation.destroy
    respond_to do |format|
      format.html { redirect_to creations_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_creation
      @creation = Creation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def creation_params
      params.require(:creation).permit(:name, :stage, :revision, :description, :created_at, :updated_at, :project_id, :file_file_name, :file_content_type, :file_file_size, :file_updated_at, :designer_id, :hours, :client_id, :status, :color_space, :bleed, :estimate_id)
    end
end
