class Bracket
  attr_reader :str, :valid_chars
  
  def initialize(str)
    @str = str
    @valid_chars = []
  end

  def valid?
    chars = @str.chars
    chars.each do |char|
      if is_opener?(char)
        @valid_chars << char
      else
        unless @valid_chars.include?(opener(char))
          return false
        end
      end
    end

    return true
  end

  def opener(closer)
    case closer
    when "}"
      "{"
    when "]"
      "["
    when ")"
      "("
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
