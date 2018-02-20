class Booking < ApplicationRecord
  validates :name, uniqueness: { scope: [:start_time, :end_time]}
end
