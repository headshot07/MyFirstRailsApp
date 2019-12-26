class RideRequest < ApplicationRecord
  belongs_to :user
  belongs_to :ride
  validates :status, :destination, presence: true
end
