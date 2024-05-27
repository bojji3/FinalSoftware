class DriversController < ApplicationController
  before_action :set_driver, only: [:show, :edit, :update, :destroy]

  # GET /drivers
  def index
    @drivers = Driver.all
  end

  # GET /drivers/1
  def show
  end

  # GET /drivers/new
  def new
    @driver = Driver.new
    @buses = Bus.all
  end

  # GET /drivers/1/edit
  def edit
    @buses = Bus.all
  end

  # POST /drivers
  def create
    @driver = Driver.new(driver_params)
    
    if @driver.save
      redirect_to @driver, notice: 'Driver was successfully created.'
    else
      @buses = Bus.all
      render :new
    end
  end

  # PATCH/PUT /drivers/1
  def update
    if @driver.update(driver_params)
      redirect_to @driver, notice: 'Driver was successfully updated.'
    else
      @buses = Bus.all
      render :edit
    end
  end

  # DELETE /drivers/1
  def destroy
    @driver.destroy
    redirect_to drivers_url, notice: 'Driver was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_driver
      @driver = Driver.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def driver_params
      params.require(:driver).permit(:name, :contact_number_string, :bus_id, :image)
    end
end
