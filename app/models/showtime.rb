class Showtime < ActiveRecord::Base
  belongs_to :theater
  has_many :tickets
end
