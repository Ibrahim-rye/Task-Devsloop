require 'httparty'

# response = HTTParty.get('https://jsonplaceholder.typicode.com/todos/4')
# if response.success?
#   todo = response.parsed_response
#   title = todo['title']
#   completed = todo['completed']
  
#   puts "Title: #{title}"
#   puts "Completed: #{completed}"
# else
#   puts "Error fetching data: #{response.code}"
# end


# response = HTTParty.get('https://jsonplaceholder.typicode.com/posts')

# if response.success?
#   posts = response.parsed_response

#   puts "Displaying the first 5 posts:\n\n"
#   posts.first(5).each do |post|
#     puts "Title: #{post['title']}"
#     puts "Body: #{post['body']}"
#     puts "--------------------------"
#   end
# else
#   puts "Error fetching posts: #{response.code}"
# end







require 'faker'

# 2.times do
#   name = Faker::Name.name
#   email = Faker::Internet.email
#   address = Faker::Address.full_address
#   phone_number = Faker::PhoneNumber.phone_number

#   puts "Name: #{name}"
#   puts "Email: #{email}"
#   puts "Address: #{address}"
#   puts "Phone Number: #{phone_number}"
#   puts "--------------------------"
# end

# 5.times do
#   book_title = Faker::Book.title
#   author = Faker::Book.author
#   pages = Faker::Number.between(from: 50, to: 1000)

#   puts "Book Title: #{book_title}"
#   puts "Author: #{author}"
#   puts "Pages: #{pages}"
#   puts "--------------------------"
# end






require 'byebug'

# byebug
# x = 1
# byebug
# x += 1
# byebug
# puts "done"


# def factorial(n)
#   byebug

#   if n < 0
#     raise "Factorial is not defined for negative numbers"
#   elsif n == 0
#     return 1
#   else
#     return n * factorial(n - 1)
#   end
# end

# puts "Enter a number to calculate its factorial:"
# number = gets.chomp.to_i

# begin
#   result = factorial(number)
#   puts "The factorial of #{number} is #{result}"
# rescue StandardError => e
#   puts "Error: #{e.message}"
# end





require 'colorize'

puts "Hello, World!".colorize(:blue)
puts "This is red text.".colorize(:red)
puts "This is green text with a yellow background.".colorize(:yellow)
puts "This is bold text.".colorize(:light_white).bold
puts "This is underlined text.".colorize(:light_magenta).underline

puts "This is a bold and red text with a blue background.".colorize(:blue).bold
