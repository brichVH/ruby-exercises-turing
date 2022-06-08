class Unicorn

  attr_reader :name
  attr_reader :color

  def initialize(name)
    @name = name
    @color = color
  end

  def silver?
    false
  end

  def say (phrase)
    return "**;* #{phrase} **;*"
  end
end