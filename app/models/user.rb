class User < ActiveRecord::Base
  has_many :memberships
  has_many :houses, :through => :memberships
  has_many :investments

  def equity_in(house)
    total = investments.in_house(house).map(&:limited_equity).sum
  end

end
