# https://youtu.be/Dji9ALCgfpM
# http://www.newthinktank.com/2015/02/ruby-programming-tutorial/
# Recommended Ruby Book: The Well-Grounded Rubyist 2nd Edition by David A. Black
# Sample chapter: https://manning-content.s3.amazonaws.com/download/3/93fa755-6d88-4296-9d1c-3e40cf96507c/TWGR2E_CH11.pdf
=begin
Ruby is a dynamic, interpreted, object-oriented language
Everything is an object and all of those objects can be overwritten(?what does this mean?)
=end
# https://www.ruby-lang.org/en/


# print prints the string to screen WITHOUT a newline
# NOTES ON p v puts v print:
# http://stackoverflow.com/questions/1255324/p-vs-puts-in-ruby
# http://www.garethrees.co.uk/2013/05/04/p-vs-puts-vs-print-in-ruby/
puts
puts
puts "**********PRINTING**********"
puts
puts
p "The 'p' command prints STRINGS with quotes and a newline"
puts
p 'this is "p" with single quotes'
puts
puts "The double-quote 'puts' command prints with a newline and no quotes."
puts
puts '\t...and "puts" with single quotes ignores some formatting stuff...'
puts
puts """\tAlso, 'puts' with triple double
\tquotes allows for some
\tformatting options across
\tmultiple lines..."""
puts
puts '''\tAnd "puts"
\twith triple
\tsingle
\tquotes
\t\nignores
\tthem'''
puts
p """'p'
with
triple
double
quotes"""
puts
p ''' ...and "p"
with
triple
single
quotes'''
puts
print """'print'
with
triple
quotes"""
print ''' ...and
"print"
with
triple
single
quotes'''
puts "...this puts sentence makes a new line, because..."
puts
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



# # # Arithmetic 3:11
# Five main arithmetic operators + - * / %
puts
puts
puts "**********ARITHMETIC**********"
puts
puts
puts "6 + 4 = " + (6 + 4).to_s + "    - addition!"
puts "6 - 4 = " + (6 - 4).to_s + "     - subtraction!"
puts "6 * 4 = " + (6 * 4).to_s + "    - multiplication!"
puts "6 / 4 = " + (6 / 4).to_s + "     - FLOOR division!"
puts "6 / 4.0 = " + (6 / 4.0).to_s + " - floating point division!"
puts "6 % 4 = " + (6 % 4).to_s + "     - modulo operator gives the remainder of a division!"
puts
puts



# # # Integers 3:24
puts "**********INTEGERS a.k.a. 'Fixnums'**********"
# # # Floats 3:42
puts "**********... and FLOATS**********"
puts
puts
num_one = 1.000
num99 = 0.999 #NOTE: floating point numbers require a LEADING zero
puts num_one.to_s + " - " + num99.to_s + " + " + (num_one - num99).to_s
puts
big_float = 1.12345678901234 # 14 digits of accuracy is the norm
puts big_float.to_s + " + \n0.00000000000005 = \n__________________\n" + 
     (big_float + 0.00000000000005).to_s

     

# # # Constants 5:23
# NOTES ON TYPE v CLASS
# http://stackoverflow.com/questions/15769739/determining-type-of-an-object-in-ruby
puts
puts
puts "**********CONSTANTS**********"
puts
puts
puts 1.class # <-- "Fixnum"
puts 1.234.class # <-- "Float"
puts 123456789012345.class # <-- "Bignum"
puts "A String".class # <-- "String"
puts true.class # <-- "TrueClass"
puts false.class # <-- "FalseClass"
puts [1,2,3].class # <-- "Array"
# NOTES ON COLLECTION TYPES IN RUBY (Sets, 'Tuples', etc.)
# http://6ftdan.com/allyourdev/2015/03/26/different-collection-types-in-ruby/
hash_map = {1 => 'a', 2 => 'b', 3 => 'c'}
puts hash_map.class # <-- "Hash"
class Classy
end
a = Classy.new()
puts Classy.class # <-- "Class"
puts a.class # <-- "Classy" - neat, huh?
module Modularity
end
puts Modularity # <-- "Modularity"\
# http://ruby-doc.org/stdlib-2.3.1/libdoc/set/rdoc/Set.html
require 'set'
s = Set.new
puts s.class # <-- "Set"

# A Constant starts with an uppercase letter and if you try to change the
# value you will be warned
A_CONSTANT = 3.14
A_CONSTANT = 1.6
puts A_CONSTANT



# # # Basic File I/O 5:52
puts
puts
puts "**********BASIC FILE I/O**********"
puts
puts
# Returns a file object for writing
write_handler = File.new("LRIOV.txt", "w")
# Put text into the file
write_handler.puts("Look what I learned today!").to_s
# ALWAYS REMEMBER TO CLOSE THE FILE
write_handler.close
# Read data from the defined file
data_from_file = File.read("LRIOV.txt")
puts "Data from file: " + data_from_file



# # # Load Ruby File 6:56
puts
puts
puts "**********X**********"
puts
puts



# # # Multiline Comment 7:27
puts
puts
puts "**********X**********"
puts
puts



# # # If Elsif Else 7:42
puts
puts
puts "**********X**********"
puts
puts



# # # Comparison Operators 8:45
puts
puts
puts "**********X**********"
puts
puts



# # # Logical Operators 8:59
puts
puts
puts "**********X**********"
puts
puts



# # # Unless 10:19
puts
puts
puts "**********X**********"
puts
puts



# # # Case 10:58
puts
puts
puts "**********X**********"
puts
puts



# # # Ternary Operator 12:14
puts
puts
puts "**********X**********"
puts
puts



# # # Loop Next Break 12:19
puts
puts
puts "**********X**********"
puts
puts



# # # While 14:21
puts
puts
puts "**********X**********"
puts
puts



# # # Until 15:09
puts
puts
puts "**********X**********"
puts
puts



# # # For Loops 15:48
puts
puts
puts "**********X**********"
puts
puts



# # # Each 16:40
puts
puts
puts "**********X**********"
puts
puts



# # # Functions 17:54
puts
puts
puts "**********X**********"
puts
puts



# # # Exception Handling 19:28
puts
puts
puts "**********X**********"
puts
puts



# # # Strings 21:47
puts
puts
puts "**********X**********"
puts
puts



# # # Chop Chomp 27:45
puts
puts
puts "**********X**********"
puts
puts



# # # Class Objects 29:29
puts
puts
puts "**********X**********"
puts
puts



# # # Inheritance 33:19
puts
puts
puts "**********X**********"
puts
puts



# # # Modules 34:23
puts
puts
puts "**********X**********"
puts
puts



# # # Polymorphism 38:20
puts
puts
puts "**********X**********"
puts
puts



# # # Symbols 40:11
puts
puts
puts "**********X**********"
puts
puts



# # # Arrays 41:26
puts
puts
puts "**********X**********"
puts
puts



# # # Hashes 45:43
puts
puts
puts "**********X**********"
puts
puts



# # # Enumerables 49:21
puts
puts
puts "**********X**********"
puts
puts



# # # File I/O 52:05
puts
puts
puts "**********X**********"
puts
puts



