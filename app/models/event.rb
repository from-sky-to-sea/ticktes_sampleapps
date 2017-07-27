class Event < ApplicationRecord

  validates :event, presence: true, length: { maximum: 255 }

  has_many :bookings
end
