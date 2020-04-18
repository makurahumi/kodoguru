class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only:[:show]

  def show
    @restaurants = Restaurant.where(user_id: current_user.id).page(params[:page]).per(3).order("created_at DESC")
  end

  private

   def set_user
    @user = current_user
   end
end
