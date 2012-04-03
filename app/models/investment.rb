class Investment < ActiveRecord::Base
  belongs_to :user
  belongs_to :house

  scope :by_user, lambda {|user| {:conditions => {:user_id => user.id}}}
  scope :in_house, lambda {|house| {:conditions => {:house_id => house.id}}}

  def inflated_amount
    years = Time.now.year - created_at.year
    (0..years).inject(amount) do |total, year_number|
      total * (1.0 + inflation_rate(year_number))
    end
  end

  def inflation_rate(num_years)
    time = created_at + (num_years).years
    percent_change cpi(time), cpi(time + 1.year)
  end

  def percent_change(val1, val2)
    # todo (val2 - val1)/ val1
    0.04
  end

  def cpi(time_start, time_end)
    # todo
    100
  end

end
