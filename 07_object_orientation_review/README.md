# Object Orientation Review

## Objectives
* Array methods (enumerable methods)
* Instance v class v local variables
* Instance v class methods
* Object relations
* Single source of truth

## Domain
We'll be building a ride-sharing application. The domain is composed of passengers,
cars, and rides. A ride is the join model between a passenger and a car. A car has
many passengers through rides, a passenger has many cars through rides.

## Methods

* Passenger
  * Passenger#name [attr]
  * Passenger#city [attr]
  * Passenger#rides
  * Passenger#cars
  * Passenger.all
  * Passenger.count
  * Passenger#schedule_ride(start_time, duration_in_minutes)
    * Should find a list of cars in the passenger's city that are not going to
      be occupied at the start time that the passenger wants to schedule the ride.
* Ride (join model - NEED references)
  * Ride#start_time [attr]
  * Ride#end_time [attr]
  * Ride#passenger [attr]
  * Ride#car [attr]
  * Ride.all
* Car
  * Car#city [attr]
  * Car#driver_name [attr]
  * Car#rides
  * Car#passengers
  * Car.all
  * Car.count
  * Car#occupied?(start_time)
    * At this start_time, will this car be occupied?
