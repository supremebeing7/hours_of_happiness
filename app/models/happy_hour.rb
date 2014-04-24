class HappyHour < ActiveRecord::Base
  belongs_to :place
  validates :start_time, :end_time, presence: true
end
