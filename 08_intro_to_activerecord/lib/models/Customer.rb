class Customer < ActiveRecord::Base
  has_many :rides
  has_many :cars, through: :rides
end
