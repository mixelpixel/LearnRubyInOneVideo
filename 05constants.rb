# https://youtu.be/Dji9ALCgfpM
# http://www.newthinktank.com/2015/02/ruby-programming-tutorial/
# Recommended Ruby Book: The Well-Grounded Rubyist 2nd Edition by David A. Black
# Sample chapter: https://manning-content.s3.amazonaws.com/download/3/93fa755-6d88-4296-9d1c-3e40cf96507c/TWGR2E_CH11.pdf
=begin
Ruby is a dynamic, interpreted, object-oriented language
Everything is an object and all of those objects can be overwritten(?what does this mean?)
=end
# https://www.ruby-lang.org/en/





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
puts Modularity # <-- "Modularity"

# http://ruby-doc.org/stdlib-2.3.1/libdoc/set/rdoc/Set.html
require 'set'
s = Set.new
puts s.class # <-- "Set"

puts "a".to_sym.class # <-- "Symbol" (symbols are like immutable strings in Ruby)
puts :a.class # <-- "Symbol"

A_CONSTANT_VARIABLE = nil
puts A_CONSTANT_VARIABLE.class # <-- "NilClass"

a_file = File.new("a_file.txt", "w")
a_file.puts "a file is opened as an object of File class.\n\
Don't forget to close your files!"
a_file.close
puts a_file.class  # <-- "File"

puts

# A Constant starts with an uppercase letter and if you try to change the
# value you will be warned
puts "warning - Constant variable changes:"
A_CONSTANT = 3.14
A_CONSTANT = 1.6
puts A_CONSTANT
puts A_CONSTANT.class


