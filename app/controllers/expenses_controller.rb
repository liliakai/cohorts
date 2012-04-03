class ExpensesController < ApplicationController

  def create
    expense = Expense.create! params[:expense]
    redirect_to house_path(expense.house)
  end

  def destroy
    expense = Expense.find params[:id]
    expense.destroy
  end
end
