class User < ActiveRecord::Base
  has_many :memberships
  has_many :houses, :through => :memberships
end
