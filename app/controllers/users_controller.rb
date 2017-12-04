class UsersController < ApplicationController
  def show
      @user = User.find(params[:id]) #userモデルからuserをuserのidを探してくる。
  end
end