class VehiclesController < ApplicationController
before_action :set_list, only: [:show, :destroy]

def index
  if params[:query].present?
    sql_query = "name ILIKE :query OR description ILIKE :query"
    @vehicles = Vehicle.where(sql_query, query: "%#{params[:query]}%")
  else
    @vehicles = Vehicle.all
  end
end


  def show
    @booking = Booking.new
  end

  def new
    @vehicle = Vehicle.new
  end

  def create
    @vehicle = Vehicle.new(vehicle_params)
    @vehicle.user = current_user
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
		params.require(:vehicle).permit(:name, :description, :category, :price, :image)
  end
end
