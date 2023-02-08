
class Transpose
  def self.transpose(str)
    return "" if str.empty?


    lines = str.split(" ")
    matrix = lines.map(&:chars)

    new_matrix = []
    (0..matrix.size).each do |column_idx|
      new_array = []
      matrix.each do |row|
        new_array << row[column_idx]
      end
      new_matrix << new_array
    end

    p matrix
    p new_matrix
    new_matrix.map(&:join).reject(&:empty?).join("\n")
  end
end
