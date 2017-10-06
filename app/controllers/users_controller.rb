class UsersController < ApplicationController
  before_action :find_user, only: [ :show, :edit, :update, :account ]

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
    @user.update(user_params)
  end

  def show
  end

  def index
    @users = User.all
  end

  def account
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
     params.require(:user).permit(:email_address)
  end

end
