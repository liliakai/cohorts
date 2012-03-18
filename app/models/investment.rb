class Investment < ActiveRecord::Base
  belongs_to :user
  belongs_to :house

  named_scope :by_user, lambda {|user| :conditions => {:user_id => user.id}}
  named_scope :in_house, lambda {|house| :conditions => {:house_id => house.id}}
end
