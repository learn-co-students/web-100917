# Object Orientation Review

## Domain
We'll be building a ride-sharing application. The domain is composed of passengers,
cars, and rides. A ride is the join model between a passenger and a car. A car has
many passengers through rides, a passenger has many cars through rides.

## Methods

* Passenger
  * Passenger#name
  * Passenger#city
  * Passenger#rides
  * Passenger#cars
  * Passenger#schedule_ride(start_time, duration_in_minutes)
    * Should find a list of cars in the passenger's city that are not going to
      be occupied at the start time that the passenger wants to schedule the ride.
  * Passenger.count
  * Passenger.all
* Ride
  * Ride#start_time
  * Ride#end_time
  * Ride#passenger
  * Ride#car
  * Ride.all
* Car
  * Car#city
  * Car#driver_name
  * Car#rides
  * Car#passengers
  * Car.count
  * Car.all
  * Car#occupied?(start_time)
    * At this start_time, will this car be occupied?
