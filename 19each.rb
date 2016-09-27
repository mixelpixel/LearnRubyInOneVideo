# https://youtu.be/Dji9ALCgfpM
# http://www.newthinktank.com/2015/02/ruby-programming-tutorial/
# Recommended Ruby Book: The Well-Grounded Rubyist 2nd Edition by David A. Black
# Sample chapter: https://manning-content.s3.amazonaws.com/download/3/93fa755-6d88-4296-9d1c-3e40cf96507c/TWGR2E_CH11.pdf
=begin
Ruby is a dynamic, interpreted, object-oriented language
Everything is an object and all of those objects can be overwritten(?what does this mean?)
=end
# https://www.ruby-lang.org/en/





# # # Each 16:40
puts
puts
puts "**********EACH DO |x|**********"
puts
puts

puts "object.each do |x| is another syntax for FOR-LOOPS"
puts
puts "Technically FOR is syntactic sugar for the EACH method"
puts
puts """
groceries = [\"bananas\", \"sweet potatoes\", \"pasta\", \"tomatoes\"]

groceries.each do |food|
  puts \"Get some \#{food}\"
end

"""
puts
groceries = ["bananas", "sweet potatoes", "pasta", "tomatoes"]

groceries.each do |food|
  puts "Get some #{food}"
end

puts

(0..5).each do |i|
  puts "# #{i}"
end

puts

(0...5).each do |i|
  puts "# #{i}"
end



