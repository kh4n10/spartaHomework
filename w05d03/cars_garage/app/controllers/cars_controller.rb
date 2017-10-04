class CarsController < ApplicationController

  def index
    @cars = current_user.cars
  end

  def show
    @car = current_user.cars.find(params[:id])
  end

  def new
    @car = Car.new
  end

  def create
    car = current_user.cars.create(car_params)
    show_page = user_car_path(current_user.id, car.id)
    
    redirect_to show_page
  end

  def edit
    @song = current_user.cars.find(params[:id])
  end

  def update
    song = current_user.cars.find(params[:id])
    car.update(car_params)
    show_page = user_car_path(current_user.id, car.id)
    
    redirect_to show_page
  end


  def destroy
    current_user.cars.destroy(params[:id])
    
    redirect_to user_cars_page
  end

  protected
  def car_params
    params.require(:car).permit(:name, :model, :description)
  end

end
