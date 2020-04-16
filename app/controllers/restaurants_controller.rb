class RestaurantsController < ApplicationController

  def index
  end

  def new
    @restaurant = Restaurant.new
    @restaurant.images.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  private
    
    def restaurant_params
      params.require(:restaurant).permit(:name, :detail, :cuisine_id, :form_id, :holiday, :open, :closed, :accsess, :prefecture_id, :city, :block, :building_name, images_attributes: [:image, :_destroy, :id]).merge(user_id: current_user.id)
    end 
end
