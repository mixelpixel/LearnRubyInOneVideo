# https://youtu.be/Dji9ALCgfpM
# http://www.newthinktank.com/2015/02/ruby-programming-tutorial/
# Recommended Ruby Book: The Well-Grounded Rubyist 2nd Edition by David A. Black
# Sample chapter: https://manning-content.s3.amazonaws.com/download/3/93fa755-6d88-4296-9d1c-3e40cf96507c/TWGR2E_CH11.pdf
=begin
Ruby is a dynamic, interpreted, object-oriented language
Everything is an object and all of those objects can be overwritten(?what does this mean?)
=end
# https://www.ruby-lang.org/en/





# # # For Loops 15:48
puts
puts
puts "**********FOR LOOPS**********"
puts
puts

numbers = 1,2,3,4,5
# p numbers # Interesting: two ways to assign arrays
# puts numbers # NOTE that p shows the array
# puts numbers.class # and puts puts each number on a new line
# nums = [1,2,3,4,5]
# p nums
# puts nums
# print nums # and print prints the array (with no newline)
# puts nums.class
for number in numbers
  puts "#{number}, "
end

for number in numbers
  print "#{number}, "
end

puts

for number in numbers
  puts "#%s, " % number
end


