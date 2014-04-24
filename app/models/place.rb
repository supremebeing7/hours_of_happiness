class Place < ActiveRecord::Base
  validates :name, :description, presence: true

  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
end
