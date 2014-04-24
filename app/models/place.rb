class Place < ActiveRecord::Base
  validates :name, :description, presence: true

  geocoded_by :address
  after_validation :geocode, :if => :address_changed?

  has_many :happy_hours
  has_many :ratings
end
