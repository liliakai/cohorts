class Transaction < ActiveRecord::Base
  belongs_to :user
  belongs_to :house

  scope :by_user, lambda {|user| where(:user_id => user.id)}
  scope :in_house, lambda {|house| where(:house_id => house.id)}

end
