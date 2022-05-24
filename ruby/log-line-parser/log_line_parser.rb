class LogLineParser
  attr_reader :line

  def initialize(line)
    @line = line
  end

  def message
    line.scan(/:.*\w/).join.gsub(':', '').strip
  end

  def log_level
    message_elements = @line.split(':')
    message_elements.first.split(']').last.split('[').last.downcase
  end

  def reformat
    "#{message} (#{log_level})"
  end
end
