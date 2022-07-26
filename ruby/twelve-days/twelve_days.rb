# frozen_string_literal: true

# class returns the lyrics to 'The Twelve Days of Christmas'
class TwelveDays
  def self.song
    file = File.open("#{File.dirname(__FILE__)}/song.txt")
    file.read
  end
end

