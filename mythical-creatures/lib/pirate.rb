class Pirate
  attr_reader :name, :job, :booty

  def initialize(name)
    @name = name
    @job = job
    @count_heinous_acts = 0
    @booty = 0
  end

  def commit_heinous_act
    @count_heinous_acts += 1
  end

  def cursed?
    return (@count_heinous_acts > 2)
  end

  def robbed
    @booty += 100
  end
end