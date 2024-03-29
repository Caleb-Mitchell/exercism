# frozen_string_literal: true

# This class translates a set of colors to a resistance value
class ResistorColorDuo
  COLOR_VALUES = {
    black: 0,
    brown: 1,
    red: 2,
    orange: 3,
    yellow: 4,
    green: 5,
    blue: 6,
    violet: 7,
    grey: 8,
    white: 9
  }.freeze

  def self.value(colors)
    colors.map { |color| COLOR_VALUES[color.intern].to_s }[0..1].join.to_i
  end
end
