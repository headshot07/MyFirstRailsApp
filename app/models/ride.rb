class Ride < ApplicationRecord
  belongs_to :driver
  belongs_to :cab
  has_many :ride_request
  validates :date, :time, :location, :cab_id, :driver_id, presence: true
end
