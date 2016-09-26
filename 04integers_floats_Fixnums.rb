# https://youtu.be/Dji9ALCgfpM
# http://www.newthinktank.com/2015/02/ruby-programming-tutorial/
# Recommended Ruby Book: The Well-Grounded Rubyist 2nd Edition by David A. Black
# Sample chapter: https://manning-content.s3.amazonaws.com/download/3/93fa755-6d88-4296-9d1c-3e40cf96507c/TWGR2E_CH11.pdf
=begin
Ruby is a dynamic, interpreted, object-oriented language
Everything is an object and all of those objects can be overwritten(?what does this mean?)
=end
# https://www.ruby-lang.org/en/





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
puts


