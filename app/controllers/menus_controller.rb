class MenusController < ApplicationController
  before_action :authenticate_user!, only:[:new, :create, :edit, :destroy]
  before_action :set_menu, only:[:show, :destroy]

  def new
    @menu = Menu.new
  end

  def create
    @menu = Menu.new(menu_params)
    if @menu.save
      redirect_to root_path, notice: "メニューを投稿しました。"
    else
      flash.now[:alert] = "必須項目を全て入力してください。"
      render :new
    end
  end

  def show
  end

  def destroy
    if @menu.destroy
      redirect_to root_path, notice: "メニューを削除しました。"
    else
      redirect_to menu_path, alert: "メニューの削除に失敗しました。"
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
