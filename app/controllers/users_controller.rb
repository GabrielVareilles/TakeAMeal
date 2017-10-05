class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save
  end

  def update
  end

  def edit
  end

  def show
  end

  def index
  end

def user_params
 end

end
