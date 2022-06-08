class Dragon
  attr_reader :name, :color, :rider
  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @eat_count = 0
  end

  def hungry?
    return(@eat_count < 3)
  end

  def eat
      @eat_count += 1
  end
end