# frozen_string_literal: true

# Phrase class tallies number of words in a phrase
class Phrase
  def initialize(string)
    @string = string
  end

  def word_count
    clean_words = clean_words(@string)

    clean_words.map! do |word|
      in_quotes?(word) ? remove_quotes(word) : word
    end
    clean_words.tally
  end

  private

  def clean_words(string)
    string.gsub(/[^a-zA-Z0-9']/, ' ').split.map(&:downcase)
  end

  def in_quotes?(word)
    word.chars.first == "'" && word.chars.last == "'"
  end

  def remove_quotes(word)
    word.chars[1..-2].join
  end
end
