class House < ActiveRecord::Base
  has_many :memberships
  has_many :members, :through => :memberships, :source => :user
  has_many :transactions
  has_many :expenses

  def total_invested
    transactions.map(&:amount).sum
  end

  def percent_ownership(user)
    user_invested = transactions.by_user(user).map(&:amount).sum
    user_invested / total_invested
  end
end
