# https://youtu.be/Dji9ALCgfpM
# http://www.newthinktank.com/2015/02/ruby-programming-tutorial/
# Recommended Ruby Book: The Well-Grounded Rubyist 2nd Edition by David A. Black
# Sample chapter: https://manning-content.s3.amazonaws.com/download/3/93fa755-6d88-4296-9d1c-3e40cf96507c/TWGR2E_CH11.pdf
=begin
Ruby is a dynamic, interpreted, object-oriented language
Everything is an object and all of those objects can be overwritten(?what does this mean?)
=end
# https://www.ruby-lang.org/en/



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
dumm = full_name.count("^aeiou").to_s
p dumm

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


