# frozen_string_literal: true

# class Scrabble computes scrabble score for a given word
class Scrabble
  POINTS = { 1 => %w[A E I O U L N R S T],
             2 => %w[D G],
             3 => %w[B C M P],
             4 => %w[F H V W Y],
             5 => %w[K],
             8 => %w[J X],
             10 => %w[Q Z] }.freeze

  def initialize(word)
    @word = word
  end

  def self.score(word)
    new(word).score
  end

  def score
    return 0 if @word.nil?

    total = 0
    @word.chars.map(&:upcase).each do |char|
      POINTS.each { |score, letters| total += score if letters.include?(char) }
    end
    total
  end
end
