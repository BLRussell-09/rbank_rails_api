class TransactionsController < ApplicationController
  def index
    @transactions = Transaction.all.order(created_at: :asc)
    render json: @transactions
  end

  def show
    @transaction = Transaction.find(params[:id])
    if @transaction
      render json: @transaction
    else
      render json; @transactio.errors
    end
  end

  def create
    @transaction = Transaction.new(transaction_params)

    if @transaction.save
      render json: @transaction
    else
      render json: @transaction.errors
    end
  end

  def update
    @transaction = Transaction.find(params[:id])
    if @transaction.update(trans_edit_params)
      render json: @transaction
    else
      render json: @transaction.errors
    end
  end

  private
    def transaction_params
      params.require(:transaction).permit(:account_id, :originator, :amount, :transaction_type)
    end

    def trans_edit_params
      params.require(:transaction).permit(:originator, :amount, :transaction_type)
    end
end
