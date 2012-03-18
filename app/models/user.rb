class User < ActiveRecord::Base
  has_many :memberships
  has_many :houses, :through => :memberships
  has_many :investments
end
