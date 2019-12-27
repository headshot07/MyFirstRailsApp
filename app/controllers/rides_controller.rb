# frozen_string_literal: true

class RidesController < ApplicationController
  def index
    @rides = Ride.all.includes(:driver, :ride_requests) # Eager Loading.
    # ride_count=Ride.count
    # @count=ride_count
    # rides_all=[]
    # Ride.all.each do |ele|
    #   rides_all.push(ele)
    # end
    # @all_rides=rides_all
  end
end
