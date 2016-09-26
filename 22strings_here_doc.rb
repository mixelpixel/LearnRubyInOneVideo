# https://youtu.be/Dji9ALCgfpM
# http://www.newthinktank.com/2015/02/ruby-programming-tutorial/
# Recommended Ruby Book: The Well-Grounded Rubyist 2nd Edition by David A. Black
# Sample chapter: https://manning-content.s3.amazonaws.com/download/3/93fa755-6d88-4296-9d1c-3e40cf96507c/TWGR2E_CH11.pdf
=begin
Ruby is a dynamic, interpreted, object-oriented language
Everything is an object and all of those objects can be overwritten(?what does this mean?)
=end
# https://www.ruby-lang.org/en/






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


