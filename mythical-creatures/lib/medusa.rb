class Medusa

  attr_reader :name, :statues

  def initialize(name)
    @name = name
    @statues = []
    @victim_count = 0
  end

  def stare(person)
      @statues.push(person)
      @victim_count += 1
      person.set_stoned
      if(@victim_count >= 3)
        @statues.first.unset_stoned
        @statues.delete(0)
        @victim_count -= 1
      end
  end

end

class Person

  attr_reader :name

  def initialize(name)
    @name = name
    @stoned = false
  end

  def stoned?
    @stoned
  end

  def set_stoned
    @stoned = true
  end

  def unset_stoned
    @stoned = false
  end
end