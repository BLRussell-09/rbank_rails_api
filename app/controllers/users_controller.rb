class UsersController < ApplicationController
  def index
    @users = User.all.order(updated_at: :desc)
    render json: @users, each_serializer: UserSimpleSerializer
  end

  def show
    @user = User.find(params[:id])
    render json: @user, include: ['accounts', 'accounts.transactions']
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user
    else
      render json: @user.errors
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors
    end
  end


  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :birthday, :ssn, :address_one, :address_two, :city, :state, :zip)
    end
end
