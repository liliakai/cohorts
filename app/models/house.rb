class House < ActiveRecord::Base
  has_many :transactions, :as => :to
  has_many :investments, :as => :to
  has_many :shareholders, :through => :investments, :source => :from
  has_many :expenses

  def total_invested
    transactions.map(&:amount).sum
  end

  def percent_ownership(user)
    user_invested = transactions.by_user(user).map(&:amount).sum
    user_invested / total_invested
  end
end
