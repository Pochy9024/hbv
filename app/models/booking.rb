class Booking < ApplicationRecord
  has_and_belongs_to_many :packages
  belongs_to :house
end
