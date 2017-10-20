class Car < ActiveRecord::Base
  has_many :rides
  has_many :customers, through: :rides
end
