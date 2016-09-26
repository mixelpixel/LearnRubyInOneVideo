# https://youtu.be/Dji9ALCgfpM
# http://www.newthinktank.com/2015/02/ruby-programming-tutorial/
# Recommended Ruby Book: The Well-Grounded Rubyist 2nd Edition by David A. Black
# Sample chapter: https://manning-content.s3.amazonaws.com/download/3/93fa755-6d88-4296-9d1c-3e40cf96507c/TWGR2E_CH11.pdf
=begin
Ruby is a dynamic, interpreted, object-oriented language
Everything is an object and all of those objects can be overwritten(?what does this mean?)
=end
# https://www.ruby-lang.org/en/




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

module GrrAnimal # Normally you want modules in separate files
  def make_sound
    puts "Grrrrr"
  end
end

# You can inherit a modules method with PREPEND or INCLUDE
# You can inherit from numerous methods instead of one class

class Dog
  include GrrAnimal
end

rover = Dog.new
rover.make_sound

class Scientist
  include Human
  prepend Smart # Any methods in Smart will superseed those in the class
  
  def act_smart
    return "E = mc^2"
  end
  
end

einstein = Scientist.new
einstein.name = "Albert"
puts einstein.name
einstein.run
puts einstein.name + " says " + einstein.act_smart


