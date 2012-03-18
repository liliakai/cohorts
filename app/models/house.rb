class House < ActiveRecord::Base
  has_many :memberships
  has_many :members, :through => :memberships, :source => :user
  has_many :investments
  has_many :expenses

  def total_invested
    investments.map(&:amount).sum
  end

  def percent_ownership(user)
    investments.where(:user_id => user.id).sum.to_f / total_invested
  end
end
