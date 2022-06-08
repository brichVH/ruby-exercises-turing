class Hobbit
  attr_reader :name, :disposition, :age
  def initialize(name)
    @name = name
    @disposition = disposition
    @age = 0
  end

  def celebrate_birthday
    @age += 1
  end

  def adult?
    return(!(@age < 33))
  end

  def old?
    return(age > 100)
  end

  def has_ring?
    return(name=="Frodo")
  end

  def is_short?
    true
  end

end