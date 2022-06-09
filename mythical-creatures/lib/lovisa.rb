class Lovisa
  attr_reader :title, :characteristics
  def initialize(title)
    @title = title
    @characteristics = characteristics
  end

  def brilliant?
    @characteristics.each do |word|
      if(word == 'brilliant')
        return true
      end
    end
  end

  def kind?
    @characteristics.each do |word|
      if(word == 'kind')
        return true
      end
    end
  end

  def say(words)
    return "**;* #{words} **;*"
  end

end