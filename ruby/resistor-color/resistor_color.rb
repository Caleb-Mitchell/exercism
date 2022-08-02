# frozen_string_literal: true

# class returns numerical value associated with a particular color
class ResistorColor
  COLORS = %w[black brown red orange yellow green blue violet grey white].freeze

  def self.color_code(color_string)
    COLORS.find_index(color_string)
  end
end
