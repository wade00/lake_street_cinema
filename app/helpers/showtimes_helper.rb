module ShowtimesHelper
  def to_strftime(showtime)
    showtime.start_time.hour < 12 ? "#{showtime.start_time.strftime("%l:%M")}am" :
                                    "#{showtime.start_time.strftime("%l:%M")}pm"
  end
end
