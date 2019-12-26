class User < ApplicationRecord
  has_many :ride_request
  validates :first_name, :last_name, :contact_number, :email, :password, presence: true
  validates :contact_number, uniqueness:true
  validates :contact_number, length: {in: 10..10}
  validates :contact_number, numericality: {only_integer: true}
  validates :password, length: {in: 6..20}
  validates :email, format: {with: /\A[a-zA-Z0-9]+[._]*[a-zA-Z0-9]*[@][a-zA-Z0-9]+[.][a-zA-Z0-9]+\Z/, message: "Emails Is Invalid!"}
  before_save  do
    self.first_name=self.first_name.titleize
    self.last_name=self.last_name.titleize
  end 
end
