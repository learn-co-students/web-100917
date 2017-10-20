class Ride < ActiveRecord::Base
  belongs_to :car
  belongs_to :customer
end
