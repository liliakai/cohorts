class InvestmentsController < ApplicationController

  def create
    investment = Investment.create! params[:investment]
    redirect_to house_path(investment.house)
  end
end
