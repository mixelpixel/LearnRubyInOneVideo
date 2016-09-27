# https://youtu.be/Dji9ALCgfpM
# http://www.newthinktank.com/2015/02/ruby-programming-tutorial/
# Recommended Ruby Book: The Well-Grounded Rubyist 2nd Edition by David A. Black
# Sample chapter: https://manning-content.s3.amazonaws.com/download/3/93fa755-6d88-4296-9d1c-3e40cf96507c/TWGR2E_CH11.pdf
=begin
Ruby is a dynamic, interpreted, object-oriented language
Everything is an object and all of those objects can be overwritten(?what does this mean?)
=end
# https://www.ruby-lang.org/en/





# # # Loop Next Break 12:19
puts
puts
puts "**********LOOP NEXT BREAK**********"
puts
puts
puts """
x = 1

loop do
  x += 1                      # <-- x += 1 is short for x = x + 1
  next unless (x % 2) == 0    # <-- SKIPS this iteration of the loop
  puts x
  break if x >= 10            # <-- ENDS the LOOPING
end
"""
puts
x = 1

loop do
  x += 1 # x += 1 is short for x = x + 1
  next unless (x % 2) == 0 # SKIPS this iteration of the loop
  puts x
  break if x >= 10 # ENDS the LOOPING
end

puts


