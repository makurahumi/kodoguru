class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only:[:show, :edit, :update]

  def show
    @restaurants = Restaurant.where(user_id: current_user.id).page(params[:page]).per(3).order("created_at DESC")
  end

  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path, notice: "ニックネームを変更しました。"
    else
      flash.now[:alert] = "10文字以内でニックネームを入力してください。"
      render :edit
    end
  end

  private

   def set_user
    @user = current_user
   end

   def user_params
    params.require(:user).permit(:nickname)
   end
end
