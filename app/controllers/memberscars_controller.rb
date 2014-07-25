class MemberscarsController < ApplicationController
  before_action :set_memberscar, only: [:show, :edit, :update, :destroy]

  # GET /memberscars
  # GET /memberscars.json
  def index
    @memberscars = Memberscar.all
  end

  # GET /memberscars/1
  # GET /memberscars/1.json
  def show

    # Visit
    @visit = @memberscar.visit
    if @visit.nil?
      @visit = @memberscar.build_visit
    end

    # Inspection
    @inspection = @visit.inspection
    if @inspection.nil?
      @inspection = @visit.build_inspection
    end

  end

  # GET /memberscars/new
  def new
    @memberscar = Memberscar.new
  end

  # GET /memberscars/1/edit
  def edit
  end

  # POST /memberscars
  # POST /memberscars.json
  def create
    @memberscar = Memberscar.new(memberscar_params)

    respond_to do |format|
      if @memberscar.save
        format.html { redirect_to @memberscar, notice: 'Memberscar was successfully created.' }
        format.json { render :show, status: :created, location: @memberscar }
      else
        format.html { render :new }
        format.json { render json: @memberscar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /memberscars/1
  # PATCH/PUT /memberscars/1.json
  def update
    respond_to do |format|
      if @memberscar.update(memberscar_params)
        format.html { redirect_to @memberscar, notice: 'Memberscar was successfully updated.' }
        format.json { render :show, status: :ok, location: @memberscar }
      else
        format.html { render :edit }
        format.json { render json: @memberscar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /memberscars/1
  # DELETE /memberscars/1.json
  def destroy
    @memberscar.destroy
    respond_to do |format|
      format.html { redirect_to memberscars_url, notice: 'Memberscar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_memberscar
      @memberscar = Memberscar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def memberscar_params
      params.require(:memberscar).permit(:numberplate, :automaker)
    end
end
