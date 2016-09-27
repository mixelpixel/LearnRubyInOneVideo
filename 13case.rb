# https://youtu.be/Dji9ALCgfpM
# http://www.newthinktank.com/2015/02/ruby-programming-tutorial/
# Recommended Ruby Book: The Well-Grounded Rubyist 2nd Edition by David A. Black
# Sample chapter: https://manning-content.s3.amazonaws.com/download/3/93fa755-6d88-4296-9d1c-3e40cf96507c/TWGR2E_CH11.pdf
=begin
Ruby is a dynamic, interpreted, object-oriented language
Everything is an object and all of those objects can be overwritten(?what does this mean?)
=end
# https://www.ruby-lang.org/en/


# # # Case 10:58
puts
puts
puts "**********CASE**********"
puts "*********& exit*********"
puts
puts

puts """
print \"Enter 'French', 'Spanish' or something else for a greeting: \"
# chomp removes the newline (\\n) from input
# NOTE that when you enter the input you hit return which is newline!

greeting = gets.chomp


case greeting

when \"French\", \"french\"
  puts \"Bonjour\"
  # without \"end\" Ruby executes this block then checks the next condition
  exit # NOTE exit ENDS THE PROGRAM

when \"Spanish\", \"spanish\"
  puts \"Hola\"
  exit # NOTE exit ENDS THE PROGRAM

else # ELSE IS THE DEFAULT
  puts \"Hello\"

end
"""


print "Enter 'French', 'Spanish' or something else for a greeting: "
# chomp removes the newline (\n) from input
# NOTE that when you enter the input you hit return which is newline!

greeting = gets.chomp

# CASE is used when you have a limited number of options

case greeting
when "French", "french"
  puts "Bonjour"
  # without "end" Ruby executes this block then checks the next condition
  exit # NOTE EXIT ENDS THE PROGRAM
when "Spanish", "spanish"
  puts "Hola"
  exit # NOTE, I don't want to end this program :p
# ELSE IS THE DEFAULT
else
  puts "Hello"
end


