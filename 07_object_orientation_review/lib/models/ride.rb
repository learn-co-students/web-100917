class Ride
  #   * Ride#start_time [attr]
  #   * Ride#end_time [attr]
  #   * Ride#passenger [attr]
  #   * Ride#car [attr]
  attr_accessor :start_time, :end_time, :passenger, :car

  @@all = []

  def initialize(start_time, end_time, passenger, car)
    @start_time = start_time
    @end_time = end_time
    @passenger = passenger
    @car = car
    @@all << self
  end

  #   * Ride.all
  def self.all
    @@all
  end

end
