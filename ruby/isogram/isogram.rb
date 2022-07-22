# frozen_string_literal: true

# class Isogram tests if a given string is an isogram
class Isogram
  def self.isogram?(string)
    string.gsub!(/[^a-zA-Z]/, '')
    chars = string.chars.map(&:downcase)
    chars.each do |char|
      return false if chars.count(char) > 1
    end
    true
  end
end
