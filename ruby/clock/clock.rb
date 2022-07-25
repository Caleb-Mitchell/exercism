# frozen_string_literal: true

# class represents a clock which handles time without dates
class Clock
  attr_reader :minute, :hour

  def initialize(hour: 0, minute: 0)
    parse_hours(hour)
    parse_minutes(minute)
  end

  def to_s
    "#{format('%02d', @hour)}:#{format('%02d', @minute)}"
  end

  def +(other)
    new_minutes = minute + other.minute
    new_hours = hour + other.hour
    Clock.new(minute: new_minutes, hour: new_hours)
  end

  def -(other)
    new_minutes = minute - other.minute
    new_hours = hour - other.hour
    Clock.new(minute: new_minutes, hour: new_hours)
  end

  def ==(other)
    (minute == other.minute) && (hour == other.hour)
  end

  private

  def parse_hours(hour)
    hour %= 24
    @hour = hour
  end

  def parse_minutes(minute)
    @minute = minute
    minute.positive? ? reduce_minutes : add_minutes
    parse_hours(@hour)
  end

  def reduce_minutes
    until @minute < 60
      @minute -= 60
      @hour += 1
    end
  end

  def add_minutes
    until @minute >= 0
      @minute += 60
      @hour -= 1
    end
  end
end
