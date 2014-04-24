class Place < ActiveRecord::Base
  validates :name, :description, presence: true
end
