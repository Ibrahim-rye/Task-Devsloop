class Person
  attr_accessor :name, :age, :email

  def initialize(name, age, email)
    @name = name 
    @age = age
    @email = email
  end

  def greet
    "Hello, my name is #{@name}"
  end

  def is_adult?
    @age >= 18
  end
end

