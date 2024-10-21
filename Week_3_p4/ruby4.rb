# Inheritance

# class Animal
#   def speak
#     "This Animal makes a sound"
#   end
# end

# class Dog < Animal
#   def speak
#     super
#   end
# end

# class Cat < Animal
#   def speak
#     "Meow"
#     puts "Cat class speak is getting called"
#     puts "But super keyword is over-riding and printing the parent method "
#     super
#   end
# end

# class Unknown < Animal
# end

# animal = Animal.new
# puts animal.speak

# dog = Dog.new
# puts dog.speak

# cat = Cat.new
# puts cat.speak

# unknown = Unknown.new
# puts unknown.speak





# public and private (by default all classes are public)

# class Dog
#   def initialize(name, breed)
#     @name = name
#     @breed = breed
#   end

#   public
#   def bark
#     puts "Woof"
#   end

#   private
#   def id
#     @id_num = 123
#   end

#   def ssn
#     @ssn = 12334
#   end
# end

# dog = Dog.new("Jim", "English")
# puts dog.bark
# puts dog.id   # throws error
# puts dog.ssn  # throws error





# Access control (public, private) inheritance

# class Parent
#   private
#   def private_method
#     puts "This is Private message"
#   end

#   protected
#   def protected_method
#     puts "This is Protected message"
#   end

#   public
#   def public_method1
#     puts "This is Public Message 1"
#   end

  def public_method2
    private_method
    protected_method
  rescue  => e
    puts e.message 
  end
# end

# class Child < Parent
#   def public_method3
#     protected_method
#   end
# end

# obj1 = Parent.new
# obj2 = Child.new

# puts "Parent methods"
# obj1.public_method1
# obj1.public_method2
# puts "Child methods"
# obj2.public_method1
# obj2.public_method3





# class ProtectedExample
#   def initialize
#     @protected_attribute = "I am protected"
#   end

#   protected
#   def protected_method
#     "This is a protected method"
#   end
# end

# class SubClass < ProtectedExample
#   def access_protected
#     @protected_attribute
#   end
# end

# obj = SubClass.new
# puts obj.access_protected    # Accessible
puts obj.protected_method rescue 'No found'
obj.protected_method
obj.protected_method
obj.protected_method
begin
  obj.protected_method #would raise a NoMethodError
  obj.protected_method #would raise a RunTimeError
  raise ValueHandlerException('Value is not correct') if value > 8

rescue RunTimeError, ValueHandlerException => e
  puts e.message
end
obj.protected_method
obj.protected_method
obj.protected_method



# class ExaProtected
#   protected
#   def method_protected
#     puts "This is protected"
#   end
# end

# obj = ExaProtected.new
# obj.method_protected





# class Name
#   def initialize
#     @name = "ibibibi" 
#   end

#   def call_to_showname
#     showname
#   end

#   private
#   def showname
#     puts "Name: #{@name}"
#   end
# end
# # Name.new.showname # it'll not work, private method cannot be called outside the class
# Name.new.call_to_showname # we created a public method to call the private method within call





# Polymorphism (Method Overriding)

# class Food
#   def dish
#     puts "Name a dish"
#   end
# end

# class Ramen < Food
#   def dish
#     "Ramen"    
#   end
# end

# class Kimchi
#   def dish
#     "Kimchi"
#   end
# end

# def display(food)
#   puts food.dish
# end

# ramen = Ramen.new
# kimchi = Kimchi.new

# display(ramen)
# display(kimchi)

# Polymorphism (Duck typing)

# class Bird
#   def fly
#     "Wish i were a bird"
#   end
# end

# class Jet
#   def fly
#     "Rocket Launcher"
#   end
# end

# def let_it_fly(flyable)
#   puts flyable.fly
# end

# crow = Bird.new
# jetpack = Jet.new

# let_it_fly(crow)
# let_it_fly(jetpack)





# Abstraction

# class Shape
#   def area
#     raise NotImplementedError, "This #{self.class} cannot respond to:"
#   end
# end

# class Circle < Shape
#   def initialize(radius)
#     @radius = radius
#   end
#   def area
#     Math::PI * @radius ** 2
#   end
# end

# class Square < Shape
#   def initialize(side)
#     @side = side
#   end
#   def area
#     @side ** 2
#   end
# end

# shapes = [Circle.new(5), Square.new(4)]
# shapes.each do |shape|
#   puts shape.area
# end





# Method overloading

# class Point
#   attr_accessor :x, :y
#   def initialize (x, y)
#     @x, @y = x, y
#   end
#   def to_s
#     "(#@x, #@y)"
#   end
#   def +(other)
#     Point.new( @x + other.x, @y + other.y )
#   end
# end

# p1 = Point.new 2,3
# p2 = Point.new(2,3)
# print p1 + p2






# Calculator

# add = lambda do |num1, num2|
#   num1 + num2
# end
# sub = lambda do |num1, num2|
#   num1 - num2
# end
# mul = lambda do |num1, num2|
#   num1 * num2
# end
# div = lambda do |num1, num2|
#   num1 / num2
# end

# def manager(function)
#   print "Number 1: "
#   num1 = gets.chomp.to_i
#   print "Number 2: "
#   num2 = gets.chomp.to_i
#   result = function.call(num1, num2)
#   puts "Results = #{result}".center(50, "-")
# end

# begin
#   puts "Calculaor"
#   puts "Select the given options:"
#   puts "a) Add    b) Subtract   c) Multiply   d) Divide   q) quite"
#   choice = gets.chomp

#   case choice
#   when 'a' then manager add
#   when 'b' then manager sub
#   when 'c' then manager mul
#   when 'd' then manager div
#   end
# end while choice != 'q'
