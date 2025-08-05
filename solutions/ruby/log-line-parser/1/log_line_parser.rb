class LogLineParser
  def initialize(line)
    @line = line
  end

  def split
    @line.split(": ")
  end
  
  def message
    split()[1].strip
  end

  def log_level
    split()[0][1..-2].downcase
  end

  def reformat
    "#{message} (#{log_level})"
  end
end
