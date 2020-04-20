class MenusController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @menu = Menu.new
  end

  def create
    @menu = Menu.new(menu_params)
    if @menu.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @menu = Menu.find(params[:id])
  end

  private

    def menu_params
      params.require(:menu).permit(:menuname, :photo, :price, :detail).merge(user_id: current_user.id, restaurant_id: params[:restaurant_id])
    end
end
