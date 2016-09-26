# https://youtu.be/Dji9ALCgfpM
# http://www.newthinktank.com/2015/02/ruby-programming-tutorial/
# Recommended Ruby Book: The Well-Grounded Rubyist 2nd Edition by David A. Black
# Sample chapter: https://manning-content.s3.amazonaws.com/download/3/93fa755-6d88-4296-9d1c-3e40cf96507c/TWGR2E_CH11.pdf
=begin
Ruby is a dynamic, interpreted, object-oriented language
Everything is an object and all of those objects can be overwritten(?what does this mean?)
=end
# https://www.ruby-lang.org/en/





# # # Functions 17:54
puts
puts
puts "**********FUNCTIONS**********"
puts
puts
# Functions start with def, function name, parameters if any
# They can return, or not a value, and generally do something
# and then end with "end"
def add_nums(num_1, num_2)
  return num_1.to_i + num_2.to_i
end

puts "Three plus four equals: " + add_nums(3, 4).to_s
puts

# Variables arw passed by value so they're value can't be changed in a function
x = 1
puts "'x' equals: " + x.to_s
puts
def change_x(x)
  x = 4        # THIS IS A LOCAL INSTANCE OF "x"
  puts "Inside the function 'x' equals: " + x.to_s
end

change_x(x)
puts
puts "x still = #{x}"


