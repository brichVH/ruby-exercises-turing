class Vampire

  attr_reader :name
  attr_reader :pet
  attr_reader :thirsty

  def initialize (name)
    @name = name
    @pet = 'bat'
    @thirsty = true
  end

  def drink
    @thirsty = false
  end

end