# frozen_string_literal: true
class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /\A[a-zA-Z0-9]+[._]*[a-zA-Z0-9]*[@][a-zA-Z0-9]+[.][a-zA-Z0-9]+\Z/i
      record.errors[attribute] << (options[:message] || "is not an email")
    end
  end
end
class User < ApplicationRecord
  has_many :ride_requests
  validates :first_name, :last_name, :contact_number, :email, :password, presence: true
  validates :contact_number, uniqueness: true
  validates :contact_number, length: { in: 10..10 }
  validates :contact_number, numericality: { only_integer: true }
  validates :password, length: { in: 6..20 }
  validates :email, email: true  
  before_save do
    self.first_name = first_name.titleize
    self.last_name = last_name.titleize
  end
end
