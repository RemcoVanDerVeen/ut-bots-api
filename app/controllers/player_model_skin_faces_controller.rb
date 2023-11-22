class PlayerModelSkinFacesController < ApplicationController
  before_action :set_player_model_skin_face, only: %i[ show edit update destroy ]

  # GET /player_model_skin_faces or /player_model_skin_faces.json
  def index
    @player_model_skin_faces = PlayerModelSkinFace.all
  end

  # GET /player_model_skin_faces/1 or /player_model_skin_faces/1.json
  def show
  end

  # GET /player_model_skin_faces/new
  def new
    @player_model_skin_face = PlayerModelSkinFace.new
  end

  # GET /player_model_skin_faces/1/edit
  def edit
  end

  # POST /player_model_skin_faces or /player_model_skin_faces.json
  def create
    @player_model_skin_face = PlayerModelSkinFace.new(player_model_skin_face_params)

    respond_to do |format|
      if @player_model_skin_face.save
        format.html { redirect_to player_model_skin_face_url(@player_model_skin_face), notice: "Player model skin face was successfully created." }
        format.json { render :show, status: :created, location: @player_model_skin_face }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @player_model_skin_face.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /player_model_skin_faces/1 or /player_model_skin_faces/1.json
  def update
    respond_to do |format|
      if @player_model_skin_face.update(player_model_skin_face_params)
        format.html { redirect_to player_model_skin_face_url(@player_model_skin_face), notice: "Player model skin face was successfully updated." }
        format.json { render :show, status: :ok, location: @player_model_skin_face }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @player_model_skin_face.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /player_model_skin_faces/1 or /player_model_skin_faces/1.json
  def destroy
    @player_model_skin_face.destroy

    respond_to do |format|
      format.html { redirect_to player_model_skin_faces_url, notice: "Player model skin face was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player_model_skin_face
      @player_model_skin_face = PlayerModelSkinFace.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def player_model_skin_face_params
      params.fetch(:player_model_skin_face, {})
    end
end
