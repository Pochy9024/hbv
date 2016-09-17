class Package < ApplicationRecord
  has_and_belongs_to_many :bookings
  has_and_belongs_to_many :tur_types
end
