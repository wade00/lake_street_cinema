class Movie < ActiveRecord::Base
  belongs_to :theater
  has_many :showtimes, dependent: :destroy
end
