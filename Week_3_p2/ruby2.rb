# Math methods

# a = -23.5
# b = 32.43
# puts a.abs()
# puts a.round()
# puts b.floor()
# puts b.ceil()
# puts Math.sqrt(4)
# puts Math.log(100)





# Predicate? and bang! methods

# puts "ibrahim".include?("i")     # Predicate true or false question
# puts 5.odd?
# puts "Ibrahim".start_with?("R")

# name = "ibrahim"       # change the object
# puts name.upcase!  
# puts name

# def young?(age)
#   age <= 18
# end
# puts young?(42)

# def bang!(num)
#   num[0] *= 2
# end
# num = [5]
# bang!(num)
# puts num[0]





# Sorting
=begin
    Sorting  a <=> b
    0 if a == b
    1 if a > b
    -1 if a < b
=end

# name1 = "A"
# name2 = "B"
# puts name1 <=> name2

# numbers = [11, 6, 3, 7, 1, 8]
# numbers.sort!{ |first, second| first <=> second }
# print numbers
# puts "\n"
# numbers.sort!{ |first, second| second <=> first }
# print numbers





# Blocks
=begin
    Blocks are like methods without a name, anonymous functions
    Blocks accept arguments and return a value
    A block is always called to method call
    Blocks are not objects.
    {...} and do .. end
=end

# 1.times do       # times is a method and we are using do end block
#   puts "I'm a do end Block"
# end

# 1.times { puts "I'm a {} Block"}

# [1, 2, 3, 4, 5].each do |index|
#   puts index
# end

# [1,2,3,4,5].each { |num| puts "#{num} Block"}

# result = [1,2,3,4,5].select do |index|
#   index.odd?
# end
# print result

# res = [1,2,3,4,5].select { |num| num.odd? }
# print res





# Respond to (basiclly it tells us if a certain method exists or not)

# age = 23
# puts age.next
# puts age.respond_to?(:next)
# puts [1,2,3].respond_to?(:push)

# class Calculator
#   def sum(a, b)
#     a + b
#   end
# end
# cal = Calculator.new
# puts cal.respond_to?(:sum)
# puts cal.respond_to?(:subtract)





# Another push << (it's like a sign of enter, I mean [a,b,c] << d )

# letters = ["a", "b", "c"]
# print letters << "d"





# Using Yield in Ruby

# def greet
#   puts "Hello"
#   yield
#   puts "Goodbye"
# end

# greet do
#   puts "This is yield call"
# end
# greet # gives error

# def greet
#   puts "Hello"
#   yield if block_given?
#   puts "Goodbye"
# end 
# greet # will not give error

# def example(name)
#   puts "Start, before yield"
#   yield("Ross")
#   puts "1'st end, before 2'nd yield"
#   yield(name)
#   puts "yield ends"
# end

# example("Joey") { |n| puts "My name is #{n}"}





# Enumerable methods

numbers = [1,2,3,4,5]
square = numbers.map { |num| num ** 2 }
print square
puts ""
even = numbers.select { |num| num.even? }
print even
puts ""
sum = numbers.reduce(0) { |acc, n| acc + n }
print sum
puts ""
print numbers.each { |n| n}
puts ""
print numbers.find { |n| n.even? }
puts ""
odd = numbers.reject { |n| n.even? }
print odd
puts ""
print numbers.all? { |n| n.even? }
puts ""
print numbers.any? { |n| n.even? }
puts ""
print numbers.none? { |n| n.even? }



