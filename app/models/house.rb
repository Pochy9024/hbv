class House < ApplicationRecord
  has_and_belongs_to_many :services
  has_many :bookings

  mount_uploaders :images, ImageUploader


end
