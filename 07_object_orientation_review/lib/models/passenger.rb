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
    Ride.all.select do |ride|
      ride.passenger == self
    end
  end

  # * Passenger#cars
  def cars
    self.rides.map do |ride|
      ride.car
    end.uniq
  end

  # LAST!
  # * Passenger#schedule_ride(start_time, duration_in_minutes)
  #   * Should find a list of cars in the passenger's city that are not going to
  #     be occupied at the start time that the passenger wants to schedule the ride.
  def schedule_ride(start_time, duration_in_minutes)
    cars_in_city = Car.cars_in_city(self.city)
    duration_in_seconds = duration_in_minutes * 60
    end_time = start_time + duration_in_seconds
    available_cars = cars_in_city.select do |car|
      !car.occupied?(start_time, end_time)
    end

    if available_cars.empty?
      raise "No cars available during that time"
    else
      Ride.new(start_time, end_time, self, available_cars.first)
    end
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
