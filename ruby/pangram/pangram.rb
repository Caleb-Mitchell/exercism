class Pangram
  def self.pangram?(sentence)
    alpha_array = ('a'..'z').to_a
    sentence = sentence.chars.map(&:downcase)

    alpha_array.each { |letter| return false if sentence.count(letter) < 1 }
  end
end
