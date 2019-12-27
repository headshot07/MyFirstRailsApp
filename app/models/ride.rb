# frozen_string_literal: true

class Ride < ApplicationRecord
  belongs_to :driver
  belongs_to :cab
  has_many :ride_requests
  validates :date, :time, :location, :cab_id, :driver_id, presence: true
  def driver_name
    driver.first_name + ' ' + driver.last_name
  end
end
