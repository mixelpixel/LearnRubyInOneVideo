# https://youtu.be/Dji9ALCgfpM
# http://www.newthinktank.com/2015/02/ruby-programming-tutorial/
# Recommended Ruby Book: The Well-Grounded Rubyist 2nd Edition by David A. Black
# Sample chapter: https://manning-content.s3.amazonaws.com/download/3/93fa755-6d88-4296-9d1c-3e40cf96507c/TWGR2E_CH11.pdf
=begin
Ruby is a dynamic, interpreted, object-oriented language
Everything is an object and all of those objects can be overwritten(?what does this mean?)
=end
# https://www.ruby-lang.org/en/



print """The 'print' command prints without a newline.
For example, Enter a number: """


# # # Get Input 1:47
# Variables start with a lowercase letter (by convention) or _ and may contain numbers
# "gets" stores input from the user and to_i turns the input into an integer
first_num = gets.to_i
puts
puts
puts "**********GET INPUT with 'gets'**********"
puts
puts
p first_num # NOTE: NO QUOTES WITH INTEGERS
puts "You enetered: %s" % first_num
puts "With gets.to_i is this a string? %s" % first_num.is_a?(String)
puts "...or is this now an integer? %s" % first_num.is_a?(Fixnum)
puts """Ruby doesn't have 'types' like Python
but it has classes, and because you used 'gets.to_i'
the number you entered is now an object of the %s""" % first_num.class + " class"
puts
print "Enter Another Number: "
another_num = gets
p another_num # NOTE: QUOTES
puts "Get it? 'gets' without '.to_i' reads the number as a string!"
p "And... this string comes in with a 'newline': %s" % another_num # NOTE: I use 'p' so the newline is displayed
puts "Is this a string? %s" % another_num.is_a?(String)
puts "Is this an integer? %s" % another_num.is_a?(Fixnum)
puts "Without '.to_i' 'gets' gets an object of the %s" % another_num.class + " class"
puts
print "Enter yet another number: "
y_a_num = gets.chomp
p y_a_num
puts "This number got the newline CHOMPED off!!!"
puts "You enetered: %s" % y_a_num
puts "Without '.to_i' is this a string? %s" % y_a_num.is_a?(String)
puts "...or is this now an integer? %s" % y_a_num.is_a?(Fixnum)
puts "The number you entered is now an object of the %s" % y_a_num.class + " class"
puts
print "Aaaaand, enter yet another number: "
numb_brr = gets.chomp.to_i
p numb_brr
puts "This number got CHOMPED and then turned into an integer."
puts "Get it? 'gets' with '.chomp' & '.to_i' reads the number as a %s!" % numb_brr.class
puts "This string comes in WITHOUT a 'newline': %s" % numb_brr + " and gets change '.to_i'"
puts "Is this a string? %s" % numb_brr.is_a?(String)
puts "Is this an integer? %s" % numb_brr.is_a?(Fixnum)
puts "The number you entered is now an object of the %s" % numb_brr.class + " class"
puts
print "Enter a last and final number: "
last_num = gets.to_i
# puts prints output plus a newline; to_s converts a variable into a string
puts "Adding the first number you entered and this last one:"
puts first_num.to_s + " + " + last_num.to_s + " = " +
  (first_num + last_num).to_s
sleep(1) # SLEEPY TIME!
puts "\a" # Bell - Wake Up!

