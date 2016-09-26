# https://youtu.be/Dji9ALCgfpM
# http://www.newthinktank.com/2015/02/ruby-programming-tutorial/
# Recommended Ruby Book: The Well-Grounded Rubyist 2nd Edition by David A. Black
# Sample chapter: https://manning-content.s3.amazonaws.com/download/3/93fa755-6d88-4296-9d1c-3e40cf96507c/TWGR2E_CH11.pdf
=begin
Ruby is a dynamic, interpreted, object-oriented language
Everything is an object and all of those objects can be overwritten(?what does this mean?)
=end
# https://www.ruby-lang.org/en/




# # # If Elsif Else 7:42
# Conditonals
# NOTE: follow ALL IF statements with END!!!
puts
puts
puts "**********IF ELSIF ELSE**********"
puts
puts

age = 12

if (age >= 5) && (age <= 6)
  puts "You're in Kindergarten"
elsif (age >= 7) && (age <= 13)
  puts "You are in middle school"
  puts "Yay!"
else
  puts "Stay Home!"
end

# END not needed if IF is inline, e.g.
# You can add condtions to the output that proceeds it:
puts "You're Young" if age < 30


