class UserController < ApplicationController
  def new
  end

  def create
    @user = User.create
    if @user.save
      redirect_to @user
    else
      redirect_to 'root'
    end
  end

  def show
    @user = User.find(params[:name])
  end
end
