# Functions (def, end, has name, params)

# def hello
#   puts "it's a function"
# end
# hello # or hello()

# def useReturn
#   return "ibrahim"
# end
# name = useReturn
# puts "Hello, #{name}"

# def useParams(num) # params can be set by default like num=2
#   return num * 2   # explicit return
# end
# puts useParams(4)  # it'll be empty for default params

# def noReturn(number)   
#   number * 2      # implicit return
# end
# puts noReturn(10)

# def splat_args(*args)   # .count .length .size all will work the same
#   if args.count == 1
#     puts "1 argument"
#   elsif args.count == 2
#     puts "2 argument" 
#   elsif args.count == 3
#     puts "3 argument"
#   end
# end
# splat_args(1,1,1)

# def splat_args(first, *args, last)   # .count .length .size all will work the same
#   puts first
#   if args.count == 1
#     puts "1 argument"
#   elsif args.count == 2
#     puts "2 argument" 
#   elsif args.count == 3
#     puts "3 argument"
#   end
#   puts last
# end
# splat_args("first arg", 1, 1, "last arg")





=begin
    Procs are like 'saved' Blocks
    Unlike blocks, procs can be called over and over without rewriting them
    They can be assigned to variables and passed around like other objects
    Procs can be called explicitly using the call method
    Called using &
=end

# multiples_of5 = Proc.new do |n|   # can also be writen as { |n| n % 5 == 0 }
#   n % 5 == 0
# end
# print (1..50).to_a.select(&multiples_of5)

# iseven = Proc.new { |n| n.even? }
# arr1 = [1,2,3,4,5,6,7,8]
# arr2 = [11,22,33,44,55,66,77,88]
# array1 = arr1.select(&iseven)
# array2 = arr2.select(&iseven)
# puts "This is array 1 = #{array1}"
# puts "This is array 2 = #{array2}"

# cube = Proc.new { |x| x ** 3 }    # map and collect both works the same
# print [1,2,3,4].collect!(&cube)   # but map is preferred as it is commonly used
# puts ""
# print [1,2,3,4].map!(&cube)

# hello = Proc.new do
#   puts "Heloo Ibrahim"
# end
# hello.call

# num = [1,2,3,4,5,6,7,8]
# str = num.map(&:to_s)
# str1 = num.map(&:to_i)
# print str
# puts ""
# print str1





# Lambda and it's comparison with Proc
# can be written as lambda {...}
# or like -> {...}

# # lambda
# my_lambda = -> (x) { x * 2 }
# puts my_lambda.call(3)
# # Proc
# my_proc = Proc.new { |x| x * 2 }
# puts my_proc.call(3)

# # Additional argument
# lam_ex = -> (x) { puts x }
# proc_ex = Proc.new { |x| puts x }
# lam_ex.call(1, 2)   # output: wrong number of arguments (given 2, expected 1)
# proc_ex.call(1, 2)  # output: 1

# def method_with_lamda
#   puts "Before lambda"
#   my_lambda = -> { return "Returned from lambda"}
#   # controls comes back here
#   text = my_lambda.call
#   puts text
#   return "Method continues after lambda"
# end

# def method_with_proc
#   puts "Before proc"
#   my_proc = Proc.new { return "Return from proc"}
#   # controls does not comes back here
#   text = my_proc.call
#   puts text
#   return "Methods continues after Proc"
# end

# puts method_with_lamda
# puts ""
# puts method_with_proc





# OOP: Class

# puts "This is a string".class
# puts 5.class

# # This is a class, name should start with capital, it's a coding convention
# class Calculator
# end

# # This is a method, name starts with small letter
# def calculator
# end

# # You can create a new instance of the class like this
# cal = Calculator.new
# puts cal.class

# class Calculator
#   def sum (a, b)
#     a + b
#   end
# end
# cal = Calculator.new
# puts cal.sum(10, 4)
# cal2 = Calculator.new
# puts cal2.sum(10, 4)

# puts cal.object_id
# puts cal2.object_id





# Instance variable

# class Person
#   def initialize(name)
#     @name = name
#   end

#   def greet
#     puts "Welcome #{@name}"
#   end
# end
# user = Person.new("Ibrahim")
# user.greet

# class Person1
#   def initialize(name, age, eyeColor)
#     @name = name
#     @age = age
#     @eyes = eyeColor
#   end

#   def greet
#     @name
#   end
# end
# person = Person1.new("Ibrahim", 23, "Brown")
# puts person.greet
# puts person.instance_variables





# Global variables (starts with $)

# class Person
#   $my_var = "Hello Umais"
# end
# puts $my_var





# Class variables

# class Person
#   @@people_count = 0
#   def initialize(name)
#     @name = name
#     @@people_count += 1
#   end

#   def self.number_of_instances
#     @@people_count
#   end
# end

# name1 = Person.new("Ibrahim")
# name2 = Person.new("Umais")
# name3 = Person.new("Khizar")
# puts "Number of Person instances: #{Person.number_of_instances}"





# Attribute Accessors

=begin
    attr_reader - creates a getter method
    attr_writer - creates a setter method
    attr_accessor - creates a both getter and setter method
=end

# class Person
#   attr_reader :fname, :lname, :age
#   attr_writer :age
#   attr_accessor :profession

#   def initialize(fname, lname, age, profession)
#     @fname = fname
#     @lname = lname
#     @age = age
#     @profession = profession
#   end
# end

# person = Person.new("Umais", "Usmani", 22, "Software Engineer")
# puts person.fname
# puts person.lname

# person.age = 20

# puts person.profession
# person.profession = "Character Artist"
# puts person.profession





# Sets (unique values)

# require("set")
# test_set = Set[1, 2]

# test_set.add(3)
# test_set.add(3)
# test_set.add("abc")

# puts test_set
# test_set.each do |index|
#   puts index
# end





# Tasks

# class Book
#   attr_accessor :title, :author, :pages

#   def initialize(title, author, pages)
#     @title = title
#     @author = author
#     @pages = pages
#   end

#   def book_details
#     puts "Title: #{@title}"
#     puts "Author: #{@author}"
#     puts "Pages: #{@pages}"
#   end
# end

# book = Book.new("The Alchemist", "Paulo Coelho", 334)
# book.book_details





# class Book
#   attr_accessor :title, :author, :year

#   def initialize(title, author, year)
#     @title = title
#     @author = author
#     @year = year
#   end

#   def display_books
#     puts "Title: #{title}, Author: #{author}, Year: #{year}"
#   end
# end

# class Library
#   attr_accessor :books

#   def initialize
#     @books = []
#   end

#   def add_book(book)
#     @books << book
#     puts "#{book.title} had been added to the Library"
#   end

#   def list_books
#     if @books.empty?
#       puts "No book in the library"
#     else
#       puts "Books in the library"
#       @books.each { |book| book.display_books }
#     end
#   end
# end

# library = Library.new

# book1 = Book.new("Ikigai", "Francesc Hector", 2016)
# book2 = Book.new("The Alchemist", "Paulo Coelho", 1988)
# book3 = Book.new("Tuesdays with Morrie", "Mitch Albom", 1997)

# library.add_book(book1)
# library.add_book(book2)
# library.add_book(book3)

# library.list_books






class Food
  attr_accessor :name, :chef

  def initialize(name, chef)
    @name = name
    @chef = chef
  end

  def display_food
    puts "#{@name} is made by #{@chef}"
  end
end

class Restaurant
  attr_accessor :foods

  def initialize
    @foods = []
  end

  def add_food(food)
    @foods << food
    puts "#{food.name} is now being served in this restaurant"
  end

  def food_list
    if @foods.empty?
      puts "This Restaurant menu isn't made yet"
    else
      puts ""
      puts "Restaurant's Menu"
      @foods.each { |food| food.display_food }
    end
  end
end

restaruant = Restaurant.new
food1 = Food.new("Kimchi", "Baek Jong-won")
food2 = Food.new("Bibimbap", "Judy Joo")
food3 = Food.new("Bulgogi", "Ming Tsai")
food4 = Food.new("Tteokbokki", "Hong Seung-pyo")

restaruant.add_food(food1)
restaruant.add_food(food2)
restaruant.add_food(food3)
restaruant.add_food(food4)

restaruant.food_list

