class ExpensesController < ApplicationController

  def create
    expense = Expense.create! params[:expense]
    redirect_to house_path(expense.house)
  end
end
