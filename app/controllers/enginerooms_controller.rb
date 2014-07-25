class EngineroomsController < ApplicationController
  before_action :set_engineroom, only: [:show, :edit, :update, :destroy]

  # GET /enginerooms
  # GET /enginerooms.json
  def index
    @enginerooms = Engineroom.all
  end

  # GET /enginerooms/1
  # GET /enginerooms/1.json
  def show
  end

  # GET /enginerooms/new
  def new
    @engineroom = Engineroom.new
  end

  # GET /enginerooms/1/edit
  def edit
  end

  # POST /enginerooms
  # POST /enginerooms.json
  def create
    @engineroom = Engineroom.new(engineroom_params)

    respond_to do |format|
      if @engineroom.save
        format.html { redirect_to @engineroom, notice: 'Engineroom was successfully created.' }
        format.json { render :show, status: :created, location: @engineroom }
      else
        format.html { render :new }
        format.json { render json: @engineroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /enginerooms/1
  # PATCH/PUT /enginerooms/1.json
  def update
    respond_to do |format|
      if @engineroom.update(engineroom_params)
        format.html { redirect_to @engineroom, notice: 'Engineroom was successfully updated.' }
        format.json { render :show, status: :ok, location: @engineroom }
      else
        format.html { render :edit }
        format.json { render json: @engineroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enginerooms/1
  # DELETE /enginerooms/1.json
  def destroy
    @engineroom.destroy
    respond_to do |format|
      format.html { redirect_to enginerooms_url, notice: 'Engineroom was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_engineroom
      @engineroom = Engineroom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def engineroom_params
      params.require(:engineroom).permit(:noise_id, :oilcolor_id)
    end
end
