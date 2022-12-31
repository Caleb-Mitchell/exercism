class Anagram
  def initialize(target_word)
    @target_word = target_word.downcase
  end

  def match(candidate_array)
    anagram_set = []
    sorted_target = @target_word.chars.sort

    lower_candidate_array = candidate_array.map(&:downcase)
    lower_candidate_array.each_with_index do |word, idx|
      next if @target_word == word
      anagram_set << candidate_array[idx] if word.chars.sort == sorted_target
    end
    anagram_set
  end
end
