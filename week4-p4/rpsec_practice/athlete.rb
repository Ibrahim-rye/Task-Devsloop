class Athlete
  attr_accessor :name, :age, :sport, :experience

  def initialize(name, age, sport, experience)
    @name = name
    @age = age
    @sport = sport
    @experience = experience
  end

  def eligible?
    @age >= 18
  end

  def not_eligible?
    @age <= 18
  end

  def increase_exp(years)
    @experience += years
  end

  def personal_record(record)
    raise ArgumentError, "Invalid record value" if record < 0
    "New personal record set: #{record} meters"
  end
  
end