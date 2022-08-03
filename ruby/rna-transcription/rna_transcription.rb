# frozen_string_literal: true

# class finds the RNA complement for a DNA strand
class Complement
  RNA_PAIRS = { 'G' => 'C',
                'C' => 'G',
                'T' => 'A',
                'A' => 'U' }.freeze

  def self.of_dna(dna_string)
    dna_string.chars.map! { |char| RNA_PAIRS[char] }.join
  end
end
