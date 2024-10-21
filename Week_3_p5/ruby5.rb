# def letter_feq(text)
#   chars = ('a'..'z').to_a + ('A'..'Z').to_a
#   frequency = {}
#   text.each_char do |char|
#     if chars.include?(char)
#       unless frequency.key?(char)
#         frequency[char] = 1
#       else
#         frequency[char] += 1
#       end
#     end
#   end
#   return frequency
# end

# puts "Letter Frequency"
# print "Enter your text: "
# text = gets.chomp
# result = letter_feq(text.upcase).sort
# for key, value in result
#     puts "#{key} => #{value}"
# end





# Modules

# module Message
#   Canon = 10
#   Num = 20
#   # variable should be in capital, num, canon won't work
#   def self.mes1
#     puts "Hello, it's the first module"
#   end
#   def self.mes2
#     puts "It's the second module"
#   end
#   def self.mes3
#     puts "It's the third module"
#   end
# end

# puts Message::Canon
# puts Message::Num
# Message.mes1
# Message.mes2
# Message.mes3

# Using include keyword in modules
# module Lms
#   def portal
#     puts "Welcome to LMS webpage"
#   end
#   def timeTable
#     puts "Here's the teachers timeTable that they never follow"
#   end
#   def grades
#     puts "Here's the unjustified gardes that teachers give to there students"
#   end
# end

# class ForLms
#   include Lms
#   def printx
#     x = 23 + 27
#     puts x
#   end
# end

# less = ForLms.new
# less.portal
# less.timeTable
# less.grades
# less.printx

# Using include and extend keywords (check the difference)
# module AllForOne
#   def black
#     puts "Black stripes"
#   end
#   def float
#     puts "Floats around in air"
#   end
#   def danger
#     puts "Danger sense"
#   end
# end

# class Callquirks_1  # We can use both include and extend in the same class
#   include AllForOne
# end

# class Callquirks_2
#   extend AllForOne
# end

# Callquirks_1.new.black
# Callquirks_1.new.float

# Callquirks_2.danger
# Callquirks_2.black





# Module

=begin
    Modules contains a set of methods and constants
    They are like class but cannot create instance variable
    and they can't have subclasses
=end

# puts Math::PI

# require 'date'
# puts Date.today

# module Circle
#   PI = 3.14
#   def Circle.area(radius)
#     PI * radius ** 2
#   end
#   def Circle.circumference(radius)
#     2 * PI * radius
#   end
# end

# puts Circle::PI
# puts Circle.area(4)
# puts Circle.circumference(4)





# include and extend keyword in classes

# include mixes a module's method at the instance level
# extends mixes a module's method at the class level

# module Action
#   def jump
#     @distance = rand(4) + 2
#     puts "I jumped forward #{@distance} feet"
#   end
# end

# class Animal
#   def speak
#     "This Animal makes a sound"
#   end
# end

# class Rabbit < Animal
#   include Action
#   attr_reader :name
#   def initialize(name)
#     @name = name
#   end
# end

# peter = Rabbit.new("Peter")  # works at instance level
# peter.jump
# puts peter.speak

# class Kangaroo
#   include Action
#   attr_reader :name
#   def initialize(name)
#     @name = name
#   end
# end

# jack = Kangaroo.new("Jack")  # works at instance level
# jack.jump

# module TheTime
#   def now
#     puts "What time is it?"
#   end
# end

# class Here
#   extend TheTime
# end

# Here.now  # works at class level





# array = [1, 2, 3, 4, 5]

# even_numbers = array.select { |num| num.even? }
# puts even_numbers
# puts array.map { |num| num * 2 }

# sum = array.reduce(0) { |acc, num| acc + num }
# puts sum





# Error handling 

=begin
  Some common errors:
    RuntimeError
    StandardError
    NoMethodError
    IOError
    TypeError
    ArgumentError
    ZeroDivisionError
=end

# a = 100/0

# begin
#   a = 100/0
# rescue 
#   puts "Error occured"
# end

# begin
#   a = 100/0
# rescue ZeroDivisionError
#   puts "Error: Can not be divided by 0"
# end

# begin
#   "string" + 1
# rescue TypeError => e
#   puts "Caught a TypeError: #{e.message}"
# end

# begin
#   File.open("non-existent-file.text") do |file|
#     file.read
#   end
# rescue IOError => e
#   puts "Caught a IOError: #{e.message}" 
# end

# begin
#   nil.Some
# rescue NoMethodError => e
#   puts "Caught a NoMethodError: #{e.message}"
# end

# begin
#   raise StandardError, "This is a standard error!"
# rescue StandardError => e
#   puts "Caught a error: #{e.message}"
# end





module Borrowable
  def borrow
    if borrowed?
      puts "This #{self.class} is already borrowed."
    else
      @borrowed = true
      puts "You have borrowed the #{self.class}."
    end
  end

  def return_book
    if borrowed?
      @borrowed = false
      puts "You have returned the #{self.class}."
    else
      puts "This #{self.class} was not borrowed."
    end
  end

  def borrowed?
    @borrowed
  end
end

class Book
  include Borrowable

  def initialize(title, author)
    @title = title
    @author = author
    @borrowed = false
  end

  def info
    "#{@title} by #{@author}"
  end
end

class DigitalBook
  include Borrowable

  def initialize(title, author)
    @title = title
    @author = author
    @borrowed = false
  end

  def info
    "#{@title} by #{@author} (Digital)"
  end
end

physical_book = Book.new("The Great Gatsby", "F. Scott Fitzgerald")
digital_book = DigitalBook.new("1984", "George Orwell")

physical_book.borrow
digital_book.borrow

physical_book.borrow

physical_book.return_book
digital_book.return_book

puts physical_book.borrowed?
puts digital_book.borrowed?
