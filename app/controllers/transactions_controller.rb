class TransactionsController < ApplicationController

  def create
    transaction = Transaction.create! params[:transaction]
    redirect_to house_path(transaction.house)
  end

  def destroy
    transaction = Transaction.find params[:id]
    transaction.destroy
    redirect_to house_path(transaction.house)
  end
end
