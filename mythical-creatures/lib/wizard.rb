class Wizard

  attr_reader :name, :hash, :cast_count

  def initialize(name, bearded: false)
    @name = name
    @bearded = bearded
    @cast_count = 0
  end

  def bearded?
    @bearded
  end

  def incantation(bash)
    return "sudo #{bash}"
  end

  def rested?
    true
  end

  def cast
    @cast_count += 1
    return "MAGIC MISSILE!"
  end

  def rested?
    return(@cast_count < 3)
  end

end