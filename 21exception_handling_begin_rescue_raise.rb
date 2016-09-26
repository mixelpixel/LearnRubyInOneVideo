# https://youtu.be/Dji9ALCgfpM
# http://www.newthinktank.com/2015/02/ruby-programming-tutorial/
# Recommended Ruby Book: The Well-Grounded Rubyist 2nd Edition by David A. Black
# Sample chapter: https://manning-content.s3.amazonaws.com/download/3/93fa755-6d88-4296-9d1c-3e40cf96507c/TWGR2E_CH11.pdf
=begin
Ruby is a dynamic, interpreted, object-oriented language
Everything is an object and all of those objects can be overwritten(?what does this mean?)
=end
# https://www.ruby-lang.org/en/




# # # Exception Handling 19:28
puts
puts
puts "**********EXCEPTION HANDLING**********"
puts "**********BEGIN, RESCUE & RAISE**********"
puts
puts
# We can catch Exceptions in Ruby with BEGIN and RESCUE
print "Enter a number: "
first_num = gets.to_i
print "Enter another number (hint: try zero): "
second_num = gets.to_i
puts
puts first_num
puts second_num
puts

begin
  answer = first_num / second_num

rescue # NOTE: could also use rescue ZeroDivisionError
  puts "You can't divide by zero"
  # exit # optional
end

puts "#{first_num} / #{second_num} = #{answer}"
puts

# Also, we can throw our own exceptions with RAISE
print "Enter an age number: "
age = gets.to_i

def check_age(age)
  raise ArgumentError, "Enter Positive Number" unless age > 0
end

# check_age(age)

# And then catch them with RESCUE
begin
  check_age(age)
rescue ArgumentError
  puts "That is an impossible age"
end


