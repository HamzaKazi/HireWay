class VehiclesController < ApplicationController
before_action :set_list, only: [:show, :destroy]

  def index
    @vehicles = Vehicle.all
  end

  def show
    @booking = Booking.new
  end

  def new
    @vehicle = Vehicle.new
  end

  def create
    @vehicle = Vehicle.new(vehicle_params)
    if @vehicle.save
      redirect_to vehicle_path(@vehicle)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @vehicle.destroy
    redirect_to vehicles_path, status: :see_other
  end

  private

  def set_list
    @vehicle = Vehicle.find(params[:id])
  end

  def vehicle_params
    #TODO
		params.require(:vehicle).permit(:type, :description, :category)
  end
end
