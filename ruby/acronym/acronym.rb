# frozen_string_literal: true

# this class method converts strings of any length to its appropriate
# acronym
class Acronym
  def self.abbreviate(string)
    words = string.split(/\W/)
    words.map! { |word| word.chars.first }.compact.map(&:upcase).join
  end
end
