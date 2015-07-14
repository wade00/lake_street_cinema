class Order < ActiveRecord::Base
  belongs_to :showtime
  belongs_to :theater
  belongs_to :movie
end
