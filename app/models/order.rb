class Order < ActiveRecord::Base
  belongs_to :showtime
  belongs_to :theater
  has_many :tickets
end
