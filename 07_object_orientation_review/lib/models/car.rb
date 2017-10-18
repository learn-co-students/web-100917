class Car
  # * Car#city [attr]
  # * Car#driver_name [attr]
  attr_accessor :city, :driver_name

  @@all = []

  def initialize(city, driver_name)
    @city = city
    @driver_name = driver_name
    @@all << self
  end

  # * Car#rides
  def rides
    Ride.all.select do |ride|
      ride.car == self
    end
  end

  # * Car#passengers
  def passengers
    self.rides.map do |ride|
      ride.passenger
    end.uniq
  end

  # * Car.all
  def self.all
    @@all
  end

  # * Car.count
  def self.count
    self.all.count
  end

  # * Car#occupied?(start_time)
  #   * At this start_time, will this car be occupied?
  def occupied?(start_time, end_time)
    self.rides.any? do |ride|
      ride.start_time <= start_time || ride.end_time >= end_time
    end
  end

  def self.cars_in_city(city)
    self.all.select do |car|
      car.city == city
    end
  end
end
