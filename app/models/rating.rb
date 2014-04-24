class Rating < ActiveRecord::Base
  belongs_to :place
  validates_presence_of :score
  validates_numericality_of :score
  validates_presence_of :review
  validates_presence_of :place_id
end
