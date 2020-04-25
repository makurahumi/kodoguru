class RestaurantsController < ApplicationController
  before_action :set_restaurant, only:[:show, :edit, :update, :destroy]

  def index
    @restaurants = Restaurant.includes(:images).page(params[:page]).per(5).order("created_at DESC")
  end

  def new
    @restaurant = Restaurant.new
    @restaurant.images.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to root_path, notice: "お店の情報が投稿されました。"
    else
      redirect_to new_restaurant_path, alert: "投稿に失敗しました。必須項目を全て入力してください。"
    end
  end

  def show
    @menus = Menu.where(restaurant_id: @restaurant).page(params[:page]).per(3).order("created_at DESC")
  end

  def edit
  end

  def update
    if @restaurant.update(restaurant_params)
      redirect_to restaurant_path, notice: "お店の情報を更新しました。"
    else
      flash.now[:alert] = "必須項目を全て入力してください"
      render :edit
    end
  end

  def destroy
      if @restaurant.destroy
        redirect_to root_path
      else
        redirect_to restaurant_path
      end
  end

  private
    
    def restaurant_params
      params.require(:restaurant).permit(:name, :detail, :cuisine_id, :form_id, :holiday, :open, :closed, :accsess, :prefecture_id, :city, :block, :building_name, images_attributes: [:image, :_destroy, :id]).merge(user_id: current_user.id)
    end 

    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
    end
end
