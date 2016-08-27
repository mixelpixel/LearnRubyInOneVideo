# https://youtu.be/Dji9ALCgfpM
# http://www.newthinktank.com/2015/02/ruby-programming-tutorial/
# Recommended Ruby Book: The Well-Grounded Rubyist 2nd Edition by David A. Black
# Sample chapter: https://manning-content.s3.amazonaws.com/download/3/93fa755-6d88-4296-9d1c-3e40cf96507c/TWGR2E_CH11.pdf
=begin
Ruby is a dynamic, interpreted, object-oriented language
Everything is an object and all of those objects can be overwritten(?what does this mean?)
=end

# print prints the string to screen WITHOUT a newline
p "The 'p' command prints STRINGS with quotes and a newline"
puts "The 'puts' command prints with a newline and no quotes."
puts """'puts' with triple quotes
allows for some formatting
options..."""
puts 'puts with single quotes \ignores some formatting options'
print "The 'print' command prints without a newline. Enter a number: "


# # # Get Input 1:47
# Variables start with a lowercase letter (by convention) or _ and may contain numbers
# "gets" stores input from the user and to_i turns the input into an integer
first_num = gets.to_i
p "GET INPUT with 'gets'"
p first_num # NOTE: NO QUOTES WITH INTEGERS
puts "You enetered: %s" % first_num
puts "With gets.to_i is this a string? %s" % first_num.is_a?(String)
puts "...or is this now an integer? %s" % first_num.is_a?(Fixnum)

print "Enter Another Number: "
another_num = gets
p another_num # NOTE: QUOTES
puts "Get it? 'gets' without '.to_i' reads the number as a string!"
p "And... this string comes in with a 'newline': %s" % another_num # NOTE: I use 'p' so the newline is displayed
puts "Is this a string? %s" % another_num.is_a?(String)
puts "Is this an integer? %s" % another_num.is_a?(Fixnum)

print "Enter Another Number: "
second_num = gets.to_i

# puts prints output plus a newline; to_s converts a variable into a string
puts first_num.to_s + " + " + second_num.to_s + " = " +
  (first_num + second_num).to_s + "\n\n" # This last bit adds a new line


# # # Arithmetic 3:11
# Five main arithmetic operators + - * / %
p "ARITHMETIC"
puts "6 + 4 = " + (6 + 4).to_s + "    - addition!"
puts "6 - 4 = " + (6 - 4).to_s + "     - subtraction!"
puts "6 * 4 = " + (6 * 4).to_s + "    - multiplication!"
puts "6 / 4 = " + (6 / 4).to_s + "     - FLOOR division!"
puts "6 / 4.0 = " + (6 / 4.0).to_s + " - floating point division!"
puts "6 % 4 = " + (6 % 4).to_s + "     - modulo operator gives the remainder of a division!"


# # # Integers 3:24
p "INTEGERS a.k.a. 'Fixnums'"

# # # Floats 3:42
p "... and FLOATS"
num_one = 1.000
num99 = 0.999 #NOTE: floating point numbers require a LEADING zero
puts num_one.to_s + " - " + num99.to_s + " + " + (num_one - num99).to_s
big_float = 1.12345678901234 # 14 digits of accuracy is the norm
puts (big_float + 0.00000000000005).to_s


# # # Constants 5:23
# # # Basic File I/O 5:52
# # # Load Ruby File 6:56
# # # Multiline Comment 7:27
# # # If Elsif Else 7:42
# # # Comparison Operators 8:45
# # # Logical Operators 8:59
# # # Unless 10:19
# # # Case 10:58
# # # Ternary Operator 12:14
# # # Loop Next Break 12:19
# # # While 14:21
# # # Until 15:09
# # # For Loops 15:48
# # # Each 16:40
# # # Functions 17:54
# # # Exception Handling 19:28
# # # Strings 21:47
# # # Chop Chomp 27:45
# # # Class Objects 29:29
# # # Inheritance 33:19
# # # Modules 34:23
# # # Polymorphism 38:20
# # # Symbols 40:11
# # # Arrays 41:26
# # # Hashes 45:43
# # # Enumerables 49:21
# # # File I/O 52:05