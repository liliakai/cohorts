class Investment < ActiveRecord::Base
  belongs_to :user
  belongs_to :house

  scope :by_user, lambda {|user| {:conditions => {:user_id => user.id}}}
  scope :in_house, lambda {|house| {:conditions => {:house_id => house.id}}}
end
