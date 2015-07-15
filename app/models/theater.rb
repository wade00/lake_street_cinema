class Theater < ActiveRecord::Base
  has_many :movies, dependent: :destroy
  has_many :showtimes, dependent: :destroy
end
