class Passenger
  # * Passenger#name
  # * Passenger#city
  attr_accessor :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  # * Passenger#rides
  def rides
  end

  # * Passenger#cars
  def cars
  end

  # LAST!
  # * Passenger#schedule_ride(start_time, duration_in_minutes)
  #   * Should find a list of cars in the passenger's city that are not going to
  #     be occupied at the start time that the passenger wants to schedule the ride.
  def schedule_ride(start_time, duration_in_minutes)
  end

  # * Passenger.all
  def self.all
    @@all
  end

  # * Passenger.count
  def self.count
    self.all.count
  end

end
