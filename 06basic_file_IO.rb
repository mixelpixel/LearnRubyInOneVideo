# https://youtu.be/Dji9ALCgfpM
# http://www.newthinktank.com/2015/02/ruby-programming-tutorial/
# Recommended Ruby Book: The Well-Grounded Rubyist 2nd Edition by David A. Black
# Sample chapter: https://manning-content.s3.amazonaws.com/download/3/93fa755-6d88-4296-9d1c-3e40cf96507c/TWGR2E_CH11.pdf
=begin
Ruby is a dynamic, interpreted, object-oriented language
Everything is an object and all of those objects can be overwritten(?what does this mean?)
=end
# https://www.ruby-lang.org/en/





# # # Basic File I/O 5:52
puts
puts
puts "**********BASIC FILE I/O**********"
puts
puts

# Returns a file object for writing
write_handler = File.new("LRIOV.txt", "w")

# Put text into the file
write_handler.puts("Look what I learned today!").to_s #WHY DO I NEED TO MAKE THIS A STRING?

# ALWAYS REMEMBER TO CLOSE THE FILE
write_handler.close

# Read data from the defined file
data_from_file = File.read("LRIOV.txt")
puts "Data from file: " + data_from_file

# NOW I am gonna make the file used in the next lesson:
textual_healing = File.new("RubyOrNotRuby.rb", "w")
textual_healing.puts('puts "Hello from RubyOrNotRuby.rb"').to_s
textual_healing.close
data_from_txt_heal = File.read("RubyOrNotRuby.rb")
puts "Data from another file: " + data_from_txt_heal


