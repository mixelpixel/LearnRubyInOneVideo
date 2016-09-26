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
puts "You entered: %s" % first_num


