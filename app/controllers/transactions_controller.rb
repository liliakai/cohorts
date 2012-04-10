class TransactionsController < ApplicationController

  def create
    transaction = Transaction.create! params[:transaction]
    redirect_to url_for(transaction.to)
  end

  def destroy
    transaction = Transaction.find params[:id]
    transaction.destroy
    redirect_to url_for(transaction.from)
  end
end
