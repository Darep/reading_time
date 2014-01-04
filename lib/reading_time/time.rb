module ReadingTime
  class Time
    attr_accessor :minutes_total, :seconds_total, :minutes, :seconds

    def initialize(minutes_total)
      self.minutes_total = minutes_total
      self.seconds_total = (minutes_total * 60)

      seconds = minutes_total * 60

      self.minutes = (seconds_total / 60).to_i
      seconds -= minutes * 60

      self.seconds = seconds.to_i
    end

    def to_s
      str = ""

      if minutes === 1
        str = "1 minute"
      elsif minutes > 0
        str = "#{minutes} minutes"
      end

      str += " and " if minutes > 0 and seconds > 0

      if seconds === 1
        str += "1 second"
      elsif seconds === 0
        str += ', sharp'
      elsif seconds > 0
        str += "#{seconds} seconds"
      end

      return str
    end
  end
end
