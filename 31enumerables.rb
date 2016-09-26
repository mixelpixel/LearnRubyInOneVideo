# https://youtu.be/Dji9ALCgfpM
# http://www.newthinktank.com/2015/02/ruby-programming-tutorial/
# Recommended Ruby Book: The Well-Grounded Rubyist 2nd Edition by David A. Black
# Sample chapter: https://manning-content.s3.amazonaws.com/download/3/93fa755-6d88-4296-9d1c-3e40cf96507c/TWGR2E_CH11.pdf
=begin
Ruby is a dynamic, interpreted, object-oriented language
Everything is an object and all of those objects can be overwritten(?what does this mean?)
=end
# https://www.ruby-lang.org/en/




# # # Enumerables 49:21
puts
puts
puts "**********ENUMERABLES**********"
puts
puts

# Classes that include the ENUMERABLE module gain collection capabilities
# but they must define a function called "each" (to be used with inheritance)

class Menu
  include Enumerable

  # Each provides items one at a time

  def each
    yield "pizza"
    yield "spagetti"
    yield "salad"
    yield "bread"
    yield "water"
  end
end

menu_options = Menu.new

# We can cycle through all the options

menu_options.each do |item|
  puts "Would you like: #{item}?"
end

# Check to see if we have pizza
p menu_options.find {|item| item == 'pizza'}

# Return items 5 letter in length
p menu_options.select {|item| item.size <= 5}

# Reject items which meet the criteria
p menu_options.select {|item| item.size <= 5}

# Return the first item
p menu_options.first

# Return the first 2 items
p menu_options.take(2)

# Return everything except the first 2 items
p menu_options.drop(2)

# Return the minimum item
p menu_options.min

# Return the maximum item
p menu_options.max

# Sort the items
p menu_options.sort

# Return each item in reverse order
menu_options.reverse_each {|item| puts item}
puts

