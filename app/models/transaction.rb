class Transaction < ActiveRecord::Base
  belongs_to :to, :polymorphic => true
  belongs_to :from, :polymorphic => true

  scope :by_user, lambda {|user| where(:from_id => user.id, :type => "User")}
  scope :in_house, lambda {|house| where(:to_id => house.id, :type =>"House")}

end
