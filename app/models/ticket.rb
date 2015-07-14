class Ticket < ActiveRecord::Base
  belongs_to :order
  belongs_to :showtime
  belongs_to :theater
end
