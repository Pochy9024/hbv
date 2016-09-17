class TurTypesController < ApplicationController
  before_action :set_tur_type, only: [:show, :edit, :update, :destroy]

  # GET /tur_types
  # GET /tur_types.json
  def index
    @tur_types = TurType.all
  end

  # GET /tur_types/1
  # GET /tur_types/1.json
  def show
  end

  # GET /tur_types/new
  def new
    @tur_type = TurType.new
  end

  # GET /tur_types/1/edit
  def edit
  end

  # POST /tur_types
  # POST /tur_types.json
  def create
    @tur_type = TurType.new(tur_type_params)

    respond_to do |format|
      if @tur_type.save
        format.html { redirect_to @tur_type, notice: 'Tur type was successfully created.' }
        format.json { render :show, status: :created, location: @tur_type }
      else
        format.html { render :new }
        format.json { render json: @tur_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tur_types/1
  # PATCH/PUT /tur_types/1.json
  def update
    respond_to do |format|
      if @tur_type.update(tur_type_params)
        format.html { redirect_to @tur_type, notice: 'Tur type was successfully updated.' }
        format.json { render :show, status: :ok, location: @tur_type }
      else
        format.html { render :edit }
        format.json { render json: @tur_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tur_types/1
  # DELETE /tur_types/1.json
  def destroy
    @tur_type.destroy
    respond_to do |format|
      format.html { redirect_to tur_types_url, notice: 'Tur type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tur_type
      @tur_type = TurType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tur_type_params
      params.require(:tur_type).permit(:name)
    end
end
