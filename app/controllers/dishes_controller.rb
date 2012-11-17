class DishesController < ApplicationController
  def index
    @dishes = Dish.all
  end
  def show
    @dish = Dish.find(params[:id])
  end
  def new
    @dish = Dish.new
  end
  def create
    @dish = Dish.new(params[:dish])
    if @dish.save
      redirect_to @dish
    else
      render :new
    end
  end
  def edit
    @dish = Dish.find(params[:id])
  end
  def update
    @dish = Dish.find(params[:id])
    if @dish.update_attributes(params[:dish])
      redirect_to @dish
    else
      render :edit
    end
  end
  def destroy
    @dish = Dish.find(params[:id])
    @dish.delete
    redirect_to dishes_path
  end
end
