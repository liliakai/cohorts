class House < ActiveRecord::Base
  has_many :expenses
  has_many :transactions, :as => :to
  has_many :investments, :as => :to

  def shareholders
    investments.map(&:from)
  end

  def total_invested
    transactions.map(&:amount).sum
  end

  def percent_ownership(user)
    user_invested = transactions.by_user(user).map(&:amount).sum
    user_invested / total_invested
  end
end
