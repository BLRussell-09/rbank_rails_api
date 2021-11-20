class AccountsController < ApplicationController
  def index
    @accounts = Account.all.order(user_id: :asc)
    render json: @accounts
  end

  def show
    @account = Account.find(params[:id])
    render json: @account
  end

  def new
    @account = Account.new
  end

  def create
    @account = Account.new(account_params)

    if @account.save
      render json: @account
    else
      render json: @account.errors
    end
  end

  def edit
    @account = Account.find(params[:id])
  end

  def update
    @account = Account.find(params[:id])

    if @account.update(account_params)
      render json: @account
    else
      render json: @account.errors
    end
  end

  private
    def account_params
      params.require(:account).permit(:user_id, :balance, :close_date, :account_type)
    end
end
