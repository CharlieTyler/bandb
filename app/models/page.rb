class Page < ApplicationRecord
  geocoded_by :address
  after_validation :geocode

  extend FriendlyId
  friendly_id :slug, use: :slugged

  validates :title, presence: true
end
