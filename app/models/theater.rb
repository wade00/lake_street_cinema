class Theater < ActiveRecord::Base
  has_many :movies
  has_many :showtimes
end
