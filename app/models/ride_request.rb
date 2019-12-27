# frozen_string_literal: true

class RideRequest < ApplicationRecord
  belongs_to :user
  belongs_to :ride
  validates :status, :destination, presence: true
  validates :user_id, uniqueness: true
end
