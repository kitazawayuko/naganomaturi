class MaturisController < ApplicationController
  before_action :set_maturi, only: [:show, :edit, :update, :destroy]

  # GET /maturis
  # GET /maturis.json
  def index
    @maturis = Maturi.all
  end

  # GET /maturis/1
  # GET /maturis/1.json
  def show
  end

  # GET /maturis/new
  def new
    @maturi = Maturi.new
  end

  # GET /maturis/1/edit
  def edit
  end

  # POST /maturis
  # POST /maturis.json
  def create
    @maturi = Maturi.new(maturi_params)

    respond_to do |format|
      if @maturi.save
        format.html { redirect_to @maturi, notice: 'Maturi was successfully created.' }
        format.json { render :show, status: :created, location: @maturi }
      else
        format.html { render :new }
        format.json { render json: @maturi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /maturis/1
  # PATCH/PUT /maturis/1.json
  def update
    respond_to do |format|
      if @maturi.update(maturi_params)
        format.html { redirect_to @maturi, notice: 'Maturi was successfully updated.' }
        format.json { render :show, status: :ok, location: @maturi }
      else
        format.html { render :edit }
        format.json { render json: @maturi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /maturis/1
  # DELETE /maturis/1.json
  def destroy
    @maturi.destroy
    respond_to do |format|
      format.html { redirect_to maturis_url, notice: 'Maturi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_maturi
      @maturi = Maturi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def maturi_params
      params.require(:maturi).permit(:taitoru, :city, :naiyou, :toukou, :foto, :nitiji)
    end
end
