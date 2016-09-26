# https://youtu.be/Dji9ALCgfpM
# http://www.newthinktank.com/2015/02/ruby-programming-tutorial/
# Recommended Ruby Book: The Well-Grounded Rubyist 2nd Edition by David A. Black
# Sample chapter: https://manning-content.s3.amazonaws.com/download/3/93fa755-6d88-4296-9d1c-3e40cf96507c/TWGR2E_CH11.pdf
=begin
Ruby is a dynamic, interpreted, object-oriented language
Everything is an object and all of those objects can be overwritten(?what does this mean?)
=end
# https://www.ruby-lang.org/en/





# # # Symbols 40:11
puts
puts
puts "**********SYMBOLS**********"
puts
puts

# Symbols are strings that can't be changed
# You use them to conserve memory and to speed string comparisons
# A symbol is a way to pass string data if:
# 1) The string value won't change
# 2) The string doesn't need access to string methods
 
:derek # This is a symbol
 
puts :derek
puts :derek.to_s
puts :derek.class
puts :derek.object_id
 
# Many core Ruby methods take symbols as arguments such as
# attr_accessor :name, :height, :weight that we used earlier
 
# Symbols are also used as keys for hashes


