module ShowtimesHelper
  def format_showtime(showtime)
    showtime.start_time.hour < 12 ?
    "#{showtime.start_time.strftime("%A")} #{showtime.start_time.strftime("%-l:%M")}am" :
    "#{showtime.start_time.strftime("%A")} #{showtime.start_time.strftime("%-l:%M")}pm"
  end

  def format_showtime_without_day(showtime)
    showtime.start_time.hour < 12 ?
    "#{showtime.start_time.strftime("%-l:%M")}am" :
    "#{showtime.start_time.strftime("%-l:%M")}pm"
  end

  def sold_out(showtime)
    showtime.seats_remaining == 0 ? true : false
  end
end
