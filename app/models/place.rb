class Place < ActiveRecord::Base
  validates :name, :description, presence: true
  has_many :happy_hours
end
