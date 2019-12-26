class Cab < ApplicationRecord
  has_many :ride
  validates :number_of_seats, :cab_number, presence: true
  validates :number_of_seats, numericality: {only_integer: true}
  validates :cab_number, length: {in: 10..10}

end
