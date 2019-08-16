class Bracket
  attr_reader :str, :valid_chars
  
  def initialize(str)
    @str = str
    @valid_chars = []
  end

  def valid?
    chars = @str.chars
    chars.each do |char|
      is_opener?(char)
    end
  end

  def is_opener?(char)
    ['{', '[', '('].include?(char)
  end

  def is_closer?(char)
    ['}', ']', ')'].include?(char)
  end
end

def bracket(str)
  Bracket.new(str).valid?
end
