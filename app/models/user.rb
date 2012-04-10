class User < ActiveRecord::Base
  has_many :memberships
  has_many :houses, :through => :memberships
  has_many :transactions

  def equity_in(house)
    total = transactions.in_house(house).map(&:inflated_amount).sum
  end

end
