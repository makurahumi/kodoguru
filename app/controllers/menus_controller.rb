class MenusController < ApplicationController
  before_action :set_menu, only:[:show, :destroy]

  def new
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
  end

  def destroy
    if @menu.destroy
      redirect_to root_path
    else
      redirect_to menu_path
    end
  end

  private

    def menu_params
      params.require(:menu).permit(:menuname, :photo, :price, :detail).merge(user_id: current_user.id, restaurant_id: params[:restaurant_id])
    end

    def set_menu
      @menu = Menu.find(params[:id])
    end
end
