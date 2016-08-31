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

# printf does formatted printing (see also "sprintf")
# %s for strings
# %d for integers
# %f for floats - %.3f would print a float with 3 decimals
texty = 'A string of text'
num = 100
floater = 100 / 3.to_f
printf """And there's printf formatting:
%s and an integer %d, and a floating point number
to the 3rd digit: %.3f\n""", texty, num, floater
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
# NOTE: NOTES ON TYPE v CLASS
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
# NOTE: NOTES ON COLLECTION TYPES IN RUBY (Sets, 'Tuples', etc.)
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

puts "a".to_sym.class # <-- "Symbol" (symbols are like immutable strings in Ruby)
puts

# A Constant starts with an uppercase letter and if you try to change the
# value you will be warned
A_CONSTANT = 3.14
A_CONSTANT = 1.6
puts A_CONSTANT
puts A_CONSTANT.class



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



# # # Load Ruby File 6:56
puts
puts
puts "**********LOADING A RUBY FILE**********"
puts
puts
# Use "load" to execute the code in another Ruby file
load "RubyOrNotRuby.rb"



# # # Multiline Comment 7:27
=begin
multiline comments in your script
start with "=begin"
and end with
=end



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



# # # Comparison Operators 8:45
# Comparison Operators: == != < > <= >= & <=> & unless
puts
puts
puts "**********COMPARISON OPERATORS**********"
puts
puts
# Comparison operator that returns 0 (equal),
# 1 if 1st is greater, and
# -1 if 1st is less than.
puts "5 <=>  5 =  " + (5 <=> 5).to_s # <-- 0
puts "10 <=> 5 =  " + (10 <=> 5).to_s # <-- 1
puts "5 <=> 10 = " + (5 <=> 10).to_s # <-- -1



# # # Logical Operators 8:59
# Logical Operators: && || ! (and, or, not)
puts
puts
puts "**********LOGICAL OPERATORS**********"
puts
puts
puts "true && false = " + (true && false).to_s
puts "true and false = " + (true and false).to_s
puts "true || false = " + (true || false).to_s
puts "true or false = " + (true or false).to_s
puts "!false = " + (!false).to_s
puts "not false = " + (not false).to_s



# # # Unless 10:19
puts
puts
puts "**********UNLESS**********"
puts
puts
# UNLESS is another comparison operator
# UNLESS IS A NEGATED IF

unless age > 4
  puts "No school!"
else
  puts "Go to School."
end


# # # Case 10:58
puts
puts
puts "**********CASE**********"
puts
puts
print "Enter Greeting: "
# chomp removes the newline (\n) from input
# NOTE that when you enter the input you hit return which is newline!

greeting = gets.chomp

# CASE is used when you have a limited number of options

case greeting
when "French", "french"
  puts "Bonjour"
  # without "end" Ruby executes this block then checks the next condition
#   exit # NOTE EXIT ENDS THE PROGRAM
when "Spanish", "spanish"
  puts "Hola"
#   exit # NOTE, I don't want to end this program :p
# ELSE IS THE DEFAULT
else
  puts "Hello"
end



# # # Ternary Operator 12:14
puts
puts
puts "**********TERNARY OPERATORS**********"
puts
puts
# SYNTAX: (condition) ? "Returned if true" : "Returned if false"
age = 50
puts (age >= 50) ? "Old" : "Young"



# # # Loop Next Break 12:19
puts
puts
puts "**********LOOP NEXT BREAK**********"
puts
puts

x = 1

loop do
  x += 1 # x += 1 is short for x = x + 1
  next unless (x % 2) == 0 # SKIPS this iteration of the loop
  puts x
  break if x >= 10 # ENDS the LOOPING
end



# # # While 14:21
puts
puts
puts "**********WHILE**********"
puts "**********& BEGIN**********"
puts
puts
# Do stuff while the condition is met

y = 1

while y <= 10
  y += 1
  next unless (y % 2) == 0
  puts y
  break if y >= 10
end

puts

z = 1

begin
  z += 1
  next unless (z % 2) == 0
  puts z
  break if z >= 10
end while z <=10



# # # Until 15:09
puts
puts
puts "**********UNTIL**********"
puts
puts
# Do stuff until a condition is met

a = 1

until a >= 10
  a += 1
  next unless (a % 2) == 0
  puts a
end



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



# # # Each 16:40
puts
puts
puts "**********EACH DO |x|**********"
puts
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



# # # Functions 17:54
puts
puts
puts "**********FUNCTIONS**********"
puts
puts
# Functions start with def, function name, parameters if any
# They can return, or not a value, and generally do something
# and then end with "end"
def add_nums(num_1, num_2)
  return num_1.to_i + num_2.to_i
end

puts "Three plus four equals: " + add_nums(3, 4).to_s
puts

# Variables arw passed by value so they're value can't be changed in a function
x = 1
puts "'x' equals: " + x.to_s
puts
def change_x(x)
  x = 4        # THIS IS A LOCAL INSTANCE OF "x"
  puts "Inside the function 'x' equals: " + x.to_s
end

change_x(x)
puts
puts "x still = #{x}"



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



# # # Strings 21:47
puts
puts
puts "**********STRINGS**********"
puts "**********HERE-DOC**********"
puts
puts
# Strings are a series of characters between " or '
# String interpolation doesn't work with '' and neither do backslash
# characters like newline
 
puts "Add Them #{4 + 5} \n\n"
puts
puts 'Add Them #{4 + 5} \n\n'
puts

# A HERE-DOC is normally used when you want a multiline string
 
multiline_string = <<EOM
This is a very long string
that contains interpolation
like #{4 + 5} \n\n
EOM
 
puts multiline_string

# CONCATENATION
first_name = "Derek"
last_name = "Banas"
full_name = "CONCATENATION: " + first_name + " " + last_name
puts full_name
puts

#INTERPOLATION
middle_name = "Justin"
full_name = "#{first_name} #{middle_name} #{last_name}"
puts "INTERPOLATION: " + full_name
puts

# Does a string contain a string?
puts "Does the full name include,: 'Justin'? " + full_name.include?("Justin").to_s
puts

# Get the length of a string
puts "What is the full_name.size? " + full_name.size.to_s
puts

# Count the number of vowel
puts "Vowels: " + full_name.count("aeiou").to_s
puts

# Count the number of consonants (not vowels with "^" the carrot)
puts "Consonants: " + full_name.count("^aeiou").to_s #NOTE THE USE OF ^ The "CARROT SYMBOL
puts

# Check if a string starts with a string
puts "Does " + full_name + " start with \"Banas\"? " + full_name.start_with?("Banas").to_s
puts

# Return the index for a match
puts "Starting Index of 'Banas': " + full_name.index("Banas").to_s
puts

# Check the equality of strings
puts "a == a: " + ("a" == "a").to_s
puts "a == a is true" if "a" == "a" # CONDITIONAL IF printing
puts "a == a is not false" unless "a" != "a" # CONDITIONAL UNLESS printing
puts

# Check if they are the same object
puts "Same object? \"a\".equal?(\"a\"): " + ("a".equal?"a").to_s
puts "Same object? " + (first_name.equal?first_name).to_s
puts

#Changing Case
puts full_name.upcase
puts full_name.downcase
puts full_name.swapcase
puts

# Stripping white space
full_name = "       " + full_name
p full_name
full_name = full_name.lstrip # Strips off LEFT whitespaces
p full_name
puts
full_name = full_name + "       "
p full_name
full_name = full_name.rstrip # Strips off RIGHT whitespaces
p full_name
puts
full_name = "       " + full_name + "       "
p full_name
full_name = full_name.strip # Strips off ALL head and tail whitespaces
p full_name
puts
full_name_list = full_name.split(' ') # SPLITS into a list of strings
p full_name_list
full_name_no_spaces = full_name_list.join # JOINS a list of strings
p full_name_no_spaces
puts

# Formatting Strings = The Number (argv[0]) = TOTAL number of spaces
puts full_name.rjust(20, '.') # Right
puts full_name.ljust(20, '.') # Left
puts full_name.center(20, '.') # Center Justification
puts full_name.rjust(40, '.') # Right
puts full_name.ljust(40, '.') # Left
puts full_name.center(40, '.') # Center Justification

# Find all string methods by typing irb in terminal and "string".methods
=begin
irb(main):004:0> "string".methods
=> [:<=>, :==, :===, :eql?, :hash, :casecmp, :+, :*, :%, :[], :[]=, :insert, :length, :size, :bytesize,
:empty?, :=~, :match, :succ, :succ!, :next, :next!, :upto, :index, :rindex, :replace, :clear, :chr,
:getbyte, :setbyte, :byteslice, :scrub, :scrub!, :freeze, :to_i, :to_f, :to_s, :to_str, :inspect,
:dump, :upcase, :downcase, :capitalize, :swapcase, :upcase!, :downcase!, :capitalize!, :swapcase!,
:hex, :oct, :split, :lines, :bytes, :chars, :codepoints, :reverse, :reverse!, :concat, :<<, :prepend,
:crypt, :intern, :to_sym, :ord, :include?, :start_with?, :end_with?, :scan, :ljust, :rjust, :center,
:sub, :gsub, :chop, :chomp, :strip, :lstrip, :rstrip, :sub!, :gsub!, :chop!, :chomp!, :strip!,
:lstrip!, :rstrip!, :tr, :tr_s, :delete, :squeeze, :count, :tr!, :tr_s!, :delete!, :squeeze!,
:each_line, :each_byte, :each_char, :each_codepoint, :sum, :slice, :slice!, :partition, :rpartition,
:encoding, :force_encoding, :b, :valid_encoding?, :ascii_only?, :unpack, :encode, :encode!, :to_r,
:to_c, :unicode_normalize, :unicode_normalize!, :unicode_normalized?, :>, :>=, :<, :<=, :between?,
:nil?, :!~, :class, :singleton_class, :clone, :dup, :itself, :taint, :tainted?, :untaint, :untrust,
:untrusted?, :trust, :frozen?, :methods, :singleton_methods, :protected_methods, :private_methods,
:public_methods, :instance_variables, :instance_variable_get, :instance_variable_set,
:instance_variable_defined?, :remove_instance_variable, :instance_of?, :kind_of?, :is_a?, :tap, :send,
:public_send, :respond_to?, :extend, :display, :method, :public_method, :singleton_method,
:define_singleton_method, :object_id, :to_enum, :enum_for, :equal?, :!, :!=, :instance_eval,
:instance_exec,:__send__, :__id__]
=end



# # # Chop Chomp 27:45
puts
puts
puts "**********CHOP CHOMP**********"
puts
puts

# "chop" eliminates the last characters
puts full_name.chop
puts

# "chomp" eliminates \n OR a specific string
puts full_name.chomp
puts full_name.chomp('as')
puts

# "delete" deletes provided characters
puts full_name.delete("a")
puts

# Split a string into an array
name_array = full_name.split(//)
puts name_array
p name_array
puts
name_array = full_name.split(/ /)
puts name_array
p name_array
puts

# String conversions
puts "a".to_i
puts "2".to_f
puts "2".to_sym
p "aeiou".to_sym
umm = "aeiou".to_sym
p umm.class

# ESCAPE SEQUENCES
# \\ Backslash
# \' Single-quote
# \" Double-quote
# \a Bell
# \b Backspace
# \f Formfeed
# \n Newline
# \r Carriage Return
# \t Tab
# \v Vertical Tab



# # # Class Objects 29:29
puts
puts
puts "**********CLASS OBJECTS**********"
puts
puts
# Object oriented languages - we basically model real world objects
# using classes & just like every day objects, objects are going to
# have attributes which we will call INSTANCE VARIABLES as well as
# capabilities which we will call METHODS.

class Animal

  # initialize is called when an Animal object is created
  # you can set default values here.
  def initialize
    puts "Creating a New Animal"
  end
  
  def set_name(new_name)
    # Sets the value for an instance variable
    @name = new_name
  end
  
  def get_name
    @name
  end
  
  # Provides another way to GET the value for "name"
  def name
    @name
  end
  
  # Provides another way to SET the value for "name"
  def name=(new_name)
    
    # We can eliminate bad input in our SETTERS
    if new_name.is_a?(Numeric) # <--- Numeric, what other things like this are there in Ruby?
      puts "Name Can't Be A Number"
    else
      @name = new_name
    end
  end

end

# Creates a new Animal object
cat = Animal.new
puts

# SETS the Animals name
cat.set_name("Peekaboo")

# GETS the Animal "name" - get_name returns the value of "name"
puts cat.get_name
puts

# Using the alternative way of getting the name value
puts cat.name
puts

# Using the alternative way of SETting a value for name
cat.name = "Sophie"
puts cat.name
puts

class Dog

  # shortcut for creating all GETter functions
  attr_reader :name, :height, :weight
  
  # shortcut for creating all SETter functions
  attr_writer :name, :height, :weight
  
  # creater SETter and GETter methods (Use this one) - BUT WHY?
  attr_accessor :name, :height, :weight
  
  def bark
    return "Generic Bark"
  end
end

rover = Dog.new
rover.name = "Rover"
puts rover.name
puts
puts rover.bark
puts



# # # Inheritance 33:19
puts
puts
puts "**********INHERITANCE**********"
puts
puts
# When you INHERIT from another class you get all its methods and variables
# You can only inherit from one class

class GermanShepard < Dog

  # You can overwrite methods as you need
  
  def bark
    return "Loud Bark"
  end
end

max = GermanShepard.new

max.name = "Max"

printf "%s goes %s \n", max.name, max.bark() # printf????? and there is sprintf...



# # # Modules 34:23
puts
puts
puts "**********MODULES**********"
puts
puts
# Modules are made up of methods and variables, but they can't be instantiated
# They are used to add functionality to a class (You can only inherit one class
# but you can use any number of modules
 
# These allow you access to the "human" module and the "smart" module (Ruby 2+)
require_relative "human" # require_relative? or just require?
require_relative "smart" # hmmm?




# # # Polymorphism 38:20
puts
puts
puts "**********POLYMORPHISM**********"
puts
puts



# # # Symbols 40:11
puts
puts
puts "**********SYMBOLS**********"
puts
puts



# # # Arrays 41:26
puts
puts
puts "**********ARRAYS**********"
puts
puts



# # # Hashes 45:43
puts
puts
puts "**********HASHES**********"
puts
puts



# # # Enumerables 49:21
puts
puts
puts "**********ENUMERABLES**********"
puts
puts



# # # File I/O 52:05
puts
puts
puts "**********FILE I/O**********"
puts
puts





=begin
The End.
=end

