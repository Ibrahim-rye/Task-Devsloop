# puts vs prints

# print 'Hello world'   # Doesn't goes to the next line when ends
# puts 'Ibrahim'        # Goes to the next line when ends

# print 'Hello'
# print 'World'

# puts 'Hello'
# puts 'World'

# puts 'Hello'
# print 'World'





# Data Types (string, numbers, boolean, nil, arrays, hashes, symbols)

# customer_name = 'Ibrahim'
# customer_age = 23
# customer_alive = true
# customer_dead = nil     # won't print anything

# puts 'Hello ' + customer_name
# puts customer_age
# puts customer_alive
# puts customer_dead




# Arithmetic, assignment and comparison operators 
# a = 7
# b = 2

# puts a + b
# puts a / b    # integer values gives integer values
# puts a ** b   # exponent (power)
# puts a % b
# puts a += b
# puts a /= b
# puts a > b
# puts a <= b
# puts a != b






# Strinf interpolation: Adding variables in string

# name = "Ibrahim"
# puts "Hello #{name}"
# puts 'Hello #{name}'  # won't work with single qoutes





# Data Type Converstions / Casting

# Syntax to_[datatypes] : to_i, to_f, to_s, to_a, to_r, to_c (rational and complex number)
# puts 3.to_f
# puts 4.to_s
# puts 3.4567.to_i





# Strings and it's methods (upcase, downcase, capitalize, reverse, length)

# text = "ibraHim"
# puts text.upcase
# puts text.downcase
# puts text.capitalize
# puts text.reverse
# puts text.length
# # Multi-lines with ""
# puts "
#   Hi, my name is Ibrahim
#   I work in devsloop
#   "
# # Multilines with '%//'
# puts %/Second String
# Hi there
# I'm here

# /
# # Multilines with '<<RANDOM_IDENTIFIER'
# puts <<RANDOM_IDENTIFIER 
# hello there, how are ya,
# im fine how about you
# RANDOM_IDENTIFIER





# Methods with Bang(!)

# text = 'Hello World'
# puts text.upcase
# puts text
# puts text.upcase!
# puts text





# Stings as arrays

# myString = "Yohoho ib"
# puts myString[0]
# puts myString[1]
# puts "\n"
# puts myString[2, 2]
# puts myString.include? "ib"
# puts myString.include? "hello"
# puts "\n"
# puts myString.split(" ")
# puts myString.gsub('o', 'i')
# puts myString.sub('o', 'i')





# Math methods

# a = -23.5
# b = 32.43
# puts a.abs()
# puts a.round()
# puts b.floor()
# puts b.ceil()
# puts Math.sqrt(4)
# puts Math.log(100)





# User input (gets and gets.chomp)
# gets takes the input and goes to the next line
# gets.chomp takes the input only

# puts "What's your name?"
# # name = gets
# name = gets.chomp
# puts "My name is #{name}, what about you?"

# puts "Enter the first number"
# a = gets.chomp
# puts "Enter the second number"
# b = gets.chomp
# puts a + b              # "3" + "9" = "39"
# puts a.to_i + b.to_i    # 3 + 9 = 12





# Boolean operators (==, &&, ||, !)

# and_Test = (1 == 1) && ("R" == "R")
# puts and_Test
# and_Test = (10 == 10) && true
# puts and_Test
# and_Test = (1 != 1) && ("R" == "R")
# puts and_Test

# puts !true





# Arrays (via Class => Arrays.new, literals Array => [10, 9, 8, 7])

# array1 = [3, 4, 5, 7]
# array2 = Array.new(5, "Yoho")
# array3 = [1.4, 7, "SSS", true]
# puts array1
# puts array2
# puts array3
# puts array1.size
# puts array2.length

# # Accessing Array elements
# puts array1[1]
# puts array1[-2]

# # Range in array
# puts array1[1, 3]

# # Different Range methods
# puts array1[1..3]    # includes the last index
# puts array1[1...3]   # exclude the last method





# N Dimensional Array

# grid = [[1,2,3], [4,5,6], [7,8,9]]
# puts grid[0][1]
# puts grid[2][1]
# grid[0][0] = 100
# puts grid[0][0]





# Array methods

# language = ["Japanese", "Korean", "Taiwanese", "Chinese"]
# language.push("Thai")

# puts language
# puts "\n"
# puts language.pop
# puts "\n Reverse"
# puts language.reverse
# puts "\n Sort"
# puts language.sort
# puts "\n Include"
# puts language.include?("Korean")





# Conditionals (if elseif else end)
#              (comparison ? true : false)
#              (enless => opposite of if)

# if "a" > "b"
#   puts "a is greater than b"
# elsif "a" < "b"
#   puts "a is smaller than b"
# else
#   puts "String comparison"
# end

# city = "Nottingham"
# unless city == "Nottingham"       # false
#   puts "My brother lives their"   # this will work
# else
#   puts "I'll won't be visiting here"
# end

# puts (5 == 6) ? "5 is equal to 6" : "5 is not equal to 6"

# Ruby Modifiers

# # age = 15
# # puts "Age is less than 18" if age <= 18
# # age = 20
# # puts "Age is greater than 18" if age <= 18
# age = 15
# puts "Age is less than 18" unless age <= 18
# age = 20
# puts "Age is greater than 18" unless age <= 18

# # name = nil
# name = "ibrahim"
# name ||= "Cat's Cradle"
# puts name





# Switch Cases

# age = 90
# case age
# when 0..18
#   puts "Study"
# when 18..60
#   puts "Job"
# when 60..80
#   puts "Retire"
# else
#   puts "Dead"
# end

# puts "Hello there"
# greeting = gets.chomp
# case greeting
#   when "English" then puts "Hi!"
#   when "French" then puts "Bonjour!"
#   when "Japan" then puts "Konichiwa!"
#   when "German" then puts "Guten Tag!"
#   else puts "Sorry i don't understand you"
# end





# Loops in Ruby

# for loop
# for loop with range included and excluded

# myarray = ["LongDrive", "NoManLand", "Toxic", "Happier", "Alive", "FlyAway"]
# for items in myarray
#   print "#{items} "
# end

# for index in 0..5     # last index included
#   print "#{index} "
# end

# for index in 0...5    # last index excluded
#   print "#{index} "
# end

# 5.times do |index|
#   print "#{index} "
# end





# Other Loops (while, do-while, until loops in ruby)

# i = 0
# while i < 5 do
#   puts "index #{i}"
#   i += 1
# end

# i = 0
# loop do 
#   puts "index #{i}"
#   i += 1

#   if i == 5
#     break
#   end
# end

# i = 0
# loop do 
#   i += 1
#   if i % 2 == 0
#     next    # jumps to next iteration of loop
#   end

#   puts "index #{i} "
#   if i >= 10
#     break   # breaks the loop
#   end
# end

# i = 0
# until i == 5 do
#   puts "index #{i}"
#   i += 1
# end

# "A".upto("Z") {|index| print "#{index} "}
# 10.downto(1) {|index| print "#{index} "}





# Hash Hash Hash (Dictionaries, key-pair value)

# dictionary = {"one" => "ichi", "two" => "ni", "three" => "san"}
# puts dictionary["one"]

# myHash = Hash.new(0) # default value is zero
# myHash["name"] = "ibrahim"
# myHash[:age] = 23
# myHash[:language] = "English"
# myHash[5] = "five"   # here 5 is not an index, it's a key
# puts myHash 
# puts myHash["random-key"]

# myHash.each do |key, value|   # Key-value pair
#   puts "#{key} : #{value}"
# end

# myHash.each_key do |key|      # only keys
#   puts "#{key} "
# end

# myHash.each_value do |value|  # only values
#   puts "#{value} "
# end

# puts myHash.fetch("name")
# puts myHash.keys
# puts myHash.values
# puts myHash.length
# puts myHash.size

# puts dictionary.merge(myHash)





# symbols (They are like strings except they are code)
#         (Better performance, less memory, unique copy, immutable)

# languages = {
#   :Britian => "British",
#   :Japan => "Japanese",
#   :China => "Chinese",
#   :Dinotopia => "Dino"
# }
# puts languages

# # String ids change
# puts "hello".object_id
# puts "hello".object_id

# # Symbols ids don't change as they have single instance
# puts :hello.object_id
# puts :hello.object_id





# Filter even numbers

# def even_num(numbers)
#   numbers.select { |number| number.even? }
# end
# input = [1,2,3,4,5,6,7,8,9,10]
# puts even_num(input)





# String is a palindrome

# def palindrome?(str)
#   str = str.downcase.gsub(/[^a-z0-9]/, '')
#   str == str.reverse
# end
# puts palindrome?("hello world")
# puts palindrome?("hello olleh")