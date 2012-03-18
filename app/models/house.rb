class House < ActiveRecord::Base
  has_many :memberships
  has_many :members, :through => :memberships, :source => :user
  has_many :investments
  has_many :expenses

  def total_invested
    investments.map(&:amount).sum
  end

  def percent_ownership(user)
    user_invested = investments.by_user(user).map(&:amount).sum
    user_invested / total_invested
  end
end
